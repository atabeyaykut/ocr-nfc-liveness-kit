package org.bouncycastle.crypto.digests;

import android.support.v4.media.a;
import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class RIPEMD128Digest extends GeneralDigest {
    private static final int DIGEST_LENGTH = 16;
    private int H0;
    private int H1;
    private int H2;
    private int H3;
    private int[] X;
    private int xOff;

    public RIPEMD128Digest() {
        this(CryptoServicePurpose.ANY);
    }

    public RIPEMD128Digest(CryptoServicePurpose cryptoServicePurpose) {
        super(cryptoServicePurpose);
        this.X = new int[16];
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, 128, cryptoServicePurpose));
        reset();
    }

    public RIPEMD128Digest(RIPEMD128Digest rIPEMD128Digest) {
        super(rIPEMD128Digest.purpose);
        this.X = new int[16];
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, 128, this.purpose));
        copyIn(rIPEMD128Digest);
    }

    private int F1(int r12, int r22, int r32, int r42, int r52, int r6) {
        return RL(r12 + f1(r22, r32, r42) + r52, r6);
    }

    private int F2(int r12, int r22, int r32, int r42, int r52, int r6) {
        return RL(a.a(r12, f2(r22, r32, r42), r52, 1518500249), r6);
    }

    private int F3(int r12, int r22, int r32, int r42, int r52, int r6) {
        return RL(a.a(r12, f3(r22, r32, r42), r52, 1859775393), r6);
    }

    private int F4(int r12, int r22, int r32, int r42, int r52, int r6) {
        return RL(a.a(r12, f4(r22, r32, r42), r52, -1894007588), r6);
    }

    private int FF1(int r12, int r22, int r32, int r42, int r52, int r6) {
        return RL(r12 + f1(r22, r32, r42) + r52, r6);
    }

    private int FF2(int r12, int r22, int r32, int r42, int r52, int r6) {
        return RL(a.a(r12, f2(r22, r32, r42), r52, 1836072691), r6);
    }

    private int FF3(int r12, int r22, int r32, int r42, int r52, int r6) {
        return RL(a.a(r12, f3(r22, r32, r42), r52, 1548603684), r6);
    }

    private int FF4(int r12, int r22, int r32, int r42, int r52, int r6) {
        return RL(a.a(r12, f4(r22, r32, r42), r52, 1352829926), r6);
    }

    private int RL(int r22, int r32) {
        return (r22 >>> (32 - r32)) | (r22 << r32);
    }

    private void copyIn(RIPEMD128Digest rIPEMD128Digest) {
        super.copyIn((GeneralDigest) rIPEMD128Digest);
        this.H0 = rIPEMD128Digest.H0;
        this.H1 = rIPEMD128Digest.H1;
        this.H2 = rIPEMD128Digest.H2;
        this.H3 = rIPEMD128Digest.H3;
        int[] r02 = rIPEMD128Digest.X;
        System.arraycopy(r02, 0, this.X, 0, r02.length);
        this.xOff = rIPEMD128Digest.xOff;
    }

    private int f1(int r12, int r22, int r32) {
        return (r12 ^ r22) ^ r32;
    }

    private int f2(int r12, int r22, int r32) {
        return ((~r12) & r32) | (r22 & r12);
    }

    private int f3(int r12, int r22, int r32) {
        return (r12 | (~r22)) ^ r32;
    }

    private int f4(int r12, int r22, int r32) {
        return (r12 & r32) | (r22 & (~r32));
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new RIPEMD128Digest(this);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public CryptoServiceProperties cryptoServiceProperties() {
        return Utils.getDefaultProperties(this, this.purpose);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r42) {
        finish();
        Pack.intToLittleEndian(this.H0, bArr, r42);
        Pack.intToLittleEndian(this.H1, bArr, r42 + 4);
        Pack.intToLittleEndian(this.H2, bArr, r42 + 8);
        Pack.intToLittleEndian(this.H3, bArr, r42 + 12);
        reset();
        return 16;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "RIPEMD128";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        int r82 = this.H0;
        int r92 = this.H1;
        int r10 = this.H2;
        int r11 = this.H3;
        int r13 = F1(r82, r92, r10, r11, this.X[0], 11);
        int r15 = F1(r11, r13, r92, r10, this.X[1], 14);
        int r17 = F1(r10, r15, r13, r92, this.X[2], 15);
        int r19 = F1(r92, r17, r15, r13, this.X[3], 12);
        int r132 = F1(r13, r19, r17, r15, this.X[4], 5);
        int r152 = F1(r15, r132, r19, r17, this.X[5], 8);
        int r172 = F1(r17, r152, r132, r19, this.X[6], 7);
        int r192 = F1(r19, r172, r152, r132, this.X[7], 9);
        int r133 = F1(r132, r192, r172, r152, this.X[8], 11);
        int r153 = F1(r152, r133, r192, r172, this.X[9], 13);
        int r173 = F1(r172, r153, r133, r192, this.X[10], 14);
        int r193 = F1(r192, r173, r153, r133, this.X[11], 15);
        int r134 = F1(r133, r193, r173, r153, this.X[12], 6);
        int r154 = F1(r153, r134, r193, r173, this.X[13], 7);
        int r174 = F1(r173, r154, r134, r193, this.X[14], 9);
        int r194 = F1(r193, r174, r154, r134, this.X[15], 8);
        int r135 = F2(r134, r194, r174, r154, this.X[7], 7);
        int r155 = F2(r154, r135, r194, r174, this.X[4], 6);
        int r175 = F2(r174, r155, r135, r194, this.X[13], 8);
        int r195 = F2(r194, r175, r155, r135, this.X[1], 13);
        int r136 = F2(r135, r195, r175, r155, this.X[10], 11);
        int r156 = F2(r155, r136, r195, r175, this.X[6], 9);
        int r176 = F2(r175, r156, r136, r195, this.X[15], 7);
        int r196 = F2(r195, r176, r156, r136, this.X[3], 15);
        int r137 = F2(r136, r196, r176, r156, this.X[12], 7);
        int r157 = F2(r156, r137, r196, r176, this.X[0], 12);
        int r177 = F2(r176, r157, r137, r196, this.X[9], 15);
        int r197 = F2(r196, r177, r157, r137, this.X[5], 9);
        int r138 = F2(r137, r197, r177, r157, this.X[2], 11);
        int r158 = F2(r157, r138, r197, r177, this.X[14], 7);
        int r178 = F2(r177, r158, r138, r197, this.X[11], 13);
        int r198 = F2(r197, r178, r158, r138, this.X[8], 12);
        int r139 = F3(r138, r198, r178, r158, this.X[3], 11);
        int r159 = F3(r158, r139, r198, r178, this.X[10], 13);
        int r179 = F3(r178, r159, r139, r198, this.X[14], 6);
        int r199 = F3(r198, r179, r159, r139, this.X[4], 7);
        int r1310 = F3(r139, r199, r179, r159, this.X[9], 14);
        int r1510 = F3(r159, r1310, r199, r179, this.X[15], 9);
        int r1710 = F3(r179, r1510, r1310, r199, this.X[8], 13);
        int r1910 = F3(r199, r1710, r1510, r1310, this.X[1], 15);
        int r1311 = F3(r1310, r1910, r1710, r1510, this.X[2], 14);
        int r1511 = F3(r1510, r1311, r1910, r1710, this.X[7], 8);
        int r1711 = F3(r1710, r1511, r1311, r1910, this.X[0], 13);
        int r1911 = F3(r1910, r1711, r1511, r1311, this.X[6], 6);
        int r1312 = F3(r1311, r1911, r1711, r1511, this.X[13], 5);
        int r1512 = F3(r1511, r1312, r1911, r1711, this.X[11], 12);
        int r1712 = F3(r1711, r1512, r1312, r1911, this.X[5], 7);
        int r1912 = F3(r1911, r1712, r1512, r1312, this.X[12], 5);
        int r1313 = F4(r1312, r1912, r1712, r1512, this.X[1], 11);
        int r1513 = F4(r1512, r1313, r1912, r1712, this.X[9], 12);
        int r1713 = F4(r1712, r1513, r1313, r1912, this.X[11], 14);
        int r1913 = F4(r1912, r1713, r1513, r1313, this.X[10], 15);
        int r1314 = F4(r1313, r1913, r1713, r1513, this.X[0], 14);
        int r1514 = F4(r1513, r1314, r1913, r1713, this.X[8], 15);
        int r1714 = F4(r1713, r1514, r1314, r1913, this.X[12], 9);
        int r1914 = F4(r1913, r1714, r1514, r1314, this.X[4], 8);
        int r1315 = F4(r1314, r1914, r1714, r1514, this.X[13], 9);
        int r1515 = F4(r1514, r1315, r1914, r1714, this.X[3], 14);
        int r1715 = F4(r1714, r1515, r1315, r1914, this.X[7], 5);
        int r1915 = F4(r1914, r1715, r1515, r1315, this.X[15], 6);
        int r1316 = F4(r1315, r1915, r1715, r1515, this.X[14], 8);
        int r1516 = F4(r1515, r1316, r1915, r1715, this.X[5], 6);
        int r1716 = F4(r1715, r1516, r1316, r1915, this.X[6], 5);
        int r1916 = F4(r1915, r1716, r1516, r1316, this.X[2], 12);
        int r83 = FF4(r82, r92, r10, r11, this.X[5], 8);
        int r112 = FF4(r11, r83, r92, r10, this.X[14], 9);
        int r102 = FF4(r10, r112, r83, r92, this.X[7], 9);
        int r93 = FF4(r92, r102, r112, r83, this.X[0], 11);
        int r84 = FF4(r83, r93, r102, r112, this.X[9], 13);
        int r113 = FF4(r112, r84, r93, r102, this.X[2], 15);
        int r103 = FF4(r102, r113, r84, r93, this.X[11], 15);
        int r94 = FF4(r93, r103, r113, r84, this.X[4], 5);
        int r85 = FF4(r84, r94, r103, r113, this.X[13], 7);
        int r114 = FF4(r113, r85, r94, r103, this.X[6], 7);
        int r104 = FF4(r103, r114, r85, r94, this.X[15], 8);
        int r95 = FF4(r94, r104, r114, r85, this.X[8], 11);
        int r86 = FF4(r85, r95, r104, r114, this.X[1], 14);
        int r115 = FF4(r114, r86, r95, r104, this.X[10], 14);
        int r105 = FF4(r104, r115, r86, r95, this.X[3], 12);
        int r96 = FF4(r95, r105, r115, r86, this.X[12], 6);
        int r87 = FF3(r86, r96, r105, r115, this.X[6], 9);
        int r116 = FF3(r115, r87, r96, r105, this.X[11], 13);
        int r106 = FF3(r105, r116, r87, r96, this.X[3], 15);
        int r97 = FF3(r96, r106, r116, r87, this.X[7], 7);
        int r88 = FF3(r87, r97, r106, r116, this.X[0], 12);
        int r117 = FF3(r116, r88, r97, r106, this.X[13], 8);
        int r107 = FF3(r106, r117, r88, r97, this.X[5], 9);
        int r98 = FF3(r97, r107, r117, r88, this.X[10], 11);
        int r89 = FF3(r88, r98, r107, r117, this.X[14], 7);
        int r118 = FF3(r117, r89, r98, r107, this.X[15], 7);
        int r108 = FF3(r107, r118, r89, r98, this.X[8], 12);
        int r99 = FF3(r98, r108, r118, r89, this.X[12], 7);
        int r810 = FF3(r89, r99, r108, r118, this.X[4], 6);
        int r119 = FF3(r118, r810, r99, r108, this.X[9], 15);
        int r109 = FF3(r108, r119, r810, r99, this.X[1], 13);
        int r910 = FF3(r99, r109, r119, r810, this.X[2], 11);
        int r811 = FF2(r810, r910, r109, r119, this.X[15], 9);
        int r1110 = FF2(r119, r811, r910, r109, this.X[5], 7);
        int r1010 = FF2(r109, r1110, r811, r910, this.X[1], 15);
        int r911 = FF2(r910, r1010, r1110, r811, this.X[3], 11);
        int r812 = FF2(r811, r911, r1010, r1110, this.X[7], 8);
        int r1111 = FF2(r1110, r812, r911, r1010, this.X[14], 6);
        int r1011 = FF2(r1010, r1111, r812, r911, this.X[6], 6);
        int r912 = FF2(r911, r1011, r1111, r812, this.X[9], 14);
        int r813 = FF2(r812, r912, r1011, r1111, this.X[11], 12);
        int r1112 = FF2(r1111, r813, r912, r1011, this.X[8], 13);
        int r1012 = FF2(r1011, r1112, r813, r912, this.X[12], 5);
        int r913 = FF2(r912, r1012, r1112, r813, this.X[2], 14);
        int r814 = FF2(r813, r913, r1012, r1112, this.X[10], 13);
        int r1113 = FF2(r1112, r814, r913, r1012, this.X[0], 13);
        int r1013 = FF2(r1012, r1113, r814, r913, this.X[4], 7);
        int r914 = FF2(r913, r1013, r1113, r814, this.X[13], 5);
        int r815 = FF1(r814, r914, r1013, r1113, this.X[8], 15);
        int r1114 = FF1(r1113, r815, r914, r1013, this.X[6], 5);
        int r1014 = FF1(r1013, r1114, r815, r914, this.X[4], 8);
        int r915 = FF1(r914, r1014, r1114, r815, this.X[1], 11);
        int r816 = FF1(r815, r915, r1014, r1114, this.X[3], 14);
        int r1115 = FF1(r1114, r816, r915, r1014, this.X[11], 14);
        int r1015 = FF1(r1014, r1115, r816, r915, this.X[15], 6);
        int r916 = FF1(r915, r1015, r1115, r816, this.X[0], 14);
        int r817 = FF1(r816, r916, r1015, r1115, this.X[5], 6);
        int r1116 = FF1(r1115, r817, r916, r1015, this.X[12], 9);
        int r1016 = FF1(r1015, r1116, r817, r916, this.X[2], 12);
        int r917 = FF1(r916, r1016, r1116, r817, this.X[13], 9);
        int r818 = FF1(r817, r917, r1016, r1116, this.X[9], 12);
        int r1117 = FF1(r1116, r818, r917, r1016, this.X[7], 5);
        int r1017 = FF1(r1016, r1117, r818, r917, this.X[10], 15);
        int r02 = FF1(r917, r1017, r1117, r818, this.X[14], 8);
        int r12 = r1716 + this.H1 + r1117;
        this.H1 = this.H2 + r1516 + r818;
        this.H2 = this.H3 + r1316 + r02;
        this.H3 = this.H0 + r1916 + r1017;
        this.H0 = r12;
        this.xOff = 0;
        int r03 = 0;
        while (true) {
            int[] r14 = this.X;
            if (r03 == r14.length) {
                return;
            }
            r14[r03] = 0;
            r03++;
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
        this.H0 = 1732584193;
        this.H1 = -271733879;
        this.H2 = -1732584194;
        this.H3 = 271733878;
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
        copyIn((RIPEMD128Digest) memoable);
    }
}
