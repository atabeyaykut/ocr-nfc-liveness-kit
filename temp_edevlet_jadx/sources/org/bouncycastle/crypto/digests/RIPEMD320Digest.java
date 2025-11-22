package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class RIPEMD320Digest extends GeneralDigest {
    private static final int DIGEST_LENGTH = 40;
    private int H0;
    private int H1;
    private int H2;
    private int H3;
    private int H4;
    private int H5;
    private int H6;
    private int H7;
    private int H8;
    private int H9;
    private int[] X;
    private int xOff;

    public RIPEMD320Digest() {
        this(CryptoServicePurpose.ANY);
    }

    public RIPEMD320Digest(CryptoServicePurpose cryptoServicePurpose) {
        super(cryptoServicePurpose);
        this.X = new int[16];
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, 128, cryptoServicePurpose));
        reset();
    }

    public RIPEMD320Digest(RIPEMD320Digest rIPEMD320Digest) {
        super(rIPEMD320Digest.purpose);
        this.X = new int[16];
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, 128, this.purpose));
        doCopy(rIPEMD320Digest);
    }

    private int RL(int r22, int r32) {
        return (r22 >>> (32 - r32)) | (r22 << r32);
    }

    private void doCopy(RIPEMD320Digest rIPEMD320Digest) {
        super.copyIn(rIPEMD320Digest);
        this.H0 = rIPEMD320Digest.H0;
        this.H1 = rIPEMD320Digest.H1;
        this.H2 = rIPEMD320Digest.H2;
        this.H3 = rIPEMD320Digest.H3;
        this.H4 = rIPEMD320Digest.H4;
        this.H5 = rIPEMD320Digest.H5;
        this.H6 = rIPEMD320Digest.H6;
        this.H7 = rIPEMD320Digest.H7;
        this.H8 = rIPEMD320Digest.H8;
        this.H9 = rIPEMD320Digest.H9;
        int[] r02 = rIPEMD320Digest.X;
        System.arraycopy(r02, 0, this.X, 0, r02.length);
        this.xOff = rIPEMD320Digest.xOff;
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
        return new RIPEMD320Digest(this);
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
        Pack.intToLittleEndian(this.H8, bArr, r42 + 32);
        Pack.intToLittleEndian(this.H9, bArr, r42 + 36);
        reset();
        return 40;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "RIPEMD320";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 40;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    public void processBlock() {
        int r12 = this.H0;
        int r22 = this.H1;
        int r32 = this.H2;
        int r42 = this.H3;
        int r52 = this.H4;
        int r6 = this.H5;
        int r72 = this.H6;
        int r82 = this.H7;
        int r92 = this.H8;
        int r10 = this.H9;
        int r13 = RL(r12 + f1(r22, r32, r42) + this.X[0], 11) + r52;
        int r33 = RL(r32, 10);
        int r53 = RL(r52 + f1(r13, r22, r33) + this.X[1], 14) + r42;
        int r23 = RL(r22, 10);
        int r43 = RL(r42 + f1(r53, r13, r23) + this.X[2], 15) + r33;
        int r14 = RL(r13, 10);
        int r34 = RL(r33 + f1(r43, r53, r14) + this.X[3], 12) + r23;
        int r54 = RL(r53, 10);
        int r24 = RL(r23 + f1(r34, r43, r54) + this.X[4], 5) + r14;
        int r44 = RL(r43, 10);
        int r15 = RL(r14 + f1(r24, r34, r44) + this.X[5], 8) + r54;
        int r35 = RL(r34, 10);
        int r55 = RL(r54 + f1(r15, r24, r35) + this.X[6], 7) + r44;
        int r25 = RL(r24, 10);
        int r45 = RL(r44 + f1(r55, r15, r25) + this.X[7], 9) + r35;
        int r16 = RL(r15, 10);
        int r36 = RL(r35 + f1(r45, r55, r16) + this.X[8], 11) + r25;
        int r56 = RL(r55, 10);
        int r26 = RL(r25 + f1(r36, r45, r56) + this.X[9], 13) + r16;
        int r46 = RL(r45, 10);
        int r17 = RL(r16 + f1(r26, r36, r46) + this.X[10], 14) + r56;
        int r37 = RL(r36, 10);
        int r57 = RL(r56 + f1(r17, r26, r37) + this.X[11], 15) + r46;
        int r27 = RL(r26, 10);
        int r47 = RL(r46 + f1(r57, r17, r27) + this.X[12], 6) + r37;
        int r18 = RL(r17, 10);
        int r38 = RL(r37 + f1(r47, r57, r18) + this.X[13], 7) + r27;
        int r58 = RL(r57, 10);
        int r28 = RL(r27 + f1(r38, r47, r58) + this.X[14], 9) + r18;
        int r48 = RL(r47, 10);
        int r19 = RL(r18 + f1(r28, r38, r48) + this.X[15], 8) + r58;
        int r39 = RL(r38, 10);
        int r62 = RL(r6 + f5(r72, r82, r92) + this.X[5] + 1352829926, 8) + r10;
        int r83 = RL(r82, 10);
        int r102 = RL(r10 + f5(r62, r72, r83) + this.X[14] + 1352829926, 9) + r92;
        int r73 = RL(r72, 10);
        int r93 = RL(r92 + f5(r102, r62, r73) + this.X[7] + 1352829926, 9) + r83;
        int r63 = RL(r62, 10);
        int r84 = RL(r83 + f5(r93, r102, r63) + this.X[0] + 1352829926, 11) + r73;
        int r103 = RL(r102, 10);
        int r74 = RL(r73 + f5(r84, r93, r103) + this.X[9] + 1352829926, 13) + r63;
        int r94 = RL(r93, 10);
        int r64 = RL(r63 + f5(r74, r84, r94) + this.X[2] + 1352829926, 15) + r103;
        int r85 = RL(r84, 10);
        int r104 = RL(r103 + f5(r64, r74, r85) + this.X[11] + 1352829926, 15) + r94;
        int r75 = RL(r74, 10);
        int r95 = RL(r94 + f5(r104, r64, r75) + this.X[4] + 1352829926, 5) + r85;
        int r65 = RL(r64, 10);
        int r86 = RL(r85 + f5(r95, r104, r65) + this.X[13] + 1352829926, 7) + r75;
        int r105 = RL(r104, 10);
        int r76 = RL(r75 + f5(r86, r95, r105) + this.X[6] + 1352829926, 7) + r65;
        int r96 = RL(r95, 10);
        int r66 = RL(r65 + f5(r76, r86, r96) + this.X[15] + 1352829926, 8) + r105;
        int r87 = RL(r86, 10);
        int r106 = RL(r105 + f5(r66, r76, r87) + this.X[8] + 1352829926, 11) + r96;
        int r77 = RL(r76, 10);
        int r97 = RL(r96 + f5(r106, r66, r77) + this.X[1] + 1352829926, 14) + r87;
        int r67 = RL(r66, 10);
        int r88 = RL(r87 + f5(r97, r106, r67) + this.X[10] + 1352829926, 14) + r77;
        int r107 = RL(r106, 10);
        int r78 = RL(r77 + f5(r88, r97, r107) + this.X[3] + 1352829926, 12) + r67;
        int r98 = RL(r97, 10);
        int r68 = RL(r67 + f5(r78, r88, r98) + this.X[12] + 1352829926, 6) + r107;
        int r89 = RL(r88, 10);
        int r59 = RL(r58 + f2(r68, r28, r39) + this.X[7] + 1518500249, 7) + r48;
        int r29 = RL(r28, 10);
        int r49 = RL(r48 + f2(r59, r68, r29) + this.X[4] + 1518500249, 6) + r39;
        int r69 = RL(r68, 10);
        int r310 = RL(r39 + f2(r49, r59, r69) + this.X[13] + 1518500249, 8) + r29;
        int r510 = RL(r59, 10);
        int r210 = RL(r29 + f2(r310, r49, r510) + this.X[1] + 1518500249, 13) + r69;
        int r410 = RL(r49, 10);
        int r610 = RL(r69 + f2(r210, r310, r410) + this.X[10] + 1518500249, 11) + r510;
        int r311 = RL(r310, 10);
        int r511 = RL(r510 + f2(r610, r210, r311) + this.X[6] + 1518500249, 9) + r410;
        int r211 = RL(r210, 10);
        int r411 = RL(r410 + f2(r511, r610, r211) + this.X[15] + 1518500249, 7) + r311;
        int r611 = RL(r610, 10);
        int r312 = RL(r311 + f2(r411, r511, r611) + this.X[3] + 1518500249, 15) + r211;
        int r512 = RL(r511, 10);
        int r212 = RL(r211 + f2(r312, r411, r512) + this.X[12] + 1518500249, 7) + r611;
        int r412 = RL(r411, 10);
        int r612 = RL(r611 + f2(r212, r312, r412) + this.X[0] + 1518500249, 12) + r512;
        int r313 = RL(r312, 10);
        int r513 = RL(r512 + f2(r612, r212, r313) + this.X[9] + 1518500249, 15) + r412;
        int r213 = RL(r212, 10);
        int r413 = RL(r412 + f2(r513, r612, r213) + this.X[5] + 1518500249, 9) + r313;
        int r613 = RL(r612, 10);
        int r314 = RL(r313 + f2(r413, r513, r613) + this.X[2] + 1518500249, 11) + r213;
        int r514 = RL(r513, 10);
        int r214 = RL(r213 + f2(r314, r413, r514) + this.X[14] + 1518500249, 7) + r613;
        int r414 = RL(r413, 10);
        int r614 = RL(r613 + f2(r214, r314, r414) + this.X[11] + 1518500249, 13) + r514;
        int r315 = RL(r314, 10);
        int r515 = RL(r514 + f2(r614, r214, r315) + this.X[8] + 1518500249, 12) + r414;
        int r215 = RL(r214, 10);
        int r108 = RL(r107 + f4(r19, r78, r89) + this.X[6] + 1548603684, 9) + r98;
        int r79 = RL(r78, 10);
        int r99 = RL(r98 + f4(r108, r19, r79) + this.X[11] + 1548603684, 13) + r89;
        int r110 = RL(r19, 10);
        int r810 = RL(r89 + f4(r99, r108, r110) + this.X[3] + 1548603684, 15) + r79;
        int r109 = RL(r108, 10);
        int r710 = RL(r79 + f4(r810, r99, r109) + this.X[7] + 1548603684, 7) + r110;
        int r910 = RL(r99, 10);
        int r111 = RL(r110 + f4(r710, r810, r910) + this.X[0] + 1548603684, 12) + r109;
        int r811 = RL(r810, 10);
        int r1010 = RL(r109 + f4(r111, r710, r811) + this.X[13] + 1548603684, 8) + r910;
        int r711 = RL(r710, 10);
        int r911 = RL(r910 + f4(r1010, r111, r711) + this.X[5] + 1548603684, 9) + r811;
        int r112 = RL(r111, 10);
        int r812 = RL(r811 + f4(r911, r1010, r112) + this.X[10] + 1548603684, 11) + r711;
        int r1011 = RL(r1010, 10);
        int r712 = RL(r711 + f4(r812, r911, r1011) + this.X[14] + 1548603684, 7) + r112;
        int r912 = RL(r911, 10);
        int r113 = RL(r112 + f4(r712, r812, r912) + this.X[15] + 1548603684, 7) + r1011;
        int r813 = RL(r812, 10);
        int r1012 = RL(r1011 + f4(r113, r712, r813) + this.X[8] + 1548603684, 12) + r912;
        int r713 = RL(r712, 10);
        int r913 = RL(r912 + f4(r1012, r113, r713) + this.X[12] + 1548603684, 7) + r813;
        int r114 = RL(r113, 10);
        int r814 = RL(r813 + f4(r913, r1012, r114) + this.X[4] + 1548603684, 6) + r713;
        int r1013 = RL(r1012, 10);
        int r714 = RL(r713 + f4(r814, r913, r1013) + this.X[9] + 1548603684, 15) + r114;
        int r914 = RL(r913, 10);
        int r115 = RL(r114 + f4(r714, r814, r914) + this.X[1] + 1548603684, 13) + r1013;
        int r815 = RL(r814, 10);
        int r1014 = RL(r1013 + f4(r115, r714, r815) + this.X[2] + 1548603684, 11) + r914;
        int r715 = RL(r714, 10);
        int r415 = RL(r414 + f3(r515, r614, r715) + this.X[3] + 1859775393, 11) + r315;
        int r615 = RL(r614, 10);
        int r316 = RL(r315 + f3(r415, r515, r615) + this.X[10] + 1859775393, 13) + r715;
        int r516 = RL(r515, 10);
        int r716 = RL(r715 + f3(r316, r415, r516) + this.X[14] + 1859775393, 6) + r615;
        int r416 = RL(r415, 10);
        int r616 = RL(r615 + f3(r716, r316, r416) + this.X[4] + 1859775393, 7) + r516;
        int r317 = RL(r316, 10);
        int r517 = RL(r516 + f3(r616, r716, r317) + this.X[9] + 1859775393, 14) + r416;
        int r717 = RL(r716, 10);
        int r417 = RL(r416 + f3(r517, r616, r717) + this.X[15] + 1859775393, 9) + r317;
        int r617 = RL(r616, 10);
        int r318 = RL(r317 + f3(r417, r517, r617) + this.X[8] + 1859775393, 13) + r717;
        int r518 = RL(r517, 10);
        int r718 = RL(r717 + f3(r318, r417, r518) + this.X[1] + 1859775393, 15) + r617;
        int r418 = RL(r417, 10);
        int r618 = RL(r617 + f3(r718, r318, r418) + this.X[2] + 1859775393, 14) + r518;
        int r319 = RL(r318, 10);
        int r519 = RL(r518 + f3(r618, r718, r319) + this.X[7] + 1859775393, 8) + r418;
        int r719 = RL(r718, 10);
        int r419 = RL(r418 + f3(r519, r618, r719) + this.X[0] + 1859775393, 13) + r319;
        int r619 = RL(r618, 10);
        int r320 = RL(r319 + f3(r419, r519, r619) + this.X[6] + 1859775393, 6) + r719;
        int r520 = RL(r519, 10);
        int r720 = RL(r719 + f3(r320, r419, r520) + this.X[13] + 1859775393, 5) + r619;
        int r420 = RL(r419, 10);
        int r620 = RL(r619 + f3(r720, r320, r420) + this.X[11] + 1859775393, 12) + r520;
        int r321 = RL(r320, 10);
        int r521 = RL(r520 + f3(r620, r720, r321) + this.X[5] + 1859775393, 7) + r420;
        int r721 = RL(r720, 10);
        int r421 = RL(r420 + f3(r521, r620, r721) + this.X[12] + 1859775393, 5) + r321;
        int r621 = RL(r620, 10);
        int r915 = RL(r914 + f3(r1014, r115, r215) + this.X[15] + 1836072691, 9) + r815;
        int r116 = RL(r115, 10);
        int r816 = RL(r815 + f3(r915, r1014, r116) + this.X[5] + 1836072691, 7) + r215;
        int r1015 = RL(r1014, 10);
        int r216 = RL(r215 + f3(r816, r915, r1015) + this.X[1] + 1836072691, 15) + r116;
        int r916 = RL(r915, 10);
        int r117 = RL(r116 + f3(r216, r816, r916) + this.X[3] + 1836072691, 11) + r1015;
        int r817 = RL(r816, 10);
        int r1016 = RL(r1015 + f3(r117, r216, r817) + this.X[7] + 1836072691, 8) + r916;
        int r217 = RL(r216, 10);
        int r917 = RL(r916 + f3(r1016, r117, r217) + this.X[14] + 1836072691, 6) + r817;
        int r118 = RL(r117, 10);
        int r818 = RL(r817 + f3(r917, r1016, r118) + this.X[6] + 1836072691, 6) + r217;
        int r1017 = RL(r1016, 10);
        int r218 = RL(r217 + f3(r818, r917, r1017) + this.X[9] + 1836072691, 14) + r118;
        int r918 = RL(r917, 10);
        int r119 = RL(r118 + f3(r218, r818, r918) + this.X[11] + 1836072691, 12) + r1017;
        int r819 = RL(r818, 10);
        int r1018 = RL(r1017 + f3(r119, r218, r819) + this.X[8] + 1836072691, 13) + r918;
        int r219 = RL(r218, 10);
        int r919 = RL(r918 + f3(r1018, r119, r219) + this.X[12] + 1836072691, 5) + r819;
        int r120 = RL(r119, 10);
        int r820 = RL(r819 + f3(r919, r1018, r120) + this.X[2] + 1836072691, 14) + r219;
        int r1019 = RL(r1018, 10);
        int r220 = RL(r219 + f3(r820, r919, r1019) + this.X[10] + 1836072691, 13) + r120;
        int r920 = RL(r919, 10);
        int r121 = RL(r120 + f3(r220, r820, r920) + this.X[0] + 1836072691, 13) + r1019;
        int r821 = RL(r820, 10);
        int r1020 = RL(r1019 + f3(r121, r220, r821) + this.X[4] + 1836072691, 7) + r920;
        int r221 = RL(r220, 10);
        int r921 = RL(r920 + f3(r1020, r121, r221) + this.X[13] + 1836072691, 5) + r821;
        int r122 = RL(r121, 10);
        int r822 = RL(((r821 + f4(r421, r521, r621)) + this.X[1]) - 1894007588, 11) + r721;
        int r522 = RL(r521, 10);
        int r722 = RL(((r721 + f4(r822, r421, r522)) + this.X[9]) - 1894007588, 12) + r621;
        int r422 = RL(r421, 10);
        int r622 = RL(((r621 + f4(r722, r822, r422)) + this.X[11]) - 1894007588, 14) + r522;
        int r823 = RL(r822, 10);
        int r523 = RL(((r522 + f4(r622, r722, r823)) + this.X[10]) - 1894007588, 15) + r422;
        int r723 = RL(r722, 10);
        int r423 = RL(((r422 + f4(r523, r622, r723)) + this.X[0]) - 1894007588, 14) + r823;
        int r623 = RL(r622, 10);
        int r824 = RL(((r823 + f4(r423, r523, r623)) + this.X[8]) - 1894007588, 15) + r723;
        int r524 = RL(r523, 10);
        int r724 = RL(((r723 + f4(r824, r423, r524)) + this.X[12]) - 1894007588, 9) + r623;
        int r424 = RL(r423, 10);
        int r624 = RL(((r623 + f4(r724, r824, r424)) + this.X[4]) - 1894007588, 8) + r524;
        int r825 = RL(r824, 10);
        int r525 = RL(((r524 + f4(r624, r724, r825)) + this.X[13]) - 1894007588, 9) + r424;
        int r725 = RL(r724, 10);
        int r425 = RL(((r424 + f4(r525, r624, r725)) + this.X[3]) - 1894007588, 14) + r825;
        int r625 = RL(r624, 10);
        int r826 = RL(((r825 + f4(r425, r525, r625)) + this.X[7]) - 1894007588, 5) + r725;
        int r526 = RL(r525, 10);
        int r726 = RL(((r725 + f4(r826, r425, r526)) + this.X[15]) - 1894007588, 6) + r625;
        int r426 = RL(r425, 10);
        int r626 = RL(((r625 + f4(r726, r826, r426)) + this.X[14]) - 1894007588, 8) + r526;
        int r827 = RL(r826, 10);
        int r527 = RL(((r526 + f4(r626, r726, r827)) + this.X[5]) - 1894007588, 6) + r426;
        int r727 = RL(r726, 10);
        int r427 = RL(((r426 + f4(r527, r626, r727)) + this.X[6]) - 1894007588, 5) + r827;
        int r627 = RL(r626, 10);
        int r828 = RL(((r827 + f4(r427, r527, r627)) + this.X[2]) - 1894007588, 12) + r727;
        int r528 = RL(r527, 10);
        int r322 = RL(r321 + f2(r921, r1020, r122) + this.X[8] + 2053994217, 15) + r221;
        int r1021 = RL(r1020, 10);
        int r222 = RL(r221 + f2(r322, r921, r1021) + this.X[6] + 2053994217, 5) + r122;
        int r922 = RL(r921, 10);
        int r123 = RL(r122 + f2(r222, r322, r922) + this.X[4] + 2053994217, 8) + r1021;
        int r323 = RL(r322, 10);
        int r1022 = RL(r1021 + f2(r123, r222, r323) + this.X[1] + 2053994217, 11) + r922;
        int r223 = RL(r222, 10);
        int r923 = RL(r922 + f2(r1022, r123, r223) + this.X[3] + 2053994217, 14) + r323;
        int r124 = RL(r123, 10);
        int r324 = RL(r323 + f2(r923, r1022, r124) + this.X[11] + 2053994217, 14) + r223;
        int r1023 = RL(r1022, 10);
        int r224 = RL(r223 + f2(r324, r923, r1023) + this.X[15] + 2053994217, 6) + r124;
        int r924 = RL(r923, 10);
        int r125 = RL(r124 + f2(r224, r324, r924) + this.X[0] + 2053994217, 14) + r1023;
        int r325 = RL(r324, 10);
        int r1024 = RL(r1023 + f2(r125, r224, r325) + this.X[5] + 2053994217, 6) + r924;
        int r225 = RL(r224, 10);
        int r925 = RL(r924 + f2(r1024, r125, r225) + this.X[12] + 2053994217, 9) + r325;
        int r126 = RL(r125, 10);
        int r326 = RL(r325 + f2(r925, r1024, r126) + this.X[2] + 2053994217, 12) + r225;
        int r1025 = RL(r1024, 10);
        int r226 = RL(r225 + f2(r326, r925, r1025) + this.X[13] + 2053994217, 9) + r126;
        int r926 = RL(r925, 10);
        int r127 = RL(r126 + f2(r226, r326, r926) + this.X[9] + 2053994217, 12) + r1025;
        int r327 = RL(r326, 10);
        int r1026 = RL(r1025 + f2(r127, r226, r327) + this.X[7] + 2053994217, 5) + r926;
        int r227 = RL(r226, 10);
        int r927 = RL(r926 + f2(r1026, r127, r227) + this.X[10] + 2053994217, 15) + r327;
        int r128 = RL(r127, 10);
        int r328 = RL(r327 + f2(r927, r1026, r128) + this.X[14] + 2053994217, 8) + r227;
        int r1027 = RL(r1026, 10);
        int r728 = RL(((r727 + f5(r828, r927, r528)) + this.X[4]) - 1454113458, 9) + r627;
        int r928 = RL(r927, 10);
        int r628 = RL(((r627 + f5(r728, r828, r928)) + this.X[0]) - 1454113458, 15) + r528;
        int r829 = RL(r828, 10);
        int r529 = RL(((r528 + f5(r628, r728, r829)) + this.X[5]) - 1454113458, 5) + r928;
        int r729 = RL(r728, 10);
        int r929 = RL(((r928 + f5(r529, r628, r729)) + this.X[9]) - 1454113458, 11) + r829;
        int r629 = RL(r628, 10);
        int r830 = RL(((r829 + f5(r929, r529, r629)) + this.X[7]) - 1454113458, 6) + r729;
        int r530 = RL(r529, 10);
        int r730 = RL(((r729 + f5(r830, r929, r530)) + this.X[12]) - 1454113458, 8) + r629;
        int r930 = RL(r929, 10);
        int r630 = RL(((r629 + f5(r730, r830, r930)) + this.X[2]) - 1454113458, 13) + r530;
        int r831 = RL(r830, 10);
        int r531 = RL(((r530 + f5(r630, r730, r831)) + this.X[10]) - 1454113458, 12) + r930;
        int r731 = RL(r730, 10);
        int r931 = RL(((r930 + f5(r531, r630, r731)) + this.X[14]) - 1454113458, 5) + r831;
        int r631 = RL(r630, 10);
        int r832 = RL(((r831 + f5(r931, r531, r631)) + this.X[1]) - 1454113458, 12) + r731;
        int r532 = RL(r531, 10);
        int r732 = RL(((r731 + f5(r832, r931, r532)) + this.X[3]) - 1454113458, 13) + r631;
        int r932 = RL(r931, 10);
        int r632 = RL(((r631 + f5(r732, r832, r932)) + this.X[8]) - 1454113458, 14) + r532;
        int r833 = RL(r832, 10);
        int r533 = RL(((r532 + f5(r632, r732, r833)) + this.X[11]) - 1454113458, 11) + r932;
        int r733 = RL(r732, 10);
        int r933 = RL(((r932 + f5(r533, r632, r733)) + this.X[6]) - 1454113458, 8) + r833;
        int r633 = RL(r632, 10);
        int r834 = RL(((r833 + f5(r933, r533, r633)) + this.X[15]) - 1454113458, 5) + r733;
        int r534 = RL(r533, 10);
        int r734 = RL(((r733 + f5(r834, r933, r534)) + this.X[13]) - 1454113458, 6) + r633;
        int r934 = RL(r933, 10);
        int r228 = RL(r227 + f1(r328, r427, r1027) + this.X[12], 8) + r128;
        int r428 = RL(r427, 10);
        int r129 = RL(r128 + f1(r228, r328, r428) + this.X[15], 5) + r1027;
        int r329 = RL(r328, 10);
        int r1028 = RL(r1027 + f1(r129, r228, r329) + this.X[10], 12) + r428;
        int r229 = RL(r228, 10);
        int r429 = RL(r428 + f1(r1028, r129, r229) + this.X[4], 9) + r329;
        int r130 = RL(r129, 10);
        int r330 = RL(r329 + f1(r429, r1028, r130) + this.X[1], 12) + r229;
        int r1029 = RL(r1028, 10);
        int r230 = RL(r229 + f1(r330, r429, r1029) + this.X[5], 5) + r130;
        int r430 = RL(r429, 10);
        int r131 = RL(r130 + f1(r230, r330, r430) + this.X[8], 14) + r1029;
        int r331 = RL(r330, 10);
        int r1030 = RL(r1029 + f1(r131, r230, r331) + this.X[7], 6) + r430;
        int r231 = RL(r230, 10);
        int r431 = RL(r430 + f1(r1030, r131, r231) + this.X[6], 8) + r331;
        int r132 = RL(r131, 10);
        int r332 = RL(r331 + f1(r431, r1030, r132) + this.X[2], 13) + r231;
        int r1031 = RL(r1030, 10);
        int r232 = RL(r231 + f1(r332, r431, r1031) + this.X[13], 6) + r132;
        int r432 = RL(r431, 10);
        int r133 = RL(r132 + f1(r232, r332, r432) + this.X[14], 5) + r1031;
        int r333 = RL(r332, 10);
        int r1032 = RL(r1031 + f1(r133, r232, r333) + this.X[0], 15) + r432;
        int r233 = RL(r232, 10);
        int r433 = RL(r432 + f1(r1032, r133, r233) + this.X[3], 13) + r333;
        int r134 = RL(r133, 10);
        int r334 = RL(r333 + f1(r433, r1032, r134) + this.X[9], 11) + r233;
        int r1033 = RL(r1032, 10);
        int r234 = RL(r233 + f1(r334, r433, r1033) + this.X[11], 11) + r134;
        int r434 = RL(r433, 10);
        this.H0 += r633;
        this.H1 += r734;
        this.H2 += r834;
        this.H3 += r934;
        this.H4 += r1033;
        this.H5 += r134;
        this.H6 += r234;
        this.H7 += r334;
        this.H8 += r434;
        this.H9 += r534;
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
        this.H5 = 1985229328;
        this.H6 = -19088744;
        this.H7 = -1985229329;
        this.H8 = 19088743;
        this.H9 = 1009589775;
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
        doCopy((RIPEMD320Digest) memoable);
    }
}
