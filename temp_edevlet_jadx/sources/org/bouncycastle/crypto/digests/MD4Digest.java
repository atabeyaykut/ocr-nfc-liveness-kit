package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class MD4Digest extends GeneralDigest {
    private static final int DIGEST_LENGTH = 16;
    private static final int S11 = 3;
    private static final int S12 = 7;
    private static final int S13 = 11;
    private static final int S14 = 19;
    private static final int S21 = 3;
    private static final int S22 = 5;
    private static final int S23 = 9;
    private static final int S24 = 13;
    private static final int S31 = 3;
    private static final int S32 = 9;
    private static final int S33 = 11;
    private static final int S34 = 15;
    private int H1;
    private int H2;
    private int H3;
    private int H4;
    private int[] X;
    private int xOff;

    public MD4Digest() {
        this(CryptoServicePurpose.ANY);
    }

    public MD4Digest(CryptoServicePurpose cryptoServicePurpose) {
        super(cryptoServicePurpose);
        this.X = new int[16];
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, 64, cryptoServicePurpose));
        reset();
    }

    public MD4Digest(MD4Digest mD4Digest) {
        super(mD4Digest.purpose);
        this.X = new int[16];
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, 64, this.purpose));
        copyIn(mD4Digest);
    }

    private int F(int r12, int r22, int r32) {
        return ((~r12) & r32) | (r22 & r12);
    }

    private int G(int r22, int r32, int r42) {
        return (r22 & r42) | (r22 & r32) | (r32 & r42);
    }

    private int H(int r12, int r22, int r32) {
        return (r12 ^ r22) ^ r32;
    }

    private void copyIn(MD4Digest mD4Digest) {
        super.copyIn((GeneralDigest) mD4Digest);
        this.H1 = mD4Digest.H1;
        this.H2 = mD4Digest.H2;
        this.H3 = mD4Digest.H3;
        this.H4 = mD4Digest.H4;
        int[] r02 = mD4Digest.X;
        System.arraycopy(r02, 0, this.X, 0, r02.length);
        this.xOff = mD4Digest.xOff;
    }

    private int rotateLeft(int r22, int r32) {
        return (r22 >>> (32 - r32)) | (r22 << r32);
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new MD4Digest(this);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public CryptoServiceProperties cryptoServiceProperties() {
        return Utils.getDefaultProperties(this, this.purpose);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r42) {
        finish();
        Pack.intToLittleEndian(this.H1, bArr, r42);
        Pack.intToLittleEndian(this.H2, bArr, r42 + 4);
        Pack.intToLittleEndian(this.H3, bArr, r42 + 8);
        Pack.intToLittleEndian(this.H4, bArr, r42 + 12);
        reset();
        return 16;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "MD4";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        int r12 = this.H1;
        int r22 = this.H2;
        int r32 = this.H3;
        int r42 = this.H4;
        int r13 = rotateLeft(r12 + F(r22, r32, r42) + this.X[0], 3);
        int r43 = rotateLeft(r42 + F(r13, r22, r32) + this.X[1], 7);
        int r33 = rotateLeft(r32 + F(r43, r13, r22) + this.X[2], 11);
        int r23 = rotateLeft(r22 + F(r33, r43, r13) + this.X[3], 19);
        int r14 = rotateLeft(r13 + F(r23, r33, r43) + this.X[4], 3);
        int r44 = rotateLeft(r43 + F(r14, r23, r33) + this.X[5], 7);
        int r34 = rotateLeft(r33 + F(r44, r14, r23) + this.X[6], 11);
        int r24 = rotateLeft(r23 + F(r34, r44, r14) + this.X[7], 19);
        int r15 = rotateLeft(r14 + F(r24, r34, r44) + this.X[8], 3);
        int r45 = rotateLeft(r44 + F(r15, r24, r34) + this.X[9], 7);
        int r35 = rotateLeft(r34 + F(r45, r15, r24) + this.X[10], 11);
        int r25 = rotateLeft(r24 + F(r35, r45, r15) + this.X[11], 19);
        int r16 = rotateLeft(r15 + F(r25, r35, r45) + this.X[12], 3);
        int r46 = rotateLeft(r45 + F(r16, r25, r35) + this.X[13], 7);
        int r36 = rotateLeft(r35 + F(r46, r16, r25) + this.X[14], 11);
        int r26 = rotateLeft(r25 + F(r36, r46, r16) + this.X[15], 19);
        int r17 = rotateLeft(r16 + G(r26, r36, r46) + this.X[0] + 1518500249, 3);
        int r47 = rotateLeft(r46 + G(r17, r26, r36) + this.X[4] + 1518500249, 5);
        int r37 = rotateLeft(r36 + G(r47, r17, r26) + this.X[8] + 1518500249, 9);
        int r27 = rotateLeft(r26 + G(r37, r47, r17) + this.X[12] + 1518500249, 13);
        int r18 = rotateLeft(r17 + G(r27, r37, r47) + this.X[1] + 1518500249, 3);
        int r48 = rotateLeft(r47 + G(r18, r27, r37) + this.X[5] + 1518500249, 5);
        int r38 = rotateLeft(r37 + G(r48, r18, r27) + this.X[9] + 1518500249, 9);
        int r28 = rotateLeft(r27 + G(r38, r48, r18) + this.X[13] + 1518500249, 13);
        int r19 = rotateLeft(r18 + G(r28, r38, r48) + this.X[2] + 1518500249, 3);
        int r49 = rotateLeft(r48 + G(r19, r28, r38) + this.X[6] + 1518500249, 5);
        int r39 = rotateLeft(r38 + G(r49, r19, r28) + this.X[10] + 1518500249, 9);
        int r29 = rotateLeft(r28 + G(r39, r49, r19) + this.X[14] + 1518500249, 13);
        int r110 = rotateLeft(r19 + G(r29, r39, r49) + this.X[3] + 1518500249, 3);
        int r410 = rotateLeft(r49 + G(r110, r29, r39) + this.X[7] + 1518500249, 5);
        int r310 = rotateLeft(r39 + G(r410, r110, r29) + this.X[11] + 1518500249, 9);
        int r210 = rotateLeft(r29 + G(r310, r410, r110) + this.X[15] + 1518500249, 13);
        int r111 = rotateLeft(r110 + H(r210, r310, r410) + this.X[0] + 1859775393, 3);
        int r411 = rotateLeft(r410 + H(r111, r210, r310) + this.X[8] + 1859775393, 9);
        int r311 = rotateLeft(r310 + H(r411, r111, r210) + this.X[4] + 1859775393, 11);
        int r211 = rotateLeft(r210 + H(r311, r411, r111) + this.X[12] + 1859775393, 15);
        int r112 = rotateLeft(r111 + H(r211, r311, r411) + this.X[2] + 1859775393, 3);
        int r412 = rotateLeft(r411 + H(r112, r211, r311) + this.X[10] + 1859775393, 9);
        int r312 = rotateLeft(r311 + H(r412, r112, r211) + this.X[6] + 1859775393, 11);
        int r212 = rotateLeft(r211 + H(r312, r412, r112) + this.X[14] + 1859775393, 15);
        int r113 = rotateLeft(r112 + H(r212, r312, r412) + this.X[1] + 1859775393, 3);
        int r413 = rotateLeft(r412 + H(r113, r212, r312) + this.X[9] + 1859775393, 9);
        int r313 = rotateLeft(r312 + H(r413, r113, r212) + this.X[5] + 1859775393, 11);
        int r213 = rotateLeft(r212 + H(r313, r413, r113) + this.X[13] + 1859775393, 15);
        int r114 = rotateLeft(r113 + H(r213, r313, r413) + this.X[3] + 1859775393, 3);
        int r414 = rotateLeft(r413 + H(r114, r213, r313) + this.X[11] + 1859775393, 9);
        int r314 = rotateLeft(r313 + H(r414, r114, r213) + this.X[7] + 1859775393, 11);
        int r214 = rotateLeft(r213 + H(r314, r414, r114) + this.X[15] + 1859775393, 15);
        this.H1 += r114;
        this.H2 += r214;
        this.H3 += r314;
        this.H4 += r414;
        this.xOff = 0;
        int r115 = 0;
        while (true) {
            int[] r215 = this.X;
            if (r115 == r215.length) {
                return;
            }
            r215[r115] = 0;
            r115++;
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processLength(long j10) {
        if (this.xOff > 14) {
            processBlock();
        }
        int[] r02 = this.X;
        r02[14] = (int) ((-1) & j10);
        r02[15] = (int) (j10 >>> 32);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processWord(byte[] bArr, int r52) {
        int[] r02 = this.X;
        int r12 = this.xOff;
        this.xOff = r12 + 1;
        r02[r12] = Pack.littleEndianToInt(bArr, r52);
        if (this.xOff == 16) {
            processBlock();
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.H1 = 1732584193;
        this.H2 = -271733879;
        this.H3 = -1732584194;
        this.H4 = 271733878;
        this.xOff = 0;
        int r12 = 0;
        while (true) {
            int[] r22 = this.X;
            if (r12 == r22.length) {
                return;
            }
            r22[r12] = 0;
            r12++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        copyIn((MD4Digest) memoable);
    }
}
