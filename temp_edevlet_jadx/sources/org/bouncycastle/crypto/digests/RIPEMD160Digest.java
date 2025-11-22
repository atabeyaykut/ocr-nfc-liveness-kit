package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class RIPEMD160Digest extends GeneralDigest {
    private static final int DIGEST_LENGTH = 20;
    private int H0;
    private int H1;
    private int H2;
    private int H3;
    private int H4;
    private int[] X;
    private int xOff;

    public RIPEMD160Digest() {
        this(CryptoServicePurpose.ANY);
    }

    public RIPEMD160Digest(CryptoServicePurpose cryptoServicePurpose) {
        super(cryptoServicePurpose);
        this.X = new int[16];
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        reset();
    }

    public RIPEMD160Digest(RIPEMD160Digest rIPEMD160Digest) {
        super(rIPEMD160Digest);
        this.X = new int[16];
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
        copyIn(rIPEMD160Digest);
    }

    private int RL(int r22, int r32) {
        return (r22 >>> (32 - r32)) | (r22 << r32);
    }

    private void copyIn(RIPEMD160Digest rIPEMD160Digest) {
        super.copyIn((GeneralDigest) rIPEMD160Digest);
        this.H0 = rIPEMD160Digest.H0;
        this.H1 = rIPEMD160Digest.H1;
        this.H2 = rIPEMD160Digest.H2;
        this.H3 = rIPEMD160Digest.H3;
        this.H4 = rIPEMD160Digest.H4;
        int[] r02 = rIPEMD160Digest.X;
        System.arraycopy(r02, 0, this.X, 0, r02.length);
        this.xOff = rIPEMD160Digest.xOff;
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

    private int f5(int r12, int r22, int r32) {
        return r12 ^ (r22 | (~r32));
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new RIPEMD160Digest(this);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public CryptoServiceProperties cryptoServiceProperties() {
        return Utils.getDefaultProperties(this, 128, this.purpose);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r42) {
        finish();
        Pack.intToLittleEndian(this.H0, bArr, r42);
        Pack.intToLittleEndian(this.H1, bArr, r42 + 4);
        Pack.intToLittleEndian(this.H2, bArr, r42 + 8);
        Pack.intToLittleEndian(this.H3, bArr, r42 + 12);
        Pack.intToLittleEndian(this.H4, bArr, r42 + 16);
        reset();
        return 20;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "RIPEMD160";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 20;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        int r12 = this.H0;
        int r22 = this.H1;
        int r32 = this.H2;
        int r42 = this.H3;
        int r52 = this.H4;
        int r6 = RL(f1(r22, r32, r42) + r12 + this.X[0], 11) + r52;
        int r10 = RL(r32, 10);
        int r11 = RL(f1(r6, r22, r10) + r52 + this.X[1], 14) + r42;
        int r14 = RL(r22, 10);
        int r15 = RL(f1(r11, r6, r14) + r42 + this.X[2], 15) + r10;
        int r62 = RL(r6, 10);
        int r102 = RL(r10 + f1(r15, r11, r62) + this.X[3], 12) + r14;
        int r112 = RL(r11, 10);
        int r142 = RL(r14 + f1(r102, r15, r112) + this.X[4], 5) + r62;
        int r152 = RL(r15, 10);
        int r63 = RL(r62 + f1(r142, r102, r152) + this.X[5], 8) + r112;
        int r103 = RL(r102, 10);
        int r113 = RL(r112 + f1(r63, r142, r103) + this.X[6], 7) + r152;
        int r143 = RL(r142, 10);
        int r153 = RL(r152 + f1(r113, r63, r143) + this.X[7], 9) + r103;
        int r64 = RL(r63, 10);
        int r82 = RL(r103 + f1(r153, r113, r64) + this.X[8], 11) + r143;
        int r104 = RL(r113, 10);
        int r144 = RL(r143 + f1(r82, r153, r104) + this.X[9], 13) + r64;
        int r154 = RL(r153, 10);
        int r65 = RL(r64 + f1(r144, r82, r154) + this.X[10], 14) + r104;
        int r83 = RL(r82, 10);
        int r105 = RL(r104 + f1(r65, r144, r83) + this.X[11], 15) + r154;
        int r13 = RL(r144, 10);
        int r155 = RL(r154 + f1(r105, r65, r13) + this.X[12], 6) + r83;
        int r66 = RL(r65, 10);
        int r84 = RL(r83 + f1(r155, r105, r66) + this.X[13], 7) + r13;
        int r106 = RL(r105, 10);
        int r132 = RL(r13 + f1(r84, r155, r106) + this.X[14], 9) + r66;
        int r145 = RL(r155, 10);
        int r67 = RL(r66 + f1(r132, r84, r145) + this.X[15], 8) + r106;
        int r85 = RL(r84, 10);
        int r16 = RL(r12 + f5(r22, r32, r42) + this.X[5] + 1352829926, 8) + r52;
        int r33 = RL(r32, 10);
        int r53 = RL(r52 + f5(r16, r22, r33) + this.X[14] + 1352829926, 9) + r42;
        int r23 = RL(r22, 10);
        int r43 = RL(r42 + f5(r53, r16, r23) + this.X[7] + 1352829926, 9) + r33;
        int r17 = RL(r16, 10);
        int r34 = RL(r33 + f5(r43, r53, r17) + this.X[0] + 1352829926, 11) + r23;
        int r54 = RL(r53, 10);
        int r24 = RL(r23 + f5(r34, r43, r54) + this.X[9] + 1352829926, 13) + r17;
        int r44 = RL(r43, 10);
        int r18 = RL(r17 + f5(r24, r34, r44) + this.X[2] + 1352829926, 15) + r54;
        int r35 = RL(r34, 10);
        int r55 = RL(r54 + f5(r18, r24, r35) + this.X[11] + 1352829926, 15) + r44;
        int r25 = RL(r24, 10);
        int r45 = RL(r44 + f5(r55, r18, r25) + this.X[4] + 1352829926, 5) + r35;
        int r19 = RL(r18, 10);
        int r36 = RL(r35 + f5(r45, r55, r19) + this.X[13] + 1352829926, 7) + r25;
        int r56 = RL(r55, 10);
        int r26 = RL(r25 + f5(r36, r45, r56) + this.X[6] + 1352829926, 7) + r19;
        int r46 = RL(r45, 10);
        int r110 = RL(r19 + f5(r26, r36, r46) + this.X[15] + 1352829926, 8) + r56;
        int r37 = RL(r36, 10);
        int r57 = RL(r56 + f5(r110, r26, r37) + this.X[8] + 1352829926, 11) + r46;
        int r27 = RL(r26, 10);
        int r47 = RL(r46 + f5(r57, r110, r27) + this.X[1] + 1352829926, 14) + r37;
        int r111 = RL(r110, 10);
        int r38 = RL(r37 + f5(r47, r57, r111) + this.X[10] + 1352829926, 14) + r27;
        int r58 = RL(r57, 10);
        int r28 = RL(r27 + f5(r38, r47, r58) + this.X[3] + 1352829926, 12) + r111;
        int r48 = RL(r47, 10);
        int r114 = RL(r111 + f5(r28, r38, r48) + this.X[12] + 1352829926, 6) + r58;
        int r39 = RL(r38, 10);
        int r107 = RL(r106 + f2(r67, r132, r85) + this.X[7] + 1518500249, 7) + r145;
        int r122 = RL(r132, 10);
        int r146 = RL(r145 + f2(r107, r67, r122) + this.X[4] + 1518500249, 6) + r85;
        int r68 = RL(r67, 10);
        int r86 = RL(r85 + f2(r146, r107, r68) + this.X[13] + 1518500249, 8) + r122;
        int r108 = RL(r107, 10);
        int r123 = RL(r122 + f2(r86, r146, r108) + this.X[1] + 1518500249, 13) + r68;
        int r133 = RL(r146, 10);
        int r69 = RL(r68 + f2(r123, r86, r133) + this.X[10] + 1518500249, 11) + r108;
        int r87 = RL(r86, 10);
        int r109 = RL(r108 + f2(r69, r123, r87) + this.X[6] + 1518500249, 9) + r133;
        int r124 = RL(r123, 10);
        int r134 = RL(r133 + f2(r109, r69, r124) + this.X[15] + 1518500249, 7) + r87;
        int r610 = RL(r69, 10);
        int r88 = RL(r87 + f2(r134, r109, r610) + this.X[3] + 1518500249, 15) + r124;
        int r1010 = RL(r109, 10);
        int r125 = RL(r124 + f2(r88, r134, r1010) + this.X[12] + 1518500249, 7) + r610;
        int r135 = RL(r134, 10);
        int r611 = RL(r610 + f2(r125, r88, r135) + this.X[0] + 1518500249, 12) + r1010;
        int r89 = RL(r88, 10);
        int r1011 = RL(r1010 + f2(r611, r125, r89) + this.X[9] + 1518500249, 15) + r135;
        int r126 = RL(r125, 10);
        int r136 = RL(r135 + f2(r1011, r611, r126) + this.X[5] + 1518500249, 9) + r89;
        int r612 = RL(r611, 10);
        int r810 = RL(r89 + f2(r136, r1011, r612) + this.X[2] + 1518500249, 11) + r126;
        int r1012 = RL(r1011, 10);
        int r127 = RL(r126 + f2(r810, r136, r1012) + this.X[14] + 1518500249, 7) + r612;
        int r137 = RL(r136, 10);
        int r613 = RL(r612 + f2(r127, r810, r137) + this.X[11] + 1518500249, 13) + r1012;
        int r811 = RL(r810, 10);
        int r1013 = RL(r1012 + f2(r613, r127, r811) + this.X[8] + 1518500249, 12) + r137;
        int r115 = RL(r127, 10);
        int r59 = RL(r58 + f4(r114, r28, r39) + this.X[6] + 1548603684, 9) + r48;
        int r29 = RL(r28, 10);
        int r49 = RL(r48 + f4(r59, r114, r29) + this.X[11] + 1548603684, 13) + r39;
        int r116 = RL(r114, 10);
        int r310 = RL(r39 + f4(r49, r59, r116) + this.X[3] + 1548603684, 15) + r29;
        int r510 = RL(r59, 10);
        int r210 = RL(r29 + f4(r310, r49, r510) + this.X[7] + 1548603684, 7) + r116;
        int r410 = RL(r49, 10);
        int r117 = RL(r116 + f4(r210, r310, r410) + this.X[0] + 1548603684, 12) + r510;
        int r311 = RL(r310, 10);
        int r511 = RL(r510 + f4(r117, r210, r311) + this.X[13] + 1548603684, 8) + r410;
        int r211 = RL(r210, 10);
        int r411 = RL(r410 + f4(r511, r117, r211) + this.X[5] + 1548603684, 9) + r311;
        int r118 = RL(r117, 10);
        int r312 = RL(r311 + f4(r411, r511, r118) + this.X[10] + 1548603684, 11) + r211;
        int r512 = RL(r511, 10);
        int r212 = RL(r211 + f4(r312, r411, r512) + this.X[14] + 1548603684, 7) + r118;
        int r412 = RL(r411, 10);
        int r119 = RL(r118 + f4(r212, r312, r412) + this.X[15] + 1548603684, 7) + r512;
        int r313 = RL(r312, 10);
        int r513 = RL(r512 + f4(r119, r212, r313) + this.X[8] + 1548603684, 12) + r412;
        int r213 = RL(r212, 10);
        int r413 = RL(r412 + f4(r513, r119, r213) + this.X[12] + 1548603684, 7) + r313;
        int r120 = RL(r119, 10);
        int r314 = RL(r313 + f4(r413, r513, r120) + this.X[4] + 1548603684, 6) + r213;
        int r514 = RL(r513, 10);
        int r214 = RL(r213 + f4(r314, r413, r514) + this.X[9] + 1548603684, 15) + r120;
        int r414 = RL(r413, 10);
        int r121 = RL(r120 + f4(r214, r314, r414) + this.X[1] + 1548603684, 13) + r514;
        int r315 = RL(r314, 10);
        int r515 = RL(r514 + f4(r121, r214, r315) + this.X[2] + 1548603684, 11) + r414;
        int r215 = RL(r214, 10);
        int r138 = RL(r137 + f3(r1013, r613, r115) + this.X[3] + 1859775393, 11) + r811;
        int r614 = RL(r613, 10);
        int r812 = RL(r811 + f3(r138, r1013, r614) + this.X[10] + 1859775393, 13) + r115;
        int r1014 = RL(r1013, 10);
        int r1110 = RL(r115 + f3(r812, r138, r1014) + this.X[14] + 1859775393, 6) + r614;
        int r139 = RL(r138, 10);
        int r615 = RL(r614 + f3(r1110, r812, r139) + this.X[4] + 1859775393, 7) + r1014;
        int r813 = RL(r812, 10);
        int r1015 = RL(r1014 + f3(r615, r1110, r813) + this.X[9] + 1859775393, 14) + r139;
        int r1111 = RL(r1110, 10);
        int r1310 = RL(r139 + f3(r1015, r615, r1111) + this.X[15] + 1859775393, 9) + r813;
        int r616 = RL(r615, 10);
        int r814 = RL(r813 + f3(r1310, r1015, r616) + this.X[8] + 1859775393, 13) + r1111;
        int r1016 = RL(r1015, 10);
        int r1112 = RL(r1111 + f3(r814, r1310, r1016) + this.X[1] + 1859775393, 15) + r616;
        int r1311 = RL(r1310, 10);
        int r617 = RL(r616 + f3(r1112, r814, r1311) + this.X[2] + 1859775393, 14) + r1016;
        int r815 = RL(r814, 10);
        int r1017 = RL(r1016 + f3(r617, r1112, r815) + this.X[7] + 1859775393, 8) + r1311;
        int r1113 = RL(r1112, 10);
        int r1312 = RL(r1311 + f3(r1017, r617, r1113) + this.X[0] + 1859775393, 13) + r815;
        int r618 = RL(r617, 10);
        int r816 = RL(r815 + f3(r1312, r1017, r618) + this.X[6] + 1859775393, 6) + r1113;
        int r1018 = RL(r1017, 10);
        int r1114 = RL(r1113 + f3(r816, r1312, r1018) + this.X[13] + 1859775393, 5) + r618;
        int r1313 = RL(r1312, 10);
        int r619 = RL(r618 + f3(r1114, r816, r1313) + this.X[11] + 1859775393, 12) + r1018;
        int r817 = RL(r816, 10);
        int r1019 = RL(r1018 + f3(r619, r1114, r817) + this.X[5] + 1859775393, 7) + r1313;
        int r1115 = RL(r1114, 10);
        int r1314 = RL(r1313 + f3(r1019, r619, r1115) + this.X[12] + 1859775393, 5) + r817;
        int r620 = RL(r619, 10);
        int r415 = RL(r414 + f3(r515, r121, r215) + this.X[15] + 1836072691, 9) + r315;
        int r128 = RL(r121, 10);
        int r316 = RL(r315 + f3(r415, r515, r128) + this.X[5] + 1836072691, 7) + r215;
        int r516 = RL(r515, 10);
        int r216 = RL(r215 + f3(r316, r415, r516) + this.X[1] + 1836072691, 15) + r128;
        int r416 = RL(r415, 10);
        int r129 = RL(r128 + f3(r216, r316, r416) + this.X[3] + 1836072691, 11) + r516;
        int r317 = RL(r316, 10);
        int r517 = RL(r516 + f3(r129, r216, r317) + this.X[7] + 1836072691, 8) + r416;
        int r217 = RL(r216, 10);
        int r417 = RL(r416 + f3(r517, r129, r217) + this.X[14] + 1836072691, 6) + r317;
        int r130 = RL(r129, 10);
        int r318 = RL(r317 + f3(r417, r517, r130) + this.X[6] + 1836072691, 6) + r217;
        int r518 = RL(r517, 10);
        int r218 = RL(r217 + f3(r318, r417, r518) + this.X[9] + 1836072691, 14) + r130;
        int r418 = RL(r417, 10);
        int r131 = RL(r130 + f3(r218, r318, r418) + this.X[11] + 1836072691, 12) + r518;
        int r319 = RL(r318, 10);
        int r519 = RL(r518 + f3(r131, r218, r319) + this.X[8] + 1836072691, 13) + r418;
        int r219 = RL(r218, 10);
        int r419 = RL(r418 + f3(r519, r131, r219) + this.X[12] + 1836072691, 5) + r319;
        int r140 = RL(r131, 10);
        int r320 = RL(r319 + f3(r419, r519, r140) + this.X[2] + 1836072691, 14) + r219;
        int r520 = RL(r519, 10);
        int r220 = RL(r219 + f3(r320, r419, r520) + this.X[10] + 1836072691, 13) + r140;
        int r420 = RL(r419, 10);
        int r141 = RL(r140 + f3(r220, r320, r420) + this.X[0] + 1836072691, 13) + r520;
        int r321 = RL(r320, 10);
        int r521 = RL(r520 + f3(r141, r220, r321) + this.X[4] + 1836072691, 7) + r420;
        int r221 = RL(r220, 10);
        int r421 = RL(r420 + f3(r521, r141, r221) + this.X[13] + 1836072691, 5) + r321;
        int r147 = RL(r141, 10);
        int r818 = RL(((r817 + f4(r1314, r1019, r620)) + this.X[1]) - 1894007588, 11) + r1115;
        int r1020 = RL(r1019, 10);
        int r1116 = RL(((r1115 + f4(r818, r1314, r1020)) + this.X[9]) - 1894007588, 12) + r620;
        int r1315 = RL(r1314, 10);
        int r621 = RL(((r620 + f4(r1116, r818, r1315)) + this.X[11]) - 1894007588, 14) + r1020;
        int r819 = RL(r818, 10);
        int r1021 = RL(((r1020 + f4(r621, r1116, r819)) + this.X[10]) - 1894007588, 15) + r1315;
        int r1117 = RL(r1116, 10);
        int r1316 = RL(((r1315 + f4(r1021, r621, r1117)) + this.X[0]) - 1894007588, 14) + r819;
        int r622 = RL(r621, 10);
        int r820 = RL(((r819 + f4(r1316, r1021, r622)) + this.X[8]) - 1894007588, 15) + r1117;
        int r1022 = RL(r1021, 10);
        int r1118 = RL(((r1117 + f4(r820, r1316, r1022)) + this.X[12]) - 1894007588, 9) + r622;
        int r1317 = RL(r1316, 10);
        int r623 = RL(((r622 + f4(r1118, r820, r1317)) + this.X[4]) - 1894007588, 8) + r1022;
        int r821 = RL(r820, 10);
        int r1023 = RL(((r1022 + f4(r623, r1118, r821)) + this.X[13]) - 1894007588, 9) + r1317;
        int r1119 = RL(r1118, 10);
        int r1318 = RL(((r1317 + f4(r1023, r623, r1119)) + this.X[3]) - 1894007588, 14) + r821;
        int r624 = RL(r623, 10);
        int r822 = RL(((r821 + f4(r1318, r1023, r624)) + this.X[7]) - 1894007588, 5) + r1119;
        int r1024 = RL(r1023, 10);
        int r1120 = RL(((r1119 + f4(r822, r1318, r1024)) + this.X[15]) - 1894007588, 6) + r624;
        int r1319 = RL(r1318, 10);
        int r625 = RL(((r624 + f4(r1120, r822, r1319)) + this.X[14]) - 1894007588, 8) + r1024;
        int r823 = RL(r822, 10);
        int r1025 = RL(((r1024 + f4(r625, r1120, r823)) + this.X[5]) - 1894007588, 6) + r1319;
        int r1121 = RL(r1120, 10);
        int r1320 = RL(((r1319 + f4(r1025, r625, r1121)) + this.X[6]) - 1894007588, 5) + r823;
        int r626 = RL(r625, 10);
        int r824 = RL(((r823 + f4(r1320, r1025, r626)) + this.X[2]) - 1894007588, 12) + r1121;
        int r1026 = RL(r1025, 10);
        int r322 = RL(r321 + f2(r421, r521, r147) + this.X[8] + 2053994217, 15) + r221;
        int r522 = RL(r521, 10);
        int r222 = RL(r221 + f2(r322, r421, r522) + this.X[6] + 2053994217, 5) + r147;
        int r422 = RL(r421, 10);
        int r148 = RL(r147 + f2(r222, r322, r422) + this.X[4] + 2053994217, 8) + r522;
        int r323 = RL(r322, 10);
        int r523 = RL(r522 + f2(r148, r222, r323) + this.X[1] + 2053994217, 11) + r422;
        int r223 = RL(r222, 10);
        int r423 = RL(r422 + f2(r523, r148, r223) + this.X[3] + 2053994217, 14) + r323;
        int r149 = RL(r148, 10);
        int r324 = RL(r323 + f2(r423, r523, r149) + this.X[11] + 2053994217, 14) + r223;
        int r524 = RL(r523, 10);
        int r224 = RL(r223 + f2(r324, r423, r524) + this.X[15] + 2053994217, 6) + r149;
        int r424 = RL(r423, 10);
        int r150 = RL(r149 + f2(r224, r324, r424) + this.X[0] + 2053994217, 14) + r524;
        int r325 = RL(r324, 10);
        int r525 = RL(r524 + f2(r150, r224, r325) + this.X[5] + 2053994217, 6) + r424;
        int r225 = RL(r224, 10);
        int r425 = RL(r424 + f2(r525, r150, r225) + this.X[12] + 2053994217, 9) + r325;
        int r151 = RL(r150, 10);
        int r326 = RL(r325 + f2(r425, r525, r151) + this.X[2] + 2053994217, 12) + r225;
        int r526 = RL(r525, 10);
        int r226 = RL(r225 + f2(r326, r425, r526) + this.X[13] + 2053994217, 9) + r151;
        int r426 = RL(r425, 10);
        int r156 = RL(r151 + f2(r226, r326, r426) + this.X[9] + 2053994217, 12) + r526;
        int r327 = RL(r326, 10);
        int r527 = RL(r526 + f2(r156, r226, r327) + this.X[7] + 2053994217, 5) + r426;
        int r227 = RL(r226, 10);
        int r427 = RL(r426 + f2(r527, r156, r227) + this.X[10] + 2053994217, 15) + r327;
        int r157 = RL(r156, 10);
        int r328 = RL(r327 + f2(r427, r527, r157) + this.X[14] + 2053994217, 8) + r227;
        int r528 = RL(r527, 10);
        int r1122 = RL(((r1121 + f5(r824, r1320, r1026)) + this.X[4]) - 1454113458, 9) + r626;
        int r1321 = RL(r1320, 10);
        int r627 = RL(((r626 + f5(r1122, r824, r1321)) + this.X[0]) - 1454113458, 15) + r1026;
        int r825 = RL(r824, 10);
        int r1027 = RL(((r1026 + f5(r627, r1122, r825)) + this.X[5]) - 1454113458, 5) + r1321;
        int r1123 = RL(r1122, 10);
        int r1322 = RL(((r1321 + f5(r1027, r627, r1123)) + this.X[9]) - 1454113458, 11) + r825;
        int r628 = RL(r627, 10);
        int r826 = RL(((r825 + f5(r1322, r1027, r628)) + this.X[7]) - 1454113458, 6) + r1123;
        int r1028 = RL(r1027, 10);
        int r1124 = RL(((r1123 + f5(r826, r1322, r1028)) + this.X[12]) - 1454113458, 8) + r628;
        int r1323 = RL(r1322, 10);
        int r629 = RL(((r628 + f5(r1124, r826, r1323)) + this.X[2]) - 1454113458, 13) + r1028;
        int r827 = RL(r826, 10);
        int r1029 = RL(((r1028 + f5(r629, r1124, r827)) + this.X[10]) - 1454113458, 12) + r1323;
        int r1125 = RL(r1124, 10);
        int r1324 = RL(((r1323 + f5(r1029, r629, r1125)) + this.X[14]) - 1454113458, 5) + r827;
        int r630 = RL(r629, 10);
        int r828 = RL(((r827 + f5(r1324, r1029, r630)) + this.X[1]) - 1454113458, 12) + r1125;
        int r1030 = RL(r1029, 10);
        int r1126 = RL(((r1125 + f5(r828, r1324, r1030)) + this.X[3]) - 1454113458, 13) + r630;
        int r1325 = RL(r1324, 10);
        int r631 = RL(((r630 + f5(r1126, r828, r1325)) + this.X[8]) - 1454113458, 14) + r1030;
        int r829 = RL(r828, 10);
        int r1031 = RL(((r1030 + f5(r631, r1126, r829)) + this.X[11]) - 1454113458, 11) + r1325;
        int r1127 = RL(r1126, 10);
        int r1326 = RL(((r1325 + f5(r1031, r631, r1127)) + this.X[6]) - 1454113458, 8) + r829;
        int r632 = RL(r631, 10);
        int r830 = RL(((r829 + f5(r1326, r1031, r632)) + this.X[15]) - 1454113458, 5) + r1127;
        int r1032 = RL(r1031, 10);
        int r1128 = RL(((r1127 + f5(r830, r1326, r1032)) + this.X[13]) - 1454113458, 6) + r632;
        int r1210 = RL(r1326, 10);
        int r228 = RL(r227 + f1(r328, r427, r528) + this.X[12], 8) + r157;
        int r428 = RL(r427, 10);
        int r158 = RL(r157 + f1(r228, r328, r428) + this.X[15], 5) + r528;
        int r329 = RL(r328, 10);
        int r529 = RL(r528 + f1(r158, r228, r329) + this.X[10], 12) + r428;
        int r229 = RL(r228, 10);
        int r429 = RL(r428 + f1(r529, r158, r229) + this.X[4], 9) + r329;
        int r159 = RL(r158, 10);
        int r330 = RL(r329 + f1(r429, r529, r159) + this.X[1], 12) + r229;
        int r530 = RL(r529, 10);
        int r230 = RL(r229 + f1(r330, r429, r530) + this.X[5], 5) + r159;
        int r430 = RL(r429, 10);
        int r160 = RL(r159 + f1(r230, r330, r430) + this.X[8], 14) + r530;
        int r331 = RL(r330, 10);
        int r531 = RL(r530 + f1(r160, r230, r331) + this.X[7], 6) + r430;
        int r231 = RL(r230, 10);
        int r431 = RL(r430 + f1(r531, r160, r231) + this.X[6], 8) + r331;
        int r161 = RL(r160, 10);
        int r332 = RL(r331 + f1(r431, r531, r161) + this.X[2], 13) + r231;
        int r532 = RL(r531, 10);
        int r232 = RL(r231 + f1(r332, r431, r532) + this.X[13], 6) + r161;
        int r432 = RL(r431, 10);
        int r162 = RL(r161 + f1(r232, r332, r432) + this.X[14], 5) + r532;
        int r333 = RL(r332, 10);
        int r533 = RL(r532 + f1(r162, r232, r333) + this.X[0], 15) + r432;
        int r233 = RL(r232, 10);
        int r433 = RL(r432 + f1(r533, r162, r233) + this.X[3], 13) + r333;
        int r163 = RL(r162, 10);
        int r334 = RL(r333 + f1(r433, r533, r163) + this.X[9], 11) + r233;
        int r534 = RL(r533, 10);
        int r234 = RL(r233 + f1(r334, r433, r534) + this.X[11], 11) + r163;
        int r831 = r830 + this.H1 + RL(r433, 10);
        this.H1 = this.H2 + r1210 + r534;
        this.H2 = this.H3 + r1032 + r163;
        this.H3 = this.H4 + r632 + r234;
        this.H4 = this.H0 + r1128 + r334;
        this.H0 = r831;
        this.xOff = 0;
        int r235 = 0;
        while (true) {
            int[] r335 = this.X;
            if (r235 == r335.length) {
                return;
            }
            r335[r235] = 0;
            r235++;
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
        this.H4 = -1009589776;
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
        copyIn((RIPEMD160Digest) memoable);
    }
}
