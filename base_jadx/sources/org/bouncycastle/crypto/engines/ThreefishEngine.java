package org.bouncycastle.crypto.engines;

import ab.b;
import androidx.browser.browseractions.a;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.TweakableBlockCipherParameters;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class ThreefishEngine implements BlockCipher {
    public static final int BLOCKSIZE_1024 = 1024;
    public static final int BLOCKSIZE_256 = 256;
    public static final int BLOCKSIZE_512 = 512;
    private static final long C_240 = 2004413935125273122L;
    private static final int MAX_ROUNDS = 80;
    private static int[] MOD17 = null;
    private static int[] MOD3 = null;
    private static int[] MOD5 = null;
    private static int[] MOD9 = null;
    private static final int ROUNDS_1024 = 80;
    private static final int ROUNDS_256 = 72;
    private static final int ROUNDS_512 = 72;
    private static final int TWEAK_SIZE_BYTES = 16;
    private static final int TWEAK_SIZE_WORDS = 2;
    private int blocksizeBytes;
    private int blocksizeWords;
    private ThreefishCipher cipher;
    private long[] currentBlock;
    private boolean forEncryption;
    private long[] kw;

    /* renamed from: t, reason: collision with root package name */
    private long[] f11536t;

    public static final class Threefish1024Cipher extends ThreefishCipher {
        private static final int ROTATION_0_0 = 24;
        private static final int ROTATION_0_1 = 13;
        private static final int ROTATION_0_2 = 8;
        private static final int ROTATION_0_3 = 47;
        private static final int ROTATION_0_4 = 8;
        private static final int ROTATION_0_5 = 17;
        private static final int ROTATION_0_6 = 22;
        private static final int ROTATION_0_7 = 37;
        private static final int ROTATION_1_0 = 38;
        private static final int ROTATION_1_1 = 19;
        private static final int ROTATION_1_2 = 10;
        private static final int ROTATION_1_3 = 55;
        private static final int ROTATION_1_4 = 49;
        private static final int ROTATION_1_5 = 18;
        private static final int ROTATION_1_6 = 23;
        private static final int ROTATION_1_7 = 52;
        private static final int ROTATION_2_0 = 33;
        private static final int ROTATION_2_1 = 4;
        private static final int ROTATION_2_2 = 51;
        private static final int ROTATION_2_3 = 13;
        private static final int ROTATION_2_4 = 34;
        private static final int ROTATION_2_5 = 41;
        private static final int ROTATION_2_6 = 59;
        private static final int ROTATION_2_7 = 17;
        private static final int ROTATION_3_0 = 5;
        private static final int ROTATION_3_1 = 20;
        private static final int ROTATION_3_2 = 48;
        private static final int ROTATION_3_3 = 41;
        private static final int ROTATION_3_4 = 47;
        private static final int ROTATION_3_5 = 28;
        private static final int ROTATION_3_6 = 16;
        private static final int ROTATION_3_7 = 25;
        private static final int ROTATION_4_0 = 41;
        private static final int ROTATION_4_1 = 9;
        private static final int ROTATION_4_2 = 37;
        private static final int ROTATION_4_3 = 31;
        private static final int ROTATION_4_4 = 12;
        private static final int ROTATION_4_5 = 47;
        private static final int ROTATION_4_6 = 44;
        private static final int ROTATION_4_7 = 30;
        private static final int ROTATION_5_0 = 16;
        private static final int ROTATION_5_1 = 34;
        private static final int ROTATION_5_2 = 56;
        private static final int ROTATION_5_3 = 51;
        private static final int ROTATION_5_4 = 4;
        private static final int ROTATION_5_5 = 53;
        private static final int ROTATION_5_6 = 42;
        private static final int ROTATION_5_7 = 41;
        private static final int ROTATION_6_0 = 31;
        private static final int ROTATION_6_1 = 44;
        private static final int ROTATION_6_2 = 47;
        private static final int ROTATION_6_3 = 46;
        private static final int ROTATION_6_4 = 19;
        private static final int ROTATION_6_5 = 42;
        private static final int ROTATION_6_6 = 44;
        private static final int ROTATION_6_7 = 25;
        private static final int ROTATION_7_0 = 9;
        private static final int ROTATION_7_1 = 48;
        private static final int ROTATION_7_2 = 35;
        private static final int ROTATION_7_3 = 52;
        private static final int ROTATION_7_4 = 23;
        private static final int ROTATION_7_5 = 31;
        private static final int ROTATION_7_6 = 37;
        private static final int ROTATION_7_7 = 20;

        public Threefish1024Cipher(long[] jArr, long[] jArr2) {
            super(jArr, jArr2);
        }

        @Override // org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        public void decryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.f11537t;
            int[] r32 = ThreefishEngine.MOD17;
            int[] r42 = ThreefishEngine.MOD3;
            if (jArr3.length != 33) {
                throw new IllegalArgumentException();
            }
            if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            }
            long j10 = jArr[0];
            int r92 = 1;
            long j11 = jArr[1];
            long j12 = jArr[2];
            long j13 = jArr[3];
            long j14 = jArr[4];
            long j15 = jArr[5];
            long j16 = jArr[6];
            long j17 = jArr[7];
            long j18 = jArr[8];
            long j19 = jArr[9];
            long j20 = jArr[10];
            long j21 = jArr[11];
            long j22 = jArr[12];
            long jXorRotr = jArr[13];
            long j23 = jArr[14];
            long jXorRotr2 = jArr[15];
            int r12 = 19;
            while (r12 >= r92) {
                int r47 = r32[r12];
                int r48 = r42[r12];
                int r49 = r47 + 1;
                long j24 = j10 - jArr3[r49];
                int r50 = r47 + 2;
                long j25 = j11 - jArr3[r50];
                int r51 = r47 + 3;
                long j26 = j12 - jArr3[r51];
                int r52 = r47 + 4;
                long j27 = j13 - jArr3[r52];
                int r11 = r47 + 5;
                long j28 = j14 - jArr3[r11];
                int r16 = r47 + 6;
                int[] r54 = r32;
                int[] r57 = r42;
                long j29 = j15 - jArr3[r16];
                int r17 = r47 + 7;
                long j30 = j16 - jArr3[r17];
                int r18 = r47 + 8;
                long j31 = j17 - jArr3[r18];
                int r19 = r47 + 9;
                long j32 = j18 - jArr3[r19];
                int r20 = r47 + 10;
                long j33 = j19 - jArr3[r20];
                int r21 = r47 + 11;
                long j34 = j20 - jArr3[r21];
                int r26 = r47 + 12;
                long j35 = j21 - jArr3[r26];
                int r27 = r47 + 13;
                long j36 = j22 - jArr3[r27];
                int r322 = r47 + 14;
                int r33 = r48 + 1;
                long j37 = jXorRotr - (jArr3[r322] + jArr4[r33]);
                int r35 = r47 + 15;
                long j38 = j23 - (jArr3[r35] + jArr4[r48 + 2]);
                long[] jArr5 = jArr3;
                long j39 = r12;
                long jXorRotr3 = ThreefishEngine.xorRotr(jXorRotr2 - ((jArr3[r47 + 16] + j39) + 1), 9, j24);
                long j40 = j24 - jXorRotr3;
                long jXorRotr4 = ThreefishEngine.xorRotr(j35, 48, j26);
                long j41 = j26 - jXorRotr4;
                long jXorRotr5 = ThreefishEngine.xorRotr(j37, 35, j30);
                long j42 = j30 - jXorRotr5;
                long[] jArr6 = jArr4;
                long jXorRotr6 = ThreefishEngine.xorRotr(j33, 52, j28);
                long j43 = j28 - jXorRotr6;
                long jXorRotr7 = ThreefishEngine.xorRotr(j25, 23, j38);
                long j44 = j38 - jXorRotr7;
                long jXorRotr8 = ThreefishEngine.xorRotr(j29, 31, j32);
                long j45 = j32 - jXorRotr8;
                long jXorRotr9 = ThreefishEngine.xorRotr(j27, 37, j34);
                long j46 = j34 - jXorRotr9;
                long jXorRotr10 = ThreefishEngine.xorRotr(j31, 20, j36);
                long j47 = j36 - jXorRotr10;
                long jXorRotr11 = ThreefishEngine.xorRotr(jXorRotr10, 31, j40);
                long j48 = j40 - jXorRotr11;
                long jXorRotr12 = ThreefishEngine.xorRotr(jXorRotr8, 44, j41);
                long j49 = j41 - jXorRotr12;
                long jXorRotr13 = ThreefishEngine.xorRotr(jXorRotr9, 47, j43);
                long j50 = j43 - jXorRotr13;
                long jXorRotr14 = ThreefishEngine.xorRotr(jXorRotr7, 46, j42);
                long j51 = j42 - jXorRotr14;
                long jXorRotr15 = ThreefishEngine.xorRotr(jXorRotr3, 19, j47);
                long j52 = j47 - jXorRotr15;
                long jXorRotr16 = ThreefishEngine.xorRotr(jXorRotr5, 42, j44);
                long j53 = j44 - jXorRotr16;
                long jXorRotr17 = ThreefishEngine.xorRotr(jXorRotr4, 44, j45);
                long j54 = j45 - jXorRotr17;
                long jXorRotr18 = ThreefishEngine.xorRotr(jXorRotr6, 25, j46);
                long j55 = j46 - jXorRotr18;
                long jXorRotr19 = ThreefishEngine.xorRotr(jXorRotr18, 16, j48);
                long j56 = j48 - jXorRotr19;
                long jXorRotr20 = ThreefishEngine.xorRotr(jXorRotr16, 34, j49);
                long j57 = j49 - jXorRotr20;
                long jXorRotr21 = ThreefishEngine.xorRotr(jXorRotr17, 56, j51);
                long j58 = j51 - jXorRotr21;
                long jXorRotr22 = ThreefishEngine.xorRotr(jXorRotr15, 51, j50);
                long j59 = j50 - jXorRotr22;
                long jXorRotr23 = ThreefishEngine.xorRotr(jXorRotr11, 4, j55);
                long j60 = j55 - jXorRotr23;
                long jXorRotr24 = ThreefishEngine.xorRotr(jXorRotr13, 53, j52);
                long j61 = j52 - jXorRotr24;
                long jXorRotr25 = ThreefishEngine.xorRotr(jXorRotr12, 42, j53);
                long j62 = j53 - jXorRotr25;
                long jXorRotr26 = ThreefishEngine.xorRotr(jXorRotr14, 41, j54);
                long j63 = j54 - jXorRotr26;
                long jXorRotr27 = ThreefishEngine.xorRotr(jXorRotr26, 41, j56);
                long jXorRotr28 = ThreefishEngine.xorRotr(jXorRotr24, 9, j57);
                long jXorRotr29 = ThreefishEngine.xorRotr(jXorRotr25, 37, j59);
                long j64 = j59 - jXorRotr29;
                long jXorRotr30 = ThreefishEngine.xorRotr(jXorRotr23, 31, j58);
                long j65 = j58 - jXorRotr30;
                long jXorRotr31 = ThreefishEngine.xorRotr(jXorRotr19, 12, j63);
                long j66 = j63 - jXorRotr31;
                long jXorRotr32 = ThreefishEngine.xorRotr(jXorRotr21, 47, j60);
                long j67 = j60 - jXorRotr32;
                long jXorRotr33 = ThreefishEngine.xorRotr(jXorRotr20, 44, j61);
                long j68 = j61 - jXorRotr33;
                long jXorRotr34 = ThreefishEngine.xorRotr(jXorRotr22, 30, j62);
                long j69 = j62 - jXorRotr34;
                long j70 = (j56 - jXorRotr27) - jArr5[r47];
                long j71 = jXorRotr27 - jArr5[r49];
                long j72 = (j57 - jXorRotr28) - jArr5[r50];
                long j73 = jXorRotr28 - jArr5[r51];
                long j74 = j64 - jArr5[r52];
                long j75 = jXorRotr29 - jArr5[r11];
                long j76 = j65 - jArr5[r16];
                long j77 = jXorRotr30 - jArr5[r17];
                long j78 = j66 - jArr5[r18];
                long j79 = jXorRotr31 - jArr5[r19];
                long j80 = j67 - jArr5[r20];
                long j81 = jXorRotr32 - jArr5[r21];
                long j82 = j68 - jArr5[r26];
                long j83 = jXorRotr33 - (jArr5[r27] + jArr6[r48]);
                long j84 = j69 - (jArr5[r322] + jArr6[r33]);
                long jXorRotr35 = ThreefishEngine.xorRotr(jXorRotr34 - (jArr5[r35] + j39), 5, j70);
                long j85 = j70 - jXorRotr35;
                long jXorRotr36 = ThreefishEngine.xorRotr(j81, 20, j72);
                long j86 = j72 - jXorRotr36;
                long jXorRotr37 = ThreefishEngine.xorRotr(j83, 48, j76);
                long j87 = j76 - jXorRotr37;
                long jXorRotr38 = ThreefishEngine.xorRotr(j79, 41, j74);
                long j88 = j74 - jXorRotr38;
                long jXorRotr39 = ThreefishEngine.xorRotr(j71, 47, j84);
                long j89 = j84 - jXorRotr39;
                long jXorRotr40 = ThreefishEngine.xorRotr(j75, 28, j78);
                long j90 = j78 - jXorRotr40;
                long jXorRotr41 = ThreefishEngine.xorRotr(j73, 16, j80);
                long j91 = j80 - jXorRotr41;
                long jXorRotr42 = ThreefishEngine.xorRotr(j77, 25, j82);
                long j92 = j82 - jXorRotr42;
                long jXorRotr43 = ThreefishEngine.xorRotr(jXorRotr42, 33, j85);
                long j93 = j85 - jXorRotr43;
                long jXorRotr44 = ThreefishEngine.xorRotr(jXorRotr40, 4, j86);
                long j94 = j86 - jXorRotr44;
                long jXorRotr45 = ThreefishEngine.xorRotr(jXorRotr41, 51, j88);
                long j95 = j88 - jXorRotr45;
                long jXorRotr46 = ThreefishEngine.xorRotr(jXorRotr39, 13, j87);
                long j96 = j87 - jXorRotr46;
                long jXorRotr47 = ThreefishEngine.xorRotr(jXorRotr35, 34, j92);
                long j97 = j92 - jXorRotr47;
                long jXorRotr48 = ThreefishEngine.xorRotr(jXorRotr37, 41, j89);
                long j98 = j89 - jXorRotr48;
                long jXorRotr49 = ThreefishEngine.xorRotr(jXorRotr36, 59, j90);
                long j99 = j90 - jXorRotr49;
                long jXorRotr50 = ThreefishEngine.xorRotr(jXorRotr38, 17, j91);
                long j100 = j91 - jXorRotr50;
                long jXorRotr51 = ThreefishEngine.xorRotr(jXorRotr50, 38, j93);
                long j101 = j93 - jXorRotr51;
                long jXorRotr52 = ThreefishEngine.xorRotr(jXorRotr48, 19, j94);
                long j102 = j94 - jXorRotr52;
                long jXorRotr53 = ThreefishEngine.xorRotr(jXorRotr49, 10, j96);
                long j103 = j96 - jXorRotr53;
                long jXorRotr54 = ThreefishEngine.xorRotr(jXorRotr47, 55, j95);
                long j104 = j95 - jXorRotr54;
                long jXorRotr55 = ThreefishEngine.xorRotr(jXorRotr43, 49, j100);
                long j105 = j100 - jXorRotr55;
                long jXorRotr56 = ThreefishEngine.xorRotr(jXorRotr45, 18, j97);
                long j106 = j97 - jXorRotr56;
                long jXorRotr57 = ThreefishEngine.xorRotr(jXorRotr44, 23, j98);
                long j107 = j98 - jXorRotr57;
                long jXorRotr58 = ThreefishEngine.xorRotr(jXorRotr46, 52, j99);
                long j108 = j99 - jXorRotr58;
                long jXorRotr59 = ThreefishEngine.xorRotr(jXorRotr58, 24, j101);
                long j109 = j101 - jXorRotr59;
                long jXorRotr60 = ThreefishEngine.xorRotr(jXorRotr56, 13, j102);
                j12 = j102 - jXorRotr60;
                long jXorRotr61 = ThreefishEngine.xorRotr(jXorRotr57, 8, j104);
                long j110 = j104 - jXorRotr61;
                long jXorRotr62 = ThreefishEngine.xorRotr(jXorRotr55, 47, j103);
                long j111 = j103 - jXorRotr62;
                long jXorRotr63 = ThreefishEngine.xorRotr(jXorRotr51, 8, j108);
                long j112 = j108 - jXorRotr63;
                long jXorRotr64 = ThreefishEngine.xorRotr(jXorRotr53, 17, j105);
                long j113 = j105 - jXorRotr64;
                jXorRotr = ThreefishEngine.xorRotr(jXorRotr52, 22, j106);
                jXorRotr2 = ThreefishEngine.xorRotr(jXorRotr54, 37, j107);
                j23 = j107 - jXorRotr2;
                j21 = jXorRotr64;
                j22 = j106 - jXorRotr;
                r32 = r54;
                jArr4 = jArr6;
                jArr3 = jArr5;
                j18 = j112;
                j19 = jXorRotr63;
                r92 = 1;
                j14 = j110;
                j11 = jXorRotr59;
                r12 -= 2;
                j13 = jXorRotr60;
                r42 = r57;
                j17 = jXorRotr62;
                j20 = j113;
                j15 = jXorRotr61;
                j16 = j111;
                j10 = j109;
            }
            long[] jArr7 = jArr3;
            long[] jArr8 = jArr4;
            long j114 = j10 - jArr7[0];
            long j115 = j11 - jArr7[1];
            long j116 = j12 - jArr7[2];
            long j117 = j13 - jArr7[3];
            long j118 = j14 - jArr7[4];
            long j119 = j15 - jArr7[5];
            long j120 = j16 - jArr7[6];
            long j121 = j17 - jArr7[7];
            long j122 = j18 - jArr7[8];
            long j123 = j19 - jArr7[9];
            long j124 = j20 - jArr7[10];
            long j125 = j21 - jArr7[11];
            long j126 = j22 - jArr7[12];
            long j127 = jXorRotr - (jArr7[13] + jArr8[0]);
            long j128 = j23 - (jArr7[14] + jArr8[1]);
            long j129 = jXorRotr2 - jArr7[15];
            jArr2[0] = j114;
            jArr2[1] = j115;
            jArr2[2] = j116;
            jArr2[3] = j117;
            jArr2[4] = j118;
            jArr2[5] = j119;
            jArr2[6] = j120;
            jArr2[7] = j121;
            jArr2[8] = j122;
            jArr2[9] = j123;
            jArr2[10] = j124;
            jArr2[11] = j125;
            jArr2[12] = j126;
            jArr2[13] = j127;
            jArr2[14] = j128;
            jArr2[15] = j129;
        }

        @Override // org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        public void encryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.f11537t;
            int[] r32 = ThreefishEngine.MOD17;
            int[] r42 = ThreefishEngine.MOD3;
            if (jArr3.length != 33) {
                throw new IllegalArgumentException();
            }
            if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            }
            long j10 = jArr[0];
            int r92 = 1;
            long j11 = jArr[1];
            long j12 = jArr[2];
            long j13 = jArr[3];
            long j14 = jArr[4];
            long j15 = jArr[5];
            long j16 = jArr[6];
            long j17 = jArr[7];
            long j18 = jArr[8];
            long j19 = jArr[9];
            long j20 = jArr[10];
            long j21 = jArr[11];
            long j22 = jArr[12];
            long j23 = jArr[13];
            long j24 = jArr[14];
            long j25 = jArr[15];
            long j26 = j10 + jArr3[0];
            long j27 = j11 + jArr3[1];
            long j28 = j12 + jArr3[2];
            long j29 = j13 + jArr3[3];
            long j30 = j14 + jArr3[4];
            long j31 = j15 + jArr3[5];
            long j32 = j16 + jArr3[6];
            long j33 = j17 + jArr3[7];
            long j34 = j18 + jArr3[8];
            long j35 = j19 + jArr3[9];
            long j36 = j20 + jArr3[10];
            long j37 = j21 + jArr3[11];
            long j38 = j22 + jArr3[12];
            long j39 = jArr3[13] + jArr4[0] + j23;
            long j40 = jArr3[14] + jArr4[1] + j24;
            long j41 = j29;
            long j42 = j31;
            long j43 = j33;
            long j44 = j35;
            long j45 = j37;
            long j46 = j25 + jArr3[15];
            long j47 = j39;
            while (r92 < 20) {
                int r27 = r32[r92];
                int r28 = r42[r92];
                long j48 = j26 + j27;
                long jRotlXor = ThreefishEngine.rotlXor(j27, 24, j48);
                long j49 = j28 + j41;
                long jRotlXor2 = ThreefishEngine.rotlXor(j41, 13, j49);
                long[] jArr5 = jArr3;
                int[] r33 = r32;
                int[] r34 = r42;
                long j50 = j42;
                long j51 = j30 + j50;
                long jRotlXor3 = ThreefishEngine.rotlXor(j50, 8, j51);
                int r40 = r92;
                long j52 = j43;
                long j53 = j32 + j52;
                long jRotlXor4 = ThreefishEngine.rotlXor(j52, 47, j53);
                long[] jArr6 = jArr4;
                long j54 = j44;
                long j55 = j34 + j54;
                long jRotlXor5 = ThreefishEngine.rotlXor(j54, 8, j55);
                long j56 = j45;
                long j57 = j36 + j56;
                long jRotlXor6 = ThreefishEngine.rotlXor(j56, 17, j57);
                long j58 = j47;
                long j59 = j38 + j58;
                long jRotlXor7 = ThreefishEngine.rotlXor(j58, 22, j59);
                long j60 = j46;
                long j61 = j40 + j60;
                long jRotlXor8 = ThreefishEngine.rotlXor(j60, 37, j61);
                long j62 = j48 + jRotlXor5;
                long jRotlXor9 = ThreefishEngine.rotlXor(jRotlXor5, 38, j62);
                long j63 = j49 + jRotlXor7;
                long jRotlXor10 = ThreefishEngine.rotlXor(jRotlXor7, 19, j63);
                long j64 = j53 + jRotlXor6;
                long jRotlXor11 = ThreefishEngine.rotlXor(jRotlXor6, 10, j64);
                long j65 = j51 + jRotlXor8;
                long jRotlXor12 = ThreefishEngine.rotlXor(jRotlXor8, 55, j65);
                long j66 = j57 + jRotlXor4;
                long jRotlXor13 = ThreefishEngine.rotlXor(jRotlXor4, 49, j66);
                long j67 = j59 + jRotlXor2;
                long jRotlXor14 = ThreefishEngine.rotlXor(jRotlXor2, 18, j67);
                long j68 = j61 + jRotlXor3;
                long jRotlXor15 = ThreefishEngine.rotlXor(jRotlXor3, 23, j68);
                long j69 = j55 + jRotlXor;
                long jRotlXor16 = ThreefishEngine.rotlXor(jRotlXor, 52, j69);
                long j70 = j62 + jRotlXor13;
                long jRotlXor17 = ThreefishEngine.rotlXor(jRotlXor13, 33, j70);
                long j71 = j63 + jRotlXor15;
                long jRotlXor18 = ThreefishEngine.rotlXor(jRotlXor15, 4, j71);
                long j72 = j65 + jRotlXor14;
                long jRotlXor19 = ThreefishEngine.rotlXor(jRotlXor14, 51, j72);
                long j73 = j64 + jRotlXor16;
                long jRotlXor20 = ThreefishEngine.rotlXor(jRotlXor16, 13, j73);
                long j74 = j67 + jRotlXor12;
                long jRotlXor21 = ThreefishEngine.rotlXor(jRotlXor12, 34, j74);
                long j75 = j68 + jRotlXor10;
                long jRotlXor22 = ThreefishEngine.rotlXor(jRotlXor10, 41, j75);
                long j76 = j69 + jRotlXor11;
                long jRotlXor23 = ThreefishEngine.rotlXor(jRotlXor11, 59, j76);
                long j77 = j66 + jRotlXor9;
                long jRotlXor24 = ThreefishEngine.rotlXor(jRotlXor9, 17, j77);
                long j78 = j70 + jRotlXor21;
                long jRotlXor25 = ThreefishEngine.rotlXor(jRotlXor21, 5, j78);
                long j79 = j71 + jRotlXor23;
                long jRotlXor26 = ThreefishEngine.rotlXor(jRotlXor23, 20, j79);
                long j80 = j73 + jRotlXor22;
                long jRotlXor27 = ThreefishEngine.rotlXor(jRotlXor22, 48, j80);
                long j81 = j72 + jRotlXor24;
                long jRotlXor28 = ThreefishEngine.rotlXor(jRotlXor24, 41, j81);
                long j82 = j75 + jRotlXor20;
                long jRotlXor29 = ThreefishEngine.rotlXor(jRotlXor20, 47, j82);
                long j83 = j76 + jRotlXor18;
                long jRotlXor30 = ThreefishEngine.rotlXor(jRotlXor18, 28, j83);
                long j84 = j77 + jRotlXor19;
                long jRotlXor31 = ThreefishEngine.rotlXor(jRotlXor19, 16, j84);
                long j85 = j74 + jRotlXor17;
                long jRotlXor32 = ThreefishEngine.rotlXor(jRotlXor17, 25, j85);
                long j86 = j78 + jArr5[r27];
                int r12 = r27 + 1;
                long j87 = jRotlXor29 + jArr5[r12];
                int r13 = r27 + 2;
                long j88 = j79 + jArr5[r13];
                int r25 = r27 + 3;
                long j89 = jRotlXor31 + jArr5[r25];
                int r60 = r27 + 4;
                long j90 = j81 + jArr5[r60];
                int r61 = r27 + 5;
                long j91 = jRotlXor30 + jArr5[r61];
                int r64 = r27 + 6;
                long j92 = j80 + jArr5[r64];
                int r65 = r27 + 7;
                long j93 = jRotlXor32 + jArr5[r65];
                int r66 = r27 + 8;
                long j94 = j83 + jArr5[r66];
                int r67 = r27 + 9;
                long j95 = jRotlXor28 + jArr5[r67];
                int r36 = r27 + 10;
                long j96 = j84 + jArr5[r36];
                int r37 = r27 + 11;
                long j97 = jRotlXor26 + jArr5[r37];
                int r53 = r27 + 12;
                long j98 = j85 + jArr5[r53];
                int r54 = r27 + 13;
                long j99 = jArr5[r54] + jArr6[r28] + jRotlXor27;
                int r55 = r27 + 14;
                int r56 = r28 + 1;
                long j100 = jArr5[r55] + jArr6[r56] + j82;
                int r58 = r27 + 15;
                long j101 = r40;
                long j102 = jArr5[r58] + j101 + jRotlXor25;
                long j103 = j86 + j87;
                long jRotlXor33 = ThreefishEngine.rotlXor(j87, 41, j103);
                long j104 = j88 + j89;
                long jRotlXor34 = ThreefishEngine.rotlXor(j89, 9, j104);
                long j105 = j90 + j91;
                long jRotlXor35 = ThreefishEngine.rotlXor(j91, 37, j105);
                long j106 = j92 + j93;
                long jRotlXor36 = ThreefishEngine.rotlXor(j93, 31, j106);
                long j107 = j94 + j95;
                long jRotlXor37 = ThreefishEngine.rotlXor(j95, 12, j107);
                long j108 = j96 + j97;
                long jRotlXor38 = ThreefishEngine.rotlXor(j97, 47, j108);
                long j109 = j98 + j99;
                long jRotlXor39 = ThreefishEngine.rotlXor(j99, 44, j109);
                long j110 = j100 + j102;
                long jRotlXor40 = ThreefishEngine.rotlXor(j102, 30, j110);
                long j111 = j103 + jRotlXor37;
                long jRotlXor41 = ThreefishEngine.rotlXor(jRotlXor37, 16, j111);
                long j112 = j104 + jRotlXor39;
                long jRotlXor42 = ThreefishEngine.rotlXor(jRotlXor39, 34, j112);
                long j113 = j106 + jRotlXor38;
                long jRotlXor43 = ThreefishEngine.rotlXor(jRotlXor38, 56, j113);
                long j114 = j105 + jRotlXor40;
                long jRotlXor44 = ThreefishEngine.rotlXor(jRotlXor40, 51, j114);
                long j115 = j108 + jRotlXor36;
                long jRotlXor45 = ThreefishEngine.rotlXor(jRotlXor36, 4, j115);
                long j116 = j109 + jRotlXor34;
                long jRotlXor46 = ThreefishEngine.rotlXor(jRotlXor34, 53, j116);
                long j117 = j110 + jRotlXor35;
                long jRotlXor47 = ThreefishEngine.rotlXor(jRotlXor35, 42, j117);
                long j118 = j107 + jRotlXor33;
                long jRotlXor48 = ThreefishEngine.rotlXor(jRotlXor33, 41, j118);
                long j119 = j111 + jRotlXor45;
                long jRotlXor49 = ThreefishEngine.rotlXor(jRotlXor45, 31, j119);
                long j120 = j112 + jRotlXor47;
                long jRotlXor50 = ThreefishEngine.rotlXor(jRotlXor47, 44, j120);
                long j121 = j114 + jRotlXor46;
                long jRotlXor51 = ThreefishEngine.rotlXor(jRotlXor46, 47, j121);
                long j122 = j113 + jRotlXor48;
                long jRotlXor52 = ThreefishEngine.rotlXor(jRotlXor48, 46, j122);
                long j123 = j116 + jRotlXor44;
                long jRotlXor53 = ThreefishEngine.rotlXor(jRotlXor44, 19, j123);
                long j124 = j117 + jRotlXor42;
                long jRotlXor54 = ThreefishEngine.rotlXor(jRotlXor42, 42, j124);
                long j125 = j118 + jRotlXor43;
                long jRotlXor55 = ThreefishEngine.rotlXor(jRotlXor43, 44, j125);
                long j126 = j115 + jRotlXor41;
                long jRotlXor56 = ThreefishEngine.rotlXor(jRotlXor41, 25, j126);
                long j127 = j119 + jRotlXor53;
                long jRotlXor57 = ThreefishEngine.rotlXor(jRotlXor53, 9, j127);
                long j128 = j120 + jRotlXor55;
                long jRotlXor58 = ThreefishEngine.rotlXor(jRotlXor55, 48, j128);
                long j129 = j122 + jRotlXor54;
                long jRotlXor59 = ThreefishEngine.rotlXor(jRotlXor54, 35, j129);
                long j130 = j121 + jRotlXor56;
                long jRotlXor60 = ThreefishEngine.rotlXor(jRotlXor56, 52, j130);
                long j131 = j124 + jRotlXor52;
                long jRotlXor61 = ThreefishEngine.rotlXor(jRotlXor52, 23, j131);
                long j132 = j125 + jRotlXor50;
                long jRotlXor62 = ThreefishEngine.rotlXor(jRotlXor50, 31, j132);
                long j133 = j126 + jRotlXor51;
                long jRotlXor63 = ThreefishEngine.rotlXor(jRotlXor51, 37, j133);
                long j134 = j123 + jRotlXor49;
                long jRotlXor64 = ThreefishEngine.rotlXor(jRotlXor49, 20, j134);
                long j135 = jArr5[r12] + j127;
                long j136 = jRotlXor61 + jArr5[r13];
                long j137 = j128 + jArr5[r25];
                long j138 = jRotlXor63 + jArr5[r60];
                long j139 = jArr5[r61] + j130;
                long j140 = jRotlXor62 + jArr5[r64];
                long j141 = j129 + jArr5[r65];
                j43 = jRotlXor64 + jArr5[r66];
                long j142 = j132 + jArr5[r67];
                long j143 = jRotlXor60 + jArr5[r36];
                j36 = j133 + jArr5[r37];
                long j144 = jRotlXor58 + jArr5[r53];
                long j145 = j134 + jArr5[r54];
                long j146 = jArr5[r55] + jArr6[r56] + jRotlXor59;
                long j147 = jArr5[r58] + jArr6[r28 + 2] + j131;
                j46 = jArr5[r27 + 16] + j101 + 1 + jRotlXor57;
                j42 = j140;
                j45 = j144;
                j44 = j143;
                j47 = j146;
                j40 = j147;
                j34 = j142;
                j38 = j145;
                r42 = r34;
                j27 = j136;
                jArr3 = jArr5;
                r92 = r40 + 2;
                j26 = j135;
                j32 = j141;
                j41 = j138;
                j30 = j139;
                r32 = r33;
                jArr4 = jArr6;
                j28 = j137;
            }
            jArr2[0] = j26;
            jArr2[1] = j27;
            jArr2[2] = j28;
            jArr2[3] = j41;
            jArr2[4] = j30;
            jArr2[5] = j42;
            jArr2[6] = j32;
            jArr2[7] = j43;
            jArr2[8] = j34;
            jArr2[9] = j44;
            jArr2[10] = j36;
            jArr2[11] = j45;
            jArr2[12] = j38;
            jArr2[13] = j47;
            jArr2[14] = j40;
            jArr2[15] = j46;
        }
    }

    public static final class Threefish256Cipher extends ThreefishCipher {
        private static final int ROTATION_0_0 = 14;
        private static final int ROTATION_0_1 = 16;
        private static final int ROTATION_1_0 = 52;
        private static final int ROTATION_1_1 = 57;
        private static final int ROTATION_2_0 = 23;
        private static final int ROTATION_2_1 = 40;
        private static final int ROTATION_3_0 = 5;
        private static final int ROTATION_3_1 = 37;
        private static final int ROTATION_4_0 = 25;
        private static final int ROTATION_4_1 = 33;
        private static final int ROTATION_5_0 = 46;
        private static final int ROTATION_5_1 = 12;
        private static final int ROTATION_6_0 = 58;
        private static final int ROTATION_6_1 = 22;
        private static final int ROTATION_7_0 = 32;
        private static final int ROTATION_7_1 = 32;

        public Threefish256Cipher(long[] jArr, long[] jArr2) {
            super(jArr, jArr2);
        }

        @Override // org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        public void decryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.f11537t;
            int[] r32 = ThreefishEngine.MOD5;
            int[] r42 = ThreefishEngine.MOD3;
            if (jArr3.length != 9) {
                throw new IllegalArgumentException();
            }
            if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            }
            long j10 = jArr[0];
            long j11 = jArr[1];
            long j12 = jArr[2];
            long jXorRotr = jArr[3];
            int r15 = 17;
            for (int r92 = 1; r15 >= r92; r92 = 1) {
                int r19 = r32[r15];
                int r20 = r42[r15];
                int r21 = r19 + 1;
                long j13 = j10 - jArr3[r21];
                int r22 = r19 + 2;
                int r25 = r20 + 1;
                long j14 = j11 - (jArr3[r22] + jArr4[r25]);
                int r23 = r19 + 3;
                long j15 = j12 - (jArr3[r23] + jArr4[r20 + 2]);
                long j16 = r15;
                long jXorRotr2 = ThreefishEngine.xorRotr(jXorRotr - ((jArr3[r19 + 4] + j16) + 1), 32, j13);
                long j17 = j13 - jXorRotr2;
                int[] r26 = r32;
                long jXorRotr3 = ThreefishEngine.xorRotr(j14, 32, j15);
                long j18 = j15 - jXorRotr3;
                long jXorRotr4 = ThreefishEngine.xorRotr(jXorRotr3, 58, j17);
                long j19 = j17 - jXorRotr4;
                long jXorRotr5 = ThreefishEngine.xorRotr(jXorRotr2, 22, j18);
                long j20 = j18 - jXorRotr5;
                long jXorRotr6 = ThreefishEngine.xorRotr(jXorRotr5, 46, j19);
                long j21 = j19 - jXorRotr6;
                long jXorRotr7 = ThreefishEngine.xorRotr(jXorRotr4, 12, j20);
                long j22 = j20 - jXorRotr7;
                long jXorRotr8 = ThreefishEngine.xorRotr(jXorRotr7, 25, j21);
                long jXorRotr9 = ThreefishEngine.xorRotr(jXorRotr6, 33, j22);
                long j23 = (j21 - jXorRotr8) - jArr3[r19];
                long j24 = jXorRotr8 - (jArr3[r21] + jArr4[r20]);
                long j25 = (j22 - jXorRotr9) - (jArr3[r22] + jArr4[r25]);
                long jXorRotr10 = ThreefishEngine.xorRotr(jXorRotr9 - (jArr3[r23] + j16), 5, j23);
                long j26 = j23 - jXorRotr10;
                long jXorRotr11 = ThreefishEngine.xorRotr(j24, 37, j25);
                long j27 = j25 - jXorRotr11;
                long jXorRotr12 = ThreefishEngine.xorRotr(jXorRotr11, 23, j26);
                long j28 = j26 - jXorRotr12;
                long jXorRotr13 = ThreefishEngine.xorRotr(jXorRotr10, 40, j27);
                long j29 = j27 - jXorRotr13;
                long jXorRotr14 = ThreefishEngine.xorRotr(jXorRotr13, 52, j28);
                long j30 = j28 - jXorRotr14;
                long jXorRotr15 = ThreefishEngine.xorRotr(jXorRotr12, 57, j29);
                long j31 = j29 - jXorRotr15;
                long jXorRotr16 = ThreefishEngine.xorRotr(jXorRotr15, 14, j30);
                j10 = j30 - jXorRotr16;
                jXorRotr = ThreefishEngine.xorRotr(jXorRotr14, 16, j31);
                j12 = j31 - jXorRotr;
                r15 -= 2;
                j11 = jXorRotr16;
                r32 = r26;
                r42 = r42;
            }
            long j32 = j10 - jArr3[0];
            long j33 = j11 - (jArr3[1] + jArr4[0]);
            long j34 = j12 - (jArr3[2] + jArr4[1]);
            long j35 = jXorRotr - jArr3[3];
            jArr2[0] = j32;
            jArr2[1] = j33;
            jArr2[2] = j34;
            jArr2[3] = j35;
        }

        @Override // org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        public void encryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.f11537t;
            int[] r32 = ThreefishEngine.MOD5;
            int[] r42 = ThreefishEngine.MOD3;
            if (jArr3.length != 9) {
                throw new IllegalArgumentException();
            }
            if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            }
            long j10 = jArr[0];
            long j11 = jArr[1];
            long j12 = jArr[2];
            long j13 = jArr[3];
            long j14 = j10 + jArr3[0];
            long j15 = jArr3[1] + jArr4[0] + j11;
            long j16 = jArr3[2] + jArr4[1] + j12;
            long j17 = j13 + jArr3[3];
            long j18 = j15;
            int r15 = 1;
            while (r15 < 18) {
                int r92 = r32[r15];
                int r20 = r42[r15];
                long j19 = j14 + j18;
                long jRotlXor = ThreefishEngine.rotlXor(j18, 14, j19);
                long j20 = j16 + j17;
                long jRotlXor2 = ThreefishEngine.rotlXor(j17, 16, j20);
                long j21 = j19 + jRotlXor2;
                long jRotlXor3 = ThreefishEngine.rotlXor(jRotlXor2, 52, j21);
                long j22 = j20 + jRotlXor;
                long jRotlXor4 = ThreefishEngine.rotlXor(jRotlXor, 57, j22);
                long j23 = j21 + jRotlXor4;
                long jRotlXor5 = ThreefishEngine.rotlXor(jRotlXor4, 23, j23);
                long j24 = j22 + jRotlXor3;
                long jRotlXor6 = ThreefishEngine.rotlXor(jRotlXor3, 40, j24);
                long j25 = j23 + jRotlXor6;
                long jRotlXor7 = ThreefishEngine.rotlXor(jRotlXor6, 5, j25);
                long j26 = j24 + jRotlXor5;
                long jRotlXor8 = ThreefishEngine.rotlXor(jRotlXor5, 37, j26);
                long j27 = j25 + jArr3[r92];
                int r14 = r92 + 1;
                long j28 = jArr3[r14] + jArr4[r20] + jRotlXor8;
                int r22 = r92 + 2;
                int r25 = r20 + 1;
                long j29 = jArr3[r22] + jArr4[r25] + j26;
                int r10 = r92 + 3;
                int[] r28 = r32;
                long j30 = r15;
                long j31 = jArr3[r10] + j30 + jRotlXor7;
                long j32 = j27 + j28;
                long jRotlXor9 = ThreefishEngine.rotlXor(j28, 25, j32);
                long j33 = j29 + j31;
                long jRotlXor10 = ThreefishEngine.rotlXor(j31, 33, j33);
                long j34 = j32 + jRotlXor10;
                long jRotlXor11 = ThreefishEngine.rotlXor(jRotlXor10, 46, j34);
                long j35 = j33 + jRotlXor9;
                long jRotlXor12 = ThreefishEngine.rotlXor(jRotlXor9, 12, j35);
                long j36 = j34 + jRotlXor12;
                long jRotlXor13 = ThreefishEngine.rotlXor(jRotlXor12, 58, j36);
                long j37 = j35 + jRotlXor11;
                long jRotlXor14 = ThreefishEngine.rotlXor(jRotlXor11, 22, j37);
                long j38 = j36 + jRotlXor14;
                long jRotlXor15 = ThreefishEngine.rotlXor(jRotlXor14, 32, j38);
                long j39 = j37 + jRotlXor13;
                long jRotlXor16 = ThreefishEngine.rotlXor(jRotlXor13, 32, j39);
                j14 = j38 + jArr3[r14];
                j18 = jRotlXor16 + jArr3[r22] + jArr4[r25];
                long j40 = j39 + jArr3[r10] + jArr4[r20 + 2];
                j17 = jArr3[r92 + 4] + j30 + 1 + jRotlXor15;
                r15 += 2;
                j16 = j40;
                r32 = r28;
                r42 = r42;
            }
            jArr2[0] = j14;
            jArr2[1] = j18;
            jArr2[2] = j16;
            jArr2[3] = j17;
        }
    }

    public static final class Threefish512Cipher extends ThreefishCipher {
        private static final int ROTATION_0_0 = 46;
        private static final int ROTATION_0_1 = 36;
        private static final int ROTATION_0_2 = 19;
        private static final int ROTATION_0_3 = 37;
        private static final int ROTATION_1_0 = 33;
        private static final int ROTATION_1_1 = 27;
        private static final int ROTATION_1_2 = 14;
        private static final int ROTATION_1_3 = 42;
        private static final int ROTATION_2_0 = 17;
        private static final int ROTATION_2_1 = 49;
        private static final int ROTATION_2_2 = 36;
        private static final int ROTATION_2_3 = 39;
        private static final int ROTATION_3_0 = 44;
        private static final int ROTATION_3_1 = 9;
        private static final int ROTATION_3_2 = 54;
        private static final int ROTATION_3_3 = 56;
        private static final int ROTATION_4_0 = 39;
        private static final int ROTATION_4_1 = 30;
        private static final int ROTATION_4_2 = 34;
        private static final int ROTATION_4_3 = 24;
        private static final int ROTATION_5_0 = 13;
        private static final int ROTATION_5_1 = 50;
        private static final int ROTATION_5_2 = 10;
        private static final int ROTATION_5_3 = 17;
        private static final int ROTATION_6_0 = 25;
        private static final int ROTATION_6_1 = 29;
        private static final int ROTATION_6_2 = 39;
        private static final int ROTATION_6_3 = 43;
        private static final int ROTATION_7_0 = 8;
        private static final int ROTATION_7_1 = 35;
        private static final int ROTATION_7_2 = 56;
        private static final int ROTATION_7_3 = 22;

        public Threefish512Cipher(long[] jArr, long[] jArr2) {
            super(jArr, jArr2);
        }

        @Override // org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        public void decryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.f11537t;
            int[] r32 = ThreefishEngine.MOD9;
            int[] r42 = ThreefishEngine.MOD3;
            if (jArr3.length != 17) {
                throw new IllegalArgumentException();
            }
            if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            }
            long j10 = jArr[0];
            int r10 = 1;
            long j11 = jArr[1];
            long j12 = jArr[2];
            long jXorRotr = jArr[3];
            long j13 = jArr[4];
            long j14 = jArr[5];
            long j15 = jArr[6];
            long jXorRotr2 = jArr[7];
            int r72 = 17;
            while (r72 >= r10) {
                int r30 = r32[r72];
                int r31 = r42[r72];
                int r322 = r30 + 1;
                long j16 = j10 - jArr3[r322];
                int r33 = r30 + 2;
                long j17 = j11 - jArr3[r33];
                int r34 = r30 + 3;
                long j18 = j12 - jArr3[r34];
                int r35 = r30 + 4;
                long j19 = jXorRotr - jArr3[r35];
                int r17 = r30 + 5;
                long j20 = j13 - jArr3[r17];
                int r15 = r30 + 6;
                int r18 = r31 + 1;
                long j21 = j14 - (jArr3[r15] + jArr4[r18]);
                int r12 = r30 + 7;
                int[] r37 = r32;
                int[] r422 = r42;
                long j22 = j15 - (jArr3[r12] + jArr4[r31 + 2]);
                long[] jArr5 = jArr3;
                long j23 = r72;
                long j24 = jXorRotr2 - ((jArr3[r30 + 8] + j23) + 1);
                int r49 = r72;
                long jXorRotr3 = ThreefishEngine.xorRotr(j17, 8, j22);
                long j25 = j22 - jXorRotr3;
                long jXorRotr4 = ThreefishEngine.xorRotr(j24, 35, j16);
                long j26 = j16 - jXorRotr4;
                long jXorRotr5 = ThreefishEngine.xorRotr(j21, 56, j18);
                long j27 = j18 - jXorRotr5;
                long jXorRotr6 = ThreefishEngine.xorRotr(j19, 22, j20);
                long j28 = j20 - jXorRotr6;
                long jXorRotr7 = ThreefishEngine.xorRotr(jXorRotr3, 25, j28);
                long j29 = j28 - jXorRotr7;
                long jXorRotr8 = ThreefishEngine.xorRotr(jXorRotr6, 29, j25);
                long j30 = j25 - jXorRotr8;
                long jXorRotr9 = ThreefishEngine.xorRotr(jXorRotr5, 39, j26);
                long j31 = j26 - jXorRotr9;
                long jXorRotr10 = ThreefishEngine.xorRotr(jXorRotr4, 43, j27);
                long j32 = j27 - jXorRotr10;
                long jXorRotr11 = ThreefishEngine.xorRotr(jXorRotr7, 13, j32);
                long j33 = j32 - jXorRotr11;
                long jXorRotr12 = ThreefishEngine.xorRotr(jXorRotr10, 50, j29);
                long j34 = j29 - jXorRotr12;
                long jXorRotr13 = ThreefishEngine.xorRotr(jXorRotr9, 10, j30);
                long j35 = j30 - jXorRotr13;
                long jXorRotr14 = ThreefishEngine.xorRotr(jXorRotr8, 17, j31);
                long j36 = j31 - jXorRotr14;
                long jXorRotr15 = ThreefishEngine.xorRotr(jXorRotr11, 39, j36);
                long jXorRotr16 = ThreefishEngine.xorRotr(jXorRotr14, 30, j33);
                long jXorRotr17 = ThreefishEngine.xorRotr(jXorRotr13, 34, j34);
                long j37 = j34 - jXorRotr17;
                long jXorRotr18 = ThreefishEngine.xorRotr(jXorRotr12, 24, j35);
                long j38 = (j36 - jXorRotr15) - jArr5[r30];
                long j39 = jXorRotr15 - jArr5[r322];
                long j40 = (j33 - jXorRotr16) - jArr5[r33];
                long j41 = jXorRotr16 - jArr5[r34];
                long j42 = j37 - jArr5[r35];
                long j43 = jXorRotr17 - (jArr5[r17] + jArr4[r31]);
                long j44 = (j35 - jXorRotr18) - (jArr5[r15] + jArr4[r18]);
                long j45 = jXorRotr18 - (jArr5[r12] + j23);
                long jXorRotr19 = ThreefishEngine.xorRotr(j39, 44, j44);
                long j46 = j44 - jXorRotr19;
                long jXorRotr20 = ThreefishEngine.xorRotr(j45, 9, j38);
                long j47 = j38 - jXorRotr20;
                long jXorRotr21 = ThreefishEngine.xorRotr(j43, 54, j40);
                long j48 = j40 - jXorRotr21;
                long jXorRotr22 = ThreefishEngine.xorRotr(j41, 56, j42);
                long j49 = j42 - jXorRotr22;
                long jXorRotr23 = ThreefishEngine.xorRotr(jXorRotr19, 17, j49);
                long j50 = j49 - jXorRotr23;
                long jXorRotr24 = ThreefishEngine.xorRotr(jXorRotr22, 49, j46);
                long j51 = j46 - jXorRotr24;
                long jXorRotr25 = ThreefishEngine.xorRotr(jXorRotr21, 36, j47);
                long j52 = j47 - jXorRotr25;
                long jXorRotr26 = ThreefishEngine.xorRotr(jXorRotr20, 39, j48);
                long j53 = j48 - jXorRotr26;
                long jXorRotr27 = ThreefishEngine.xorRotr(jXorRotr23, 33, j53);
                long j54 = j53 - jXorRotr27;
                long jXorRotr28 = ThreefishEngine.xorRotr(jXorRotr26, 27, j50);
                long j55 = j50 - jXorRotr28;
                long jXorRotr29 = ThreefishEngine.xorRotr(jXorRotr25, 14, j51);
                long j56 = j51 - jXorRotr29;
                long[] jArr6 = jArr4;
                long jXorRotr30 = ThreefishEngine.xorRotr(jXorRotr24, 42, j52);
                long j57 = j52 - jXorRotr30;
                long jXorRotr31 = ThreefishEngine.xorRotr(jXorRotr27, 46, j57);
                long j58 = j57 - jXorRotr31;
                jXorRotr = ThreefishEngine.xorRotr(jXorRotr30, 36, j54);
                long jXorRotr32 = ThreefishEngine.xorRotr(jXorRotr29, 19, j55);
                j13 = j55 - jXorRotr32;
                jXorRotr2 = ThreefishEngine.xorRotr(jXorRotr28, 37, j56);
                j15 = j56 - jXorRotr2;
                j12 = j54 - jXorRotr;
                j11 = jXorRotr31;
                j14 = jXorRotr32;
                r72 = r49 - 2;
                r42 = r422;
                jArr3 = jArr5;
                r10 = 1;
                j10 = j58;
                jArr4 = jArr6;
                r32 = r37;
            }
            long[] jArr7 = jArr3;
            long[] jArr8 = jArr4;
            long j59 = j10 - jArr7[0];
            long j60 = j11 - jArr7[1];
            long j61 = j12 - jArr7[2];
            long j62 = jXorRotr - jArr7[3];
            long j63 = j13 - jArr7[4];
            long j64 = j14 - (jArr7[5] + jArr8[0]);
            long j65 = j15 - (jArr7[6] + jArr8[1]);
            long j66 = jXorRotr2 - jArr7[7];
            jArr2[0] = j59;
            jArr2[1] = j60;
            jArr2[2] = j61;
            jArr2[3] = j62;
            jArr2[4] = j63;
            jArr2[5] = j64;
            jArr2[6] = j65;
            jArr2[7] = j66;
        }

        @Override // org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        public void encryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.f11537t;
            int[] r32 = ThreefishEngine.MOD9;
            int[] r42 = ThreefishEngine.MOD3;
            if (jArr3.length != 17) {
                throw new IllegalArgumentException();
            }
            if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            }
            long j10 = jArr[0];
            long j11 = jArr[1];
            long j12 = jArr[2];
            long j13 = jArr[3];
            long j14 = jArr[4];
            long j15 = jArr[5];
            long j16 = jArr[6];
            long j17 = jArr[7];
            long j18 = j10 + jArr3[0];
            long j19 = j11 + jArr3[1];
            long j20 = j12 + jArr3[2];
            long j21 = j13 + jArr3[3];
            long j22 = j14 + jArr3[4];
            long j23 = jArr3[5] + jArr4[0] + j15;
            long j24 = jArr3[6] + jArr4[1] + j16;
            long j25 = j21;
            long j26 = j17 + jArr3[7];
            long j27 = j23;
            int r72 = 1;
            while (r72 < 18) {
                int r10 = r32[r72];
                int r28 = r42[r72];
                long j28 = j18 + j19;
                long jRotlXor = ThreefishEngine.rotlXor(j19, 46, j28);
                long j29 = j20 + j25;
                long jRotlXor2 = ThreefishEngine.rotlXor(j25, 36, j29);
                int[] r322 = r42;
                long j30 = j27;
                int[] r15 = r32;
                long j31 = j22 + j30;
                long jRotlXor3 = ThreefishEngine.rotlXor(j30, 19, j31);
                long[] jArr5 = jArr3;
                long j32 = j26;
                long j33 = j24 + j32;
                long jRotlXor4 = ThreefishEngine.rotlXor(j32, 37, j33);
                int r152 = r72;
                long j34 = j29 + jRotlXor;
                long jRotlXor5 = ThreefishEngine.rotlXor(jRotlXor, 33, j34);
                long j35 = j31 + jRotlXor4;
                long jRotlXor6 = ThreefishEngine.rotlXor(jRotlXor4, 27, j35);
                long j36 = j33 + jRotlXor3;
                long jRotlXor7 = ThreefishEngine.rotlXor(jRotlXor3, 14, j36);
                long j37 = j28 + jRotlXor2;
                long jRotlXor8 = ThreefishEngine.rotlXor(jRotlXor2, 42, j37);
                long j38 = j35 + jRotlXor5;
                long jRotlXor9 = ThreefishEngine.rotlXor(jRotlXor5, 17, j38);
                long j39 = j36 + jRotlXor8;
                long jRotlXor10 = ThreefishEngine.rotlXor(jRotlXor8, 49, j39);
                long j40 = j37 + jRotlXor7;
                long jRotlXor11 = ThreefishEngine.rotlXor(jRotlXor7, 36, j40);
                long j41 = j34 + jRotlXor6;
                long jRotlXor12 = ThreefishEngine.rotlXor(jRotlXor6, 39, j41);
                long j42 = j39 + jRotlXor9;
                long jRotlXor13 = ThreefishEngine.rotlXor(jRotlXor9, 44, j42);
                long j43 = j40 + jRotlXor12;
                long jRotlXor14 = ThreefishEngine.rotlXor(jRotlXor12, 9, j43);
                long j44 = j41 + jRotlXor11;
                long jRotlXor15 = ThreefishEngine.rotlXor(jRotlXor11, 54, j44);
                long j45 = j38 + jRotlXor10;
                long jRotlXor16 = ThreefishEngine.rotlXor(jRotlXor10, 56, j45);
                long j46 = j43 + jArr5[r10];
                int r23 = r10 + 1;
                long j47 = jRotlXor13 + jArr5[r23];
                int r31 = r10 + 2;
                long j48 = j44 + jArr5[r31];
                int r34 = r10 + 3;
                long j49 = jRotlXor16 + jArr5[r34];
                int r35 = r10 + 4;
                long j50 = j45 + jArr5[r35];
                int r37 = r10 + 5;
                long j51 = jArr5[r37] + jArr4[r28] + jRotlXor15;
                int r38 = r10 + 6;
                int r41 = r28 + 1;
                long j52 = jArr5[r38] + jArr4[r41] + j42;
                int r52 = r10 + 7;
                long[] jArr6 = jArr4;
                long j53 = r152;
                long j54 = jArr5[r52] + j53 + jRotlXor14;
                long j55 = j46 + j47;
                long jRotlXor17 = ThreefishEngine.rotlXor(j47, 39, j55);
                long j56 = j48 + j49;
                long jRotlXor18 = ThreefishEngine.rotlXor(j49, 30, j56);
                long j57 = j50 + j51;
                long jRotlXor19 = ThreefishEngine.rotlXor(j51, 34, j57);
                long j58 = j52 + j54;
                long jRotlXor20 = ThreefishEngine.rotlXor(j54, 24, j58);
                long j59 = j56 + jRotlXor17;
                long jRotlXor21 = ThreefishEngine.rotlXor(jRotlXor17, 13, j59);
                long j60 = j57 + jRotlXor20;
                long jRotlXor22 = ThreefishEngine.rotlXor(jRotlXor20, 50, j60);
                long j61 = j58 + jRotlXor19;
                long jRotlXor23 = ThreefishEngine.rotlXor(jRotlXor19, 10, j61);
                long j62 = j55 + jRotlXor18;
                long jRotlXor24 = ThreefishEngine.rotlXor(jRotlXor18, 17, j62);
                long j63 = j60 + jRotlXor21;
                long jRotlXor25 = ThreefishEngine.rotlXor(jRotlXor21, 25, j63);
                long j64 = j61 + jRotlXor24;
                long jRotlXor26 = ThreefishEngine.rotlXor(jRotlXor24, 29, j64);
                long j65 = j62 + jRotlXor23;
                long jRotlXor27 = ThreefishEngine.rotlXor(jRotlXor23, 39, j65);
                long j66 = j59 + jRotlXor22;
                long jRotlXor28 = ThreefishEngine.rotlXor(jRotlXor22, 43, j66);
                long j67 = j64 + jRotlXor25;
                long jRotlXor29 = ThreefishEngine.rotlXor(jRotlXor25, 8, j67);
                long j68 = j65 + jRotlXor28;
                long jRotlXor30 = ThreefishEngine.rotlXor(jRotlXor28, 35, j68);
                long j69 = j66 + jRotlXor27;
                long jRotlXor31 = ThreefishEngine.rotlXor(jRotlXor27, 56, j69);
                long j70 = j63 + jRotlXor26;
                long jRotlXor32 = ThreefishEngine.rotlXor(jRotlXor26, 22, j70);
                long j71 = j68 + jArr5[r23];
                j19 = jRotlXor29 + jArr5[r31];
                long j72 = j69 + jArr5[r34];
                long j73 = jRotlXor32 + jArr5[r35];
                long j74 = j70 + jArr5[r37];
                long j75 = jArr5[r38] + jArr6[r41] + jRotlXor31;
                long j76 = jArr5[r52] + jArr6[r28 + 2] + j67;
                j26 = jArr5[r10 + 8] + j53 + 1 + jRotlXor30;
                j24 = j76;
                j22 = j74;
                r42 = r322;
                jArr3 = jArr5;
                r72 = r152 + 2;
                j25 = j73;
                j18 = j71;
                r32 = r15;
                jArr4 = jArr6;
                j27 = j75;
                j20 = j72;
            }
            jArr2[0] = j18;
            jArr2[1] = j19;
            jArr2[2] = j20;
            jArr2[3] = j25;
            jArr2[4] = j22;
            jArr2[5] = j27;
            jArr2[6] = j24;
            jArr2[7] = j26;
        }
    }

    public static abstract class ThreefishCipher {
        protected final long[] kw;

        /* renamed from: t, reason: collision with root package name */
        protected final long[] f11537t;

        public ThreefishCipher(long[] jArr, long[] jArr2) {
            this.kw = jArr;
            this.f11537t = jArr2;
        }

        public abstract void decryptBlock(long[] jArr, long[] jArr2);

        public abstract void encryptBlock(long[] jArr, long[] jArr2);
    }

    static {
        int[] r02 = new int[80];
        MOD9 = r02;
        MOD17 = new int[r02.length];
        MOD5 = new int[r02.length];
        MOD3 = new int[r02.length];
        int r03 = 0;
        while (true) {
            int[] r12 = MOD9;
            if (r03 >= r12.length) {
                return;
            }
            MOD17[r03] = r03 % 17;
            r12[r03] = r03 % 9;
            MOD5[r03] = r03 % 5;
            MOD3[r03] = r03 % 3;
            r03++;
        }
    }

    public ThreefishEngine(int r42) {
        ThreefishCipher threefish256Cipher;
        long[] jArr = new long[5];
        this.f11536t = jArr;
        int r12 = r42 / 8;
        this.blocksizeBytes = r12;
        int r13 = r12 / 8;
        this.blocksizeWords = r13;
        this.currentBlock = new long[r13];
        long[] jArr2 = new long[(r13 * 2) + 1];
        this.kw = jArr2;
        if (r42 == 256) {
            threefish256Cipher = new Threefish256Cipher(jArr2, jArr);
        } else if (r42 == 512) {
            threefish256Cipher = new Threefish512Cipher(jArr2, jArr);
        } else {
            if (r42 != 1024) {
                throw new IllegalArgumentException("Invalid blocksize - Threefish is defined with block size of 256, 512, or 1024 bits");
            }
            threefish256Cipher = new Threefish1024Cipher(jArr2, jArr);
        }
        this.cipher = threefish256Cipher;
    }

    public static long bytesToWord(byte[] bArr, int r12) {
        return Pack.littleEndianToLong(bArr, r12);
    }

    public static long rotlXor(long j10, int r42, long j11) {
        return ((j10 >>> (-r42)) | (j10 << r42)) ^ j11;
    }

    private void setKey(long[] jArr) {
        if (jArr.length != this.blocksizeWords) {
            throw new IllegalArgumentException(a.b(new StringBuilder("Threefish key must be same size as block ("), this.blocksizeWords, " words)"));
        }
        long j10 = C_240;
        int r32 = 0;
        while (true) {
            int r42 = this.blocksizeWords;
            if (r32 >= r42) {
                long[] jArr2 = this.kw;
                jArr2[r42] = j10;
                System.arraycopy(jArr2, 0, jArr2, r42 + 1, r42);
                return;
            } else {
                long[] jArr3 = this.kw;
                long j11 = jArr[r32];
                jArr3[r32] = j11;
                j10 ^= j11;
                r32++;
            }
        }
    }

    private void setTweak(long[] jArr) {
        if (jArr.length != 2) {
            throw new IllegalArgumentException("Tweak must be 2 words.");
        }
        long[] jArr2 = this.f11536t;
        long j10 = jArr[0];
        jArr2[0] = j10;
        long j11 = jArr[1];
        jArr2[1] = j11;
        jArr2[2] = j10 ^ j11;
        jArr2[3] = j10;
        jArr2[4] = j11;
    }

    public static void wordToBytes(long j10, byte[] bArr, int r32) {
        Pack.longToLittleEndian(j10, bArr, r32);
    }

    public static long xorRotr(long j10, int r22, long j11) {
        long j12 = j10 ^ j11;
        return (j12 << (-r22)) | (j12 >>> r22);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Threefish-" + (this.blocksizeBytes * 8);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.blocksizeBytes;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        byte[] key;
        byte[] tweak;
        long[] jArr;
        long[] jArr2 = null;
        if (cipherParameters instanceof TweakableBlockCipherParameters) {
            TweakableBlockCipherParameters tweakableBlockCipherParameters = (TweakableBlockCipherParameters) cipherParameters;
            key = tweakableBlockCipherParameters.getKey().getKey();
            tweak = tweakableBlockCipherParameters.getTweak();
        } else {
            if (!(cipherParameters instanceof KeyParameter)) {
                throw new IllegalArgumentException(b.g(cipherParameters, "Invalid parameter passed to Threefish init - "));
            }
            key = ((KeyParameter) cipherParameters).getKey();
            tweak = null;
        }
        if (key == null) {
            jArr = null;
        } else {
            if (key.length != this.blocksizeBytes) {
                throw new IllegalArgumentException(a.b(new StringBuilder("Threefish key must be same size as block ("), this.blocksizeBytes, " bytes)"));
            }
            jArr = new long[this.blocksizeWords];
            Pack.littleEndianToLong(key, 0, jArr);
        }
        if (tweak != null) {
            if (tweak.length != 16) {
                throw new IllegalArgumentException("Threefish tweak must be 16 bytes");
            }
            jArr2 = new long[2];
            Pack.littleEndianToLong(tweak, 0, jArr2);
        }
        init(z10, jArr, jArr2);
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 256, cipherParameters, Utils.getPurpose(z10)));
    }

    public void init(boolean z10, long[] jArr, long[] jArr2) {
        this.forEncryption = z10;
        if (jArr != null) {
            setKey(jArr);
        }
        if (jArr2 != null) {
            setTweak(jArr2);
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r52, byte[] bArr2, int r72) throws IllegalStateException, DataLengthException {
        int r02 = this.blocksizeBytes;
        if (r52 + r02 > bArr.length) {
            throw new DataLengthException("Input buffer too short");
        }
        if (r02 + r72 > bArr2.length) {
            throw new OutputLengthException("Output buffer too short");
        }
        Pack.littleEndianToLong(bArr, r52, this.currentBlock);
        long[] jArr = this.currentBlock;
        processBlock(jArr, jArr);
        Pack.longToLittleEndian(this.currentBlock, bArr2, r72);
        return this.blocksizeBytes;
    }

    public int processBlock(long[] jArr, long[] jArr2) throws IllegalStateException, DataLengthException {
        long[] jArr3 = this.kw;
        int r12 = this.blocksizeWords;
        if (jArr3[r12] == 0) {
            throw new IllegalStateException("Threefish engine not initialised");
        }
        if (jArr.length != r12) {
            throw new DataLengthException("Input buffer too short");
        }
        if (jArr2.length != r12) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (this.forEncryption) {
            this.cipher.encryptBlock(jArr, jArr2);
        } else {
            this.cipher.decryptBlock(jArr, jArr2);
        }
        return this.blocksizeWords;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
