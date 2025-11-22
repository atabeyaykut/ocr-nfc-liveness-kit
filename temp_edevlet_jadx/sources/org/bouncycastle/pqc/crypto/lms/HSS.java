package org.bouncycastle.pqc.crypto.lms;

import androidx.core.location.LocationRequestCompat;
import java.util.Arrays;
import java.util.List;
import org.bouncycastle.pqc.crypto.ExhaustedPrivateKeyException;

/* loaded from: classes2.dex */
class HSS {

    public static class PlaceholderLMSPrivateKey extends LMSPrivateKeyParameters {
        public PlaceholderLMSPrivateKey(LMSigParameters lMSigParameters, LMOtsParameters lMOtsParameters, int r32, byte[] bArr, int r52, byte[] bArr2) {
            super(lMSigParameters, lMOtsParameters, r32, bArr, r52, bArr2);
        }

        @Override // org.bouncycastle.pqc.crypto.lms.LMSPrivateKeyParameters
        public LMOtsPrivateKey getNextOtsPrivateKey() {
            throw new RuntimeException("placeholder only");
        }

        @Override // org.bouncycastle.pqc.crypto.lms.LMSPrivateKeyParameters
        public LMSPublicKeyParameters getPublicKey() {
            throw new RuntimeException("placeholder only");
        }
    }

    public static HSSPrivateKeyParameters generateHSSKeyPair(HSSKeyGenerationParameters hSSKeyGenerationParameters) {
        byte[] bArr;
        int depth = hSSKeyGenerationParameters.getDepth();
        LMSPrivateKeyParameters[] lMSPrivateKeyParametersArr = new LMSPrivateKeyParameters[depth];
        LMSSignature[] lMSSignatureArr = new LMSSignature[hSSKeyGenerationParameters.getDepth() - 1];
        int r52 = 0;
        byte[] bArr2 = new byte[hSSKeyGenerationParameters.getLmsParameters()[0].getLMSigParam().getM()];
        hSSKeyGenerationParameters.getRandom().nextBytes(bArr2);
        byte[] bArr3 = new byte[16];
        hSSKeyGenerationParameters.getRandom().nextBytes(bArr3);
        byte[] bArr4 = new byte[0];
        long h10 = 1;
        while (r52 < depth) {
            if (r52 == 0) {
                lMSPrivateKeyParametersArr[r52] = new LMSPrivateKeyParameters(hSSKeyGenerationParameters.getLmsParameters()[r52].getLMSigParam(), hSSKeyGenerationParameters.getLmsParameters()[r52].getLMOTSParam(), 0, bArr3, 1 << hSSKeyGenerationParameters.getLmsParameters()[r52].getLMSigParam().getH(), bArr2);
                bArr = bArr4;
            } else {
                bArr = bArr4;
                lMSPrivateKeyParametersArr[r52] = new PlaceholderLMSPrivateKey(hSSKeyGenerationParameters.getLmsParameters()[r52].getLMSigParam(), hSSKeyGenerationParameters.getLmsParameters()[r52].getLMOTSParam(), -1, bArr, 1 << hSSKeyGenerationParameters.getLmsParameters()[r52].getLMSigParam().getH(), bArr);
            }
            h10 *= 1 << hSSKeyGenerationParameters.getLmsParameters()[r52].getLMSigParam().getH();
            r52++;
            bArr4 = bArr;
        }
        if (h10 == 0) {
            h10 = LocationRequestCompat.PASSIVE_INTERVAL;
        }
        return new HSSPrivateKeyParameters(hSSKeyGenerationParameters.getDepth(), Arrays.asList(lMSPrivateKeyParametersArr), Arrays.asList(lMSSignatureArr), 0L, h10);
    }

    public static HSSSignature generateSignature(int r22, LMSContext lMSContext) {
        return new HSSSignature(r22 - 1, lMSContext.getSignedPubKeys(), LMS.generateSign(lMSContext));
    }

    public static HSSSignature generateSignature(HSSPrivateKeyParameters hSSPrivateKeyParameters, byte[] bArr) {
        LMSPrivateKeyParameters lMSPrivateKeyParameters;
        LMSSignedPubKey[] lMSSignedPubKeyArr;
        int l5 = hSSPrivateKeyParameters.getL();
        synchronized (hSSPrivateKeyParameters) {
            rangeTestKeys(hSSPrivateKeyParameters);
            List<LMSPrivateKeyParameters> keys = hSSPrivateKeyParameters.getKeys();
            List<LMSSignature> sig = hSSPrivateKeyParameters.getSig();
            int r42 = l5 - 1;
            lMSPrivateKeyParameters = hSSPrivateKeyParameters.getKeys().get(r42);
            lMSSignedPubKeyArr = new LMSSignedPubKey[r42];
            int r72 = 0;
            while (r72 < r42) {
                int r10 = r72 + 1;
                lMSSignedPubKeyArr[r72] = new LMSSignedPubKey(sig.get(r72), keys.get(r10).getPublicKey());
                r72 = r10;
            }
            hSSPrivateKeyParameters.incIndex();
        }
        LMSContext lMSContextWithSignedPublicKeys = lMSPrivateKeyParameters.generateLMSContext().withSignedPublicKeys(lMSSignedPubKeyArr);
        lMSContextWithSignedPublicKeys.update(bArr, 0, bArr.length);
        return generateSignature(l5, lMSContextWithSignedPublicKeys);
    }

    public static void incrementIndex(HSSPrivateKeyParameters hSSPrivateKeyParameters) {
        synchronized (hSSPrivateKeyParameters) {
            rangeTestKeys(hSSPrivateKeyParameters);
            hSSPrivateKeyParameters.incIndex();
            hSSPrivateKeyParameters.getKeys().get(hSSPrivateKeyParameters.getL() - 1).incIndex();
        }
    }

    public static void rangeTestKeys(HSSPrivateKeyParameters hSSPrivateKeyParameters) {
        synchronized (hSSPrivateKeyParameters) {
            if (hSSPrivateKeyParameters.getIndex() >= hSSPrivateKeyParameters.getIndexLimit()) {
                StringBuilder sb2 = new StringBuilder("hss private key");
                sb2.append(hSSPrivateKeyParameters.isShard() ? " shard" : "");
                sb2.append(" is exhausted");
                throw new ExhaustedPrivateKeyException(sb2.toString());
            }
            int l5 = hSSPrivateKeyParameters.getL();
            List<LMSPrivateKeyParameters> keys = hSSPrivateKeyParameters.getKeys();
            int r22 = l5;
            while (true) {
                int r32 = r22 - 1;
                if (keys.get(r32).getIndex() != (1 << keys.get(r32).getSigParameters().getH())) {
                    while (r22 < l5) {
                        hSSPrivateKeyParameters.replaceConsumedKey(r22);
                        r22++;
                    }
                } else {
                    if (r32 == 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("hss private key");
                        sb3.append(hSSPrivateKeyParameters.isShard() ? " shard" : "");
                        sb3.append(" is exhausted the maximum limit for this HSS private key");
                        throw new ExhaustedPrivateKeyException(sb3.toString());
                    }
                    r22 = r32;
                }
            }
        }
    }

    public static boolean verifySignature(HSSPublicKeyParameters hSSPublicKeyParameters, HSSSignature hSSSignature, byte[] bArr) {
        int r02 = hSSSignature.getlMinus1();
        int r12 = r02 + 1;
        if (r12 != hSSPublicKeyParameters.getL()) {
            return false;
        }
        LMSSignature[] lMSSignatureArr = new LMSSignature[r12];
        LMSPublicKeyParameters[] lMSPublicKeyParametersArr = new LMSPublicKeyParameters[r02];
        for (int r42 = 0; r42 < r02; r42++) {
            lMSSignatureArr[r42] = hSSSignature.getSignedPubKey()[r42].getSignature();
            lMSPublicKeyParametersArr[r42] = hSSSignature.getSignedPubKey()[r42].getPublicKey();
        }
        lMSSignatureArr[r02] = hSSSignature.getSignature();
        LMSPublicKeyParameters lMSPublicKey = hSSPublicKeyParameters.getLMSPublicKey();
        for (int r72 = 0; r72 < r02; r72++) {
            if (!LMS.verifySignature(lMSPublicKey, lMSSignatureArr[r72], lMSPublicKeyParametersArr[r72].toByteArray())) {
                return false;
            }
            try {
                lMSPublicKey = lMSPublicKeyParametersArr[r72];
            } catch (Exception e10) {
                throw new IllegalStateException(e10.getMessage(), e10);
            }
        }
        return LMS.verifySignature(lMSPublicKey, lMSSignatureArr[r02], bArr);
    }
}
