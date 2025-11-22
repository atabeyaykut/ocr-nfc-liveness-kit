package org.bouncycastle.pqc.crypto.lms;

import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
class LM_OTS {
    static final short D_MESG = -32383;
    private static final short D_PBLC = -32640;
    private static final int ITER_J = 22;
    private static final int ITER_K = 20;
    private static final int ITER_PREV = 23;
    static final int MAX_HASH = 32;
    static final int SEED_RANDOMISER_INDEX = -3;

    public static int cksm(byte[] bArr, int r6, LMOtsParameters lMOtsParameters) {
        int w = (1 << lMOtsParameters.getW()) - 1;
        int r22 = 0;
        for (int r12 = 0; r12 < (r6 * 8) / lMOtsParameters.getW(); r12++) {
            r22 = (r22 + w) - coef(bArr, r12, lMOtsParameters.getW());
        }
        return r22 << lMOtsParameters.getLs();
    }

    public static int coef(byte[] bArr, int r42, int r52) {
        int r02 = (r42 * r52) / 8;
        return (bArr[r02] >>> (((~r42) & ((8 / r52) - 1)) * r52)) & ((1 << r52) - 1);
    }

    public static LMOtsSignature lm_ots_generate_signature(LMOtsPrivateKey lMOtsPrivateKey, byte[] bArr, byte[] bArr2) {
        LMOtsParameters parameter = lMOtsPrivateKey.getParameter();
        int n10 = parameter.getN();
        int p10 = parameter.getP();
        int w = parameter.getW();
        byte[] bArr3 = new byte[p10 * n10];
        Digest digest = DigestUtil.getDigest(parameter);
        SeedDerive derivationFunction = lMOtsPrivateKey.getDerivationFunction();
        int r82 = cksm(bArr, n10, parameter);
        bArr[n10] = (byte) ((r82 >>> 8) & 255);
        bArr[n10 + 1] = (byte) r82;
        int r92 = n10 + 23;
        byte[] bArrBuild = Composer.compose().bytes(lMOtsPrivateKey.getI()).u32str(lMOtsPrivateKey.getQ()).padUntil(0, r92).build();
        derivationFunction.setJ(0);
        int r11 = 0;
        while (r11 < p10) {
            Pack.shortToBigEndian((short) r11, bArrBuild, 20);
            int r13 = 23;
            derivationFunction.deriveSeed(bArrBuild, r11 < p10 + (-1), 23);
            int r12 = coef(bArr, r11, w);
            for (int r14 = 0; r14 < r12; r14++) {
                bArrBuild[22] = (byte) r14;
                digest.update(bArrBuild, 0, r92);
                r13 = 23;
                digest.doFinal(bArrBuild, 23);
            }
            System.arraycopy(bArrBuild, r13, bArr3, n10 * r11, n10);
            r11++;
        }
        return new LMOtsSignature(parameter, bArr2, bArr3);
    }

    public static LMOtsSignature lm_ots_generate_signature(LMSigParameters lMSigParameters, LMOtsPrivateKey lMOtsPrivateKey, byte[][] bArr, byte[] bArr2, boolean z10) {
        byte[] c10;
        byte[] q10 = new byte[34];
        if (z10) {
            int n10 = lMOtsPrivateKey.getParameter().getN();
            c10 = new byte[n10];
            System.arraycopy(bArr2, 0, q10, 0, n10);
        } else {
            LMSContext signatureContext = lMOtsPrivateKey.getSignatureContext(lMSigParameters, bArr);
            LmsUtils.byteArray(bArr2, 0, bArr2.length, signatureContext);
            c10 = signatureContext.getC();
            q10 = signatureContext.getQ();
        }
        return lm_ots_generate_signature(lMOtsPrivateKey, q10, c10);
    }

    public static boolean lm_ots_validate_signature(LMOtsPublicKey lMOtsPublicKey, LMOtsSignature lMOtsSignature, byte[] bArr, boolean z10) throws LMSException {
        if (lMOtsSignature.getType().equals(lMOtsPublicKey.getParameter())) {
            return Arrays.areEqual(lm_ots_validate_signature_calculate(lMOtsPublicKey, lMOtsSignature, bArr), lMOtsPublicKey.getK());
        }
        throw new LMSException("public key and signature ots types do not match");
    }

    public static byte[] lm_ots_validate_signature_calculate(LMOtsPublicKey lMOtsPublicKey, LMOtsSignature lMOtsSignature, byte[] bArr) {
        LMSContext lMSContextCreateOtsContext = lMOtsPublicKey.createOtsContext(lMOtsSignature);
        LmsUtils.byteArray(bArr, lMSContextCreateOtsContext);
        return lm_ots_validate_signature_calculate(lMSContextCreateOtsContext);
    }

    public static byte[] lm_ots_validate_signature_calculate(LMSContext lMSContext) {
        LMOtsPublicKey publicKey = lMSContext.getPublicKey();
        LMOtsParameters parameter = publicKey.getParameter();
        Object signature = lMSContext.getSignature();
        LMOtsSignature otsSignature = signature instanceof LMSSignature ? ((LMSSignature) signature).getOtsSignature() : (LMOtsSignature) signature;
        int n10 = parameter.getN();
        int w = parameter.getW();
        int p10 = parameter.getP();
        byte[] q10 = lMSContext.getQ();
        int r6 = cksm(q10, n10, parameter);
        q10[n10] = (byte) ((r6 >>> 8) & 255);
        q10[n10 + 1] = (byte) r6;
        byte[] bArr = publicKey.getI();
        int q11 = publicKey.getQ();
        Digest digest = DigestUtil.getDigest(parameter);
        LmsUtils.byteArray(bArr, digest);
        LmsUtils.u32str(q11, digest);
        LmsUtils.u16str(D_PBLC, digest);
        Composer composerU32str = Composer.compose().bytes(bArr).u32str(q11);
        int r62 = n10 + 23;
        byte[] bArrBuild = composerU32str.padUntil(0, r62).build();
        int r10 = (1 << w) - 1;
        byte[] y10 = otsSignature.getY();
        Digest digest2 = DigestUtil.getDigest(parameter);
        for (int r92 = 0; r92 < p10; r92++) {
            Pack.shortToBigEndian((short) r92, bArrBuild, 20);
            System.arraycopy(y10, r92 * n10, bArrBuild, 23, n10);
            for (int r11 = coef(q10, r92, w); r11 < r10; r11++) {
                bArrBuild[22] = (byte) r11;
                digest2.update(bArrBuild, 0, r62);
                digest2.doFinal(bArrBuild, 23);
            }
            digest.update(bArrBuild, 23, n10);
        }
        byte[] bArr2 = new byte[n10];
        digest.doFinal(bArr2, 0);
        return bArr2;
    }

    public static LMOtsPublicKey lms_ots_generatePublicKey(LMOtsPrivateKey lMOtsPrivateKey) {
        return new LMOtsPublicKey(lMOtsPrivateKey.getParameter(), lMOtsPrivateKey.getI(), lMOtsPrivateKey.getQ(), lms_ots_generatePublicKey(lMOtsPrivateKey.getParameter(), lMOtsPrivateKey.getI(), lMOtsPrivateKey.getQ(), lMOtsPrivateKey.getMasterSecret()));
    }

    public static byte[] lms_ots_generatePublicKey(LMOtsParameters lMOtsParameters, byte[] bArr, int r12, byte[] bArr2) {
        Digest digest = DigestUtil.getDigest(lMOtsParameters);
        byte[] bArrBuild = Composer.compose().bytes(bArr).u32str(r12).u16str(-32640).padUntil(0, 22).build();
        digest.update(bArrBuild, 0, bArrBuild.length);
        Digest digest2 = DigestUtil.getDigest(lMOtsParameters);
        byte[] bArrBuild2 = Composer.compose().bytes(bArr).u32str(r12).padUntil(0, digest2.getDigestSize() + 23).build();
        SeedDerive seedDerive = new SeedDerive(bArr, bArr2, DigestUtil.getDigest(lMOtsParameters));
        seedDerive.setQ(r12);
        seedDerive.setJ(0);
        int p10 = lMOtsParameters.getP();
        int n10 = lMOtsParameters.getN();
        int w = (1 << lMOtsParameters.getW()) - 1;
        int r72 = 0;
        while (r72 < p10) {
            seedDerive.deriveSeed(bArrBuild2, r72 < p10 + (-1), 23);
            Pack.shortToBigEndian((short) r72, bArrBuild2, 20);
            for (int r82 = 0; r82 < w; r82++) {
                bArrBuild2[22] = (byte) r82;
                digest2.update(bArrBuild2, 0, bArrBuild2.length);
                digest2.doFinal(bArrBuild2, 23);
            }
            digest.update(bArrBuild2, 23, n10);
            r72++;
        }
        byte[] bArr3 = new byte[digest.getDigestSize()];
        digest.doFinal(bArr3, 0);
        return bArr3;
    }
}
