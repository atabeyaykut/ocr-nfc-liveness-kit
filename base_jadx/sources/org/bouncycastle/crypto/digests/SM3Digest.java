package org.bouncycastle.crypto.digests;

import android.support.v4.media.a;
import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SM3Digest extends GeneralDigest {
    private static final int BLOCK_SIZE = 16;
    private static final int DIGEST_LENGTH = 32;
    private static final int[] T = new int[64];
    private int[] V;
    private int[] W;
    private int[] inwords;
    private int xOff;

    static {
        int r22;
        int r12 = 0;
        while (true) {
            if (r12 >= 16) {
                break;
            }
            T[r12] = (2043430169 >>> (32 - r12)) | (2043430169 << r12);
            r12++;
        }
        for (r22 = 16; r22 < 64; r22++) {
            int r13 = r22 % 32;
            T[r22] = (2055708042 >>> (32 - r13)) | (2055708042 << r13);
        }
    }

    public SM3Digest() {
        this(CryptoServicePurpose.ANY);
    }

    public SM3Digest(CryptoServicePurpose cryptoServicePurpose) {
        super(cryptoServicePurpose);
        this.V = new int[8];
        this.inwords = new int[16];
        this.W = new int[68];
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        reset();
    }

    public SM3Digest(SM3Digest sM3Digest) {
        super(sM3Digest);
        this.V = new int[8];
        this.inwords = new int[16];
        this.W = new int[68];
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        copyIn(sM3Digest);
    }

    private int FF0(int r12, int r22, int r32) {
        return (r12 ^ r22) ^ r32;
    }

    private int FF1(int r22, int r32, int r42) {
        return (r22 & r42) | (r22 & r32) | (r32 & r42);
    }

    private int GG0(int r12, int r22, int r32) {
        return (r12 ^ r22) ^ r32;
    }

    private int GG1(int r12, int r22, int r32) {
        return ((~r12) & r32) | (r22 & r12);
    }

    private int P0(int r42) {
        return (r42 ^ ((r42 << 9) | (r42 >>> 23))) ^ ((r42 << 17) | (r42 >>> 15));
    }

    private int P1(int r42) {
        return (r42 ^ ((r42 << 15) | (r42 >>> 17))) ^ ((r42 << 23) | (r42 >>> 9));
    }

    private void copyIn(SM3Digest sM3Digest) {
        int[] r02 = sM3Digest.V;
        int[] r12 = this.V;
        System.arraycopy(r02, 0, r12, 0, r12.length);
        int[] r03 = sM3Digest.inwords;
        int[] r13 = this.inwords;
        System.arraycopy(r03, 0, r13, 0, r13.length);
        this.xOff = sM3Digest.xOff;
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new SM3Digest(this);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public CryptoServiceProperties cryptoServiceProperties() {
        return Utils.getDefaultProperties(this, 256, this.purpose);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r32) {
        finish();
        Pack.intToBigEndian(this.V, bArr, r32);
        reset();
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SM3";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        int r32;
        int r22 = 0;
        while (true) {
            if (r22 >= 16) {
                break;
            }
            this.W[r22] = this.inwords[r22];
            r22++;
        }
        for (int r23 = 16; r23 < 68; r23++) {
            int[] r42 = this.W;
            int r52 = r42[r23 - 3];
            int r6 = r42[r23 - 13];
            r42[r23] = (P1(((r52 >>> 17) | (r52 << 15)) ^ (r42[r23 - 16] ^ r42[r23 - 9])) ^ ((r6 >>> 25) | (r6 << 7))) ^ this.W[r23 - 6];
        }
        int[] r24 = this.V;
        int r43 = r24[0];
        int r62 = r24[1];
        int r82 = r24[2];
        int r10 = r24[3];
        int r11 = r24[4];
        int r12 = r24[5];
        int r13 = r24[6];
        int r25 = r24[7];
        int r15 = 0;
        for (r32 = 16; r15 < r32; r32 = 16) {
            int r33 = (r43 << 12) | (r43 >>> 20);
            int r16 = r33 + r11 + T[r15];
            int r14 = (r16 << 7) | (r16 >>> 25);
            int[] r92 = this.W;
            int r72 = r92[r15];
            int r34 = a.a(FF0(r43, r62, r82), r10, r33 ^ r14, r92[r15 + 4] ^ r72);
            int r26 = a.a(GG0(r11, r12, r13), r25, r14, r72);
            int r53 = (r62 << 9) | (r62 >>> 23);
            int r63 = (r12 << 19) | (r12 >>> 13);
            r15++;
            r10 = r82;
            r12 = r11;
            r11 = P0(r26);
            r82 = r53;
            r25 = r13;
            r13 = r63;
            r62 = r43;
            r43 = r34;
        }
        int r35 = r25;
        int r54 = r43;
        int r27 = r13;
        int r44 = 16;
        while (r44 < 64) {
            int r73 = (r54 << 12) | (r54 >>> 20);
            int r93 = r73 + r11 + T[r44];
            int r94 = (r93 >>> 25) | (r93 << 7);
            int[] r132 = this.W;
            int r142 = r132[r44];
            int r74 = a.a(FF1(r54, r62, r82), r10, r73 ^ r94, r132[r44 + 4] ^ r142);
            int r36 = a.a(GG1(r11, r12, r27), r35, r94, r142);
            int r95 = (r12 << 19) | (r12 >>> 13);
            r44++;
            r10 = r82;
            r12 = r11;
            r11 = P0(r36);
            r82 = (r62 >>> 23) | (r62 << 9);
            r35 = r27;
            r62 = r54;
            r54 = r74;
            r27 = r95;
        }
        int[] r45 = this.V;
        r45[0] = r54 ^ r45[0];
        r45[1] = r62 ^ r45[1];
        r45[2] = r45[2] ^ r82;
        r45[3] = r45[3] ^ r10;
        r45[4] = r45[4] ^ r11;
        r45[5] = r45[5] ^ r12;
        r45[6] = r27 ^ r45[6];
        r45[7] = r35 ^ r45[7];
        this.xOff = 0;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processLength(long j10) {
        int r02 = this.xOff;
        if (r02 > 14) {
            this.inwords[r02] = 0;
            this.xOff = r02 + 1;
            processBlock();
        }
        while (true) {
            int r03 = this.xOff;
            if (r03 >= 14) {
                int[] r12 = this.inwords;
                int r22 = r03 + 1;
                r12[r03] = (int) (j10 >>> 32);
                this.xOff = r22 + 1;
                r12[r22] = (int) j10;
                return;
            }
            this.inwords[r03] = 0;
            this.xOff = r03 + 1;
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processWord(byte[] bArr, int r52) {
        int[] r02 = this.inwords;
        int r12 = this.xOff;
        this.xOff = r12 + 1;
        r02[r12] = Pack.bigEndianToInt(bArr, r52);
        if (this.xOff >= 16) {
            processBlock();
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        int[] r02 = this.V;
        r02[0] = 1937774191;
        r02[1] = 1226093241;
        r02[2] = 388252375;
        r02[3] = -628488704;
        r02[4] = -1452330820;
        r02[5] = 372324522;
        r02[6] = -477237683;
        r02[7] = -1325724082;
        this.xOff = 0;
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        SM3Digest sM3Digest = (SM3Digest) memoable;
        super.copyIn((GeneralDigest) sM3Digest);
        copyIn(sM3Digest);
    }
}
