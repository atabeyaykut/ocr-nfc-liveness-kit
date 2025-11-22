package org.bouncycastle.pqc.crypto.gemss;

import org.bouncycastle.asn1.cmc.BodyPartID;

/* loaded from: classes2.dex */
abstract class Mul_GF2x {

    public static class Mul12 extends Mul_GF2x {
        private long[] Buffer = new long[12];

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul384_no_simd_gf2x(pointer.array, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp, this.Buffer);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x_xor(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul384_no_simd_gf2x_xor(pointer.array, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp, this.Buffer);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void sqr_gf2x(long[] jArr, long[] jArr2, int r52) {
            Mul_GF2x.SQR128_NO_SIMD_GF2X(jArr, 8, jArr2, r52 + 4);
            Mul_GF2x.SQR256_NO_SIMD_GF2X(jArr, 0, jArr2, r52);
        }
    }

    public static class Mul13 extends Mul_GF2x {
        private long[] Buffer = new long[13];
        private long[] Buffer2 = new long[4];

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul416_no_simd_gf2x(pointer.array, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp, this.Buffer);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x_xor(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul416_no_simd_gf2x_xor(pointer.array, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp, this.Buffer, this.Buffer2);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void sqr_gf2x(long[] jArr, long[] jArr2, int r6) {
            jArr[12] = Mul_GF2x.SQR32_NO_SIMD_GF2X(jArr2[r6 + 6]);
            Mul_GF2x.SQR128_NO_SIMD_GF2X(jArr, 8, jArr2, r6 + 4);
            Mul_GF2x.SQR256_NO_SIMD_GF2X(jArr, 0, jArr2, r6);
        }
    }

    public static class Mul17 extends Mul_GF2x {
        private long[] AA = new long[5];
        private long[] BB = new long[5];
        private long[] Buffer1 = new long[17];
        private long[] Buffer2 = new long[4];

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul544_no_simd_gf2x(pointer.array, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp, this.AA, this.BB, this.Buffer1);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x_xor(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul544_no_simd_gf2x_xor(pointer.array, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp, this.AA, this.BB, this.Buffer1, this.Buffer2);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void sqr_gf2x(long[] jArr, long[] jArr2, int r6) {
            jArr[16] = Mul_GF2x.SQR32_NO_SIMD_GF2X(jArr2[r6 + 8]);
            Mul_GF2x.SQR256_NO_SIMD_GF2X(jArr, 8, jArr2, r6 + 4);
            Mul_GF2x.SQR256_NO_SIMD_GF2X(jArr, 0, jArr2, r6);
        }
    }

    public static class Mul6 extends Mul_GF2x {
        private long[] Buffer = new long[6];

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul192_no_simd_gf2x(pointer.array, 0, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x_xor(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul192_no_simd_gf2x_xor(pointer.array, pointer.cp, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp, this.Buffer);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void sqr_gf2x(long[] jArr, long[] jArr2, int r6) {
            Mul_GF2x.SQR64_NO_SIMD_GF2X(jArr, 4, jArr2[r6 + 2]);
            Mul_GF2x.SQR128_NO_SIMD_GF2X(jArr, 0, jArr2, r6);
        }
    }

    public static class Mul9 extends Mul_GF2x {
        private long[] Buffer = new long[9];

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul288_no_simd_gf2x(pointer.array, 0, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp, this.Buffer);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void mul_gf2x_xor(Pointer pointer, Pointer pointer2, Pointer pointer3) {
            Mul_GF2x.mul288_no_simd_gf2x_xor(pointer.array, pointer.cp, pointer2.array, pointer2.cp, pointer3.array, pointer3.cp, this.Buffer);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Mul_GF2x
        public void sqr_gf2x(long[] jArr, long[] jArr2, int r6) {
            jArr[8] = Mul_GF2x.SQR32_NO_SIMD_GF2X(jArr2[r6 + 4]);
            Mul_GF2x.SQR256_NO_SIMD_GF2X(jArr, 0, jArr2, r6);
        }
    }

    private static long MUL32_NO_SIMD_GF2X(long j10, long j11) {
        return ((j10 & (-((j11 >>> 31) & 1))) << 31) ^ ((((((((((((((((((((((((((((((((-(j11 & 1)) & j10) ^ (((-((j11 >>> 1) & 1)) & j10) << 1)) ^ (((-((j11 >>> 2) & 1)) & j10) << 2)) ^ (((-((j11 >>> 3) & 1)) & j10) << 3)) ^ (((-((j11 >>> 4) & 1)) & j10) << 4)) ^ (((-((j11 >>> 5) & 1)) & j10) << 5)) ^ (((-((j11 >>> 6) & 1)) & j10) << 6)) ^ (((-((j11 >>> 7) & 1)) & j10) << 7)) ^ (((-((j11 >>> 8) & 1)) & j10) << 8)) ^ (((-((j11 >>> 9) & 1)) & j10) << 9)) ^ (((-((j11 >>> 10) & 1)) & j10) << 10)) ^ (((-((j11 >>> 11) & 1)) & j10) << 11)) ^ (((-((j11 >>> 12) & 1)) & j10) << 12)) ^ (((-((j11 >>> 13) & 1)) & j10) << 13)) ^ (((-((j11 >>> 14) & 1)) & j10) << 14)) ^ (((-((j11 >>> 15) & 1)) & j10) << 15)) ^ (((-((j11 >>> 16) & 1)) & j10) << 16)) ^ (((-((j11 >>> 17) & 1)) & j10) << 17)) ^ (((-((j11 >>> 18) & 1)) & j10) << 18)) ^ (((-((j11 >>> 19) & 1)) & j10) << 19)) ^ (((-((j11 >>> 20) & 1)) & j10) << 20)) ^ (((-((j11 >>> 21) & 1)) & j10) << 21)) ^ (((-((j11 >>> 22) & 1)) & j10) << 22)) ^ (((-((j11 >>> 23) & 1)) & j10) << 23)) ^ (((-((j11 >>> 24) & 1)) & j10) << 24)) ^ (((-((j11 >>> 25) & 1)) & j10) << 25)) ^ (((-((j11 >>> 26) & 1)) & j10) << 26)) ^ (((-((j11 >>> 27) & 1)) & j10) << 27)) ^ (((-((j11 >>> 28) & 1)) & j10) << 28)) ^ (((-((j11 >>> 29) & 1)) & j10) << 29)) ^ (((-((j11 >>> 30) & 1)) & j10) << 30));
    }

    private static void MUL64_NO_SIMD_GF2X(long[] jArr, int r27, long j10, long j11) {
        long j12 = (-(j11 >>> 63)) & j10;
        long j13 = (-((j11 >>> 1) & 1)) & j10;
        long j14 = (((-(j11 & 1)) & j10) ^ (j12 << 63)) ^ (j13 << 1);
        long j15 = (j12 >>> 1) ^ (j13 >>> 63);
        long j16 = (-((j11 >>> 2) & 1)) & j10;
        long j17 = (-((j11 >>> 3) & 1)) & j10;
        long j18 = (-((j11 >>> 4) & 1)) & j10;
        long j19 = (-((j11 >>> 5) & 1)) & j10;
        long j20 = (((j14 ^ (j16 << 2)) ^ (j17 << 3)) ^ (j18 << 4)) ^ (j19 << 5);
        long j21 = (((j15 ^ (j16 >>> 62)) ^ (j17 >>> 61)) ^ (j18 >>> 60)) ^ (j19 >>> 59);
        long j22 = (-((j11 >>> 6) & 1)) & j10;
        long j23 = (-((j11 >>> 7) & 1)) & j10;
        long j24 = (-((j11 >>> 8) & 1)) & j10;
        long j25 = (-((j11 >>> 9) & 1)) & j10;
        long j26 = (-((j11 >>> 10) & 1)) & j10;
        long j27 = (-((j11 >>> 11) & 1)) & j10;
        long j28 = (((((j20 ^ (j22 << 6)) ^ (j23 << 7)) ^ (j24 << 8)) ^ (j25 << 9)) ^ (j26 << 10)) ^ (j27 << 11);
        long j29 = (((((j21 ^ (j22 >>> 58)) ^ (j23 >>> 57)) ^ (j24 >>> 56)) ^ (j25 >>> 55)) ^ (j26 >>> 54)) ^ (j27 >>> 53);
        long j30 = (-((j11 >>> 12) & 1)) & j10;
        long j31 = j28 ^ (j30 << 12);
        long j32 = j29 ^ (j30 >>> 52);
        long j33 = (-((j11 >>> 13) & 1)) & j10;
        long j34 = j31 ^ (j33 << 13);
        long j35 = j32 ^ (j33 >>> 51);
        long j36 = (-((j11 >>> 14) & 1)) & j10;
        long j37 = j34 ^ (j36 << 14);
        long j38 = j35 ^ (j36 >>> 50);
        long j39 = (-((j11 >>> 15) & 1)) & j10;
        long j40 = j37 ^ (j39 << 15);
        long j41 = j38 ^ (j39 >>> 49);
        long j42 = (-((j11 >>> 16) & 1)) & j10;
        long j43 = j40 ^ (j42 << 16);
        long j44 = j41 ^ (j42 >>> 48);
        long j45 = (-((j11 >>> 17) & 1)) & j10;
        long j46 = j43 ^ (j45 << 17);
        long j47 = j44 ^ (j45 >>> 47);
        long j48 = (-((j11 >>> 18) & 1)) & j10;
        long j49 = j46 ^ (j48 << 18);
        long j50 = j47 ^ (j48 >>> 46);
        long j51 = (-((j11 >>> 19) & 1)) & j10;
        long j52 = j49 ^ (j51 << 19);
        long j53 = j50 ^ (j51 >>> 45);
        long j54 = (-((j11 >>> 20) & 1)) & j10;
        long j55 = j52 ^ (j54 << 20);
        long j56 = j53 ^ (j54 >>> 44);
        long j57 = (-((j11 >>> 21) & 1)) & j10;
        long j58 = j55 ^ (j57 << 21);
        long j59 = j56 ^ (j57 >>> 43);
        long j60 = (-((j11 >>> 22) & 1)) & j10;
        long j61 = j58 ^ (j60 << 22);
        long j62 = j59 ^ (j60 >>> 42);
        long j63 = (-((j11 >>> 23) & 1)) & j10;
        long j64 = j61 ^ (j63 << 23);
        long j65 = j62 ^ (j63 >>> 41);
        long j66 = (-((j11 >>> 24) & 1)) & j10;
        long j67 = j64 ^ (j66 << 24);
        long j68 = j65 ^ (j66 >>> 40);
        long j69 = (-((j11 >>> 25) & 1)) & j10;
        long j70 = j67 ^ (j69 << 25);
        long j71 = j68 ^ (j69 >>> 39);
        long j72 = (-((j11 >>> 26) & 1)) & j10;
        long j73 = j70 ^ (j72 << 26);
        long j74 = j71 ^ (j72 >>> 38);
        long j75 = (-((j11 >>> 27) & 1)) & j10;
        long j76 = j73 ^ (j75 << 27);
        long j77 = j74 ^ (j75 >>> 37);
        long j78 = (-((j11 >>> 28) & 1)) & j10;
        long j79 = j76 ^ (j78 << 28);
        long j80 = j77 ^ (j78 >>> 36);
        long j81 = (-((j11 >>> 29) & 1)) & j10;
        long j82 = j79 ^ (j81 << 29);
        long j83 = j80 ^ (j81 >>> 35);
        long j84 = (-((j11 >>> 30) & 1)) & j10;
        long j85 = j82 ^ (j84 << 30);
        long j86 = j83 ^ (j84 >>> 34);
        long j87 = (-((j11 >>> 31) & 1)) & j10;
        long j88 = j85 ^ (j87 << 31);
        long j89 = j86 ^ (j87 >>> 33);
        long j90 = (-((j11 >>> 32) & 1)) & j10;
        long j91 = j88 ^ (j90 << 32);
        long j92 = j89 ^ (j90 >>> 32);
        long j93 = (-((j11 >>> 33) & 1)) & j10;
        long j94 = j91 ^ (j93 << 33);
        long j95 = j92 ^ (j93 >>> 31);
        long j96 = (-((j11 >>> 34) & 1)) & j10;
        long j97 = j94 ^ (j96 << 34);
        long j98 = j95 ^ (j96 >>> 30);
        long j99 = (-((j11 >>> 35) & 1)) & j10;
        long j100 = j97 ^ (j99 << 35);
        long j101 = j98 ^ (j99 >>> 29);
        long j102 = (-((j11 >>> 36) & 1)) & j10;
        long j103 = j100 ^ (j102 << 36);
        long j104 = j101 ^ (j102 >>> 28);
        long j105 = (-((j11 >>> 37) & 1)) & j10;
        long j106 = j103 ^ (j105 << 37);
        long j107 = j104 ^ (j105 >>> 27);
        long j108 = (-((j11 >>> 38) & 1)) & j10;
        long j109 = j106 ^ (j108 << 38);
        long j110 = j107 ^ (j108 >>> 26);
        long j111 = (-((j11 >>> 39) & 1)) & j10;
        long j112 = j109 ^ (j111 << 39);
        long j113 = j110 ^ (j111 >>> 25);
        long j114 = (-((j11 >>> 40) & 1)) & j10;
        long j115 = j112 ^ (j114 << 40);
        long j116 = j113 ^ (j114 >>> 24);
        long j117 = (-((j11 >>> 41) & 1)) & j10;
        long j118 = j115 ^ (j117 << 41);
        long j119 = j116 ^ (j117 >>> 23);
        long j120 = (-((j11 >>> 42) & 1)) & j10;
        long j121 = j118 ^ (j120 << 42);
        long j122 = j119 ^ (j120 >>> 22);
        long j123 = (-((j11 >>> 43) & 1)) & j10;
        long j124 = j121 ^ (j123 << 43);
        long j125 = j122 ^ (j123 >>> 21);
        long j126 = (-((j11 >>> 44) & 1)) & j10;
        long j127 = j124 ^ (j126 << 44);
        long j128 = j125 ^ (j126 >>> 20);
        long j129 = (-((j11 >>> 45) & 1)) & j10;
        long j130 = j127 ^ (j129 << 45);
        long j131 = j128 ^ (j129 >>> 19);
        long j132 = (-((j11 >>> 46) & 1)) & j10;
        long j133 = j130 ^ (j132 << 46);
        long j134 = j131 ^ (j132 >>> 18);
        long j135 = (-((j11 >>> 47) & 1)) & j10;
        long j136 = j133 ^ (j135 << 47);
        long j137 = j134 ^ (j135 >>> 17);
        long j138 = (-((j11 >>> 48) & 1)) & j10;
        long j139 = j136 ^ (j138 << 48);
        long j140 = j137 ^ (j138 >>> 16);
        long j141 = (-((j11 >>> 49) & 1)) & j10;
        long j142 = j139 ^ (j141 << 49);
        long j143 = j140 ^ (j141 >>> 15);
        long j144 = (-((j11 >>> 50) & 1)) & j10;
        long j145 = j142 ^ (j144 << 50);
        long j146 = j143 ^ (j144 >>> 14);
        long j147 = (-((j11 >>> 51) & 1)) & j10;
        long j148 = j145 ^ (j147 << 51);
        long j149 = j146 ^ (j147 >>> 13);
        long j150 = (-((j11 >>> 52) & 1)) & j10;
        long j151 = j148 ^ (j150 << 52);
        long j152 = j149 ^ (j150 >>> 12);
        long j153 = (-((j11 >>> 53) & 1)) & j10;
        long j154 = j151 ^ (j153 << 53);
        long j155 = j152 ^ (j153 >>> 11);
        long j156 = (-((j11 >>> 54) & 1)) & j10;
        long j157 = j154 ^ (j156 << 54);
        long j158 = j155 ^ (j156 >>> 10);
        long j159 = (-((j11 >>> 55) & 1)) & j10;
        long j160 = j157 ^ (j159 << 55);
        long j161 = j158 ^ (j159 >>> 9);
        long j162 = (-((j11 >>> 56) & 1)) & j10;
        long j163 = j160 ^ (j162 << 56);
        long j164 = j161 ^ (j162 >>> 8);
        long j165 = (-((j11 >>> 57) & 1)) & j10;
        long j166 = j163 ^ (j165 << 57);
        long j167 = j164 ^ (j165 >>> 7);
        long j168 = (-((j11 >>> 58) & 1)) & j10;
        long j169 = (-((j11 >>> 59) & 1)) & j10;
        long j170 = (j166 ^ (j168 << 58)) ^ (j169 << 59);
        long j171 = (j167 ^ (j168 >>> 6)) ^ (j169 >>> 5);
        long j172 = (-((j11 >>> 60) & 1)) & j10;
        long j173 = j170 ^ (j172 << 60);
        long j174 = j171 ^ (j172 >>> 4);
        long j175 = (-((j11 >>> 61) & 1)) & j10;
        long j176 = (-(1 & (j11 >>> 62))) & j10;
        jArr[r27] = (j173 ^ (j175 << 61)) ^ (j176 << 62);
        jArr[r27 + 1] = (j176 >>> 2) ^ (j174 ^ (j175 >>> 3));
    }

    private static void MUL64_NO_SIMD_GF2X_XOR(long[] jArr, int r27, long j10, long j11) {
        long j12 = (-(j11 >>> 63)) & j10;
        long j13 = (-((j11 >>> 1) & 1)) & j10;
        long j14 = (((-(j11 & 1)) & j10) ^ (j12 << 63)) ^ (j13 << 1);
        long j15 = (j12 >>> 1) ^ (j13 >>> 63);
        long j16 = (-((j11 >>> 2) & 1)) & j10;
        long j17 = (-((j11 >>> 3) & 1)) & j10;
        long j18 = (-((j11 >>> 4) & 1)) & j10;
        long j19 = (-((j11 >>> 5) & 1)) & j10;
        long j20 = (((j14 ^ (j16 << 2)) ^ (j17 << 3)) ^ (j18 << 4)) ^ (j19 << 5);
        long j21 = (((j15 ^ (j16 >>> 62)) ^ (j17 >>> 61)) ^ (j18 >>> 60)) ^ (j19 >>> 59);
        long j22 = (-((j11 >>> 6) & 1)) & j10;
        long j23 = (-((j11 >>> 7) & 1)) & j10;
        long j24 = (-((j11 >>> 8) & 1)) & j10;
        long j25 = (-((j11 >>> 9) & 1)) & j10;
        long j26 = (-((j11 >>> 10) & 1)) & j10;
        long j27 = (-((j11 >>> 11) & 1)) & j10;
        long j28 = (((((j20 ^ (j22 << 6)) ^ (j23 << 7)) ^ (j24 << 8)) ^ (j25 << 9)) ^ (j26 << 10)) ^ (j27 << 11);
        long j29 = (((((j21 ^ (j22 >>> 58)) ^ (j23 >>> 57)) ^ (j24 >>> 56)) ^ (j25 >>> 55)) ^ (j26 >>> 54)) ^ (j27 >>> 53);
        long j30 = (-((j11 >>> 12) & 1)) & j10;
        long j31 = j28 ^ (j30 << 12);
        long j32 = j29 ^ (j30 >>> 52);
        long j33 = (-((j11 >>> 13) & 1)) & j10;
        long j34 = j31 ^ (j33 << 13);
        long j35 = j32 ^ (j33 >>> 51);
        long j36 = (-((j11 >>> 14) & 1)) & j10;
        long j37 = j34 ^ (j36 << 14);
        long j38 = j35 ^ (j36 >>> 50);
        long j39 = (-((j11 >>> 15) & 1)) & j10;
        long j40 = j37 ^ (j39 << 15);
        long j41 = j38 ^ (j39 >>> 49);
        long j42 = (-((j11 >>> 16) & 1)) & j10;
        long j43 = j40 ^ (j42 << 16);
        long j44 = j41 ^ (j42 >>> 48);
        long j45 = (-((j11 >>> 17) & 1)) & j10;
        long j46 = j43 ^ (j45 << 17);
        long j47 = j44 ^ (j45 >>> 47);
        long j48 = (-((j11 >>> 18) & 1)) & j10;
        long j49 = j46 ^ (j48 << 18);
        long j50 = j47 ^ (j48 >>> 46);
        long j51 = (-((j11 >>> 19) & 1)) & j10;
        long j52 = j49 ^ (j51 << 19);
        long j53 = j50 ^ (j51 >>> 45);
        long j54 = (-((j11 >>> 20) & 1)) & j10;
        long j55 = j52 ^ (j54 << 20);
        long j56 = j53 ^ (j54 >>> 44);
        long j57 = (-((j11 >>> 21) & 1)) & j10;
        long j58 = j55 ^ (j57 << 21);
        long j59 = j56 ^ (j57 >>> 43);
        long j60 = (-((j11 >>> 22) & 1)) & j10;
        long j61 = j58 ^ (j60 << 22);
        long j62 = j59 ^ (j60 >>> 42);
        long j63 = (-((j11 >>> 23) & 1)) & j10;
        long j64 = j61 ^ (j63 << 23);
        long j65 = j62 ^ (j63 >>> 41);
        long j66 = (-((j11 >>> 24) & 1)) & j10;
        long j67 = j64 ^ (j66 << 24);
        long j68 = j65 ^ (j66 >>> 40);
        long j69 = (-((j11 >>> 25) & 1)) & j10;
        long j70 = j67 ^ (j69 << 25);
        long j71 = j68 ^ (j69 >>> 39);
        long j72 = (-((j11 >>> 26) & 1)) & j10;
        long j73 = j70 ^ (j72 << 26);
        long j74 = j71 ^ (j72 >>> 38);
        long j75 = (-((j11 >>> 27) & 1)) & j10;
        long j76 = j73 ^ (j75 << 27);
        long j77 = j74 ^ (j75 >>> 37);
        long j78 = (-((j11 >>> 28) & 1)) & j10;
        long j79 = j76 ^ (j78 << 28);
        long j80 = j77 ^ (j78 >>> 36);
        long j81 = (-((j11 >>> 29) & 1)) & j10;
        long j82 = j79 ^ (j81 << 29);
        long j83 = j80 ^ (j81 >>> 35);
        long j84 = (-((j11 >>> 30) & 1)) & j10;
        long j85 = j82 ^ (j84 << 30);
        long j86 = j83 ^ (j84 >>> 34);
        long j87 = (-((j11 >>> 31) & 1)) & j10;
        long j88 = j85 ^ (j87 << 31);
        long j89 = j86 ^ (j87 >>> 33);
        long j90 = (-((j11 >>> 32) & 1)) & j10;
        long j91 = j88 ^ (j90 << 32);
        long j92 = j89 ^ (j90 >>> 32);
        long j93 = (-((j11 >>> 33) & 1)) & j10;
        long j94 = j91 ^ (j93 << 33);
        long j95 = j92 ^ (j93 >>> 31);
        long j96 = (-((j11 >>> 34) & 1)) & j10;
        long j97 = j94 ^ (j96 << 34);
        long j98 = j95 ^ (j96 >>> 30);
        long j99 = (-((j11 >>> 35) & 1)) & j10;
        long j100 = j97 ^ (j99 << 35);
        long j101 = j98 ^ (j99 >>> 29);
        long j102 = (-((j11 >>> 36) & 1)) & j10;
        long j103 = j100 ^ (j102 << 36);
        long j104 = j101 ^ (j102 >>> 28);
        long j105 = (-((j11 >>> 37) & 1)) & j10;
        long j106 = j103 ^ (j105 << 37);
        long j107 = j104 ^ (j105 >>> 27);
        long j108 = (-((j11 >>> 38) & 1)) & j10;
        long j109 = j106 ^ (j108 << 38);
        long j110 = j107 ^ (j108 >>> 26);
        long j111 = (-((j11 >>> 39) & 1)) & j10;
        long j112 = j109 ^ (j111 << 39);
        long j113 = j110 ^ (j111 >>> 25);
        long j114 = (-((j11 >>> 40) & 1)) & j10;
        long j115 = j112 ^ (j114 << 40);
        long j116 = j113 ^ (j114 >>> 24);
        long j117 = (-((j11 >>> 41) & 1)) & j10;
        long j118 = j115 ^ (j117 << 41);
        long j119 = j116 ^ (j117 >>> 23);
        long j120 = (-((j11 >>> 42) & 1)) & j10;
        long j121 = j118 ^ (j120 << 42);
        long j122 = j119 ^ (j120 >>> 22);
        long j123 = (-((j11 >>> 43) & 1)) & j10;
        long j124 = j121 ^ (j123 << 43);
        long j125 = j122 ^ (j123 >>> 21);
        long j126 = (-((j11 >>> 44) & 1)) & j10;
        long j127 = j124 ^ (j126 << 44);
        long j128 = j125 ^ (j126 >>> 20);
        long j129 = (-((j11 >>> 45) & 1)) & j10;
        long j130 = j127 ^ (j129 << 45);
        long j131 = j128 ^ (j129 >>> 19);
        long j132 = (-((j11 >>> 46) & 1)) & j10;
        long j133 = j130 ^ (j132 << 46);
        long j134 = j131 ^ (j132 >>> 18);
        long j135 = (-((j11 >>> 47) & 1)) & j10;
        long j136 = j133 ^ (j135 << 47);
        long j137 = j134 ^ (j135 >>> 17);
        long j138 = (-((j11 >>> 48) & 1)) & j10;
        long j139 = j136 ^ (j138 << 48);
        long j140 = j137 ^ (j138 >>> 16);
        long j141 = (-((j11 >>> 49) & 1)) & j10;
        long j142 = j139 ^ (j141 << 49);
        long j143 = j140 ^ (j141 >>> 15);
        long j144 = (-((j11 >>> 50) & 1)) & j10;
        long j145 = j142 ^ (j144 << 50);
        long j146 = j143 ^ (j144 >>> 14);
        long j147 = (-((j11 >>> 51) & 1)) & j10;
        long j148 = j145 ^ (j147 << 51);
        long j149 = j146 ^ (j147 >>> 13);
        long j150 = (-((j11 >>> 52) & 1)) & j10;
        long j151 = j148 ^ (j150 << 52);
        long j152 = j149 ^ (j150 >>> 12);
        long j153 = (-((j11 >>> 53) & 1)) & j10;
        long j154 = j151 ^ (j153 << 53);
        long j155 = j152 ^ (j153 >>> 11);
        long j156 = (-((j11 >>> 54) & 1)) & j10;
        long j157 = j154 ^ (j156 << 54);
        long j158 = j155 ^ (j156 >>> 10);
        long j159 = (-((j11 >>> 55) & 1)) & j10;
        long j160 = j157 ^ (j159 << 55);
        long j161 = j158 ^ (j159 >>> 9);
        long j162 = (-((j11 >>> 56) & 1)) & j10;
        long j163 = j160 ^ (j162 << 56);
        long j164 = j161 ^ (j162 >>> 8);
        long j165 = (-((j11 >>> 57) & 1)) & j10;
        long j166 = j163 ^ (j165 << 57);
        long j167 = j164 ^ (j165 >>> 7);
        long j168 = (-((j11 >>> 58) & 1)) & j10;
        long j169 = (-((j11 >>> 59) & 1)) & j10;
        long j170 = (j166 ^ (j168 << 58)) ^ (j169 << 59);
        long j171 = (j167 ^ (j168 >>> 6)) ^ (j169 >>> 5);
        long j172 = (-((j11 >>> 60) & 1)) & j10;
        long j173 = j170 ^ (j172 << 60);
        long j174 = j171 ^ (j172 >>> 4);
        long j175 = (-((j11 >>> 61) & 1)) & j10;
        long j176 = (-(1 & (j11 >>> 62))) & j10;
        jArr[r27] = ((j173 ^ (j175 << 61)) ^ (j176 << 62)) ^ jArr[r27];
        int r22 = r27 + 1;
        jArr[r22] = ((j176 >>> 2) ^ (j174 ^ (j175 >>> 3))) ^ jArr[r22];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void SQR128_NO_SIMD_GF2X(long[] jArr, int r42, long[] jArr2, int r6) {
        SQR64_NO_SIMD_GF2X(jArr, r42 + 2, jArr2[r6 + 1]);
        SQR64_NO_SIMD_GF2X(jArr, r42, jArr2[r6]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void SQR256_NO_SIMD_GF2X(long[] jArr, int r32, long[] jArr2, int r52) {
        SQR128_NO_SIMD_GF2X(jArr, r32 + 4, jArr2, r52 + 2);
        SQR128_NO_SIMD_GF2X(jArr, r32, jArr2, r52);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long SQR32_NO_SIMD_GF2X(long j10) {
        long j11 = (j10 ^ (j10 << 16)) & 281470681808895L;
        long j12 = (j11 ^ (j11 << 8)) & 71777214294589695L;
        long j13 = (j12 ^ (j12 << 4)) & 1085102592571150095L;
        long j14 = (j13 ^ (j13 << 2)) & 3689348814741910323L;
        return (j14 ^ (j14 << 1)) & 6148914691236517205L;
    }

    private static long SQR64LOW_NO_SIMD_GF2X(long j10) {
        long j11 = ((j10 << 16) ^ (BodyPartID.bodyIdMax & j10)) & 281470681808895L;
        long j12 = (j11 ^ (j11 << 8)) & 71777214294589695L;
        long j13 = (j12 ^ (j12 << 4)) & 1085102592571150095L;
        long j14 = (j13 ^ (j13 << 2)) & 3689348814741910323L;
        return (j14 ^ (j14 << 1)) & 6148914691236517205L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void SQR64_NO_SIMD_GF2X(long[] jArr, int r42, long j10) {
        jArr[r42 + 1] = SQR32_NO_SIMD_GF2X(j10 >>> 32);
        jArr[r42] = SQR64LOW_NO_SIMD_GF2X(j10);
    }

    private static void mul128_no_simd_gf2x(long[] jArr, int r82, long j10, long j11, long j12, long j13) {
        MUL64_NO_SIMD_GF2X(jArr, r82, j10, j12);
        int r6 = r82 + 2;
        MUL64_NO_SIMD_GF2X(jArr, r6, j11, j13);
        int r22 = r82 + 1;
        long j14 = jArr[r6] ^ jArr[r22];
        jArr[r6] = j14;
        jArr[r22] = j14 ^ jArr[r82];
        jArr[r6] = jArr[r6] ^ jArr[r82 + 3];
        MUL64_NO_SIMD_GF2X_XOR(jArr, r22, j10 ^ j11, j12 ^ j13);
    }

    private static void mul128_no_simd_gf2x(long[] jArr, int r10, long[] jArr2, int r12, long[] jArr3, int r14) {
        MUL64_NO_SIMD_GF2X(jArr, r10, jArr2[r12], jArr3[r14]);
        int r6 = r10 + 2;
        int r72 = r12 + 1;
        int r82 = r14 + 1;
        MUL64_NO_SIMD_GF2X(jArr, r6, jArr2[r72], jArr3[r82]);
        int r22 = r10 + 1;
        long j10 = jArr[r6] ^ jArr[r22];
        jArr[r6] = j10;
        jArr[r22] = j10 ^ jArr[r10];
        jArr[r6] = jArr[r6] ^ jArr[r10 + 3];
        MUL64_NO_SIMD_GF2X_XOR(jArr, r22, jArr2[r12] ^ jArr2[r72], jArr3[r14] ^ jArr3[r82]);
    }

    private static void mul128_no_simd_gf2x_xor(long[] jArr, int r10, long j10, long j11, long j12, long j13, long[] jArr2) {
        MUL64_NO_SIMD_GF2X(jArr2, 0, j10, j12);
        MUL64_NO_SIMD_GF2X(jArr2, 2, j11, j13);
        jArr[r10] = jArr[r10] ^ jArr2[0];
        long j14 = jArr2[2] ^ jArr2[1];
        jArr2[2] = j14;
        int r12 = r10 + 1;
        jArr[r12] = (jArr2[0] ^ j14) ^ jArr[r12];
        int r22 = r10 + 2;
        jArr[r22] = jArr[r22] ^ (jArr2[2] ^ jArr2[3]);
        int r23 = r10 + 3;
        jArr[r23] = jArr[r23] ^ jArr2[3];
        MUL64_NO_SIMD_GF2X_XOR(jArr, r12, j10 ^ j11, j12 ^ j13);
    }

    public static void mul192_no_simd_gf2x(long[] jArr, int r16, long[] jArr2, int r18, long[] jArr3, int r20) {
        MUL64_NO_SIMD_GF2X(jArr, r16, jArr2[r18], jArr3[r20]);
        int r6 = r16 + 4;
        int r72 = r18 + 2;
        int r82 = r20 + 2;
        MUL64_NO_SIMD_GF2X(jArr, r6, jArr2[r72], jArr3[r82]);
        int r92 = r16 + 2;
        int r10 = r18 + 1;
        int r11 = r20 + 1;
        MUL64_NO_SIMD_GF2X(jArr, r92, jArr2[r10], jArr3[r11]);
        int r12 = r16 + 1;
        jArr[r12] = jArr[r12] ^ jArr[r92];
        int r122 = r16 + 3;
        long j10 = jArr[r122] ^ jArr[r6];
        jArr[r122] = j10;
        jArr[r6] = j10 ^ jArr[r16 + 5];
        jArr[r92] = (jArr[r122] ^ jArr[r12]) ^ jArr[r16];
        jArr[r122] = jArr[r12] ^ jArr[r6];
        jArr[r12] = jArr[r12] ^ jArr[r16];
        MUL64_NO_SIMD_GF2X_XOR(jArr, r12, jArr2[r18] ^ jArr2[r10], jArr3[r20] ^ jArr3[r11]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, r122, jArr2[r72] ^ jArr2[r10], jArr3[r82] ^ jArr3[r11]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, r92, jArr2[r18] ^ jArr2[r72], jArr3[r20] ^ jArr3[r82]);
    }

    public static void mul192_no_simd_gf2x_xor(long[] jArr, int r17, long[] jArr2, int r19, long[] jArr3, int r21, long[] jArr4) {
        MUL64_NO_SIMD_GF2X(jArr4, 0, jArr2[r19], jArr3[r21]);
        int r6 = r19 + 2;
        int r72 = r21 + 2;
        MUL64_NO_SIMD_GF2X(jArr4, 4, jArr2[r6], jArr3[r72]);
        int r82 = r19 + 1;
        int r92 = r21 + 1;
        MUL64_NO_SIMD_GF2X(jArr4, 2, jArr2[r82], jArr3[r92]);
        jArr[r17] = jArr[r17] ^ jArr4[0];
        long j10 = jArr4[1] ^ jArr4[2];
        jArr4[1] = j10;
        long j11 = jArr4[3] ^ jArr4[4];
        jArr4[3] = j11;
        jArr4[4] = j11 ^ jArr4[5];
        long j12 = j10 ^ jArr4[0];
        jArr4[0] = j12;
        int r10 = r17 + 1;
        jArr[r10] = j12 ^ jArr[r10];
        int r11 = r17 + 2;
        jArr[r11] = (jArr4[0] ^ jArr4[3]) ^ jArr[r11];
        int r13 = r17 + 3;
        jArr[r13] = jArr[r13] ^ (jArr4[1] ^ jArr4[4]);
        int r02 = r17 + 4;
        jArr[r02] = jArr[r02] ^ jArr4[4];
        int r03 = r17 + 5;
        jArr[r03] = jArr[r03] ^ jArr4[5];
        MUL64_NO_SIMD_GF2X_XOR(jArr, r10, jArr2[r82] ^ jArr2[r19], jArr3[r92] ^ jArr3[r21]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, r13, jArr2[r6] ^ jArr2[r82], jArr3[r72] ^ jArr3[r92]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, r11, jArr2[r19] ^ jArr2[r6], jArr3[r21] ^ jArr3[r72]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mul288_no_simd_gf2x(long[] jArr, int r26, long[] jArr2, int r28, long[] jArr3, int r30, long[] jArr4) {
        int r10 = r28 + 1;
        int r11 = r30 + 1;
        mul128_no_simd_gf2x(jArr, r26, jArr2[r28], jArr2[r10], jArr3[r30], jArr3[r11]);
        int r6 = r26 + 4;
        int r72 = r28 + 2;
        int r82 = r30 + 2;
        MUL64_NO_SIMD_GF2X(jArr, r6, jArr2[r72], jArr3[r82]);
        int r92 = r26 + 7;
        int r12 = r28 + 3;
        int r13 = r30 + 3;
        MUL64_NO_SIMD_GF2X(jArr, r92, jArr2[r12], jArr3[r13]);
        int r14 = r26 + 5;
        jArr[r92] = jArr[r92] ^ jArr[r14];
        int r15 = r26 + 8;
        int r16 = r28 + 4;
        int r17 = r30 + 4;
        jArr[r15] = jArr[r15] ^ MUL32_NO_SIMD_GF2X(jArr2[r16], jArr3[r17]);
        jArr[r14] = jArr[r92] ^ jArr[r6];
        long j10 = jArr[r92] ^ jArr[r15];
        jArr[r92] = j10;
        int r18 = r26 + 6;
        jArr[r18] = j10 ^ jArr[r6];
        MUL64_NO_SIMD_GF2X_XOR(jArr, r14, jArr2[r12] ^ jArr2[r72], jArr3[r13] ^ jArr3[r82]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, r92, jArr2[r16] ^ jArr2[r12], jArr3[r17] ^ jArr3[r13]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, r18, jArr2[r16] ^ jArr2[r72], jArr3[r17] ^ jArr3[r82]);
        int r19 = r26 + 2;
        jArr[r6] = jArr[r6] ^ jArr[r19];
        int r20 = r26 + 3;
        jArr[r14] = jArr[r14] ^ jArr[r20];
        long j11 = jArr2[r28] ^ jArr2[r72];
        long j12 = jArr2[r10] ^ jArr2[r12];
        long j13 = jArr3[r30] ^ jArr3[r82];
        long j14 = jArr3[r11] ^ jArr3[r13];
        MUL64_NO_SIMD_GF2X(jArr4, 0, j11, j13);
        MUL64_NO_SIMD_GF2X(jArr4, 2, j12, j14);
        jArr4[2] = jArr4[2] ^ jArr4[1];
        jArr4[3] = MUL32_NO_SIMD_GF2X(jArr2[r16], jArr3[r17]) ^ jArr4[3];
        jArr[r19] = (jArr[r6] ^ jArr[r26]) ^ jArr4[0];
        jArr[r20] = ((jArr[r14] ^ jArr[r26 + 1]) ^ jArr4[2]) ^ jArr4[0];
        long j15 = jArr4[2] ^ jArr4[3];
        jArr4[2] = j15;
        jArr[r6] = ((j15 ^ jArr[r18]) ^ jArr4[0]) ^ jArr[r6];
        jArr[r14] = jArr[r14] ^ (jArr4[2] ^ jArr[r92]);
        jArr[r18] = jArr[r18] ^ (jArr[r15] ^ jArr4[3]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, r20, j11 ^ j12, j13 ^ j14);
        MUL64_NO_SIMD_GF2X_XOR(jArr, r14, j12 ^ jArr2[r16], j14 ^ jArr3[r17]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, r6, j11 ^ jArr2[r16], jArr3[r17] ^ j13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mul288_no_simd_gf2x_xor(long[] jArr, int r31, long[] jArr2, int r33, long[] jArr3, int r35, long[] jArr4) {
        int r10 = r33 + 1;
        int r11 = r35 + 1;
        mul128_no_simd_gf2x(jArr4, 0, jArr2[r33], jArr2[r10], jArr3[r35], jArr3[r11]);
        int r6 = r33 + 2;
        int r72 = r35 + 2;
        MUL64_NO_SIMD_GF2X(jArr4, 4, jArr2[r6], jArr3[r72]);
        int r82 = r33 + 3;
        int r92 = r35 + 3;
        MUL64_NO_SIMD_GF2X(jArr4, 7, jArr2[r82], jArr3[r92]);
        jArr4[7] = jArr4[7] ^ jArr4[5];
        int r15 = r33 + 4;
        int r16 = r35 + 4;
        long jMUL32_NO_SIMD_GF2X = jArr4[8] ^ MUL32_NO_SIMD_GF2X(jArr2[r15], jArr3[r16]);
        jArr4[8] = jMUL32_NO_SIMD_GF2X;
        long j10 = jArr4[7];
        long j11 = jArr4[4];
        long j12 = j10 ^ j11;
        jArr4[5] = j12;
        long j13 = jMUL32_NO_SIMD_GF2X ^ j10;
        jArr4[7] = j13;
        jArr4[6] = j13 ^ j11;
        jArr4[4] = jArr4[2] ^ j11;
        jArr4[5] = j12 ^ jArr4[3];
        jArr[r31] = jArr[r31] ^ jArr4[0];
        int r02 = r31 + 1;
        jArr[r02] = jArr[r02] ^ jArr4[1];
        int r23 = r31 + 2;
        jArr[r23] = jArr[r23] ^ (jArr4[4] ^ jArr4[0]);
        MUL64_NO_SIMD_GF2X_XOR(jArr4, 5, jArr2[r6] ^ jArr2[r82], jArr3[r72] ^ jArr3[r92]);
        MUL64_NO_SIMD_GF2X_XOR(jArr4, 7, jArr2[r82] ^ jArr2[r15], jArr3[r92] ^ jArr3[r16]);
        MUL64_NO_SIMD_GF2X_XOR(jArr4, 6, jArr2[r6] ^ jArr2[r15], jArr3[r72] ^ jArr3[r16]);
        int r24 = r31 + 3;
        jArr[r24] = jArr[r24] ^ (jArr4[5] ^ jArr4[1]);
        int r25 = r31 + 4;
        jArr[r25] = jArr[r25] ^ (jArr4[4] ^ jArr4[6]);
        int r17 = r31 + 5;
        jArr[r17] = jArr[r17] ^ (jArr4[5] ^ jArr4[7]);
        int r13 = r31 + 6;
        jArr[r13] = jArr[r13] ^ (jArr4[6] ^ jArr4[8]);
        int r03 = r31 + 7;
        jArr[r03] = jArr[r03] ^ jArr4[7];
        int r04 = r31 + 8;
        jArr[r04] = jArr[r04] ^ jArr4[8];
        long j14 = jArr2[r33] ^ jArr2[r6];
        long j15 = jArr2[r10] ^ jArr2[r82];
        long j16 = jArr3[r35] ^ jArr3[r72];
        long j17 = jArr3[r11] ^ jArr3[r92];
        MUL64_NO_SIMD_GF2X(jArr4, 0, j14, j16);
        MUL64_NO_SIMD_GF2X(jArr4, 2, j15, j17);
        jArr4[2] = jArr4[2] ^ jArr4[1];
        jArr4[3] = jArr4[3] ^ MUL32_NO_SIMD_GF2X(jArr2[r15], jArr3[r16]);
        jArr[r23] = jArr[r23] ^ jArr4[0];
        jArr[r24] = jArr[r24] ^ (jArr4[2] ^ jArr4[0]);
        long j18 = jArr4[2] ^ jArr4[3];
        jArr4[2] = j18;
        jArr[r25] = (j18 ^ jArr4[0]) ^ jArr[r25];
        jArr[r17] = jArr[r17] ^ jArr4[2];
        jArr[r13] = jArr[r13] ^ jArr4[3];
        MUL64_NO_SIMD_GF2X_XOR(jArr, r24, j14 ^ j15, j16 ^ j17);
        MUL64_NO_SIMD_GF2X_XOR(jArr, r17, j15 ^ jArr2[r15], j17 ^ jArr3[r16]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, r25, j14 ^ jArr2[r15], jArr3[r16] ^ j16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mul384_no_simd_gf2x(long[] jArr, long[] jArr2, int r37, long[] jArr3, int r39, long[] jArr4) {
        mul192_no_simd_gf2x(jArr, 0, jArr2, r37, jArr3, r39);
        int r6 = r37 + 3;
        int r72 = r39 + 3;
        mul192_no_simd_gf2x(jArr, 6, jArr2, r6, jArr3, r72);
        long j10 = jArr2[r37] ^ jArr2[r6];
        long j11 = jArr2[r37 + 1] ^ jArr2[r37 + 4];
        long j12 = jArr2[r37 + 2] ^ jArr2[r37 + 5];
        long j13 = jArr3[r39] ^ jArr3[r72];
        long j14 = jArr3[r39 + 1] ^ jArr3[r39 + 4];
        long j15 = jArr3[r39 + 2] ^ jArr3[r39 + 5];
        jArr[6] = jArr[6] ^ jArr[3];
        jArr[7] = jArr[7] ^ jArr[4];
        jArr[8] = jArr[8] ^ jArr[5];
        MUL64_NO_SIMD_GF2X(jArr4, 0, j10, j13);
        MUL64_NO_SIMD_GF2X(jArr4, 4, j12, j15);
        MUL64_NO_SIMD_GF2X(jArr4, 2, j11, j14);
        long j16 = jArr[6];
        long j17 = jArr[0] ^ j16;
        long j18 = jArr4[0];
        jArr[3] = j17 ^ j18;
        long j19 = jArr4[1] ^ jArr4[2];
        jArr4[1] = j19;
        long j20 = j18 ^ j19;
        jArr4[0] = j20;
        long j21 = jArr4[3] ^ jArr4[4];
        jArr4[3] = j21;
        long j22 = j21 ^ jArr4[5];
        jArr4[4] = j22;
        long j23 = jArr[8];
        jArr[5] = ((j23 ^ jArr[2]) ^ j21) ^ j20;
        jArr[6] = j16 ^ ((jArr[9] ^ j19) ^ j22);
        long j24 = jArr[7];
        jArr[4] = (jArr[1] ^ j24) ^ j20;
        jArr[7] = j24 ^ (jArr[10] ^ jArr4[4]);
        jArr[8] = j23 ^ (jArr[11] ^ jArr4[5]);
        MUL64_NO_SIMD_GF2X_XOR(jArr, 4, j10 ^ j11, j13 ^ j14);
        MUL64_NO_SIMD_GF2X_XOR(jArr, 6, j11 ^ j12, j14 ^ j15);
        MUL64_NO_SIMD_GF2X_XOR(jArr, 5, j10 ^ j12, j13 ^ j15);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mul384_no_simd_gf2x_xor(long[] jArr, long[] jArr2, int r38, long[] jArr3, int r40, long[] jArr4) {
        mul192_no_simd_gf2x(jArr4, 0, jArr2, r38, jArr3, r40);
        int r6 = r38 + 3;
        int r72 = r40 + 3;
        mul192_no_simd_gf2x(jArr4, 6, jArr2, r6, jArr3, r72);
        long j10 = jArr2[r38] ^ jArr2[r6];
        long j11 = jArr2[r38 + 1] ^ jArr2[r38 + 4];
        long j12 = jArr2[r38 + 2] ^ jArr2[r38 + 5];
        long j13 = jArr3[r40] ^ jArr3[r72];
        long j14 = jArr3[r40 + 1] ^ jArr3[r40 + 4];
        long j15 = jArr3[r40 + 2] ^ jArr3[r40 + 5];
        long j16 = jArr4[6] ^ jArr4[3];
        jArr4[6] = j16;
        long j17 = jArr4[7] ^ jArr4[4];
        jArr4[7] = j17;
        long j18 = jArr4[8] ^ jArr4[5];
        jArr4[8] = j18;
        jArr[0] = jArr[0] ^ jArr4[0];
        jArr[1] = jArr[1] ^ jArr4[1];
        jArr[2] = jArr[2] ^ jArr4[2];
        jArr[3] = jArr[3] ^ (j16 ^ jArr4[0]);
        jArr[5] = jArr[5] ^ (j18 ^ jArr4[2]);
        long j19 = jArr[6];
        long j20 = jArr4[9];
        jArr[6] = j19 ^ (j16 ^ j20);
        jArr[4] = jArr[4] ^ (j17 ^ jArr4[1]);
        long j21 = jArr[7];
        long j22 = jArr4[10];
        jArr[7] = j21 ^ (j17 ^ j22);
        long j23 = jArr[8];
        long j24 = jArr4[11];
        jArr[8] = j23 ^ (j18 ^ j24);
        jArr[9] = jArr[9] ^ j20;
        jArr[10] = jArr[10] ^ j22;
        jArr[11] = jArr[11] ^ j24;
        MUL64_NO_SIMD_GF2X(jArr4, 0, j10, j13);
        MUL64_NO_SIMD_GF2X(jArr4, 4, j12, j15);
        MUL64_NO_SIMD_GF2X(jArr4, 2, j11, j14);
        long j25 = jArr[3];
        long j26 = jArr4[0];
        jArr[3] = j25 ^ j26;
        long j27 = jArr4[1] ^ jArr4[2];
        jArr4[1] = j27;
        long j28 = j26 ^ j27;
        jArr4[0] = j28;
        long j29 = jArr4[3] ^ jArr4[4];
        jArr4[3] = j29;
        long j30 = j29 ^ jArr4[5];
        jArr4[4] = j30;
        jArr[5] = jArr[5] ^ (j29 ^ j28);
        jArr[6] = (j27 ^ j30) ^ jArr[6];
        jArr[4] = jArr[4] ^ j28;
        jArr[7] = jArr[7] ^ jArr4[4];
        jArr[8] = jArr[8] ^ jArr4[5];
        MUL64_NO_SIMD_GF2X_XOR(jArr, 4, j10 ^ j11, j13 ^ j14);
        MUL64_NO_SIMD_GF2X_XOR(jArr, 6, j11 ^ j12, j14 ^ j15);
        MUL64_NO_SIMD_GF2X_XOR(jArr, 5, j10 ^ j12, j13 ^ j15);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mul416_no_simd_gf2x(long[] jArr, long[] jArr2, int r43, long[] jArr3, int r45, long[] jArr4) {
        mul192_no_simd_gf2x(jArr, 0, jArr2, r43, jArr3, r45);
        int r11 = r43 + 3;
        int r12 = r43 + 4;
        int r13 = r45 + 3;
        int r14 = r45 + 4;
        mul128_no_simd_gf2x(jArr, 6, jArr2[r11], jArr2[r12], jArr3[r13], jArr3[r14]);
        int r15 = r43 + 5;
        int r16 = r45 + 5;
        MUL64_NO_SIMD_GF2X(jArr, 10, jArr2[r15], jArr3[r16]);
        int r17 = r43 + 6;
        int r18 = r45 + 6;
        long jMUL32_NO_SIMD_GF2X = MUL32_NO_SIMD_GF2X(jArr2[r17], jArr3[r18]) ^ jArr[11];
        jArr[12] = jMUL32_NO_SIMD_GF2X;
        jArr[11] = jMUL32_NO_SIMD_GF2X ^ jArr[10];
        MUL64_NO_SIMD_GF2X_XOR(jArr, 11, jArr2[r15] ^ jArr2[r17], jArr3[r16] ^ jArr3[r18]);
        long j10 = jArr[8] ^ jArr[10];
        jArr[8] = j10;
        long j11 = jArr[11] ^ jArr[9];
        jArr[11] = j11;
        jArr[10] = jArr[12] ^ j10;
        jArr[8] = j10 ^ jArr[6];
        jArr[9] = jArr[7] ^ j11;
        mul128_no_simd_gf2x_xor(jArr, 8, jArr2[r11] ^ jArr2[r15], jArr2[r12] ^ jArr2[r17], jArr3[r13] ^ jArr3[r16], jArr3[r14] ^ jArr3[r18], jArr4);
        long j12 = jArr2[r43] ^ jArr2[r11];
        long j13 = jArr2[r43 + 1] ^ jArr2[r12];
        long j14 = jArr2[r43 + 2] ^ jArr2[r15];
        long j15 = jArr2[r17];
        long j16 = jArr3[r45] ^ jArr3[r13];
        long j17 = jArr3[r45 + 1] ^ jArr3[r14];
        long j18 = jArr3[r45 + 2] ^ jArr3[r16];
        long j19 = jArr3[r18];
        jArr[6] = jArr[6] ^ jArr[3];
        jArr[7] = jArr[7] ^ jArr[4];
        jArr[8] = jArr[8] ^ jArr[5];
        mul128_no_simd_gf2x(jArr4, 0, j12, j13, j16, j17);
        MUL64_NO_SIMD_GF2X(jArr4, 4, j14, j18);
        long jMUL32_NO_SIMD_GF2X2 = MUL32_NO_SIMD_GF2X(j15, j19) ^ jArr4[5];
        jArr4[6] = jMUL32_NO_SIMD_GF2X2;
        jArr4[5] = jMUL32_NO_SIMD_GF2X2 ^ jArr4[4];
        MUL64_NO_SIMD_GF2X_XOR(jArr4, 5, j14 ^ j15, j18 ^ j19);
        long j20 = jArr[6];
        long j21 = jArr[0] ^ j20;
        long j22 = jArr4[0];
        jArr[3] = j21 ^ j22;
        long j23 = jArr[7];
        long j24 = j23 ^ jArr[1];
        long j25 = jArr4[1];
        jArr[4] = j24 ^ j25;
        long j26 = jArr4[2] ^ jArr4[4];
        jArr4[2] = j26;
        long j27 = jArr4[3] ^ jArr4[5];
        jArr4[3] = j27;
        long j28 = jArr[8];
        jArr[5] = ((j28 ^ jArr[2]) ^ j26) ^ j22;
        long j29 = jArr[9];
        jArr[6] = j20 ^ ((j29 ^ j27) ^ j25);
        long j30 = jArr[10] ^ j26;
        long j31 = jArr4[6];
        jArr[7] = (j30 ^ j31) ^ j23;
        jArr[8] = j28 ^ (jArr[11] ^ j27);
        jArr[9] = (jArr[12] ^ j31) ^ j29;
        mul128_no_simd_gf2x_xor(jArr, 5, j12 ^ j14, j13 ^ j15, j16 ^ j18, j17 ^ j19, jArr4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mul416_no_simd_gf2x_xor(long[] jArr, long[] jArr2, int r39, long[] jArr3, int r41, long[] jArr4, long[] jArr5) {
        mul192_no_simd_gf2x(jArr4, 0, jArr2, r39, jArr3, r41);
        int r11 = r39 + 3;
        int r12 = r39 + 4;
        int r13 = r41 + 3;
        int r14 = r41 + 4;
        mul128_no_simd_gf2x(jArr4, 6, jArr2[r11], jArr2[r12], jArr3[r13], jArr3[r14]);
        int r15 = r39 + 5;
        int r16 = r41 + 5;
        MUL64_NO_SIMD_GF2X(jArr4, 10, jArr2[r15], jArr3[r16]);
        int r17 = r39 + 6;
        int r18 = r41 + 6;
        long jMUL32_NO_SIMD_GF2X = MUL32_NO_SIMD_GF2X(jArr2[r17], jArr3[r18]) ^ jArr4[11];
        jArr4[12] = jMUL32_NO_SIMD_GF2X;
        jArr4[11] = jMUL32_NO_SIMD_GF2X ^ jArr4[10];
        MUL64_NO_SIMD_GF2X_XOR(jArr4, 11, jArr2[r15] ^ jArr2[r17], jArr3[r16] ^ jArr3[r18]);
        long j10 = jArr4[8] ^ jArr4[10];
        jArr4[8] = j10;
        long j11 = jArr4[11] ^ jArr4[9];
        jArr4[11] = j11;
        jArr4[10] = jArr4[12] ^ j10;
        long j12 = jArr4[6];
        long j13 = j10 ^ j12;
        jArr4[8] = j13;
        long j14 = jArr4[7];
        jArr4[9] = j11 ^ j14;
        jArr4[6] = jArr4[3] ^ j12;
        jArr4[7] = jArr4[4] ^ j14;
        jArr4[8] = j13 ^ jArr4[5];
        mul128_no_simd_gf2x_xor(jArr4, 8, jArr2[r11] ^ jArr2[r15], jArr2[r12] ^ jArr2[r17], jArr3[r13] ^ jArr3[r16], jArr3[r14] ^ jArr3[r18], jArr5);
        jArr[0] = jArr[0] ^ jArr4[0];
        jArr[1] = jArr[1] ^ jArr4[1];
        jArr[2] = jArr[2] ^ jArr4[2];
        long j15 = jArr[3];
        long j16 = jArr4[6];
        jArr[3] = j15 ^ (jArr4[0] ^ j16);
        long j17 = jArr[4];
        long j18 = jArr4[7];
        jArr[4] = j17 ^ (jArr4[1] ^ j18);
        long j19 = jArr[5];
        long j20 = jArr4[8];
        jArr[5] = j19 ^ (jArr4[2] ^ j20);
        long j21 = jArr[6];
        long j22 = jArr4[9];
        jArr[6] = j21 ^ (j16 ^ j22);
        long j23 = jArr[7];
        long j24 = jArr4[10];
        jArr[7] = j23 ^ (j18 ^ j24);
        long j25 = jArr[8];
        long j26 = jArr4[11];
        jArr[8] = j25 ^ (j20 ^ j26);
        long j27 = jArr[9];
        long j28 = jArr4[12];
        jArr[9] = j27 ^ (j22 ^ j28);
        jArr[10] = jArr[10] ^ j24;
        jArr[11] = jArr[11] ^ j26;
        jArr[12] = jArr[12] ^ j28;
        long j29 = jArr2[r39] ^ jArr2[r11];
        long j30 = jArr2[r39 + 1] ^ jArr2[r12];
        long j31 = jArr2[r39 + 2] ^ jArr2[r15];
        long j32 = jArr2[r17];
        long j33 = jArr3[r41] ^ jArr3[r13];
        long j34 = jArr3[r41 + 1] ^ jArr3[r14];
        long j35 = jArr3[r41 + 2] ^ jArr3[r16];
        long j36 = jArr3[r18];
        mul128_no_simd_gf2x(jArr4, 0, j29, j30, j33, j34);
        MUL64_NO_SIMD_GF2X(jArr4, 4, j31, j35);
        long jMUL32_NO_SIMD_GF2X2 = MUL32_NO_SIMD_GF2X(j32, j36) ^ jArr4[5];
        jArr4[6] = jMUL32_NO_SIMD_GF2X2;
        jArr4[5] = jMUL32_NO_SIMD_GF2X2 ^ jArr4[4];
        MUL64_NO_SIMD_GF2X_XOR(jArr4, 5, j31 ^ j32, j35 ^ j36);
        long j37 = jArr[3];
        long j38 = jArr4[0];
        jArr[3] = j37 ^ j38;
        long j39 = jArr[4];
        long j40 = jArr4[1];
        jArr[4] = j39 ^ j40;
        long j41 = jArr4[2] ^ jArr4[4];
        jArr4[2] = j41;
        long j42 = jArr4[3] ^ jArr4[5];
        jArr4[3] = j42;
        jArr[5] = jArr[5] ^ (j38 ^ j41);
        jArr[6] = jArr[6] ^ (j40 ^ j42);
        long j43 = jArr[7];
        long j44 = jArr4[6];
        jArr[7] = (j41 ^ j44) ^ j43;
        jArr[8] = jArr[8] ^ j42;
        jArr[9] = jArr[9] ^ j44;
        mul128_no_simd_gf2x_xor(jArr, 5, j29 ^ j31, j30 ^ j32, j33 ^ j35, j34 ^ j36, jArr4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mul544_no_simd_gf2x(long[] jArr, long[] jArr2, int r32, long[] jArr3, int r34, long[] jArr4, long[] jArr5, long[] jArr6) {
        int r11 = r32 + 1;
        int r12 = r34 + 1;
        mul128_no_simd_gf2x(jArr, 0, jArr2[r32], jArr2[r11], jArr3[r34], jArr3[r12]);
        int r13 = r32 + 2;
        int r14 = r32 + 3;
        int r15 = r34 + 2;
        int r16 = r34 + 3;
        mul128_no_simd_gf2x(jArr, 4, jArr2[r13], jArr2[r14], jArr3[r15], jArr3[r16]);
        long j10 = jArr[4] ^ jArr[2];
        jArr[4] = j10;
        long j11 = jArr[5] ^ jArr[3];
        jArr[5] = j11;
        jArr[2] = jArr[0] ^ j10;
        jArr[3] = jArr[1] ^ j11;
        jArr[4] = j10 ^ jArr[6];
        jArr[5] = jArr[7] ^ j11;
        mul128_no_simd_gf2x_xor(jArr, 2, jArr2[r32] ^ jArr2[r13], jArr2[r11] ^ jArr2[r14], jArr3[r34] ^ jArr3[r15], jArr3[r12] ^ jArr3[r16], jArr6);
        int r72 = r32 + 4;
        int r82 = r34 + 4;
        mul288_no_simd_gf2x(jArr, 8, jArr2, r72, jArr3, r82, jArr6);
        long j12 = jArr[8] ^ jArr[4];
        jArr[8] = j12;
        long j13 = jArr[9] ^ jArr[5];
        jArr[9] = j13;
        long j14 = jArr[10] ^ jArr[6];
        jArr[10] = j14;
        long j15 = jArr[11] ^ jArr[7];
        jArr[11] = j15;
        jArr[4] = j12 ^ jArr[0];
        jArr[5] = j13 ^ jArr[1];
        jArr[6] = j14 ^ jArr[2];
        jArr[7] = j15 ^ jArr[3];
        long j16 = jArr[12];
        jArr[8] = j12 ^ j16;
        jArr[9] = jArr[13] ^ j13;
        jArr[10] = jArr[14] ^ j14;
        jArr[11] = j15 ^ jArr[15];
        jArr[12] = j16 ^ jArr[16];
        jArr4[0] = jArr2[r32] ^ jArr2[r72];
        jArr4[1] = jArr2[r11] ^ jArr2[r32 + 5];
        jArr4[2] = jArr2[r13] ^ jArr2[r32 + 6];
        jArr4[3] = jArr2[r14] ^ jArr2[r32 + 7];
        jArr4[4] = jArr2[r32 + 8];
        jArr5[0] = jArr3[r34] ^ jArr3[r82];
        jArr5[1] = jArr3[r12] ^ jArr3[r34 + 5];
        jArr5[2] = jArr3[r15] ^ jArr3[r34 + 6];
        jArr5[3] = jArr3[r16] ^ jArr3[r34 + 7];
        jArr5[4] = jArr3[r34 + 8];
        mul288_no_simd_gf2x_xor(jArr, 4, jArr4, 0, jArr5, 0, jArr6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void mul544_no_simd_gf2x_xor(long[] jArr, long[] jArr2, int r34, long[] jArr3, int r36, long[] jArr4, long[] jArr5, long[] jArr6, long[] jArr7) {
        int r11 = r34 + 1;
        int r12 = r36 + 1;
        mul128_no_simd_gf2x(jArr6, 0, jArr2[r34], jArr2[r11], jArr3[r36], jArr3[r12]);
        int r13 = r34 + 2;
        int r14 = r34 + 3;
        int r15 = r36 + 2;
        int r16 = r36 + 3;
        mul128_no_simd_gf2x(jArr6, 4, jArr2[r13], jArr2[r14], jArr3[r15], jArr3[r16]);
        long j10 = jArr6[4] ^ jArr6[2];
        jArr6[4] = j10;
        long j11 = jArr6[5] ^ jArr6[3];
        jArr6[5] = j11;
        jArr6[2] = jArr6[0] ^ j10;
        jArr6[3] = jArr6[1] ^ j11;
        jArr6[4] = j10 ^ jArr6[6];
        jArr6[5] = jArr6[7] ^ j11;
        mul128_no_simd_gf2x_xor(jArr6, 2, jArr2[r34] ^ jArr2[r13], jArr2[r11] ^ jArr2[r14], jArr3[r36] ^ jArr3[r15], jArr3[r12] ^ jArr3[r16], jArr7);
        int r72 = r34 + 4;
        int r82 = r36 + 4;
        mul288_no_simd_gf2x(jArr6, 8, jArr2, r72, jArr3, r82, jArr7);
        long j12 = jArr6[8] ^ jArr6[4];
        jArr6[8] = j12;
        long j13 = jArr6[9] ^ jArr6[5];
        jArr6[9] = j13;
        long j14 = jArr6[10] ^ jArr6[6];
        jArr6[10] = j14;
        long j15 = jArr6[11] ^ jArr6[7];
        jArr6[11] = j15;
        jArr[0] = jArr[0] ^ jArr6[0];
        jArr[1] = jArr[1] ^ jArr6[1];
        jArr[2] = jArr[2] ^ jArr6[2];
        jArr[3] = jArr[3] ^ jArr6[3];
        jArr[4] = jArr[4] ^ (j12 ^ jArr6[0]);
        jArr[5] = jArr[5] ^ (j13 ^ jArr6[1]);
        jArr[6] = jArr[6] ^ (j14 ^ jArr6[2]);
        jArr[7] = jArr[7] ^ (j15 ^ jArr6[3]);
        long j16 = jArr[8];
        long j17 = jArr6[12];
        jArr[8] = j16 ^ (j12 ^ j17);
        long j18 = jArr[9];
        long j19 = jArr6[13];
        jArr[9] = j18 ^ (j13 ^ j19);
        long j20 = jArr[10];
        long j21 = jArr6[14];
        jArr[10] = j20 ^ (j14 ^ j21);
        long j22 = jArr[11];
        long j23 = jArr6[15];
        jArr[11] = j22 ^ (j15 ^ j23);
        long j24 = jArr[12];
        long j25 = jArr6[16];
        jArr[12] = j24 ^ (j17 ^ j25);
        jArr[13] = jArr[13] ^ j19;
        jArr[14] = jArr[14] ^ j21;
        jArr[15] = jArr[15] ^ j23;
        jArr[16] = jArr[16] ^ j25;
        jArr4[0] = jArr2[r34] ^ jArr2[r72];
        jArr4[1] = jArr2[r11] ^ jArr2[r34 + 5];
        jArr4[2] = jArr2[r13] ^ jArr2[r34 + 6];
        jArr4[3] = jArr2[r14] ^ jArr2[r34 + 7];
        jArr4[4] = jArr2[r34 + 8];
        jArr5[0] = jArr3[r36] ^ jArr3[r82];
        jArr5[1] = jArr3[r12] ^ jArr3[r36 + 5];
        jArr5[2] = jArr3[r15] ^ jArr3[r36 + 6];
        jArr5[3] = jArr3[r16] ^ jArr3[r36 + 7];
        jArr5[4] = jArr3[r36 + 8];
        mul288_no_simd_gf2x_xor(jArr, 4, jArr4, 0, jArr5, 0, jArr6);
    }

    public abstract void mul_gf2x(Pointer pointer, Pointer pointer2, Pointer pointer3);

    public abstract void mul_gf2x_xor(Pointer pointer, Pointer pointer2, Pointer pointer3);

    public abstract void sqr_gf2x(long[] jArr, long[] jArr2, int r32);
}
