package org.bouncycastle.pqc.crypto.cmce;

import androidx.camera.core.impl.a;
import androidx.core.internal.view.SupportMenu;
import androidx.core.location.LocationRequestCompat;
import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class CMCEEngine {
    private int COND_BYTES;
    private int GFBITS;
    private int GFMASK;
    private int IRR_BYTES;
    private int PK_NCOLS;
    private int PK_NROWS;
    private int PK_ROW_BYTES;
    private int SYND_BYTES;
    private int SYS_N;
    private int SYS_T;
    private BENES benes;
    private boolean countErrorIndices;
    private final int defaultKeySize;

    /* renamed from: gf, reason: collision with root package name */
    private GF f11853gf;
    private int[] poly;
    private boolean usePadding;
    private boolean usePivots;

    public CMCEEngine(int r12, int r22, int r32, int[] r42, boolean z10, int r6) {
        BENES benes13;
        this.usePivots = z10;
        this.SYS_N = r22;
        this.SYS_T = r32;
        this.GFBITS = r12;
        this.poly = r42;
        this.defaultKeySize = r6;
        this.IRR_BYTES = r32 * 2;
        this.COND_BYTES = ((r12 * 2) - 1) * (1 << (r12 - 4));
        int r33 = r32 * r12;
        this.PK_NROWS = r33;
        int r23 = r22 - r33;
        this.PK_NCOLS = r23;
        this.PK_ROW_BYTES = (r23 + 7) / 8;
        this.SYND_BYTES = (r33 + 7) / 8;
        this.GFMASK = (1 << r12) - 1;
        if (r12 == 12) {
            this.f11853gf = new GF12();
            benes13 = new BENES12(this.SYS_N, this.SYS_T, this.GFBITS);
        } else {
            this.f11853gf = new GF13();
            benes13 = new BENES13(this.SYS_N, this.SYS_T, this.GFBITS);
        }
        this.benes = benes13;
        this.usePadding = this.SYS_T % 8 != 0;
        this.countErrorIndices = (1 << this.GFBITS) > this.SYS_N;
    }

    private void bm(short[] sArr, short[] sArr2) {
        int r14;
        int r12 = this.SYS_T;
        short[] sArr3 = new short[r12 + 1];
        short[] sArr4 = new short[r12 + 1];
        short s7 = 1;
        short[] sArr5 = new short[r12 + 1];
        int r52 = 0;
        for (int r6 = 0; r6 < this.SYS_T + 1; r6++) {
            sArr5[r6] = 0;
            sArr4[r6] = 0;
        }
        sArr4[0] = 1;
        sArr5[1] = 1;
        short s10 = 0;
        short s11 = 0;
        short s12 = 1;
        while (s10 < this.SYS_T * 2) {
            int r10 = 0;
            for (int r92 = 0; r92 <= min(s10, this.SYS_T); r92++) {
                r10 ^= this.f11853gf.gf_mul_ext(sArr4[r92], sArr2[s10 - r92]);
            }
            short sGf_reduce = this.f11853gf.gf_reduce(r10);
            short s13 = (short) (((short) (((short) (((short) (sGf_reduce - 1)) >> 15)) & s7)) - s7);
            short s14 = (short) (((short) (((short) (((short) (((short) (s10 - (s11 * 2))) >> 15)) & s7)) - s7)) & s13);
            for (int r122 = 0; r122 <= this.SYS_T; r122++) {
                sArr3[r122] = sArr4[r122];
            }
            short sGf_frac = this.f11853gf.gf_frac(s12, sGf_reduce);
            int r13 = 0;
            while (true) {
                r14 = this.SYS_T;
                if (r13 > r14) {
                    break;
                }
                sArr4[r13] = (short) ((this.f11853gf.gf_mul(sGf_frac, sArr5[r13]) & s13) ^ sArr4[r13]);
                r13++;
            }
            int r42 = ~s14;
            int r62 = s10 + 1;
            s11 = (short) (((r62 - s11) & s14) | (s11 & r42));
            for (int r142 = r14 - 1; r142 >= 0; r142--) {
                sArr5[r142 + 1] = (short) ((sArr5[r142] & r42) | (sArr3[r142] & s14));
            }
            sArr5[0] = 0;
            s12 = (short) ((r42 & s12) | (sGf_reduce & s14));
            s10 = (short) r62;
            s7 = 1;
        }
        while (true) {
            int r15 = this.SYS_T;
            if (r52 > r15) {
                return;
            }
            sArr[r52] = sArr4[r15 - r52];
            r52++;
        }
    }

    public static void cbrecursion(byte[] bArr, long j10, long j11, short[] sArr, int r37, long j12, long j13, int[] r42) {
        long j14;
        long j15 = j13;
        long j16 = 1;
        if (j12 == 1) {
            int r22 = (int) (j10 >> 3);
            bArr[r22] = (byte) ((get_q_short(r42, r37) << ((int) (j10 & 7))) ^ bArr[r22]);
            return;
        }
        if (sArr != null) {
            for (long j17 = 0; j17 < j15; j17++) {
                int r13 = (int) j17;
                r42[r13] = sArr[(int) (j17 ^ 1)] | ((sArr[r13] ^ 1) << 16);
            }
        } else {
            for (long j18 = 0; j18 < j15; j18++) {
                long j19 = r37;
                r42[(int) j18] = ((get_q_short(r42, (int) (j19 + j18)) ^ 1) << 16) | get_q_short(r42, (int) (j19 + (j18 ^ 1)));
            }
        }
        int r32 = (int) j15;
        int r43 = 0;
        sort32(r42, 0, r32);
        for (long j20 = 0; j20 < j15; j20++) {
            int r11 = (int) j20;
            int r10 = 65535 & r42[r11];
            if (j20 >= r10) {
                r11 = r10;
            }
            r42[(int) (j15 + j20)] = (r10 << 16) | r11;
        }
        for (long j21 = 0; j21 < j15; j21++) {
            r42[(int) j21] = (int) ((r42[r11] << 16) | j21);
        }
        sort32(r42, 0, r32);
        long j22 = 0;
        while (j22 < j15) {
            int r112 = (int) j22;
            r42[r112] = (r42[r112] << 16) + (r42[(int) (j15 + j22)] >> 16);
            j22++;
            r43 = 0;
        }
        sort32(r42, r43, r32);
        long j23 = 0;
        if (j12 <= 10) {
            while (j23 < j15) {
                int r113 = (int) (j15 + j23);
                r42[r113] = ((r42[(int) j23] & 65535) << 10) | (r42[r113] & 1023);
                j23++;
            }
            long j24 = 1;
            while (j24 < j12 - j16) {
                for (long j25 = 0; j25 < j15; j25 += j16) {
                    r42[(int) j25] = (int) (((r42[(int) (j15 + j25)] & (-1024)) << 6) | j25);
                }
                sort32(r42, 0, r32);
                for (long j26 = 0; j26 < j15; j26++) {
                    int r114 = (int) j26;
                    r42[r114] = r42[(int) (j15 + j26)] | (r42[r114] << 20);
                }
                sort32(r42, 0, r32);
                for (long j27 = 0; j27 < j15; j27++) {
                    int r82 = r42[(int) j27];
                    int r92 = 1048575 & r82;
                    int r115 = (int) (j15 + j27);
                    int r83 = (r82 & 1047552) | (r42[r115] & 1023);
                    if (r92 >= r83) {
                        r92 = r83;
                    }
                    r42[r115] = r92;
                }
                j24++;
                j16 = 1;
            }
            long j28 = j16;
            for (long j29 = 0; j29 < j15; j29 += j28) {
                int r72 = (int) (j15 + j29);
                r42[r72] = r42[r72] & 1023;
            }
        } else {
            while (j23 < j15) {
                int r73 = (int) (j15 + j23);
                r42[r73] = (r42[(int) j23] << 16) | (r42[r73] & 65535);
                j23++;
            }
            long j30 = 1;
            for (long j31 = 1; j30 < j12 - j31; j31 = 1) {
                for (long j32 = 0; j32 < j15; j32++) {
                    r42[(int) j32] = (int) ((r42[(int) (j15 + j32)] & SupportMenu.CATEGORY_MASK) | j32);
                }
                sort32(r42, 0, r32);
                for (long j33 = 0; j33 < j15; j33++) {
                    int r84 = (int) j33;
                    r42[r84] = (r42[r84] << 16) | (r42[(int) (j15 + j33)] & 65535);
                }
                if (j30 < j12 - 2) {
                    for (long j34 = 0; j34 < j15; j34++) {
                        int r93 = (int) (j15 + j34);
                        r42[r93] = (r42[(int) j34] & SupportMenu.CATEGORY_MASK) | (r42[r93] >> 16);
                    }
                    sort32(r42, r32, (int) (j15 * 2));
                    for (long j35 = 0; j35 < j15; j35++) {
                        int r94 = (int) (j15 + j35);
                        r42[r94] = (r42[r94] << 16) | (r42[(int) j35] & 65535);
                    }
                }
                sort32(r42, 0, r32);
                for (long j36 = 0; j36 < j15; j36++) {
                    int r95 = (int) (j15 + j36);
                    int r85 = r42[r95];
                    int r116 = (r42[(int) j36] & 65535) | (r85 & SupportMenu.CATEGORY_MASK);
                    if (r116 < r85) {
                        r42[r95] = r116;
                    }
                }
                j30++;
            }
            for (long j37 = 0; j37 < j15; j37++) {
                int r74 = (int) (j15 + j37);
                r42[r74] = r42[r74] & 65535;
            }
        }
        long j38 = 0;
        if (sArr != null) {
            while (j38 < j15) {
                r42[(int) j38] = (int) ((sArr[r0] << 16) + j38);
                j38++;
            }
        } else {
            while (j38 < j15) {
                r42[(int) j38] = (int) ((get_q_short(r42, (int) (r37 + j38)) << 16) + j38);
                j38++;
            }
        }
        sort32(r42, 0, r32);
        long j39 = j10;
        long j40 = 0;
        while (true) {
            j14 = j15 / 2;
            if (j40 >= j14) {
                break;
            }
            long j41 = j40 * 2;
            long j42 = j15 + j41;
            int r02 = (int) j42;
            int r117 = r42[r02] & 1;
            int r14 = (int) (r117 + j41);
            int r118 = (int) (j39 >> 3);
            bArr[r118] = (byte) (bArr[r118] ^ (r117 << ((int) (j39 & 7))));
            j39 += j11;
            r42[r02] = (r42[(int) j41] << 16) | r14;
            r42[(int) (j42 + 1)] = (r42[(int) (j41 + 1)] << 16) | (r14 ^ 1);
            j40++;
        }
        long j43 = j15 * 2;
        sort32(r42, r32, (int) j43);
        long j44 = j12 * 2;
        long j45 = ((j44 - 3) * j11 * j14) + j39;
        long j46 = 0;
        while (j46 < j14) {
            long j47 = j46 * 2;
            long j48 = j43;
            long j49 = j15 + j47;
            int r03 = r42[(int) j49];
            int r15 = r03 & 1;
            int r23 = (int) (r15 + j47);
            int r96 = (int) (j45 >> 3);
            bArr[r96] = (byte) ((r15 << ((int) (j45 & 7))) ^ bArr[r96]);
            j45 += j11;
            r42[(int) j47] = (r03 & 65535) | (r23 << 16);
            r42[(int) (j47 + 1)] = ((r23 ^ 1) << 16) | (r42[(int) (j49 + 1)] & 65535);
            j46++;
            j44 = j44;
            j43 = j48;
            j15 = j13;
            r32 = r32;
        }
        int r04 = r32;
        long j50 = j43;
        sort32(r42, 0, r04);
        long j51 = j45 - (((j44 - 2) * j11) * j14);
        short[] sArr2 = new short[r04 * 4];
        for (long j52 = 0; j52 < j50; j52++) {
            long j53 = j52 * 2;
            int r86 = r42[(int) j52];
            sArr2[(int) (j53 + 0)] = (short) r86;
            sArr2[(int) (j53 + 1)] = (short) ((r86 & SupportMenu.CATEGORY_MASK) >> 16);
        }
        for (long j54 = 0; j54 < j14; j54++) {
            long j55 = j54 * 2;
            sArr2[(int) j54] = (short) ((r42[(int) j55] & 65535) >>> 1);
            sArr2[(int) (j54 + j14)] = (short) ((r42[(int) (j55 + 1)] & 65535) >>> 1);
        }
        for (long j56 = 0; j56 < j14; j56++) {
            long j57 = j56 * 2;
            r42[(int) ((j13 / 4) + j13 + j56)] = (sArr2[(int) (j57 + 1)] << 16) | sArr2[(int) j57];
        }
        long j58 = j11 * 2;
        long j59 = (j13 / 4) + j13;
        long j60 = j12 - 1;
        cbrecursion(bArr, j51, j58, null, ((int) j59) * 2, j60, j14, r42);
        cbrecursion(bArr, j51 + j11, j58, null, (int) ((j59 * 2) + j14), j60, j14, r42);
    }

    private static void controlbitsfrompermutation(byte[] bArr, short[] sArr, long j10, long j11) {
        long j12 = 2;
        int[] r11 = new int[(int) (j11 * 2)];
        int r92 = (int) j11;
        short[] sArr2 = new short[r92];
        while (true) {
            short s7 = 0;
            for (int r02 = 0; r02 < (((((j10 * j12) - 1) * j11) / j12) + 7) / 8; r02++) {
                bArr[r02] = 0;
            }
            int r15 = r92;
            short[] sArr3 = sArr2;
            int[] r16 = r11;
            cbrecursion(bArr, 0L, 1L, sArr, 0, j10, j11, r11);
            for (int r03 = 0; r03 < j11; r03++) {
                sArr3[r03] = (short) r03;
            }
            int r12 = 0;
            for (int r04 = 0; r04 < j10; r04++) {
                layer(sArr3, bArr, r12, r04, r15);
                r12 = (int) (r12 + (j11 >> 4));
            }
            for (int r05 = (int) (j10 - 2); r05 >= 0; r05--) {
                layer(sArr3, bArr, r12, r05, r15);
                r12 = (int) (r12 + (j11 >> 4));
            }
            int r06 = 0;
            while (r06 < j11) {
                short s10 = (short) (s7 | (sArr[r06] ^ sArr3[r06]));
                r06++;
                s7 = s10;
            }
            if (s7 == 0) {
                return;
            }
            sArr2 = sArr3;
            r92 = r15;
            r11 = r16;
            j12 = 2;
        }
    }

    private static int ctz(long j10) {
        long j11 = ~j10;
        long j12 = 72340172838076673L;
        long j13 = 0;
        for (int r42 = 0; r42 < 8; r42++) {
            j12 &= j11 >>> r42;
            j13 += j12;
        }
        long j14 = 578721382704613384L & j13;
        long j15 = j14 | (j14 >>> 1);
        long j16 = j15 | (j15 >>> 2);
        long j17 = j13 >>> 8;
        long j18 = j13 + (j17 & j16);
        for (int r02 = 2; r02 < 8; r02++) {
            j16 &= j16 >>> 8;
            j17 >>>= 8;
            j18 += j17 & j16;
        }
        return ((int) j18) & 255;
    }

    private int decrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int r10;
        int r92;
        int r02 = this.SYS_T;
        short[] sArr = new short[r02 + 1];
        int r22 = this.SYS_N;
        short[] sArr2 = new short[r22];
        short[] sArr3 = new short[r02 * 2];
        short[] sArr4 = new short[r02 * 2];
        short[] sArr5 = new short[r02 + 1];
        short[] sArr6 = new short[r22];
        byte[] bArr4 = new byte[r22 / 8];
        int r93 = 0;
        while (true) {
            r10 = this.SYND_BYTES;
            if (r93 >= r10) {
                break;
            }
            bArr4[r93] = bArr3[r93];
            r93++;
        }
        while (r10 < this.SYS_N / 8) {
            bArr4[r10] = 0;
            r10++;
        }
        int r14 = 0;
        while (true) {
            r92 = this.SYS_T;
            if (r14 >= r92) {
                break;
            }
            sArr[r14] = Utils.load_gf(bArr2, (r14 * 2) + 40, this.GFMASK);
            r14++;
        }
        sArr[r92] = 1;
        this.benes.support_gen(sArr2, bArr2);
        synd(sArr3, sArr, sArr2, bArr4);
        bm(sArr5, sArr3);
        root(sArr6, sArr5, sArr2);
        for (int r13 = 0; r13 < this.SYS_N / 8; r13++) {
            bArr[r13] = 0;
        }
        int r142 = 0;
        for (int r132 = 0; r132 < this.SYS_N; r132++) {
            short sGf_iszero = (short) (this.f11853gf.gf_iszero(sArr6[r132]) & 1);
            int r23 = r132 / 8;
            bArr[r23] = (byte) (bArr[r23] | (sGf_iszero << (r132 % 8)));
            r142 += sGf_iszero;
        }
        synd(sArr4, sArr, sArr2, bArr);
        int r12 = this.SYS_T ^ r142;
        for (int r82 = 0; r82 < this.SYS_T * 2; r82++) {
            r12 |= sArr3[r82] ^ sArr4[r82];
        }
        return (((r12 - 1) >> 15) & 1) ^ 1;
    }

    private void encrypt(byte[] bArr, byte[] bArr2, byte[] bArr3, SecureRandom secureRandom) {
        generate_error_vector(bArr3, secureRandom);
        syndrome(bArr, bArr2, bArr3);
    }

    private short eval(short[] sArr, short s7) {
        int r02 = this.SYS_T;
        short sGf_mul = sArr[r02];
        for (int r03 = r02 - 1; r03 >= 0; r03--) {
            sGf_mul = (short) (this.f11853gf.gf_mul(sGf_mul, s7) ^ sArr[r03]);
        }
        return sGf_mul;
    }

    private void generate_error_vector(byte[] bArr, SecureRandom secureRandom) {
        int r6;
        int r02 = this.SYS_T;
        short[] sArr = new short[r02 * 2];
        short[] sArr2 = new short[r02];
        byte[] bArr2 = new byte[r02];
        while (true) {
            if (this.countErrorIndices) {
                byte[] bArr3 = new byte[this.SYS_T * 4];
                secureRandom.nextBytes(bArr3);
                for (int r52 = 0; r52 < this.SYS_T * 2; r52++) {
                    sArr[r52] = Utils.load_gf(bArr3, r52 * 2, this.GFMASK);
                }
                int r32 = 0;
                int r53 = 0;
                while (true) {
                    r6 = this.SYS_T;
                    if (r32 >= r6 * 2 || r53 >= r6) {
                        break;
                    }
                    short s7 = sArr[r32];
                    if (s7 < this.SYS_N) {
                        sArr2[r53] = s7;
                        r53++;
                    }
                    r32++;
                }
                if (r53 < r6) {
                    continue;
                }
            } else {
                byte[] bArr4 = new byte[this.SYS_T * 2];
                secureRandom.nextBytes(bArr4);
                for (int r54 = 0; r54 < this.SYS_T; r54++) {
                    sArr2[r54] = Utils.load_gf(bArr4, r54 * 2, this.GFMASK);
                }
            }
            boolean z10 = false;
            for (int r55 = 1; r55 < this.SYS_T && !z10; r55++) {
                int r72 = 0;
                while (true) {
                    if (r72 >= r55) {
                        break;
                    }
                    if (sArr2[r55] == sArr2[r72]) {
                        z10 = true;
                        break;
                    }
                    r72++;
                }
            }
            if (!z10) {
                break;
            }
        }
        for (int r12 = 0; r12 < this.SYS_T; r12++) {
            bArr2[r12] = (byte) (1 << (sArr2[r12] & 7));
        }
        for (short s10 = 0; s10 < this.SYS_N / 8; s10 = (short) (s10 + 1)) {
            bArr[s10] = 0;
            for (int r13 = 0; r13 < this.SYS_T; r13++) {
                bArr[s10] = (byte) ((((short) (same_mask32(s10, (short) (sArr2[r13] >> 3)) & 255)) & bArr2[r13]) | bArr[s10]);
            }
        }
    }

    private int generate_irr_poly(short[] sArr) {
        int r6;
        int r02 = this.SYS_T;
        int r22 = 2;
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, r02 + 1, r02);
        sArr2[0][0] = 1;
        System.arraycopy(sArr, 0, sArr2[1], 0, this.SYS_T);
        int[] r32 = new int[(this.SYS_T * 2) - 1];
        while (true) {
            r6 = this.SYS_T;
            if (r22 >= r6) {
                break;
            }
            this.f11853gf.gf_sqr_poly(r6, this.poly, sArr2[r22], sArr2[r22 >>> 1], r32);
            this.f11853gf.gf_mul_poly(this.SYS_T, this.poly, sArr2[r22 + 1], sArr2[r22], sArr, r32);
            r22 += 2;
        }
        if (r22 == r6) {
            this.f11853gf.gf_sqr_poly(r6, this.poly, sArr2[r22], sArr2[r22 >>> 1], r32);
        }
        int r23 = 0;
        while (true) {
            int r33 = this.SYS_T;
            if (r23 >= r33) {
                System.arraycopy(sArr2[r33], 0, sArr, 0, r33);
                return 0;
            }
            int r34 = r23 + 1;
            for (int r52 = r34; r52 < this.SYS_T; r52++) {
                short sGf_iszero = this.f11853gf.gf_iszero(sArr2[r23][r23]);
                for (int r72 = r23; r72 < this.SYS_T + 1; r72++) {
                    short[] sArr3 = sArr2[r72];
                    sArr3[r23] = (short) (sArr3[r23] ^ ((short) (sArr3[r52] & sGf_iszero)));
                }
            }
            short s7 = sArr2[r23][r23];
            if (s7 == 0) {
                return -1;
            }
            short sGf_inv = this.f11853gf.gf_inv(s7);
            for (int r62 = r23; r62 < this.SYS_T + 1; r62++) {
                short[] sArr4 = sArr2[r62];
                sArr4[r23] = this.f11853gf.gf_mul(sArr4[r23], sGf_inv);
            }
            for (int r53 = 0; r53 < this.SYS_T; r53++) {
                if (r53 != r23) {
                    short s10 = sArr2[r23][r53];
                    for (int r73 = r23; r73 <= this.SYS_T; r73++) {
                        short[] sArr5 = sArr2[r73];
                        sArr5[r53] = (short) (sArr5[r53] ^ this.f11853gf.gf_mul(sArr5[r23], s10));
                    }
                }
            }
            r23 = r34;
        }
    }

    public static short get_q_short(int[] r12, int r22) {
        int r02 = r22 / 2;
        return (short) (r22 % 2 == 0 ? r12[r02] : (r12[r02] & SupportMenu.CATEGORY_MASK) >> 16);
    }

    private static void layer(short[] sArr, byte[] bArr, int r13, int r14, int r15) {
        int r142 = 1 << r14;
        int r32 = 0;
        for (int r22 = 0; r22 < r15; r22 += r142 * 2) {
            for (int r42 = 0; r42 < r142; r42++) {
                int r52 = r22 + r42;
                short s7 = sArr[r52];
                int r72 = r52 + r142;
                int r82 = (sArr[r72] ^ s7) & (-((bArr[(r32 >> 3) + r13] >> (r32 & 7)) & 1));
                sArr[r52] = (short) (s7 ^ r82);
                sArr[r72] = (short) (sArr[r72] ^ r82);
                r32++;
            }
        }
    }

    private static int min(short s7, int r12) {
        return s7 < r12 ? s7 : r12;
    }

    private int mov_columns(byte[][] bArr, short[] sArr, long[] jArr) {
        byte[] bArr2;
        long jLoad8;
        long[] jArr2 = new long[64];
        int r32 = 32;
        long[] jArr3 = new long[32];
        byte[] bArr3 = new byte[9];
        int r72 = this.PK_NROWS - 32;
        int r82 = r72 / 8;
        int r92 = r72 % 8;
        char c10 = 0;
        if (this.usePadding) {
            for (int r10 = 0; r10 < 32; r10++) {
                for (int r13 = 0; r13 < 9; r13++) {
                    bArr3[r13] = bArr[r72 + r10][r82 + r13];
                }
                int r132 = 0;
                while (r132 < 8) {
                    int r15 = r132 + 1;
                    bArr3[r132] = (byte) (((bArr3[r132] & 255) >> r92) | (bArr3[r15] << (8 - r92)));
                    r132 = r15;
                }
                jArr2[r10] = Utils.load8(bArr3, 0);
            }
        } else {
            for (int r102 = 0; r102 < 32; r102++) {
                jArr2[r102] = Utils.load8(bArr[r72 + r102], r82);
            }
        }
        long j10 = 0;
        jArr[0] = 0;
        int r103 = 0;
        while (r103 < 32) {
            long j11 = jArr2[r103];
            int r19 = r103 + 1;
            for (int r12 = r19; r12 < 32; r12++) {
                j11 |= jArr2[r12];
            }
            if (j11 == j10) {
                return -1;
            }
            int r122 = ctz(j11);
            long j12 = r122;
            jArr3[r103] = j12;
            jArr[c10] = jArr[c10] | (1 << ((int) j12));
            for (int r133 = r19; r133 < 32; r133++) {
                long j13 = jArr2[r103];
                jArr2[r103] = j13 ^ (jArr2[r133] & (((j13 >> r122) & 1) - 1));
            }
            int r134 = r19;
            while (r134 < 32) {
                long j14 = jArr2[r134];
                jArr2[r134] = j14 ^ (jArr2[r103] & (-((j14 >> r122) & 1)));
                r134++;
                r122 = r122;
                c10 = 0;
            }
            r103 = r19;
            j10 = 0;
        }
        int r22 = 0;
        while (r22 < 32) {
            int r104 = r22 + 1;
            int r11 = r104;
            while (r11 < 64) {
                long jSame_mask64 = same_mask64((short) r11, (short) jArr3[r22]) & (sArr[r12] ^ sArr[r17]);
                sArr[r72 + r22] = (short) (sArr[r12] ^ jSame_mask64);
                sArr[r72 + r11] = (short) (jSame_mask64 ^ sArr[r17]);
                r11++;
                bArr3 = bArr3;
            }
            r22 = r104;
        }
        byte[] bArr4 = bArr3;
        int r14 = 0;
        while (r14 < this.PK_NROWS) {
            if (this.usePadding) {
                for (int r142 = 0; r142 < 9; r142++) {
                    bArr4[r142] = bArr[r14][r82 + r142];
                }
                int r143 = 0;
                while (r143 < 8) {
                    int r73 = r143 + 1;
                    bArr4[r143] = (byte) (((bArr4[r143] & 255) >> r92) | (bArr4[r73] << (8 - r92)));
                    r143 = r73;
                }
                bArr2 = bArr4;
                jLoad8 = Utils.load8(bArr2, 0);
            } else {
                bArr2 = bArr4;
                jLoad8 = Utils.load8(bArr[r14], r82);
            }
            int r74 = 0;
            while (r74 < r32) {
                long j15 = jArr3[r74];
                long j16 = ((jLoad8 >> r74) ^ (jLoad8 >> ((int) j15))) & 1;
                jLoad8 = (j16 << r74) ^ ((j16 << ((int) j15)) ^ jLoad8);
                r74++;
                r32 = 32;
            }
            if (this.usePadding) {
                Utils.store8(bArr2, 0, jLoad8);
                byte[] bArr5 = bArr[r14];
                int r33 = r82 + 8;
                int r112 = 8 - r92;
                bArr5[r33] = (byte) ((((bArr5[r33] & 255) >>> r92) << r92) | ((bArr2[7] & 255) >>> r112));
                bArr5[r82 + 0] = (byte) (((bArr2[0] & 255) << r92) | (((bArr5[r82] & 255) << r112) >>> r112));
                for (int r75 = 7; r75 >= 1; r75--) {
                    bArr[r14][r82 + r75] = (byte) (((bArr2[r75] & 255) << r92) | ((bArr2[r75 - 1] & 255) >>> r112));
                }
            } else {
                Utils.store8(bArr[r14], r82, jLoad8);
            }
            r14++;
            bArr4 = bArr2;
            r32 = 32;
        }
        return 0;
    }

    private int pk_gen(byte[] bArr, byte[] bArr2, int[] r21, short[] sArr, long[] jArr) {
        int r82;
        int r83;
        int r32 = this.SYS_T;
        short[] sArr2 = new short[r32 + 1];
        sArr2[r32] = 1;
        for (int r6 = 0; r6 < this.SYS_T; r6++) {
            sArr2[r6] = Utils.load_gf(bArr2, (r6 * 2) + 40, this.GFMASK);
        }
        int r62 = 1 << this.GFBITS;
        long[] jArr2 = new long[r62];
        for (int r84 = 0; r84 < (1 << this.GFBITS); r84++) {
            long j10 = r21[r84];
            jArr2[r84] = j10;
            long j11 = j10 << 31;
            jArr2[r84] = j11;
            long j12 = j11 | r84;
            jArr2[r84] = j12;
            jArr2[r84] = j12 & LocationRequestCompat.PASSIVE_INTERVAL;
        }
        sort64(jArr2, 0, r62);
        for (int r63 = 1; r63 < (1 << this.GFBITS); r63++) {
            if ((jArr2[r63 - 1] >> 31) == (jArr2[r63] >> 31)) {
                return -1;
            }
        }
        short[] sArr3 = new short[this.SYS_N];
        for (int r85 = 0; r85 < (1 << this.GFBITS); r85++) {
            sArr[r85] = (short) (jArr2[r85] & this.GFMASK);
        }
        int r72 = 0;
        while (true) {
            r82 = this.SYS_N;
            if (r72 >= r82) {
                break;
            }
            sArr3[r72] = Utils.bitrev(sArr[r72], this.GFBITS);
            r72++;
        }
        short[] sArr4 = new short[r82];
        root(sArr4, sArr2, sArr3);
        int r42 = 0;
        while (true) {
            r83 = this.SYS_N;
            if (r42 >= r83) {
                break;
            }
            sArr4[r42] = this.f11853gf.gf_inv(sArr4[r42]);
            r42++;
        }
        byte[][] bArr3 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.PK_NROWS, r83 / 8);
        for (int r86 = 0; r86 < this.PK_NROWS; r86++) {
            for (int r10 = 0; r10 < this.SYS_N / 8; r10++) {
                bArr3[r86][r10] = 0;
            }
        }
        int r87 = 0;
        while (r87 < this.SYS_T) {
            for (int r102 = 0; r102 < this.SYS_N; r102 += 8) {
                int r11 = 0;
                while (true) {
                    int r12 = this.GFBITS;
                    if (r11 < r12) {
                        bArr3[(r12 * r87) + r11][r102 / 8] = (byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) ((sArr4[r102 + 7] >>> r11) & 1)) << 1)) | ((sArr4[r102 + 6] >>> r11) & 1))) << 1)) | ((sArr4[r102 + 5] >>> r11) & 1))) << 1)) | ((sArr4[r102 + 4] >>> r11) & 1))) << 1)) | ((sArr4[r102 + 3] >>> r11) & 1))) << 1)) | ((sArr4[r102 + 2] >>> r11) & 1))) << 1)) | ((sArr4[r102 + 1] >>> r11) & 1))) << 1)) | ((sArr4[r102 + 0] >>> r11) & 1));
                        r11++;
                    }
                }
            }
            for (int r103 = 0; r103 < this.SYS_N; r103++) {
                sArr4[r103] = this.f11853gf.gf_mul(sArr4[r103], sArr3[r103]);
            }
            r87++;
        }
        int r64 = 0;
        while (true) {
            int r73 = this.PK_NROWS;
            if (r64 < r73) {
                r87 = r64 >>> 3;
                int r104 = r64 & 7;
                if (this.usePivots && r64 == r73 - 32) {
                    if (mov_columns(bArr3, sArr, jArr) != 0) {
                        return -1;
                    }
                }
                int r74 = r64 + 1;
                for (int r122 = r74; r122 < this.PK_NROWS; r122++) {
                    byte b10 = (byte) (-((byte) (((byte) (((byte) (bArr3[r64][r87] ^ bArr3[r122][r87])) >> r104)) & 1)));
                    for (int r14 = 0; r14 < this.SYS_N / 8; r14++) {
                        byte[] bArr4 = bArr3[r64];
                        bArr4[r14] = (byte) (bArr4[r14] ^ (bArr3[r122][r14] & b10));
                    }
                }
                if (((bArr3[r64][r87] >> r104) & 1) == 0) {
                    return -1;
                }
                for (int r33 = 0; r33 < this.PK_NROWS; r33++) {
                    if (r33 != r64) {
                        byte b11 = (byte) (-((byte) (((byte) (bArr3[r33][r87] >> r104)) & 1)));
                        for (int r13 = 0; r13 < this.SYS_N / 8; r13++) {
                            byte[] bArr5 = bArr3[r33];
                            bArr5[r13] = (byte) (bArr5[r13] ^ (bArr3[r64][r13] & b11));
                        }
                    }
                }
                r64 = r74;
            } else {
                if (bArr == null) {
                    return 0;
                }
                if (this.usePadding) {
                    int r22 = r73 % 8;
                    if (r22 == 0) {
                        System.arraycopy(bArr3[r87], (r73 - 1) / 8, bArr, 0, this.SYS_N / 8);
                        int r15 = this.SYS_N / 8;
                        return 0;
                    }
                    int r34 = 0;
                    int r65 = 0;
                    while (true) {
                        int r75 = this.PK_NROWS;
                        if (r34 >= r75) {
                            return 0;
                        }
                        int r76 = (r75 - 1) / 8;
                        while (r76 < (this.SYS_N / 8) - 1) {
                            byte[] bArr6 = bArr3[r34];
                            int r105 = (bArr6[r76] & 255) >>> r22;
                            r76++;
                            bArr[r65] = (byte) ((bArr6[r76] << (8 - r22)) | r105);
                            r65++;
                        }
                        bArr[r65] = (byte) ((bArr3[r34][r76] & 255) >>> r22);
                        r34++;
                        r65++;
                    }
                } else {
                    int r23 = ((this.SYS_N - r73) + 7) / 8;
                    int r35 = 0;
                    while (true) {
                        int r52 = this.PK_NROWS;
                        if (r35 >= r52) {
                            return 0;
                        }
                        System.arraycopy(bArr3[r35], r52 / 8, bArr, r23 * r35, r23);
                        r35++;
                    }
                }
            }
        }
    }

    private void root(short[] sArr, short[] sArr2, short[] sArr3) {
        for (int r02 = 0; r02 < this.SYS_N; r02++) {
            sArr[r02] = eval(sArr2, sArr3[r02]);
        }
    }

    private static byte same_mask32(short s7, short s10) {
        return (byte) ((-(((s7 ^ s10) - 1) >>> 31)) & 255);
    }

    private static long same_mask64(short s7, short s10) {
        return -(((s7 ^ s10) - 1) >>> 63);
    }

    private static void sort32(int[] r13, int r14, int r15) {
        int r152 = r15 - r14;
        if (r152 < 2) {
            return;
        }
        int r02 = 1;
        while (r02 < r152 - r02) {
            r02 += r02;
        }
        for (int r12 = r02; r12 > 0; r12 >>>= 1) {
            int r22 = 0;
            for (int r32 = 0; r32 < r152 - r12; r32++) {
                if ((r32 & r12) == 0) {
                    int r42 = r14 + r32;
                    int r52 = r42 + r12;
                    int r6 = r13[r52];
                    int r72 = r13[r42];
                    int r82 = r6 ^ r72;
                    int r92 = r6 - r72;
                    int r62 = ((((r6 ^ r92) & r82) ^ r92) >> 31) & r82;
                    r13[r42] = r72 ^ r62;
                    r13[r52] = r13[r52] ^ r62;
                }
            }
            for (int r33 = r02; r33 > r12; r33 >>>= 1) {
                while (r22 < r152 - r33) {
                    if ((r22 & r12) == 0) {
                        int r43 = r14 + r22;
                        int r53 = r43 + r12;
                        int r63 = r13[r53];
                        for (int r73 = r33; r73 > r12; r73 >>>= 1) {
                            int r83 = r43 + r73;
                            int r93 = r13[r83];
                            int r10 = r93 ^ r63;
                            int r11 = r93 - r63;
                            int r102 = r10 & ((r11 ^ ((r11 ^ r93) & r10)) >> 31);
                            r63 ^= r102;
                            r13[r83] = r93 ^ r102;
                        }
                        r13[r53] = r63;
                    }
                    r22++;
                }
            }
        }
    }

    private static void sort64(long[] jArr, int r19, int r20) {
        int r02 = r20 - r19;
        if (r02 < 2) {
            return;
        }
        int r12 = 1;
        while (r12 < r02 - r12) {
            r12 += r12;
        }
        for (int r22 = r12; r22 > 0; r22 >>>= 1) {
            int r32 = 0;
            for (int r42 = 0; r42 < r02 - r22; r42++) {
                if ((r42 & r22) == 0) {
                    int r52 = r19 + r42;
                    int r72 = r52 + r22;
                    long j10 = jArr[r72];
                    long j11 = jArr[r52];
                    long j12 = (j10 ^ j11) & (-((j10 - j11) >>> 63));
                    jArr[r52] = j11 ^ j12;
                    jArr[r72] = jArr[r72] ^ j12;
                }
            }
            for (int r43 = r12; r43 > r22; r43 >>>= 1) {
                while (r32 < r02 - r43) {
                    if ((r32 & r22) == 0) {
                        int r53 = r19 + r32;
                        int r73 = r53 + r22;
                        long j13 = jArr[r73];
                        for (int r10 = r43; r10 > r22; r10 >>>= 1) {
                            int r11 = r53 + r10;
                            long j14 = jArr[r11];
                            long j15 = (-((j14 - j13) >>> 63)) & (j13 ^ j14);
                            j13 ^= j15;
                            jArr[r11] = j14 ^ j15;
                        }
                        jArr[r73] = j13;
                    }
                    r32++;
                }
            }
        }
    }

    private void synd(short[] sArr, short[] sArr2, short[] sArr3, byte[] bArr) {
        short s7 = (short) (bArr[0] & 1);
        short s10 = sArr3[0];
        short sEval = eval(sArr2, s10);
        GF gf2 = this.f11853gf;
        short sGf_inv = (short) ((-s7) & gf2.gf_inv(gf2.gf_sq(sEval)));
        sArr[0] = sGf_inv;
        for (int r42 = 1; r42 < this.SYS_T * 2; r42++) {
            sGf_inv = this.f11853gf.gf_mul(sGf_inv, s10);
            sArr[r42] = sGf_inv;
        }
        for (int r12 = 1; r12 < this.SYS_N; r12++) {
            short s11 = (short) ((bArr[r12 / 8] >> (r12 % 8)) & 1);
            short s12 = sArr3[r12];
            short sEval2 = eval(sArr2, s12);
            GF gf3 = this.f11853gf;
            short sGf_mul = this.f11853gf.gf_mul(gf3.gf_inv(gf3.gf_sq(sEval2)), s11);
            sArr[0] = (short) (sArr[0] ^ sGf_mul);
            for (int r52 = 1; r52 < this.SYS_T * 2; r52++) {
                sGf_mul = this.f11853gf.gf_mul(sGf_mul, s12);
                sArr[r52] = (short) (sArr[r52] ^ sGf_mul);
            }
        }
    }

    private void syndrome(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        short[] sArr = new short[this.SYS_N / 8];
        int r12 = this.PK_NROWS % 8;
        for (int r32 = 0; r32 < this.SYND_BYTES; r32++) {
            bArr[r32] = 0;
        }
        int r42 = 0;
        for (int r33 = 0; r33 < this.PK_NROWS; r33++) {
            for (int r52 = 0; r52 < this.SYS_N / 8; r52++) {
                sArr[r52] = 0;
            }
            int r53 = 0;
            while (true) {
                int r6 = this.PK_ROW_BYTES;
                if (r53 >= r6) {
                    break;
                }
                sArr[((this.SYS_N / 8) - r6) + r53] = bArr2[r42 + r53];
                r53++;
            }
            if (this.usePadding) {
                for (int r54 = (this.SYS_N / 8) - 1; r54 >= (this.SYS_N / 8) - this.PK_ROW_BYTES; r54--) {
                    sArr[r54] = (short) ((((sArr[r54] & 255) << r12) | ((sArr[r54 - 1] & 255) >>> (8 - r12))) & 255);
                }
            }
            int r55 = r33 / 8;
            int r82 = r33 % 8;
            sArr[r55] = (short) (sArr[r55] | (1 << r82));
            byte b10 = 0;
            for (int r72 = 0; r72 < this.SYS_N / 8; r72++) {
                b10 = (byte) (b10 ^ (sArr[r72] & bArr3[r72]));
            }
            byte b11 = (byte) ((b10 >>> 4) ^ b10);
            byte b12 = (byte) (b11 ^ (b11 >>> 2));
            bArr[r55] = (byte) ((((byte) (1 & ((byte) (b12 ^ (b12 >>> 1))))) << r82) | bArr[r55]);
            r42 += this.PK_ROW_BYTES;
        }
    }

    public int check_c_padding(byte[] bArr) {
        return ((byte) ((((byte) (((byte) ((bArr[this.SYND_BYTES - 1] & 255) >>> (this.PK_NROWS % 8))) - 1)) & 255) >>> 7)) - 1;
    }

    public int check_pk_padding(byte[] bArr) {
        byte b10 = 0;
        for (int r02 = 0; r02 < this.PK_NROWS; r02++) {
            int r22 = this.PK_ROW_BYTES;
            b10 = (byte) (b10 | bArr[((r02 * r22) + r22) - 1]);
        }
        return ((byte) ((((byte) (((byte) ((b10 & 255) >>> (this.PK_NCOLS % 8))) - 1)) & 255) >>> 7)) - 1;
    }

    public byte[] decompress_private_key(byte[] bArr) {
        int r12;
        byte[] bArr2 = new byte[getPrivateKeySize()];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        int r22 = ((1 << this.GFBITS) * 4) + (this.SYS_N / 8) + this.IRR_BYTES + 32;
        byte[] bArr3 = new byte[r22];
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update((byte) 64);
        sHAKEDigest.update(bArr, 0, 32);
        sHAKEDigest.doFinal(bArr3, 0, r22);
        if (bArr.length <= 40) {
            short[] sArr = new short[this.SYS_T];
            int r42 = this.IRR_BYTES;
            byte[] bArr4 = new byte[r42];
            int r122 = (r22 - 32) - r42;
            for (int r43 = 0; r43 < this.SYS_T; r43++) {
                sArr[r43] = Utils.load_gf(bArr3, (r43 * 2) + r122, this.GFMASK);
            }
            generate_irr_poly(sArr);
            for (int r44 = 0; r44 < this.SYS_T; r44++) {
                Utils.store_gf(bArr4, r44 * 2, sArr[r44]);
            }
            System.arraycopy(bArr4, 0, bArr2, 40, this.IRR_BYTES);
        }
        int length = bArr.length;
        int r32 = this.IRR_BYTES;
        if (length <= r32 + 40) {
            int r02 = this.GFBITS;
            int[] r45 = new int[1 << r02];
            short[] sArr2 = new short[1 << r02];
            int r23 = ((r22 - 32) - r32) - ((1 << r02) * 4);
            int r03 = 0;
            while (true) {
                r12 = this.GFBITS;
                if (r03 >= (1 << r12)) {
                    break;
                }
                r45[r03] = Utils.load4(bArr3, (r03 * 4) + r23);
                r03++;
            }
            if (this.usePivots) {
                pk_gen(null, bArr2, r45, sArr2, new long[]{0});
            } else {
                int r04 = 1 << r12;
                long[] jArr = new long[r04];
                for (int r24 = 0; r24 < (1 << this.GFBITS); r24++) {
                    long j10 = r45[r24];
                    jArr[r24] = j10;
                    long j11 = j10 << 31;
                    jArr[r24] = j11;
                    long j12 = r24 | j11;
                    jArr[r24] = j12;
                    jArr[r24] = j12 & LocationRequestCompat.PASSIVE_INTERVAL;
                }
                sort64(jArr, 0, r04);
                for (int r05 = 0; r05 < (1 << this.GFBITS); r05++) {
                    sArr2[r05] = (short) (jArr[r05] & this.GFMASK);
                }
            }
            int r06 = this.COND_BYTES;
            byte[] bArr5 = new byte[r06];
            controlbitsfrompermutation(bArr5, sArr2, this.GFBITS, 1 << r2);
            System.arraycopy(bArr5, 0, bArr2, this.IRR_BYTES + 40, r06);
        }
        int privateKeySize = getPrivateKeySize();
        int r13 = this.SYS_N;
        System.arraycopy(bArr3, 0, bArr2, privateKeySize - (r13 / 8), r13 / 8);
        return bArr2;
    }

    public byte[] generate_public_key_from_private_key(byte[] bArr) {
        byte[] bArr2 = new byte[getPublicKeySize()];
        int r12 = this.GFBITS;
        short[] sArr = new short[1 << r12];
        long[] jArr = {0};
        int[] r42 = new int[1 << r12];
        int r82 = ((1 << r12) * 4) + (this.SYS_N / 8);
        byte[] bArr3 = new byte[r82];
        int r92 = ((r82 - 32) - this.IRR_BYTES) - ((1 << r12) * 4);
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update((byte) 64);
        sHAKEDigest.update(bArr, 0, 32);
        sHAKEDigest.doFinal(bArr3, 0, r82);
        for (int r72 = 0; r72 < (1 << this.GFBITS); r72++) {
            r42[r72] = Utils.load4(bArr3, (r72 * 4) + r92);
        }
        pk_gen(bArr2, bArr, r42, sArr, jArr);
        return bArr2;
    }

    public int getCipherTextSize() {
        return this.SYND_BYTES;
    }

    public int getCondBytes() {
        return this.COND_BYTES;
    }

    public int getDefaultSessionKeySize() {
        return this.defaultKeySize;
    }

    public int getIrrBytes() {
        return this.IRR_BYTES;
    }

    public int getPrivateKeySize() {
        return (this.SYS_N / 8) + this.COND_BYTES + this.IRR_BYTES + 40;
    }

    public int getPublicKeySize() {
        if (!this.usePadding) {
            return (this.PK_NROWS * this.PK_NCOLS) / 8;
        }
        int r02 = this.PK_NROWS;
        return ((this.SYS_N / 8) - ((r02 - 1) / 8)) * r02;
    }

    public int kem_dec(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int r02 = this.SYS_N;
        byte[] bArr4 = new byte[r02 / 8];
        int r03 = (r02 / 8) + 1 + this.SYND_BYTES;
        byte[] bArr5 = new byte[r03];
        int r32 = this.usePadding ? check_c_padding(bArr2) : 0;
        short sDecrypt = (short) (((short) (((short) (((byte) decrypt(bArr4, bArr3, bArr2)) - 1)) >> 8)) & 255);
        bArr5[0] = (byte) (sDecrypt & 1);
        int r6 = 0;
        while (r6 < this.SYS_N / 8) {
            int r72 = r6 + 1;
            bArr5[r72] = (byte) ((bArr4[r6] & sDecrypt) | ((~sDecrypt) & bArr3[r6 + 40 + this.IRR_BYTES + this.COND_BYTES]));
            r6 = r72;
        }
        for (int r14 = 0; r14 < this.SYND_BYTES; r14++) {
            bArr5[(this.SYS_N / 8) + 1 + r14] = bArr2[r14];
        }
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update(bArr5, 0, r03);
        sHAKEDigest.doFinal(bArr, 0, bArr.length);
        if (!this.usePadding) {
            return 0;
        }
        byte b10 = (byte) r32;
        for (int r42 = 0; r42 < bArr.length; r42++) {
            bArr[r42] = (byte) (bArr[r42] | b10);
        }
        return r32;
    }

    public int kem_enc(byte[] bArr, byte[] bArr2, byte[] bArr3, SecureRandom secureRandom) {
        int r02 = this.SYS_N / 8;
        byte[] bArr4 = new byte[r02];
        int r22 = this.usePadding ? check_pk_padding(bArr3) : 0;
        encrypt(bArr, bArr3, bArr4, secureRandom);
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update((byte) 1);
        sHAKEDigest.update(bArr4, 0, r02);
        sHAKEDigest.update(bArr, 0, bArr.length);
        sHAKEDigest.doFinal(bArr2, 0, bArr2.length);
        if (!this.usePadding) {
            return 0;
        }
        byte b10 = (byte) (((byte) r22) ^ 255);
        for (int r82 = 0; r82 < this.SYND_BYTES; r82++) {
            bArr[r82] = (byte) (bArr[r82] & b10);
        }
        for (int r32 = 0; r32 < 32; r32++) {
            bArr2[r32] = (byte) (bArr2[r32] & b10);
        }
        return r22;
    }

    public void kem_keypair(byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        int r17;
        int r12;
        short[] sArr;
        int r22;
        long j10;
        int r02 = 32;
        byte[] bArr3 = new byte[32];
        int r10 = 0;
        byte[] bArr4 = {64};
        secureRandom.nextBytes(bArr3);
        int r11 = a.d(this.SYS_T, 2, ((1 << this.GFBITS) * 4) + (this.SYS_N / 8), 32);
        byte[] bArr5 = new byte[r11];
        long[] jArr = {0};
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        byte[] bArr6 = bArr3;
        while (true) {
            sHAKEDigest.update(bArr4, r10, 1);
            sHAKEDigest.update(bArr3, r10, bArr3.length);
            sHAKEDigest.doFinal(bArr5, r10, r11);
            int r13 = r11 - 32;
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr5, r13, r13 + 32);
            System.arraycopy(bArr6, r10, bArr2, r10, r02);
            byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArrCopyOfRange, r10, r02);
            int r03 = this.SYS_T;
            short[] sArr2 = new short[r03];
            int r14 = r13 - (r03 * 2);
            for (int r04 = 0; r04 < this.SYS_T; r04++) {
                sArr2[r04] = Utils.load_gf(bArr5, (r04 * 2) + r14, this.GFMASK);
            }
            if (generate_irr_poly(sArr2) != -1) {
                for (int r05 = 0; r05 < this.SYS_T; r05++) {
                    Utils.store_gf(bArr2, (r05 * 2) + 40, sArr2[r05]);
                }
                int r06 = this.GFBITS;
                int[] r32 = new int[1 << r06];
                r17 = r14 - ((1 << r06) * 4);
                int r07 = 0;
                while (true) {
                    r12 = this.GFBITS;
                    if (r07 >= (1 << r12)) {
                        break;
                    }
                    r32[r07] = Utils.load4(bArr5, (r07 * 4) + r17);
                    r07++;
                }
                sArr = new short[1 << r12];
                if (pk_gen(bArr, bArr2, r32, sArr, jArr) != -1) {
                    break;
                }
            }
            r02 = 32;
            bArr3 = bArrCopyOfRange;
            bArr6 = bArrCopyOfRange2;
            r10 = 0;
        }
        int r08 = this.COND_BYTES;
        byte[] bArr7 = new byte[r08];
        controlbitsfrompermutation(bArr7, sArr, this.GFBITS, 1 << r2);
        System.arraycopy(bArr7, 0, bArr2, this.IRR_BYTES + 40, r08);
        int r09 = this.SYS_N;
        System.arraycopy(bArr5, r17 - (r09 / 8), bArr2, bArr2.length - (r09 / 8), r09 / 8);
        if (this.usePivots) {
            r22 = 32;
            j10 = jArr[0];
        } else {
            j10 = BodyPartID.bodyIdMax;
            r22 = 32;
        }
        Utils.store8(bArr2, r22, j10);
    }
}
