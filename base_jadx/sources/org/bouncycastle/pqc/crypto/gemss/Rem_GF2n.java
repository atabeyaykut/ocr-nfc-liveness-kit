package org.bouncycastle.pqc.crypto.gemss;

/* loaded from: classes2.dex */
abstract class Rem_GF2n {
    protected int ki;
    protected int ki64;
    protected long mask;

    public static class REM192_SPECIALIZED_TRINOMIAL_GF2X extends Rem_GF2n {

        /* renamed from: k3, reason: collision with root package name */
        private final int f11884k3;
        private final int k364;
        private final int ki_k3;

        public REM192_SPECIALIZED_TRINOMIAL_GF2X(int r12, int r22, int r32, int r42, long j10) {
            this.f11884k3 = r12;
            this.ki = r22;
            this.ki64 = r32;
            this.k364 = r42;
            this.mask = j10;
            this.ki_k3 = r22 - r12;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n(long[] jArr, int r17, long[] jArr2) {
            long j10 = jArr2[2];
            int r42 = this.ki;
            long j11 = jArr2[3];
            int r72 = this.ki64;
            long j12 = (j10 >>> r42) ^ (j11 << r72);
            long j13 = jArr2[4];
            long j14 = (j11 >>> r42) ^ (j13 << r72);
            long j15 = (j13 >>> r42) ^ (jArr2[5] << r72);
            long j16 = jArr2[1] ^ j14;
            int r11 = this.k364;
            int r12 = this.f11884k3;
            jArr[r17 + 1] = (j16 ^ (j12 >>> r11)) ^ (j14 << r12);
            jArr[r17 + 2] = (((j14 >>> r11) ^ (jArr2[2] ^ j15)) ^ (j15 << r12)) & this.mask;
            long j17 = j12 ^ (j15 >>> this.ki_k3);
            jArr[r17] = (j17 << r12) ^ (jArr2[0] ^ j17);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n_xor(long[] jArr, int r19, long[] jArr2) {
            long j10 = jArr2[2];
            int r42 = this.ki;
            long j11 = jArr2[3];
            int r72 = this.ki64;
            long j12 = (j10 >>> r42) ^ (j11 << r72);
            long j13 = jArr2[4];
            long j14 = (j11 >>> r42) ^ (j13 << r72);
            long j15 = (j13 >>> r42) ^ (jArr2[5] << r72);
            int r43 = r19 + 1;
            long j16 = jArr[r43];
            long j17 = jArr2[1] ^ j14;
            int r13 = this.k364;
            int r14 = this.f11884k3;
            jArr[r43] = j16 ^ ((j17 ^ (j12 >>> r13)) ^ (j14 << r14));
            int r44 = r19 + 2;
            jArr[r44] = ((((j14 >>> r13) ^ (jArr2[2] ^ j15)) ^ (j15 << r14)) & this.mask) ^ jArr[r44];
            long j18 = j12 ^ (j15 >>> this.ki_k3);
            jArr[r19] = ((j18 << r14) ^ (jArr2[0] ^ j18)) ^ jArr[r19];
        }
    }

    public static class REM288_SPECIALIZED_TRINOMIAL_GF2X extends Rem_GF2n {

        /* renamed from: k3, reason: collision with root package name */
        private final int f11885k3;
        private final int k364;
        private final int k364ki;
        private final int k3_ki;

        public REM288_SPECIALIZED_TRINOMIAL_GF2X(int r12, int r22, int r32, int r42, long j10) {
            this.f11885k3 = r12;
            this.ki = r22;
            this.ki64 = r32;
            this.k364 = r42;
            this.mask = j10;
            this.k364ki = r42 + r22;
            this.k3_ki = r12 - r22;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n(long[] jArr, int r20, long[] jArr2) {
            long j10 = jArr2[5];
            int r42 = this.ki;
            long j11 = jArr2[6];
            int r72 = this.ki64;
            long j12 = (j10 >>> r42) ^ (j11 << r72);
            long j13 = (j11 >>> r42) ^ (jArr2[7] << r72);
            long j14 = jArr2[2] ^ j13;
            int r12 = this.k364;
            int r13 = this.f11885k3;
            jArr[r20 + 2] = (j14 ^ (j12 >>> r12)) ^ (j13 << r13);
            long j15 = (jArr2[7] >>> r42) ^ (jArr2[8] << r72);
            jArr[r20 + 3] = ((j13 >>> r12) ^ (jArr2[3] ^ j15)) ^ (j15 << r13);
            long j16 = jArr2[8] >>> r42;
            long j17 = jArr2[4];
            long j18 = (((j17 >>> r42) ^ (jArr2[5] << r72)) ^ (j15 >>> this.k364ki)) ^ (j16 << this.k3_ki);
            long j19 = j16 << r13;
            jArr[r20 + 4] = (j19 ^ ((j15 >>> r12) ^ (j17 ^ j16))) & this.mask;
            jArr[r20] = (jArr2[0] ^ j18) ^ (j18 << r13);
            jArr[r20 + 1] = ((j12 << r13) ^ (jArr2[1] ^ j12)) ^ (j18 >>> r12);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n_xor(long[] jArr, int r23, long[] jArr2) {
            long j10 = jArr2[5];
            int r42 = this.ki;
            long j11 = jArr2[6];
            int r72 = this.ki64;
            long j12 = (j10 >>> r42) ^ (j11 << r72);
            long j13 = (j11 >>> r42) ^ (jArr2[7] << r72);
            int r92 = r23 + 2;
            long j14 = jArr[r92];
            long j15 = jArr2[2] ^ j13;
            int r14 = this.k364;
            int r15 = this.f11885k3;
            jArr[r92] = j14 ^ ((j15 ^ (j12 >>> r14)) ^ (j13 << r15));
            long j16 = (jArr2[7] >>> r42) ^ (jArr2[8] << r72);
            int r11 = r23 + 3;
            jArr[r11] = (((jArr2[3] ^ j16) ^ (j13 >>> r14)) ^ (j16 << r15)) ^ jArr[r11];
            long j17 = jArr2[8] >>> r42;
            int r10 = r23 + 4;
            jArr[r10] = ((((jArr2[4] ^ j17) ^ (j16 >>> r14)) ^ (j17 << r15)) & this.mask) ^ jArr[r10];
            long j18 = (((jArr2[4] >>> r42) ^ (jArr2[5] << r72)) ^ (j16 >>> this.k364ki)) ^ (j17 << this.k3_ki);
            jArr[r23] = jArr[r23] ^ ((jArr2[0] ^ j18) ^ (j18 << r15));
            int r43 = r23 + 1;
            jArr[r43] = ((j18 >>> r14) ^ ((jArr2[1] ^ j12) ^ (j12 << r15))) ^ jArr[r43];
        }
    }

    public static class REM384_SPECIALIZED358_TRINOMIAL_GF2X extends Rem_GF2n {

        /* renamed from: k3, reason: collision with root package name */
        private final int f11886k3;
        private final int k364;
        private final int k364ki;
        private final int k3_ki;

        public REM384_SPECIALIZED358_TRINOMIAL_GF2X(int r12, int r22, int r32, int r42, long j10) {
            this.f11886k3 = r12;
            this.ki = r22;
            this.ki64 = r32;
            this.k364 = r42;
            this.mask = j10;
            this.k364ki = r42 + r22;
            this.k3_ki = r12 - r22;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n(long[] jArr, int r20, long[] jArr2) {
            long j10 = jArr2[6];
            int r42 = this.ki;
            long j11 = jArr2[7];
            int r72 = this.ki64;
            long j12 = (j10 >>> r42) ^ (j11 << r72);
            long j13 = (j11 >>> r42) ^ (jArr2[8] << r72);
            long j14 = jArr2[2] ^ j13;
            int r12 = this.k364;
            int r13 = this.f11886k3;
            jArr[r20 + 2] = (j14 ^ (j12 >>> r12)) ^ (j13 << r13);
            long j15 = (jArr2[8] >>> r42) ^ (jArr2[9] << r72);
            jArr[r20 + 3] = ((j13 >>> r12) ^ (jArr2[3] ^ j15)) ^ (j15 << r13);
            long j16 = (jArr2[9] >>> r42) ^ (jArr2[10] << r72);
            jArr[r20 + 4] = ((j15 >>> r12) ^ (jArr2[4] ^ j16)) ^ (j16 << r13);
            long j17 = (jArr2[10] >>> r42) ^ (jArr2[11] << r72);
            long j18 = jArr2[5];
            long j19 = (((j18 >>> r42) ^ (jArr2[6] << r72)) ^ (j16 >>> this.k364ki)) ^ (j17 << this.k3_ki);
            jArr[r20 + 5] = ((j16 >>> r12) ^ (j18 ^ j17)) & this.mask;
            jArr[r20] = (jArr2[0] ^ j19) ^ (j19 << r13);
            jArr[r20 + 1] = (j12 << r13) ^ ((jArr2[1] ^ j12) ^ (j19 >>> r12));
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n_xor(long[] jArr, int r23, long[] jArr2) {
            long j10 = jArr2[6];
            int r42 = this.ki;
            long j11 = jArr2[7];
            int r72 = this.ki64;
            long j12 = (j10 >>> r42) ^ (j11 << r72);
            long j13 = (j11 >>> r42) ^ (jArr2[8] << r72);
            int r92 = r23 + 2;
            long j14 = jArr[r92];
            long j15 = jArr2[2] ^ j13;
            int r14 = this.k364;
            int r15 = this.f11886k3;
            jArr[r92] = j14 ^ ((j15 ^ (j12 >>> r14)) ^ (j13 << r15));
            long j16 = (jArr2[8] >>> r42) ^ (jArr2[9] << r72);
            int r11 = r23 + 3;
            jArr[r11] = (((jArr2[3] ^ j16) ^ (j13 >>> r14)) ^ (j16 << r15)) ^ jArr[r11];
            long j17 = (jArr2[9] >>> r42) ^ (jArr2[10] << r72);
            int r112 = r23 + 4;
            jArr[r112] = (((jArr2[4] ^ j17) ^ (j16 >>> r14)) ^ (j17 << r15)) ^ jArr[r112];
            long j18 = (jArr2[10] >>> r42) ^ (jArr2[11] << r72);
            int r10 = r23 + 5;
            jArr[r10] = (((jArr2[5] ^ j18) ^ (j17 >>> r14)) & this.mask) ^ jArr[r10];
            long j19 = (((jArr2[5] >>> r42) ^ (jArr2[6] << r72)) ^ (j17 >>> this.k364ki)) ^ (j18 << this.k3_ki);
            jArr[r23] = jArr[r23] ^ ((jArr2[0] ^ j19) ^ (j19 << r15));
            int r43 = r23 + 1;
            jArr[r43] = (((j19 >>> r14) ^ (jArr2[1] ^ j12)) ^ (j12 << r15)) ^ jArr[r43];
        }
    }

    public static class REM384_SPECIALIZED_TRINOMIAL_GF2X extends Rem_GF2n {

        /* renamed from: k3, reason: collision with root package name */
        private final int f11887k3;
        private final int k364;
        private final int k364ki;
        private final int k3_ki;

        public REM384_SPECIALIZED_TRINOMIAL_GF2X(int r12, int r22, int r32, int r42, long j10) {
            this.f11887k3 = r12;
            this.ki = r22;
            this.ki64 = r32;
            this.k364 = r42;
            this.mask = j10;
            this.k364ki = r42 + r22;
            this.k3_ki = r12 - r22;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n(long[] jArr, int r25, long[] jArr2) {
            long j10 = jArr2[7];
            int r32 = this.ki;
            long j11 = jArr2[8];
            int r82 = this.ki64;
            long j12 = (j10 >>> r32) ^ (j11 << r82);
            long j13 = jArr2[9];
            long j14 = (j11 >>> r32) ^ (j13 << r82);
            long j15 = jArr2[10];
            long j16 = (j13 >>> r32) ^ (j15 << r82);
            long j17 = (j15 >>> r32) ^ (jArr2[11] << r82);
            long j18 = jArr2[5] >>> r32;
            long j19 = jArr2[6];
            int r13 = this.k364ki;
            long j20 = (j18 ^ (j19 << r82)) ^ (j14 >>> r13);
            int r6 = this.k3_ki;
            long j21 = j20 ^ (j16 << r6);
            long j22 = (((j19 >>> r32) ^ (j10 << r82)) ^ (j16 >>> r13)) ^ (j17 << r6);
            jArr[r25] = jArr2[0] ^ j21;
            long j23 = jArr2[1] ^ j22;
            int r83 = this.f11887k3;
            jArr[r25 + 1] = j23 ^ (j21 << r83);
            long j24 = jArr2[2] ^ j12;
            int r132 = this.k364;
            jArr[r25 + 2] = (j24 ^ (j21 >>> r132)) ^ (j22 << r83);
            jArr[r25 + 3] = ((j22 >>> r132) ^ (jArr2[3] ^ j14)) ^ (j12 << r83);
            jArr[r25 + 4] = ((jArr2[4] ^ j16) ^ (j12 >>> r132)) ^ (j14 << r83);
            jArr[r25 + 5] = ((jArr2[5] ^ j17) ^ (j14 >>> r132)) & this.mask;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n_xor(long[] jArr, int r25, long[] jArr2) {
            long j10 = jArr2[7];
            int r32 = this.ki;
            long j11 = jArr2[8];
            int r82 = this.ki64;
            long j12 = (j10 >>> r32) ^ (j11 << r82);
            long j13 = jArr2[9];
            long j14 = (j11 >>> r32) ^ (j13 << r82);
            long j15 = jArr2[10];
            long j16 = (j13 >>> r32) ^ (j15 << r82);
            long j17 = (j15 >>> r32) ^ (jArr2[11] << r82);
            long j18 = jArr2[5] >>> r32;
            long j19 = jArr2[6];
            int r13 = this.k364ki;
            long j20 = (j18 ^ (j19 << r82)) ^ (j14 >>> r13);
            int r6 = this.k3_ki;
            long j21 = j20 ^ (j16 << r6);
            long j22 = (((j19 >>> r32) ^ (j10 << r82)) ^ (j16 >>> r13)) ^ (j17 << r6);
            jArr[r25] = jArr[r25] ^ (jArr2[0] ^ j21);
            int r33 = r25 + 1;
            long j23 = jArr[r33];
            long j24 = jArr2[1] ^ j22;
            int r83 = this.f11887k3;
            jArr[r33] = j23 ^ (j24 ^ (j21 << r83));
            int r34 = r25 + 2;
            long j25 = jArr[r34];
            long j26 = jArr2[2] ^ j12;
            int r132 = this.k364;
            jArr[r34] = j25 ^ ((j26 ^ (j21 >>> r132)) ^ (j22 << r83));
            int r35 = r25 + 3;
            jArr[r35] = (((j22 >>> r132) ^ (jArr2[3] ^ j14)) ^ (j12 << r83)) ^ jArr[r35];
            int r12 = r25 + 4;
            jArr[r12] = jArr[r12] ^ (((j12 >>> r132) ^ (jArr2[4] ^ j16)) ^ (j14 << r83));
            int r22 = r25 + 5;
            jArr[r22] = jArr[r22] ^ (((jArr2[5] ^ j17) ^ (j14 >>> r132)) & this.mask);
        }
    }

    public static class REM384_TRINOMIAL_GF2X extends Rem_GF2n {

        /* renamed from: k3, reason: collision with root package name */
        private final int f11888k3;
        private final int k364;
        private final int ki_k3;

        public REM384_TRINOMIAL_GF2X(int r12, int r22, int r32, int r42, long j10) {
            this.f11888k3 = r12;
            this.ki = r22;
            this.ki64 = r32;
            this.k364 = r42;
            this.mask = j10;
            this.ki_k3 = r22 - r12;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n(long[] jArr, int r22, long[] jArr2) {
            long j10 = jArr2[5];
            int r42 = this.ki;
            long j11 = jArr2[6];
            int r72 = this.ki64;
            long j12 = (j10 >>> r42) ^ (j11 << r72);
            long j13 = jArr2[7];
            long j14 = (j11 >>> r42) ^ (j13 << r72);
            long j15 = jArr2[8];
            long j16 = (j13 >>> r42) ^ (j15 << r72);
            long j17 = jArr2[9];
            long j18 = (j15 >>> r42) ^ (j17 << r72);
            long j19 = jArr2[10];
            long j20 = (j17 >>> r42) ^ (j19 << r72);
            long j21 = (j19 >>> r42) ^ (jArr2[11] << r72);
            long j22 = j12 ^ (j21 >>> this.ki_k3);
            long j23 = jArr2[0] ^ j22;
            int r43 = this.f11888k3;
            jArr[r22] = j23 ^ (j22 << r43);
            long j24 = jArr2[1] ^ j14;
            int r12 = this.k364;
            jArr[r22 + 1] = (j24 ^ (j12 >>> r12)) ^ (j14 << r43);
            jArr[r22 + 2] = ((jArr2[2] ^ j16) ^ (j14 >>> r12)) ^ (j16 << r43);
            jArr[r22 + 3] = ((jArr2[3] ^ j18) ^ (j16 >>> r12)) ^ (j18 << r43);
            jArr[r22 + 4] = ((jArr2[4] ^ j20) ^ (j18 >>> r12)) ^ (j20 << r43);
            jArr[r22 + 5] = (((j20 >>> r12) ^ (jArr2[5] ^ j21)) ^ (j21 << r43)) & this.mask;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n_xor(long[] jArr, int r24, long[] jArr2) {
            long j10 = jArr2[5];
            int r42 = this.ki;
            long j11 = jArr2[6];
            int r72 = this.ki64;
            long j12 = (j10 >>> r42) ^ (j11 << r72);
            long j13 = jArr2[7];
            long j14 = (j11 >>> r42) ^ (j13 << r72);
            long j15 = jArr2[8];
            long j16 = (j13 >>> r42) ^ (j15 << r72);
            long j17 = jArr2[9];
            long j18 = (j15 >>> r42) ^ (j17 << r72);
            long j19 = jArr2[10];
            long j20 = (j17 >>> r42) ^ (j19 << r72);
            long j21 = (j19 >>> r42) ^ (jArr2[11] << r72);
            long j22 = j12 ^ (j21 >>> this.ki_k3);
            long j23 = jArr[r24];
            long j24 = jArr2[0] ^ j22;
            int r43 = this.f11888k3;
            jArr[r24] = j23 ^ (j24 ^ (j22 << r43));
            int r73 = r24 + 1;
            long j25 = jArr[r73];
            long j26 = jArr2[1] ^ j14;
            int r12 = this.k364;
            jArr[r73] = j25 ^ ((j26 ^ (j12 >>> r12)) ^ (j14 << r43));
            int r22 = r24 + 2;
            jArr[r22] = jArr[r22] ^ (((jArr2[2] ^ j16) ^ (j14 >>> r12)) ^ (j16 << r43));
            int r23 = r24 + 3;
            jArr[r23] = jArr[r23] ^ (((jArr2[3] ^ j18) ^ (j16 >>> r12)) ^ (j18 << r43));
            int r25 = r24 + 4;
            jArr[r25] = jArr[r25] ^ (((jArr2[4] ^ j20) ^ (j18 >>> r12)) ^ (j20 << r43));
            int r32 = r24 + 5;
            jArr[r32] = ((((j20 >>> r12) ^ (jArr2[5] ^ j21)) ^ (j21 << r43)) & this.mask) ^ jArr[r32];
        }
    }

    public static class REM402_SPECIALIZED_TRINOMIAL_GF2X extends Rem_GF2n {

        /* renamed from: k3, reason: collision with root package name */
        private final int f11889k3;
        private final int k364;

        public REM402_SPECIALIZED_TRINOMIAL_GF2X(int r12, int r22, int r32, int r42, long j10) {
            this.f11889k3 = r12;
            this.ki = r22;
            this.ki64 = r32;
            this.k364 = r42;
            this.mask = j10;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n(long[] jArr, int r28, long[] jArr2) {
            long j10 = jArr2[9];
            int r32 = this.ki;
            long j11 = jArr2[10];
            int r82 = this.ki64;
            long j12 = (j10 >>> r32) ^ (j11 << r82);
            long j13 = jArr2[11];
            long j14 = (j11 >>> r32) ^ (j13 << r82);
            long j15 = jArr2[12];
            long j16 = (j13 >>> r32) ^ (j15 << r82);
            long j17 = j15 >>> r32;
            long j18 = ((j12 >>> 39) ^ (j14 << 25)) ^ (jArr2[6] >>> r32);
            long j19 = jArr2[7];
            long j20 = j18 ^ (j19 << r82);
            long j21 = jArr2[8];
            long j22 = (((j14 >>> 39) ^ (j16 << 25)) ^ (j19 >>> r32)) ^ (j21 << r82);
            long j23 = (((j16 >>> 39) ^ (j17 << 25)) ^ (j21 >>> r32)) ^ (j10 << r82);
            jArr[r28] = jArr2[0] ^ j20;
            jArr[r28 + 1] = jArr2[1] ^ j22;
            long j24 = jArr2[2] ^ j23;
            int r83 = this.f11889k3;
            jArr[r28 + 2] = j24 ^ (j20 << r83);
            long j25 = jArr2[3] ^ j12;
            int r13 = this.k364;
            jArr[r28 + 3] = (j25 ^ (j20 >>> r13)) ^ (j22 << r83);
            jArr[r28 + 4] = ((j14 ^ jArr2[4]) ^ (j22 >>> r13)) ^ (j23 << r83);
            jArr[r28 + 5] = ((j23 >>> r13) ^ (jArr2[5] ^ j16)) ^ (j12 << r83);
            jArr[r28 + 6] = ((jArr2[6] ^ j17) ^ (j12 >>> r13)) & this.mask;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n_xor(long[] jArr, int r28, long[] jArr2) {
            long j10 = jArr2[9];
            int r32 = this.ki;
            long j11 = jArr2[10];
            int r82 = this.ki64;
            long j12 = (j10 >>> r32) ^ (j11 << r82);
            long j13 = jArr2[11];
            long j14 = (j11 >>> r32) ^ (j13 << r82);
            long j15 = jArr2[12];
            long j16 = (j13 >>> r32) ^ (j15 << r82);
            long j17 = j15 >>> r32;
            long j18 = ((j12 >>> 39) ^ (j14 << 25)) ^ (jArr2[6] >>> r32);
            long j19 = jArr2[7];
            long j20 = j18 ^ (j19 << r82);
            long j21 = jArr2[8];
            long j22 = (((j14 >>> 39) ^ (j16 << 25)) ^ (j19 >>> r32)) ^ (j21 << r82);
            long j23 = (((j16 >>> 39) ^ (j17 << 25)) ^ (j21 >>> r32)) ^ (j10 << r82);
            jArr[r28] = jArr[r28] ^ (jArr2[0] ^ j20);
            int r33 = r28 + 1;
            jArr[r33] = jArr[r33] ^ (jArr2[1] ^ j22);
            int r34 = r28 + 2;
            long j24 = jArr[r34];
            long j25 = jArr2[2] ^ j23;
            int r83 = this.f11889k3;
            jArr[r34] = j24 ^ (j25 ^ (j20 << r83));
            int r35 = r28 + 3;
            long j26 = jArr[r35];
            long j27 = jArr2[3] ^ j12;
            int r13 = this.k364;
            jArr[r35] = j26 ^ ((j27 ^ (j20 >>> r13)) ^ (j22 << r83));
            int r36 = r28 + 4;
            jArr[r36] = (((jArr2[4] ^ j14) ^ (j22 >>> r13)) ^ (j23 << r83)) ^ jArr[r36];
            int r37 = r28 + 5;
            jArr[r37] = (((j23 >>> r13) ^ (j16 ^ jArr2[5])) ^ (j12 << r83)) ^ jArr[r37];
            int r12 = r28 + 6;
            jArr[r12] = jArr[r12] ^ (((j12 >>> r13) ^ (jArr2[6] ^ j17)) & this.mask);
        }
    }

    public static class REM544_PENTANOMIAL_GF2X extends Rem_GF2n {

        /* renamed from: k1, reason: collision with root package name */
        private final int f11890k1;
        private final int k164;

        /* renamed from: k2, reason: collision with root package name */
        private final int f11891k2;
        private final int k264;

        /* renamed from: k3, reason: collision with root package name */
        private final int f11892k3;
        private final int k364;
        private final int ki_k1;
        private final int ki_k2;
        private final int ki_k3;

        public REM544_PENTANOMIAL_GF2X(int r12, int r22, int r32, int r42, int r52, int r6, int r72, int r82, long j10) {
            this.f11890k1 = r12;
            this.f11891k2 = r22;
            this.f11892k3 = r32;
            this.ki = r42;
            this.ki64 = r52;
            this.k164 = r6;
            this.k264 = r72;
            this.k364 = r82;
            this.mask = j10;
            this.ki_k3 = r42 - r32;
            this.ki_k2 = r42 - r22;
            this.ki_k1 = r42 - r12;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n(long[] jArr, int r27, long[] jArr2) {
            long j10 = jArr2[16];
            int r42 = this.ki;
            long j11 = j10 >>> r42;
            long j12 = jArr2[8] >>> r42;
            long j13 = jArr2[9];
            int r10 = this.ki64;
            long j14 = j12 ^ (j13 << r10);
            long j15 = (j13 >>> r42) ^ (jArr2[10] << r10);
            long j16 = jArr2[1] ^ j15;
            int r15 = this.k164;
            int r52 = this.f11890k1;
            int r12 = this.k264;
            int r11 = this.f11891k2;
            long j17 = (((j16 ^ (j14 >>> r15)) ^ (j15 << r52)) ^ (j14 >>> r12)) ^ (j15 << r11);
            int r13 = this.k364;
            long j18 = j17 ^ (j14 >>> r13);
            int r14 = this.f11892k3;
            jArr[r27 + 1] = j18 ^ (j15 << r14);
            long j19 = j14 ^ (((j11 >>> this.ki_k3) ^ (j11 >>> this.ki_k2)) ^ (j11 >>> this.ki_k1));
            jArr[r27] = (j19 << r14) ^ (((jArr2[0] ^ j19) ^ (j19 << r52)) ^ (j19 << r11));
            long j20 = (jArr2[10] >>> r42) ^ (jArr2[11] << r10);
            jArr[r27 + 2] = ((((((jArr2[2] ^ j20) ^ (j15 >>> r15)) ^ (j20 << r52)) ^ (j15 >>> r12)) ^ (j20 << r11)) ^ (j15 >>> r13)) ^ (j20 << r14);
            long j21 = (jArr2[11] >>> r42) ^ (jArr2[12] << r10);
            jArr[r27 + 3] = ((((((jArr2[3] ^ j21) ^ (j20 >>> r15)) ^ (j21 << r52)) ^ (j20 >>> r12)) ^ (j21 << r11)) ^ (j20 >>> r13)) ^ (j21 << r14);
            long j22 = (jArr2[12] >>> r42) ^ (jArr2[13] << r10);
            jArr[r27 + 4] = ((((((jArr2[4] ^ j22) ^ (j21 >>> r15)) ^ (j22 << r52)) ^ (j21 >>> r12)) ^ (j22 << r11)) ^ (j21 >>> r13)) ^ (j22 << r14);
            long j23 = (jArr2[13] >>> r42) ^ (jArr2[14] << r10);
            jArr[r27 + 5] = ((((((jArr2[5] ^ j23) ^ (j22 >>> r15)) ^ (j23 << r52)) ^ (j22 >>> r12)) ^ (j23 << r11)) ^ (j22 >>> r13)) ^ (j23 << r14);
            long j24 = (jArr2[14] >>> r42) ^ (jArr2[15] << r10);
            jArr[r27 + 6] = ((((((jArr2[6] ^ j24) ^ (j23 >>> r15)) ^ (j24 << r52)) ^ (j23 >>> r12)) ^ (j24 << r11)) ^ (j23 >>> r13)) ^ (j24 << r14);
            long j25 = (jArr2[15] >>> r42) ^ (jArr2[16] << r10);
            jArr[r27 + 7] = ((j24 >>> r13) ^ (((((jArr2[7] ^ j25) ^ (j24 >>> r15)) ^ (j25 << r52)) ^ (j24 >>> r12)) ^ (j25 << r11))) ^ (j25 << r14);
            jArr[r27 + 8] = ((j11 << r14) ^ (((((j11 << r52) ^ ((jArr2[8] ^ j11) ^ (j25 >>> r15))) ^ (j25 >>> r12)) ^ (j11 << r11)) ^ (j25 >>> r13))) & this.mask;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n_xor(long[] jArr, int r29, long[] jArr2) {
            long j10 = jArr2[16];
            int r42 = this.ki;
            long j11 = j10 >>> r42;
            long j12 = jArr2[8] >>> r42;
            long j13 = jArr2[9];
            int r10 = this.ki64;
            long j14 = j12 ^ (j13 << r10);
            long j15 = (j13 >>> r42) ^ (jArr2[10] << r10);
            int r12 = r29 + 1;
            long j16 = jArr[r12];
            long j17 = jArr2[1] ^ j15;
            int r52 = this.k164;
            int r13 = this.f11890k1;
            int r11 = this.k264;
            long j18 = ((j17 ^ (j14 >>> r52)) ^ (j15 << r13)) ^ (j14 >>> r11);
            int r112 = this.f11891k2;
            int r53 = this.k364;
            long j19 = (j18 ^ (j15 << r112)) ^ (j14 >>> r53);
            int r54 = this.f11892k3;
            jArr[r12] = j16 ^ (j19 ^ (j15 << r54));
            long j20 = j14 ^ (((j11 >>> this.ki_k3) ^ (j11 >>> this.ki_k2)) ^ (j11 >>> this.ki_k1));
            jArr[r29] = ((j20 << r54) ^ (((jArr2[0] ^ j20) ^ (j20 << r13)) ^ (j20 << r112))) ^ jArr[r29];
            long j21 = (jArr2[10] >>> r42) ^ (jArr2[11] << r10);
            int r132 = r29 + 2;
            jArr[r132] = (((((((jArr2[2] ^ j21) ^ (j15 >>> r52)) ^ (j21 << r13)) ^ (j15 >>> r11)) ^ (j21 << r112)) ^ (j15 >>> r53)) ^ (j21 << r54)) ^ jArr[r132];
            long j22 = (jArr2[11] >>> r42) ^ (jArr2[12] << r10);
            int r133 = r29 + 3;
            jArr[r133] = (((((((jArr2[3] ^ j22) ^ (j21 >>> r52)) ^ (j22 << r13)) ^ (j21 >>> r11)) ^ (j22 << r112)) ^ (j21 >>> r53)) ^ (j22 << r54)) ^ jArr[r133];
            long j23 = (jArr2[12] >>> r42) ^ (jArr2[13] << r10);
            int r134 = r29 + 4;
            jArr[r134] = (((((((jArr2[4] ^ j23) ^ (j22 >>> r52)) ^ (j23 << r13)) ^ (j22 >>> r11)) ^ (j23 << r112)) ^ (j22 >>> r53)) ^ (j23 << r54)) ^ jArr[r134];
            long j24 = (jArr2[13] >>> r42) ^ (jArr2[14] << r10);
            int r135 = r29 + 5;
            jArr[r135] = (((((((jArr2[5] ^ j24) ^ (j23 >>> r52)) ^ (j24 << r13)) ^ (j23 >>> r11)) ^ (j24 << r112)) ^ (j23 >>> r53)) ^ (j24 << r54)) ^ jArr[r135];
            long j25 = (jArr2[14] >>> r42) ^ (jArr2[15] << r10);
            int r136 = r29 + 6;
            jArr[r136] = (((((((jArr2[6] ^ j25) ^ (j24 >>> r52)) ^ (j25 << r13)) ^ (j24 >>> r11)) ^ (j25 << r112)) ^ (j24 >>> r53)) ^ (j25 << r54)) ^ jArr[r136];
            long j26 = (jArr2[15] >>> r42) ^ (jArr2[16] << r10);
            int r43 = r29 + 7;
            jArr[r43] = (((j25 >>> r53) ^ (((((jArr2[7] ^ j26) ^ (j25 >>> r52)) ^ (j26 << r13)) ^ (j25 >>> r11)) ^ (j26 << r112))) ^ (j26 << r54)) ^ jArr[r43];
            int r6 = r29 + 8;
            long j27 = j26 >>> r53;
            jArr[r6] = (((j11 << r54) ^ (j27 ^ ((j11 << r112) ^ ((((jArr2[8] ^ j11) ^ (j26 >>> r52)) ^ (j11 << r13)) ^ (j26 >>> r11))))) & this.mask) ^ jArr[r6];
        }
    }

    public static class REM544_PENTANOMIAL_K3_IS_128_GF2X extends Rem_GF2n {

        /* renamed from: k1, reason: collision with root package name */
        private final int f11893k1;
        private final int k164;

        /* renamed from: k2, reason: collision with root package name */
        private final int f11894k2;
        private final int k264;

        public REM544_PENTANOMIAL_K3_IS_128_GF2X(int r12, int r22, int r32, int r42, int r52, int r6, long j10) {
            this.f11893k1 = r12;
            this.f11894k2 = r22;
            this.ki = r32;
            this.ki64 = r42;
            this.k164 = r52;
            this.k264 = r6;
            this.mask = j10;
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n(long[] jArr, int r27, long[] jArr2) {
            long j10 = jArr2[10];
            int r42 = this.ki;
            long j11 = jArr2[11];
            int r72 = this.ki64;
            long j12 = (j10 >>> r42) ^ (j11 << r72);
            long j13 = jArr2[12];
            long j14 = (j11 >>> r42) ^ (j13 << r72);
            long j15 = (j13 >>> r42) ^ (jArr2[13] << r72);
            long j16 = (jArr2[4] ^ j15) ^ j12;
            int r14 = this.k164;
            int r15 = this.f11893k1;
            int r12 = this.k264;
            int r10 = this.f11894k2;
            jArr[r27 + 4] = (((j16 ^ (j14 >>> r14)) ^ (j15 << r15)) ^ (j14 >>> r12)) ^ (j15 << r10);
            long j17 = (jArr2[13] >>> r42) ^ (jArr2[14] << r72);
            jArr[r27 + 5] = (((((jArr2[5] ^ j17) ^ j14) ^ (j15 >>> r14)) ^ (j17 << r15)) ^ (j15 >>> r12)) ^ (j17 << r10);
            long j18 = (jArr2[14] >>> r42) ^ (jArr2[15] << r72);
            jArr[r27 + 6] = (((((jArr2[6] ^ j18) ^ j15) ^ (j17 >>> r14)) ^ (j18 << r15)) ^ (j17 >>> r12)) ^ (j18 << r10);
            long j19 = (jArr2[15] >>> r42) ^ (jArr2[16] << r72);
            jArr[r27 + 7] = (((((jArr2[7] ^ j19) ^ j17) ^ (j18 >>> r14)) ^ (j19 << r15)) ^ (j18 >>> r12)) ^ (j19 << r10);
            long j20 = jArr2[16] >>> r42;
            jArr[r27 + 8] = ((((((jArr2[8] ^ j20) ^ j18) ^ (j19 >>> r14)) ^ (j20 << r15)) ^ (j19 >>> r12)) ^ (j20 << r10)) & this.mask;
            long j21 = (jArr2[8] ^ j18) >>> r42;
            long j22 = jArr2[9];
            long j23 = (j21 ^ ((j22 ^ j19) << r72)) ^ (jArr2[16] >>> r12);
            long j24 = ((j22 ^ j19) >>> r42) ^ ((jArr2[10] ^ j20) << r72);
            jArr[r27] = ((jArr2[0] ^ j23) ^ (j23 << r15)) ^ (j23 << r10);
            jArr[r27 + 1] = ((((jArr2[1] ^ j24) ^ (j23 >>> r14)) ^ (j24 << r15)) ^ (j23 >>> r12)) ^ (j24 << r10);
            jArr[r27 + 2] = (((((jArr2[2] ^ j12) ^ j23) ^ (j24 >>> r14)) ^ (j12 << r15)) ^ (j24 >>> r12)) ^ (j12 << r10);
            jArr[r27 + 3] = ((j12 >>> r12) ^ (((j24 ^ (jArr2[3] ^ j14)) ^ (j12 >>> r14)) ^ (j14 << r15))) ^ (j14 << r10);
        }

        @Override // org.bouncycastle.pqc.crypto.gemss.Rem_GF2n
        public void rem_gf2n_xor(long[] jArr, int r29, long[] jArr2) {
            long j10 = jArr2[10];
            int r42 = this.ki;
            long j11 = jArr2[11];
            int r72 = this.ki64;
            long j12 = (j10 >>> r42) ^ (j11 << r72);
            long j13 = jArr2[12];
            long j14 = (j11 >>> r42) ^ (j13 << r72);
            long j15 = (j13 >>> r42) ^ (jArr2[13] << r72);
            int r11 = r29 + 4;
            long j16 = jArr[r11];
            long j17 = (jArr2[4] ^ j15) ^ j12;
            int r12 = this.k164;
            int r10 = this.f11893k1;
            int r22 = this.k264;
            int r32 = this.f11894k2;
            jArr[r11] = j16 ^ ((((j17 ^ (j14 >>> r12)) ^ (j15 << r10)) ^ (j14 >>> r22)) ^ (j15 << r32));
            long j18 = (jArr2[13] >>> r42) ^ (jArr2[14] << r72);
            int r14 = r29 + 5;
            jArr[r14] = jArr[r14] ^ ((((((jArr2[5] ^ j18) ^ j14) ^ (j15 >>> r12)) ^ (j18 << r10)) ^ (j15 >>> r22)) ^ (j18 << r32));
            long j19 = (jArr2[14] >>> r42) ^ (jArr2[15] << r72);
            int r17 = r29 + 6;
            jArr[r17] = jArr[r17] ^ ((((((jArr2[6] ^ j19) ^ j15) ^ (j18 >>> r12)) ^ (j19 << r10)) ^ (j18 >>> r22)) ^ (j19 << r32));
            long j20 = (jArr2[15] >>> r42) ^ (jArr2[16] << r72);
            int r172 = r29 + 7;
            jArr[r172] = jArr[r172] ^ ((((((jArr2[7] ^ j20) ^ j18) ^ (j19 >>> r12)) ^ (j20 << r10)) ^ (j19 >>> r22)) ^ (j20 << r32));
            long j21 = jArr2[16] >>> r42;
            int r173 = r29 + 8;
            jArr[r173] = jArr[r173] ^ (((((((jArr2[8] ^ j21) ^ j19) ^ (j20 >>> r12)) ^ (j21 << r10)) ^ (j20 >>> r22)) ^ (j21 << r32)) & this.mask);
            long j22 = (jArr2[8] ^ j19) >>> r42;
            long j23 = jArr2[9];
            long j24 = (j22 ^ ((j23 ^ j20) << r72)) ^ (jArr2[16] >>> r22);
            long j25 = ((j20 ^ j23) >>> r42) ^ ((j21 ^ jArr2[10]) << r72);
            jArr[r29] = jArr[r29] ^ (((jArr2[0] ^ j24) ^ (j24 << r10)) ^ (j24 << r32));
            int r43 = r29 + 1;
            jArr[r43] = jArr[r43] ^ (((((jArr2[1] ^ j25) ^ (j24 >>> r12)) ^ (j25 << r10)) ^ (j24 >>> r22)) ^ (j25 << r32));
            int r44 = r29 + 2;
            jArr[r44] = (((((j24 ^ (jArr2[2] ^ j12)) ^ (j25 >>> r12)) ^ (j12 << r10)) ^ (j25 >>> r22)) ^ (j12 << r32)) ^ jArr[r44];
            int r52 = r29 + 3;
            jArr[r52] = (((j12 >>> r22) ^ ((((jArr2[3] ^ j14) ^ j25) ^ (j12 >>> r12)) ^ (j14 << r10))) ^ (j14 << r32)) ^ jArr[r52];
        }
    }

    public abstract void rem_gf2n(long[] jArr, int r22, long[] jArr2);

    public abstract void rem_gf2n_xor(long[] jArr, int r22, long[] jArr2);
}
