package org.bouncycastle.crypto.digests;

import android.support.v4.media.a;
import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class RIPEMD256Digest extends GeneralDigest {
    private static final int DIGEST_LENGTH = 32;
    private int H0;
    private int H1;
    private int H2;
    private int H3;
    private int H4;
    private int H5;
    private int H6;
    private int H7;
    private int[] X;
    private int xOff;

    public RIPEMD256Digest() {
        this(CryptoServicePurpose.ANY);
    }

    public RIPEMD256Digest(CryptoServicePurpose cryptoServicePurpose) {
        super(cryptoServicePurpose);
        this.X = new int[16];
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, 128, cryptoServicePurpose));
        reset();
    }

    public RIPEMD256Digest(RIPEMD256Digest rIPEMD256Digest) {
        super(rIPEMD256Digest.purpose);
        this.X = new int[16];
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, 128, this.purpose));
        copyIn(rIPEMD256Digest);
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

    private void copyIn(RIPEMD256Digest rIPEMD256Digest) {
        super.copyIn((GeneralDigest) rIPEMD256Digest);
        this.H0 = rIPEMD256Digest.H0;
        this.H1 = rIPEMD256Digest.H1;
        this.H2 = rIPEMD256Digest.H2;
        this.H3 = rIPEMD256Digest.H3;
        this.H4 = rIPEMD256Digest.H4;
        this.H5 = rIPEMD256Digest.H5;
        this.H6 = rIPEMD256Digest.H6;
        this.H7 = rIPEMD256Digest.H7;
        int[] r02 = rIPEMD256Digest.X;
        System.arraycopy(r02, 0, this.X, 0, r02.length);
        this.xOff = rIPEMD256Digest.xOff;
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
        return new RIPEMD256Digest(this);
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
        Pack.intToLittleEndian(this.H4, bArr, r42 + 16);
        Pack.intToLittleEndian(this.H5, bArr, r42 + 20);
        Pack.intToLittleEndian(this.H6, bArr, r42 + 24);
        Pack.intToLittleEndian(this.H7, bArr, r42 + 28);
        reset();
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "RIPEMD256";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        int r12 = this.H0;
        int r82 = this.H1;
        int r92 = this.H2;
        int r10 = this.H3;
        int r11 = this.H4;
        int r122 = this.H5;
        int r13 = this.H6;
        int r14 = this.H7;
        int r16 = F1(r12, r82, r92, r10, this.X[0], 11);
        int r102 = F1(r10, r16, r82, r92, this.X[1], 14);
        int r93 = F1(r92, r102, r16, r82, this.X[2], 15);
        int r83 = F1(r82, r93, r102, r16, this.X[3], 12);
        int r162 = F1(r16, r83, r93, r102, this.X[4], 5);
        int r103 = F1(r102, r162, r83, r93, this.X[5], 8);
        int r94 = F1(r93, r103, r162, r83, this.X[6], 7);
        int r84 = F1(r83, r94, r103, r162, this.X[7], 9);
        int r163 = F1(r162, r84, r94, r103, this.X[8], 11);
        int r104 = F1(r103, r163, r84, r94, this.X[9], 13);
        int r95 = F1(r94, r104, r163, r84, this.X[10], 14);
        int r85 = F1(r84, r95, r104, r163, this.X[11], 15);
        int r164 = F1(r163, r85, r95, r104, this.X[12], 6);
        int r105 = F1(r104, r164, r85, r95, this.X[13], 7);
        int r96 = F1(r95, r105, r164, r85, this.X[14], 9);
        int r86 = F1(r85, r96, r105, r164, this.X[15], 8);
        int r112 = FF4(r11, r122, r13, r14, this.X[5], 8);
        int r142 = FF4(r14, r112, r122, r13, this.X[14], 9);
        int r132 = FF4(r13, r142, r112, r122, this.X[7], 9);
        int r123 = FF4(r122, r132, r142, r112, this.X[0], 11);
        int r113 = FF4(r112, r123, r132, r142, this.X[9], 13);
        int r143 = FF4(r142, r113, r123, r132, this.X[2], 15);
        int r133 = FF4(r132, r143, r113, r123, this.X[11], 15);
        int r124 = FF4(r123, r133, r143, r113, this.X[4], 5);
        int r114 = FF4(r113, r124, r133, r143, this.X[13], 7);
        int r144 = FF4(r143, r114, r124, r133, this.X[6], 7);
        int r134 = FF4(r133, r144, r114, r124, this.X[15], 8);
        int r125 = FF4(r124, r134, r144, r114, this.X[8], 11);
        int r115 = FF4(r114, r125, r134, r144, this.X[1], 14);
        int r145 = FF4(r144, r115, r125, r134, this.X[10], 14);
        int r135 = FF4(r134, r145, r115, r125, this.X[3], 12);
        int r126 = FF4(r125, r135, r145, r115, this.X[12], 6);
        int r116 = F2(r115, r86, r96, r105, this.X[7], 7);
        int r106 = F2(r105, r116, r86, r96, this.X[4], 6);
        int r97 = F2(r96, r106, r116, r86, this.X[13], 8);
        int r87 = F2(r86, r97, r106, r116, this.X[1], 13);
        int r117 = F2(r116, r87, r97, r106, this.X[10], 11);
        int r107 = F2(r106, r117, r87, r97, this.X[6], 9);
        int r98 = F2(r97, r107, r117, r87, this.X[15], 7);
        int r88 = F2(r87, r98, r107, r117, this.X[3], 15);
        int r118 = F2(r117, r88, r98, r107, this.X[12], 7);
        int r108 = F2(r107, r118, r88, r98, this.X[0], 12);
        int r99 = F2(r98, r108, r118, r88, this.X[9], 15);
        int r89 = F2(r88, r99, r108, r118, this.X[5], 9);
        int r119 = F2(r118, r89, r99, r108, this.X[2], 11);
        int r109 = F2(r108, r119, r89, r99, this.X[14], 7);
        int r910 = F2(r99, r109, r119, r89, this.X[11], 13);
        int r810 = F2(r89, r910, r109, r119, this.X[8], 12);
        int r165 = FF3(r164, r126, r135, r145, this.X[6], 9);
        int r146 = FF3(r145, r165, r126, r135, this.X[11], 13);
        int r136 = FF3(r135, r146, r165, r126, this.X[3], 15);
        int r127 = FF3(r126, r136, r146, r165, this.X[7], 7);
        int r166 = FF3(r165, r127, r136, r146, this.X[0], 12);
        int r147 = FF3(r146, r166, r127, r136, this.X[13], 8);
        int r137 = FF3(r136, r147, r166, r127, this.X[5], 9);
        int r128 = FF3(r127, r137, r147, r166, this.X[10], 11);
        int r167 = FF3(r166, r128, r137, r147, this.X[14], 7);
        int r148 = FF3(r147, r167, r128, r137, this.X[15], 7);
        int r138 = FF3(r137, r148, r167, r128, this.X[8], 12);
        int r129 = FF3(r128, r138, r148, r167, this.X[12], 7);
        int r168 = FF3(r167, r129, r138, r148, this.X[4], 6);
        int r149 = FF3(r148, r168, r129, r138, this.X[9], 15);
        int r139 = FF3(r138, r149, r168, r129, this.X[1], 13);
        int r1210 = FF3(r129, r139, r149, r168, this.X[2], 11);
        int r1110 = F3(r119, r1210, r910, r109, this.X[3], 11);
        int r1010 = F3(r109, r1110, r1210, r910, this.X[10], 13);
        int r911 = F3(r910, r1010, r1110, r1210, this.X[14], 6);
        int r1211 = F3(r1210, r911, r1010, r1110, this.X[4], 7);
        int r1111 = F3(r1110, r1211, r911, r1010, this.X[9], 14);
        int r1011 = F3(r1010, r1111, r1211, r911, this.X[15], 9);
        int r912 = F3(r911, r1011, r1111, r1211, this.X[8], 13);
        int r1212 = F3(r1211, r912, r1011, r1111, this.X[1], 15);
        int r1112 = F3(r1111, r1212, r912, r1011, this.X[2], 14);
        int r1012 = F3(r1011, r1112, r1212, r912, this.X[7], 8);
        int r913 = F3(r912, r1012, r1112, r1212, this.X[0], 13);
        int r1213 = F3(r1212, r913, r1012, r1112, this.X[6], 6);
        int r1113 = F3(r1112, r1213, r913, r1012, this.X[13], 5);
        int r1013 = F3(r1012, r1113, r1213, r913, this.X[11], 12);
        int r914 = F3(r913, r1013, r1113, r1213, this.X[5], 7);
        int r1214 = F3(r1213, r914, r1013, r1113, this.X[12], 5);
        int r169 = FF2(r168, r810, r139, r149, this.X[15], 9);
        int r1410 = FF2(r149, r169, r810, r139, this.X[5], 7);
        int r1310 = FF2(r139, r1410, r169, r810, this.X[1], 15);
        int r811 = FF2(r810, r1310, r1410, r169, this.X[3], 11);
        int r1610 = FF2(r169, r811, r1310, r1410, this.X[7], 8);
        int r1411 = FF2(r1410, r1610, r811, r1310, this.X[14], 6);
        int r1311 = FF2(r1310, r1411, r1610, r811, this.X[6], 6);
        int r812 = FF2(r811, r1311, r1411, r1610, this.X[9], 14);
        int r1611 = FF2(r1610, r812, r1311, r1411, this.X[11], 12);
        int r1412 = FF2(r1411, r1611, r812, r1311, this.X[8], 13);
        int r1312 = FF2(r1311, r1412, r1611, r812, this.X[12], 5);
        int r813 = FF2(r812, r1312, r1412, r1611, this.X[2], 14);
        int r1612 = FF2(r1611, r813, r1312, r1412, this.X[10], 13);
        int r1413 = FF2(r1412, r1612, r813, r1312, this.X[0], 13);
        int r1313 = FF2(r1312, r1413, r1612, r813, this.X[4], 7);
        int r814 = FF2(r813, r1313, r1413, r1612, this.X[13], 5);
        int r1114 = F4(r1113, r1214, r1313, r1013, this.X[1], 11);
        int r1014 = F4(r1013, r1114, r1214, r1313, this.X[9], 12);
        int r1314 = F4(r1313, r1014, r1114, r1214, this.X[11], 14);
        int r1215 = F4(r1214, r1314, r1014, r1114, this.X[10], 15);
        int r1115 = F4(r1114, r1215, r1314, r1014, this.X[0], 14);
        int r1015 = F4(r1014, r1115, r1215, r1314, this.X[8], 15);
        int r1315 = F4(r1314, r1015, r1115, r1215, this.X[12], 9);
        int r1216 = F4(r1215, r1315, r1015, r1115, this.X[4], 8);
        int r1116 = F4(r1115, r1216, r1315, r1015, this.X[13], 9);
        int r1016 = F4(r1015, r1116, r1216, r1315, this.X[3], 14);
        int r1316 = F4(r1315, r1016, r1116, r1216, this.X[7], 5);
        int r1217 = F4(r1216, r1316, r1016, r1116, this.X[15], 6);
        int r1117 = F4(r1116, r1217, r1316, r1016, this.X[14], 8);
        int r1017 = F4(r1016, r1117, r1217, r1316, this.X[5], 6);
        int r1317 = F4(r1316, r1017, r1117, r1217, this.X[6], 5);
        int r1218 = F4(r1217, r1317, r1017, r1117, this.X[2], 12);
        int r1613 = FF1(r1612, r814, r914, r1413, this.X[8], 15);
        int r1414 = FF1(r1413, r1613, r814, r914, this.X[6], 5);
        int r915 = FF1(r914, r1414, r1613, r814, this.X[4], 8);
        int r815 = FF1(r814, r915, r1414, r1613, this.X[1], 11);
        int r1614 = FF1(r1613, r815, r915, r1414, this.X[3], 14);
        int r1415 = FF1(r1414, r1614, r815, r915, this.X[11], 14);
        int r916 = FF1(r915, r1415, r1614, r815, this.X[15], 6);
        int r816 = FF1(r815, r916, r1415, r1614, this.X[0], 14);
        int r1615 = FF1(r1614, r816, r916, r1415, this.X[5], 6);
        int r1416 = FF1(r1415, r1615, r816, r916, this.X[12], 9);
        int r917 = FF1(r916, r1416, r1615, r816, this.X[2], 12);
        int r817 = FF1(r816, r917, r1416, r1615, this.X[13], 9);
        int r1616 = FF1(r1615, r817, r917, r1416, this.X[9], 12);
        int r1417 = FF1(r1416, r1616, r817, r917, this.X[7], 5);
        int r918 = FF1(r917, r1417, r1616, r817, this.X[10], 15);
        int r02 = FF1(r817, r918, r1417, r1616, this.X[14], 8);
        this.H0 += r1117;
        this.H1 += r1218;
        this.H2 += r1317;
        this.H3 += r1417;
        this.H4 += r1616;
        this.H5 += r02;
        this.H6 += r918;
        this.H7 += r1017;
        this.xOff = 0;
        int r03 = 0;
        while (true) {
            int[] r15 = this.X;
            if (r03 == r15.length) {
                return;
            }
            r15[r03] = 0;
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
        this.H4 = 1985229328;
        this.H5 = -19088744;
        this.H6 = -1985229329;
        this.H7 = 19088743;
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
        copyIn((RIPEMD256Digest) memoable);
    }
}
