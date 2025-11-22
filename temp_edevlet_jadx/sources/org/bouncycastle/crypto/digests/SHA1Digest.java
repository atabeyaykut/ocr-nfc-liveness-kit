package org.bouncycastle.crypto.digests;

import androidx.camera.core.impl.a;
import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SHA1Digest extends GeneralDigest implements EncodableDigest {
    private static final int DIGEST_LENGTH = 20;
    private static final int Y1 = 1518500249;
    private static final int Y2 = 1859775393;
    private static final int Y3 = -1894007588;
    private static final int Y4 = -899497514;
    private int H1;
    private int H2;
    private int H3;
    private int H4;
    private int H5;
    private int[] X;
    private int xOff;

    public SHA1Digest() {
        this(CryptoServicePurpose.ANY);
    }

    public SHA1Digest(CryptoServicePurpose cryptoServicePurpose) {
        super(cryptoServicePurpose);
        this.X = new int[80];
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        reset();
    }

    public SHA1Digest(SHA1Digest sHA1Digest) {
        super(sHA1Digest);
        this.X = new int[80];
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        copyIn(sHA1Digest);
    }

    public SHA1Digest(byte[] bArr) {
        super(bArr);
        this.X = new int[80];
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        this.H1 = Pack.bigEndianToInt(bArr, 16);
        this.H2 = Pack.bigEndianToInt(bArr, 20);
        this.H3 = Pack.bigEndianToInt(bArr, 24);
        this.H4 = Pack.bigEndianToInt(bArr, 28);
        this.H5 = Pack.bigEndianToInt(bArr, 32);
        this.xOff = Pack.bigEndianToInt(bArr, 36);
        for (int r02 = 0; r02 != this.xOff; r02++) {
            this.X[r02] = Pack.bigEndianToInt(bArr, (r02 * 4) + 40);
        }
    }

    private void copyIn(SHA1Digest sHA1Digest) {
        this.H1 = sHA1Digest.H1;
        this.H2 = sHA1Digest.H2;
        this.H3 = sHA1Digest.H3;
        this.H4 = sHA1Digest.H4;
        this.H5 = sHA1Digest.H5;
        int[] r02 = sHA1Digest.X;
        System.arraycopy(r02, 0, this.X, 0, r02.length);
        this.xOff = sHA1Digest.xOff;
    }

    private int f(int r12, int r22, int r32) {
        return ((~r12) & r32) | (r22 & r12);
    }

    private int g(int r22, int r32, int r42) {
        return (r22 & r42) | (r22 & r32) | (r32 & r42);
    }

    private int h(int r12, int r22, int r32) {
        return (r12 ^ r22) ^ r32;
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new SHA1Digest(this);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public CryptoServiceProperties cryptoServiceProperties() {
        return Utils.getDefaultProperties(this, 128, this.purpose);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r42) {
        finish();
        Pack.intToBigEndian(this.H1, bArr, r42);
        Pack.intToBigEndian(this.H2, bArr, r42 + 4);
        Pack.intToBigEndian(this.H3, bArr, r42 + 8);
        Pack.intToBigEndian(this.H4, bArr, r42 + 12);
        Pack.intToBigEndian(this.H5, bArr, r42 + 16);
        reset();
        return 20;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return McElieceCCA2KeyGenParameterSpec.SHA1;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 20;
    }

    @Override // org.bouncycastle.crypto.digests.EncodableDigest
    public byte[] getEncodedState() {
        int r02 = a.d(this.xOff, 4, 40, 1);
        byte[] bArr = new byte[r02];
        super.populateState(bArr);
        Pack.intToBigEndian(this.H1, bArr, 16);
        Pack.intToBigEndian(this.H2, bArr, 20);
        Pack.intToBigEndian(this.H3, bArr, 24);
        Pack.intToBigEndian(this.H4, bArr, 28);
        Pack.intToBigEndian(this.H5, bArr, 32);
        Pack.intToBigEndian(this.xOff, bArr, 36);
        for (int r22 = 0; r22 != this.xOff; r22++) {
            Pack.intToBigEndian(this.X[r22], bArr, (r22 * 4) + 40);
        }
        bArr[r02 - 1] = (byte) this.purpose.ordinal();
        return bArr;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        for (int r12 = 16; r12 < 80; r12++) {
            int[] r22 = this.X;
            int r32 = ((r22[r12 - 3] ^ r22[r12 - 8]) ^ r22[r12 - 14]) ^ r22[r12 - 16];
            r22[r12] = (r32 >>> 31) | (r32 << 1);
        }
        int r13 = this.H1;
        int r23 = this.H2;
        int r33 = this.H3;
        int r42 = this.H4;
        int r52 = this.H5;
        int r72 = 0;
        int r82 = 0;
        while (r72 < 4) {
            int r11 = r82 + 1;
            int r53 = android.support.v4.media.a.a(((r13 << 5) | (r13 >>> 27)) + f(r23, r33, r42), this.X[r82], Y1, r52);
            int r24 = (r23 >>> 2) | (r23 << 30);
            int r122 = r11 + 1;
            int r43 = android.support.v4.media.a.a(((r53 << 5) | (r53 >>> 27)) + f(r13, r24, r33), this.X[r11], Y1, r42);
            int r14 = (r13 >>> 2) | (r13 << 30);
            int r112 = r122 + 1;
            int r34 = android.support.v4.media.a.a(((r43 << 5) | (r43 >>> 27)) + f(r53, r14, r24), this.X[r122], Y1, r33);
            r52 = (r53 >>> 2) | (r53 << 30);
            int r123 = r112 + 1;
            r23 = android.support.v4.media.a.a(((r34 << 5) | (r34 >>> 27)) + f(r43, r52, r14), this.X[r112], Y1, r24);
            r42 = (r43 >>> 2) | (r43 << 30);
            r13 = android.support.v4.media.a.a(((r23 << 5) | (r23 >>> 27)) + f(r34, r42, r52), this.X[r123], Y1, r14);
            r33 = (r34 >>> 2) | (r34 << 30);
            r72++;
            r82 = r123 + 1;
        }
        int r73 = 0;
        while (r73 < 4) {
            int r124 = r82 + 1;
            int r54 = android.support.v4.media.a.a(((r13 << 5) | (r13 >>> 27)) + h(r23, r33, r42), this.X[r82], Y2, r52);
            int r25 = (r23 >>> 2) | (r23 << 30);
            int r132 = r124 + 1;
            int r44 = android.support.v4.media.a.a(((r54 << 5) | (r54 >>> 27)) + h(r13, r25, r33), this.X[r124], Y2, r42);
            int r15 = (r13 >>> 2) | (r13 << 30);
            int r125 = r132 + 1;
            int r35 = android.support.v4.media.a.a(((r44 << 5) | (r44 >>> 27)) + h(r54, r15, r25), this.X[r132], Y2, r33);
            r52 = (r54 >>> 2) | (r54 << 30);
            int r133 = r125 + 1;
            r23 = android.support.v4.media.a.a(((r35 << 5) | (r35 >>> 27)) + h(r44, r52, r15), this.X[r125], Y2, r25);
            r42 = (r44 >>> 2) | (r44 << 30);
            r13 = android.support.v4.media.a.a(((r23 << 5) | (r23 >>> 27)) + h(r35, r42, r52), this.X[r133], Y2, r15);
            r33 = (r35 >>> 2) | (r35 << 30);
            r73++;
            r82 = r133 + 1;
        }
        int r74 = 0;
        while (r74 < 4) {
            int r126 = r82 + 1;
            int r55 = android.support.v4.media.a.a(((r13 << 5) | (r13 >>> 27)) + g(r23, r33, r42), this.X[r82], Y3, r52);
            int r26 = (r23 >>> 2) | (r23 << 30);
            int r134 = r126 + 1;
            int r45 = android.support.v4.media.a.a(((r55 << 5) | (r55 >>> 27)) + g(r13, r26, r33), this.X[r126], Y3, r42);
            int r16 = (r13 >>> 2) | (r13 << 30);
            int r127 = r134 + 1;
            int r36 = android.support.v4.media.a.a(((r45 << 5) | (r45 >>> 27)) + g(r55, r16, r26), this.X[r134], Y3, r33);
            r52 = (r55 >>> 2) | (r55 << 30);
            int r135 = r127 + 1;
            r23 = android.support.v4.media.a.a(((r36 << 5) | (r36 >>> 27)) + g(r45, r52, r16), this.X[r127], Y3, r26);
            r42 = (r45 >>> 2) | (r45 << 30);
            r13 = android.support.v4.media.a.a(((r23 << 5) | (r23 >>> 27)) + g(r36, r42, r52), this.X[r135], Y3, r16);
            r33 = (r36 >>> 2) | (r36 << 30);
            r74++;
            r82 = r135 + 1;
        }
        int r75 = 0;
        while (r75 <= 3) {
            int r113 = r82 + 1;
            int r56 = android.support.v4.media.a.a(((r13 << 5) | (r13 >>> 27)) + h(r23, r33, r42), this.X[r82], Y4, r52);
            int r27 = (r23 >>> 2) | (r23 << 30);
            int r128 = r113 + 1;
            int r46 = android.support.v4.media.a.a(((r56 << 5) | (r56 >>> 27)) + h(r13, r27, r33), this.X[r113], Y4, r42);
            int r17 = (r13 >>> 2) | (r13 << 30);
            int r114 = r128 + 1;
            int r37 = android.support.v4.media.a.a(((r46 << 5) | (r46 >>> 27)) + h(r56, r17, r27), this.X[r128], Y4, r33);
            r52 = (r56 >>> 2) | (r56 << 30);
            int r129 = r114 + 1;
            r23 = android.support.v4.media.a.a(((r37 << 5) | (r37 >>> 27)) + h(r46, r52, r17), this.X[r114], Y4, r27);
            r42 = (r46 >>> 2) | (r46 << 30);
            r13 = android.support.v4.media.a.a(((r23 << 5) | (r23 >>> 27)) + h(r37, r42, r52), this.X[r129], Y4, r17);
            r33 = (r37 >>> 2) | (r37 << 30);
            r75++;
            r82 = r129 + 1;
        }
        this.H1 += r13;
        this.H2 += r23;
        this.H3 += r33;
        this.H4 += r42;
        this.H5 += r52;
        this.xOff = 0;
        for (int r18 = 0; r18 < 16; r18++) {
            this.X[r18] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processLength(long j10) {
        if (this.xOff > 14) {
            processBlock();
        }
        int[] r02 = this.X;
        r02[14] = (int) (j10 >>> 32);
        r02[15] = (int) j10;
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
        this.H1 = 1732584193;
        this.H2 = -271733879;
        this.H3 = -1732584194;
        this.H4 = 271733878;
        this.H5 = -1009589776;
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
        SHA1Digest sHA1Digest = (SHA1Digest) memoable;
        super.copyIn((GeneralDigest) sHA1Digest);
        copyIn(sHA1Digest);
    }
}
