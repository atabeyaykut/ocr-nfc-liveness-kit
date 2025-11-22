package org.bouncycastle.crypto.digests;

import androidx.camera.core.impl.a;
import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.SavableDigest;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SHA256Digest extends GeneralDigest implements SavableDigest {
    private static final int DIGEST_LENGTH = 32;
    static final int[] K = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};
    private int H1;
    private int H2;
    private int H3;
    private int H4;
    private int H5;
    private int H6;
    private int H7;
    private int H8;
    private int[] X;
    private int xOff;

    public SHA256Digest() {
        this(CryptoServicePurpose.ANY);
    }

    public SHA256Digest(CryptoServicePurpose cryptoServicePurpose) {
        super(cryptoServicePurpose);
        this.X = new int[64];
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        reset();
    }

    public SHA256Digest(SHA256Digest sHA256Digest) {
        super(sHA256Digest);
        this.X = new int[64];
        copyIn(sHA256Digest);
    }

    public SHA256Digest(byte[] bArr) {
        super(bArr);
        this.X = new int[64];
        this.H1 = Pack.bigEndianToInt(bArr, 16);
        this.H2 = Pack.bigEndianToInt(bArr, 20);
        this.H3 = Pack.bigEndianToInt(bArr, 24);
        this.H4 = Pack.bigEndianToInt(bArr, 28);
        this.H5 = Pack.bigEndianToInt(bArr, 32);
        this.H6 = Pack.bigEndianToInt(bArr, 36);
        this.H7 = Pack.bigEndianToInt(bArr, 40);
        this.H8 = Pack.bigEndianToInt(bArr, 44);
        this.xOff = Pack.bigEndianToInt(bArr, 48);
        for (int r02 = 0; r02 != this.xOff; r02++) {
            this.X[r02] = Pack.bigEndianToInt(bArr, (r02 * 4) + 52);
        }
    }

    private static int Ch(int r02, int r12, int r22) {
        return ((~r02) & r22) ^ (r12 & r02);
    }

    private static int Maj(int r12, int r22, int r32) {
        return ((r12 ^ r22) & r32) | (r12 & r22);
    }

    private static int Sum0(int r32) {
        return ((r32 << 10) | (r32 >>> 22)) ^ (((r32 >>> 2) | (r32 << 30)) ^ ((r32 >>> 13) | (r32 << 19)));
    }

    private static int Sum1(int r32) {
        return ((r32 << 7) | (r32 >>> 25)) ^ (((r32 >>> 6) | (r32 << 26)) ^ ((r32 >>> 11) | (r32 << 21)));
    }

    private static int Theta0(int r32) {
        return (r32 >>> 3) ^ (((r32 >>> 7) | (r32 << 25)) ^ ((r32 >>> 18) | (r32 << 14)));
    }

    private static int Theta1(int r32) {
        return (r32 >>> 10) ^ (((r32 >>> 17) | (r32 << 15)) ^ ((r32 >>> 19) | (r32 << 13)));
    }

    private void copyIn(SHA256Digest sHA256Digest) {
        super.copyIn((GeneralDigest) sHA256Digest);
        this.H1 = sHA256Digest.H1;
        this.H2 = sHA256Digest.H2;
        this.H3 = sHA256Digest.H3;
        this.H4 = sHA256Digest.H4;
        this.H5 = sHA256Digest.H5;
        this.H6 = sHA256Digest.H6;
        this.H7 = sHA256Digest.H7;
        this.H8 = sHA256Digest.H8;
        int[] r02 = sHA256Digest.X;
        System.arraycopy(r02, 0, this.X, 0, r02.length);
        this.xOff = sHA256Digest.xOff;
    }

    public static SavableDigest newInstance() {
        return new SHA256Digest();
    }

    public static SavableDigest newInstance(CryptoServicePurpose cryptoServicePurpose) {
        return new SHA256Digest(cryptoServicePurpose);
    }

    public static SavableDigest newInstance(Digest digest) {
        if (digest instanceof SHA256Digest) {
            return new SHA256Digest((SHA256Digest) digest);
        }
        throw new IllegalArgumentException("receiver digest not available for input type ".concat(digest != null ? digest.getClass().getName() : "null"));
    }

    public static SavableDigest newInstance(byte[] bArr) {
        return new SHA256Digest(bArr);
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new SHA256Digest(this);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public CryptoServiceProperties cryptoServiceProperties() {
        return Utils.getDefaultProperties(this, 256, this.purpose);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r42) {
        finish();
        Pack.intToBigEndian(this.H1, bArr, r42);
        Pack.intToBigEndian(this.H2, bArr, r42 + 4);
        Pack.intToBigEndian(this.H3, bArr, r42 + 8);
        Pack.intToBigEndian(this.H4, bArr, r42 + 12);
        Pack.intToBigEndian(this.H5, bArr, r42 + 16);
        Pack.intToBigEndian(this.H6, bArr, r42 + 20);
        Pack.intToBigEndian(this.H7, bArr, r42 + 24);
        Pack.intToBigEndian(this.H8, bArr, r42 + 28);
        reset();
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA-256";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.digests.EncodableDigest
    public byte[] getEncodedState() {
        int r02 = a.d(this.xOff, 4, 52, 1);
        byte[] bArr = new byte[r02];
        super.populateState(bArr);
        Pack.intToBigEndian(this.H1, bArr, 16);
        Pack.intToBigEndian(this.H2, bArr, 20);
        Pack.intToBigEndian(this.H3, bArr, 24);
        Pack.intToBigEndian(this.H4, bArr, 28);
        Pack.intToBigEndian(this.H5, bArr, 32);
        Pack.intToBigEndian(this.H6, bArr, 36);
        Pack.intToBigEndian(this.H7, bArr, 40);
        Pack.intToBigEndian(this.H8, bArr, 44);
        Pack.intToBigEndian(this.xOff, bArr, 48);
        for (int r22 = 0; r22 != this.xOff; r22++) {
            Pack.intToBigEndian(this.X[r22], bArr, (r22 * 4) + 52);
        }
        bArr[r02 - 1] = (byte) this.purpose.ordinal();
        return bArr;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        for (int r12 = 16; r12 <= 63; r12++) {
            int[] r22 = this.X;
            int r32 = Theta1(r22[r12 - 2]);
            int[] r42 = this.X;
            r22[r12] = r32 + r42[r12 - 7] + Theta0(r42[r12 - 15]) + this.X[r12 - 16];
        }
        int r13 = this.H1;
        int r23 = this.H2;
        int r33 = this.H3;
        int r43 = this.H4;
        int r52 = this.H5;
        int r6 = this.H6;
        int r72 = this.H7;
        int r82 = this.H8;
        int r11 = 0;
        for (int r10 = 0; r10 < 8; r10++) {
            int r122 = Sum1(r52) + Ch(r52, r6, r72);
            int[] r132 = K;
            int r123 = r122 + r132[r11] + this.X[r11] + r82;
            int r44 = r43 + r123;
            int r83 = Sum0(r13) + Maj(r13, r23, r33) + r123;
            int r112 = r11 + 1;
            int r124 = Sum1(r44) + Ch(r44, r52, r6) + r132[r112] + this.X[r112] + r72;
            int r34 = r33 + r124;
            int r73 = Sum0(r83) + Maj(r83, r13, r23) + r124;
            int r113 = r112 + 1;
            int r125 = Sum1(r34) + Ch(r34, r44, r52) + r132[r113] + this.X[r113] + r6;
            int r24 = r23 + r125;
            int r62 = Sum0(r73) + Maj(r73, r83, r13) + r125;
            int r114 = r113 + 1;
            int r126 = Sum1(r24) + Ch(r24, r34, r44) + r132[r114] + this.X[r114] + r52;
            int r14 = r13 + r126;
            int r53 = Sum0(r62) + Maj(r62, r73, r83) + r126;
            int r115 = r114 + 1;
            int r127 = Sum1(r14) + Ch(r14, r24, r34) + r132[r115] + this.X[r115] + r44;
            r82 = r83 + r127;
            r43 = Sum0(r53) + Maj(r53, r62, r73) + r127;
            int r116 = r115 + 1;
            int r128 = Sum1(r82) + Ch(r82, r14, r24) + r132[r116] + this.X[r116] + r34;
            r72 = r73 + r128;
            r33 = Sum0(r43) + Maj(r43, r53, r62) + r128;
            int r117 = r116 + 1;
            int r129 = Sum1(r72) + Ch(r72, r82, r14) + r132[r117] + this.X[r117] + r24;
            r6 = r62 + r129;
            r23 = Sum0(r33) + Maj(r33, r43, r53) + r129;
            int r118 = r117 + 1;
            int r1210 = Sum1(r6) + Ch(r6, r72, r82) + r132[r118] + this.X[r118] + r14;
            r52 = r53 + r1210;
            r13 = Sum0(r23) + Maj(r23, r33, r43) + r1210;
            r11 = r118 + 1;
        }
        this.H1 += r13;
        this.H2 += r23;
        this.H3 += r33;
        this.H4 += r43;
        this.H5 += r52;
        this.H6 += r6;
        this.H7 += r72;
        this.H8 += r82;
        this.xOff = 0;
        for (int r15 = 0; r15 < 16; r15++) {
            this.X[r15] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processLength(long j10) {
        if (this.xOff > 14) {
            processBlock();
        }
        int[] r02 = this.X;
        r02[14] = (int) (j10 >>> 32);
        r02[15] = (int) (j10 & (-1));
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processWord(byte[] bArr, int r42) {
        this.X[this.xOff] = Pack.bigEndianToInt(bArr, r42);
        int r32 = this.xOff + 1;
        this.xOff = r32;
        if (r32 == 16) {
            processBlock();
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.H1 = 1779033703;
        this.H2 = -1150833019;
        this.H3 = 1013904242;
        this.H4 = -1521486534;
        this.H5 = 1359893119;
        this.H6 = -1694144372;
        this.H7 = 528734635;
        this.H8 = 1541459225;
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
        copyIn((SHA256Digest) memoable);
    }
}
