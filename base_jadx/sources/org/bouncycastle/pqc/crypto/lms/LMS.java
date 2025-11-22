package org.bouncycastle.pqc.crypto.lms;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes2.dex */
class LMS {
    static final short D_INTR = -31869;
    static final short D_LEAF = -32126;

    public static LMSPrivateKeyParameters generateKeys(LMSigParameters lMSigParameters, LMOtsParameters lMOtsParameters, int r11, byte[] bArr, byte[] bArr2) throws IllegalArgumentException {
        if (bArr2 != null && bArr2.length >= lMSigParameters.getM()) {
            return new LMSPrivateKeyParameters(lMSigParameters, lMOtsParameters, r11, bArr, 1 << lMSigParameters.getH(), bArr2);
        }
        throw new IllegalArgumentException("root seed is less than " + lMSigParameters.getM());
    }

    public static LMSSignature generateSign(LMSContext lMSContext) {
        return new LMSSignature(lMSContext.getPrivateKey().getQ(), LM_OTS.lm_ots_generate_signature(lMSContext.getPrivateKey(), lMSContext.getQ(), lMSContext.getC()), lMSContext.getSigParams(), lMSContext.getPath());
    }

    public static LMSSignature generateSign(LMSPrivateKeyParameters lMSPrivateKeyParameters, byte[] bArr) {
        LMSContext lMSContextGenerateLMSContext = lMSPrivateKeyParameters.generateLMSContext();
        lMSContextGenerateLMSContext.update(bArr, 0, bArr.length);
        return generateSign(lMSContextGenerateLMSContext);
    }

    public static boolean verifySignature(LMSPublicKeyParameters lMSPublicKeyParameters, LMSContext lMSContext) {
        LMSSignature lMSSignature = (LMSSignature) lMSContext.getSignature();
        LMSigParameters parameter = lMSSignature.getParameter();
        int h10 = parameter.getH();
        byte[][] y10 = lMSSignature.getY();
        byte[] bArrLm_ots_validate_signature_calculate = LM_OTS.lm_ots_validate_signature_calculate(lMSContext);
        int q10 = (1 << h10) + lMSSignature.getQ();
        byte[] bArr = lMSPublicKeyParameters.getI();
        Digest digest = DigestUtil.getDigest(parameter);
        int digestSize = digest.getDigestSize();
        byte[] bArr2 = new byte[digestSize];
        digest.update(bArr, 0, bArr.length);
        LmsUtils.u32str(q10, digest);
        LmsUtils.u16str(D_LEAF, digest);
        digest.update(bArrLm_ots_validate_signature_calculate, 0, bArrLm_ots_validate_signature_calculate.length);
        digest.doFinal(bArr2, 0);
        int r11 = 0;
        while (q10 > 1) {
            if ((q10 & 1) == 1) {
                digest.update(bArr, 0, bArr.length);
                LmsUtils.u32str(q10 / 2, digest);
                LmsUtils.u16str(D_INTR, digest);
                byte[] bArr3 = y10[r11];
                digest.update(bArr3, 0, bArr3.length);
                digest.update(bArr2, 0, digestSize);
            } else {
                digest.update(bArr, 0, bArr.length);
                LmsUtils.u32str(q10 / 2, digest);
                LmsUtils.u16str(D_INTR, digest);
                digest.update(bArr2, 0, digestSize);
                byte[] bArr4 = y10[r11];
                digest.update(bArr4, 0, bArr4.length);
            }
            digest.doFinal(bArr2, 0);
            q10 /= 2;
            r11++;
            if (r11 == y10.length && q10 > 1) {
                return false;
            }
        }
        return lMSPublicKeyParameters.matchesT1(bArr2);
    }

    public static boolean verifySignature(LMSPublicKeyParameters lMSPublicKeyParameters, LMSSignature lMSSignature, byte[] bArr) {
        LMSContext lMSContextGenerateOtsContext = lMSPublicKeyParameters.generateOtsContext(lMSSignature);
        LmsUtils.byteArray(bArr, lMSContextGenerateOtsContext);
        return verifySignature(lMSPublicKeyParameters, lMSContextGenerateOtsContext);
    }

    public static boolean verifySignature(LMSPublicKeyParameters lMSPublicKeyParameters, byte[] bArr, byte[] bArr2) {
        LMSContext lMSContextGenerateLMSContext = lMSPublicKeyParameters.generateLMSContext(bArr);
        LmsUtils.byteArray(bArr2, lMSContextGenerateLMSContext);
        return verifySignature(lMSPublicKeyParameters, lMSContextGenerateLMSContext);
    }
}
