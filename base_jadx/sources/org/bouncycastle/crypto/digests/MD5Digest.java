package org.bouncycastle.crypto.digests;

import androidx.camera.core.impl.a;
import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class MD5Digest extends GeneralDigest implements EncodableDigest {
    private static final int DIGEST_LENGTH = 16;
    private static final int S11 = 7;
    private static final int S12 = 12;
    private static final int S13 = 17;
    private static final int S14 = 22;
    private static final int S21 = 5;
    private static final int S22 = 9;
    private static final int S23 = 14;
    private static final int S24 = 20;
    private static final int S31 = 4;
    private static final int S32 = 11;
    private static final int S33 = 16;
    private static final int S34 = 23;
    private static final int S41 = 6;
    private static final int S42 = 10;
    private static final int S43 = 15;
    private static final int S44 = 21;
    private int H1;
    private int H2;
    private int H3;
    private int H4;
    private int[] X;
    private int xOff;

    public MD5Digest() {
        this(CryptoServicePurpose.ANY);
    }

    public MD5Digest(CryptoServicePurpose cryptoServicePurpose) {
        super(cryptoServicePurpose);
        this.X = new int[16];
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, 64, cryptoServicePurpose));
        reset();
    }

    public MD5Digest(MD5Digest mD5Digest) {
        super(mD5Digest);
        this.X = new int[16];
        copyIn(mD5Digest);
    }

    public MD5Digest(byte[] bArr) {
        super(bArr);
        this.X = new int[16];
        this.H1 = Pack.bigEndianToInt(bArr, 16);
        this.H2 = Pack.bigEndianToInt(bArr, 20);
        this.H3 = Pack.bigEndianToInt(bArr, 24);
        this.H4 = Pack.bigEndianToInt(bArr, 28);
        this.xOff = Pack.bigEndianToInt(bArr, 32);
        for (int r02 = 0; r02 != this.xOff; r02++) {
            this.X[r02] = Pack.bigEndianToInt(bArr, (r02 * 4) + 36);
        }
    }

    private int F(int r12, int r22, int r32) {
        return ((~r12) & r32) | (r22 & r12);
    }

    private int G(int r12, int r22, int r32) {
        return (r12 & r32) | (r22 & (~r32));
    }

    private int H(int r12, int r22, int r32) {
        return (r12 ^ r22) ^ r32;
    }

    private int K(int r12, int r22, int r32) {
        return (r12 | (~r32)) ^ r22;
    }

    private void copyIn(MD5Digest mD5Digest) {
        super.copyIn((GeneralDigest) mD5Digest);
        this.H1 = mD5Digest.H1;
        this.H2 = mD5Digest.H2;
        this.H3 = mD5Digest.H3;
        this.H4 = mD5Digest.H4;
        int[] r02 = mD5Digest.X;
        System.arraycopy(r02, 0, this.X, 0, r02.length);
        this.xOff = mD5Digest.xOff;
    }

    private int rotateLeft(int r22, int r32) {
        return (r22 >>> (32 - r32)) | (r22 << r32);
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new MD5Digest(this);
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
        return "MD5";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.digests.EncodableDigest
    public byte[] getEncodedState() {
        int r02 = a.d(this.xOff, 4, 36, 1);
        byte[] bArr = new byte[r02];
        super.populateState(bArr);
        Pack.intToBigEndian(this.H1, bArr, 16);
        Pack.intToBigEndian(this.H2, bArr, 20);
        Pack.intToBigEndian(this.H3, bArr, 24);
        Pack.intToBigEndian(this.H4, bArr, 28);
        Pack.intToBigEndian(this.xOff, bArr, 32);
        for (int r22 = 0; r22 != this.xOff; r22++) {
            Pack.intToBigEndian(this.X[r22], bArr, (r22 * 4) + 36);
        }
        bArr[r02 - 1] = (byte) this.purpose.ordinal();
        return bArr;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        int r12 = this.H1;
        int r22 = this.H2;
        int r32 = this.H3;
        int r42 = this.H4;
        int r13 = rotateLeft(((r12 + F(r22, r32, r42)) + this.X[0]) - 680876936, 7) + r22;
        int r43 = rotateLeft(((r42 + F(r13, r22, r32)) + this.X[1]) - 389564586, 12) + r13;
        int r33 = rotateLeft(r32 + F(r43, r13, r22) + this.X[2] + 606105819, 17) + r43;
        int r23 = rotateLeft(((r22 + F(r33, r43, r13)) + this.X[3]) - 1044525330, 22) + r33;
        int r14 = rotateLeft(((r13 + F(r23, r33, r43)) + this.X[4]) - 176418897, 7) + r23;
        int r44 = rotateLeft(r43 + F(r14, r23, r33) + this.X[5] + 1200080426, 12) + r14;
        int r34 = rotateLeft(((r33 + F(r44, r14, r23)) + this.X[6]) - 1473231341, 17) + r44;
        int r24 = rotateLeft(((r23 + F(r34, r44, r14)) + this.X[7]) - 45705983, 22) + r34;
        int r15 = rotateLeft(r14 + F(r24, r34, r44) + this.X[8] + 1770035416, 7) + r24;
        int r45 = rotateLeft(((r44 + F(r15, r24, r34)) + this.X[9]) - 1958414417, 12) + r15;
        int r35 = rotateLeft(((r34 + F(r45, r15, r24)) + this.X[10]) - 42063, 17) + r45;
        int r25 = rotateLeft(((r24 + F(r35, r45, r15)) + this.X[11]) - 1990404162, 22) + r35;
        int r16 = rotateLeft(r15 + F(r25, r35, r45) + this.X[12] + 1804603682, 7) + r25;
        int r46 = rotateLeft(((r45 + F(r16, r25, r35)) + this.X[13]) - 40341101, 12) + r16;
        int r36 = rotateLeft(((r35 + F(r46, r16, r25)) + this.X[14]) - 1502002290, 17) + r46;
        int r26 = rotateLeft(r25 + F(r36, r46, r16) + this.X[15] + 1236535329, 22) + r36;
        int r17 = rotateLeft(((r16 + G(r26, r36, r46)) + this.X[1]) - 165796510, 5) + r26;
        int r47 = rotateLeft(((r46 + G(r17, r26, r36)) + this.X[6]) - 1069501632, 9) + r17;
        int r37 = rotateLeft(r36 + G(r47, r17, r26) + this.X[11] + 643717713, 14) + r47;
        int r27 = rotateLeft(((r26 + G(r37, r47, r17)) + this.X[0]) - 373897302, 20) + r37;
        int r18 = rotateLeft(((r17 + G(r27, r37, r47)) + this.X[5]) - 701558691, 5) + r27;
        int r48 = rotateLeft(r47 + G(r18, r27, r37) + this.X[10] + 38016083, 9) + r18;
        int r38 = rotateLeft(((r37 + G(r48, r18, r27)) + this.X[15]) - 660478335, 14) + r48;
        int r28 = rotateLeft(((r27 + G(r38, r48, r18)) + this.X[4]) - 405537848, 20) + r38;
        int r19 = rotateLeft(r18 + G(r28, r38, r48) + this.X[9] + 568446438, 5) + r28;
        int r49 = rotateLeft(((r48 + G(r19, r28, r38)) + this.X[14]) - 1019803690, 9) + r19;
        int r39 = rotateLeft(((r38 + G(r49, r19, r28)) + this.X[3]) - 187363961, 14) + r49;
        int r29 = rotateLeft(r28 + G(r39, r49, r19) + this.X[8] + 1163531501, 20) + r39;
        int r110 = rotateLeft(((r19 + G(r29, r39, r49)) + this.X[13]) - 1444681467, 5) + r29;
        int r410 = rotateLeft(((r49 + G(r110, r29, r39)) + this.X[2]) - 51403784, 9) + r110;
        int r310 = rotateLeft(r39 + G(r410, r110, r29) + this.X[7] + 1735328473, 14) + r410;
        int r210 = rotateLeft(((r29 + G(r310, r410, r110)) + this.X[12]) - 1926607734, 20) + r310;
        int r111 = rotateLeft(((r110 + H(r210, r310, r410)) + this.X[5]) - 378558, 4) + r210;
        int r411 = rotateLeft(((r410 + H(r111, r210, r310)) + this.X[8]) - 2022574463, 11) + r111;
        int r311 = rotateLeft(r310 + H(r411, r111, r210) + this.X[11] + 1839030562, 16) + r411;
        int r211 = rotateLeft(((r210 + H(r311, r411, r111)) + this.X[14]) - 35309556, 23) + r311;
        int r112 = rotateLeft(((r111 + H(r211, r311, r411)) + this.X[1]) - 1530992060, 4) + r211;
        int r412 = rotateLeft(r411 + H(r112, r211, r311) + this.X[4] + 1272893353, 11) + r112;
        int r312 = rotateLeft(((r311 + H(r412, r112, r211)) + this.X[7]) - 155497632, 16) + r412;
        int r212 = rotateLeft(((r211 + H(r312, r412, r112)) + this.X[10]) - 1094730640, 23) + r312;
        int r113 = rotateLeft(r112 + H(r212, r312, r412) + this.X[13] + 681279174, 4) + r212;
        int r413 = rotateLeft(((r412 + H(r113, r212, r312)) + this.X[0]) - 358537222, 11) + r113;
        int r313 = rotateLeft(((r312 + H(r413, r113, r212)) + this.X[3]) - 722521979, 16) + r413;
        int r213 = rotateLeft(r212 + H(r313, r413, r113) + this.X[6] + 76029189, 23) + r313;
        int r114 = rotateLeft(((r113 + H(r213, r313, r413)) + this.X[9]) - 640364487, 4) + r213;
        int r414 = rotateLeft(((r413 + H(r114, r213, r313)) + this.X[12]) - 421815835, 11) + r114;
        int r314 = rotateLeft(r313 + H(r414, r114, r213) + this.X[15] + 530742520, 16) + r414;
        int r214 = rotateLeft(((r213 + H(r314, r414, r114)) + this.X[2]) - 995338651, 23) + r314;
        int r115 = rotateLeft(((r114 + K(r214, r314, r414)) + this.X[0]) - 198630844, 6) + r214;
        int r415 = rotateLeft(r414 + K(r115, r214, r314) + this.X[7] + 1126891415, 10) + r115;
        int r315 = rotateLeft(((r314 + K(r415, r115, r214)) + this.X[14]) - 1416354905, 15) + r415;
        int r215 = rotateLeft(((r214 + K(r315, r415, r115)) + this.X[5]) - 57434055, 21) + r315;
        int r116 = rotateLeft(r115 + K(r215, r315, r415) + this.X[12] + 1700485571, 6) + r215;
        int r416 = rotateLeft(((r415 + K(r116, r215, r315)) + this.X[3]) - 1894986606, 10) + r116;
        int r316 = rotateLeft(((r315 + K(r416, r116, r215)) + this.X[10]) - 1051523, 15) + r416;
        int r216 = rotateLeft(((r215 + K(r316, r416, r116)) + this.X[1]) - 2054922799, 21) + r316;
        int r117 = rotateLeft(r116 + K(r216, r316, r416) + this.X[8] + 1873313359, 6) + r216;
        int r417 = rotateLeft(((r416 + K(r117, r216, r316)) + this.X[15]) - 30611744, 10) + r117;
        int r317 = rotateLeft(((r316 + K(r417, r117, r216)) + this.X[6]) - 1560198380, 15) + r417;
        int r217 = rotateLeft(r216 + K(r317, r417, r117) + this.X[13] + 1309151649, 21) + r317;
        int r118 = rotateLeft(((r117 + K(r217, r317, r417)) + this.X[4]) - 145523070, 6) + r217;
        int r418 = rotateLeft(((r417 + K(r118, r217, r317)) + this.X[11]) - 1120210379, 10) + r118;
        int r318 = rotateLeft(r317 + K(r418, r118, r217) + this.X[2] + 718787259, 15) + r418;
        int r218 = rotateLeft(((r217 + K(r318, r418, r118)) + this.X[9]) - 343485551, 21) + r318;
        this.H1 += r118;
        this.H2 += r218;
        this.H3 += r318;
        this.H4 += r418;
        this.xOff = 0;
        int r119 = 0;
        while (true) {
            int[] r219 = this.X;
            if (r119 == r219.length) {
                return;
            }
            r219[r119] = 0;
            r119++;
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
        copyIn((MD5Digest) memoable);
    }
}
