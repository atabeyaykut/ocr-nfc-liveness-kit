package org.bouncycastle.pqc.crypto.ntruprime;

import androidx.camera.core.impl.a;
import java.security.SecureRandom;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.crypto.modes.CTRModeCipher;
import org.bouncycastle.crypto.modes.SICBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
class Utils {
    public static int bToUnsignedInt(byte b10) {
        return b10 & 255;
    }

    public static void checkForSmallPolynomial(byte[] bArr, byte[] bArr2, int r6, int r72) {
        int r22 = 0;
        for (int r12 = 0; r12 != bArr2.length; r12++) {
            r22 += bArr2[r12] & 1;
        }
        int r13 = checkNotEqualToZero(r22 - r72);
        for (int r02 = 0; r02 < r72; r02++) {
            bArr[r02] = (byte) (((bArr2[r02] ^ 1) & (~r13)) ^ 1);
        }
        while (r72 < r6) {
            bArr[r72] = (byte) (bArr2[r72] & (~r13));
            r72++;
        }
    }

    private static int checkLessThanZero(int r02) {
        return -(r02 >>> 31);
    }

    private static int checkNotEqualToZero(int r22) {
        return -((int) ((-iToUnsignedLong(r22)) >>> 63));
    }

    public static void cryptoSort(int[] r72, int r82) {
        if (r82 < 2) {
            return;
        }
        int r02 = 1;
        while (r02 < r82 - r02) {
            r02 += r02;
        }
        for (int r12 = r02; r12 > 0; r12 >>>= 1) {
            for (int r32 = 0; r32 < r82 - r12; r32++) {
                if ((r32 & r12) == 0) {
                    minmax(r72, r32, r32 + r12);
                }
            }
            for (int r33 = r02; r33 > r12; r33 >>>= 1) {
                for (int r42 = 0; r42 < r82 - r33; r42++) {
                    if ((r42 & r12) == 0) {
                        minmax(r72, r42 + r12, r42 + r33);
                    }
                }
            }
        }
    }

    private static void decode(short[] sArr, byte[] bArr, short[] sArr2, int r18, int r19, int r20) {
        int r12;
        if (r18 == 1) {
            short s7 = sArr2[0];
            if (s7 == 1) {
                sArr[r19] = 0;
            } else if (s7 <= 256) {
                sArr[r19] = (short) getUnsignedMod(bToUnsignedInt(bArr[r20]), sArr2[0]);
            } else {
                sArr[r19] = (short) getUnsignedMod(bToUnsignedInt(bArr[r20]) + (bArr[r20 + 1] << 8), sArr2[0]);
            }
        }
        if (r18 > 1) {
            int r32 = (r18 + 1) / 2;
            short[] sArr3 = new short[r32];
            short[] sArr4 = new short[r32];
            int r13 = r18 / 2;
            short[] sArr5 = new short[r13];
            int[] r11 = new int[r13];
            int r52 = r20;
            int r14 = 0;
            while (true) {
                r12 = r18 - 1;
                if (r14 >= r12) {
                    break;
                }
                int r42 = sArr2[r14] * sArr2[r14 + 1];
                if (r42 > 4194048) {
                    int r122 = r14 / 2;
                    r11[r122] = 65536;
                    sArr5[r122] = (short) ((bToUnsignedInt(bArr[r52 + 1]) * 256) + bToUnsignedInt(bArr[r52]));
                    r52 += 2;
                    sArr4[r122] = (short) ((((r42 + 255) >>> 8) + 255) >>> 8);
                } else if (r42 >= 16384) {
                    int r123 = r14 / 2;
                    r11[r123] = 256;
                    sArr5[r123] = (short) bToUnsignedInt(bArr[r52]);
                    r52++;
                    sArr4[r123] = (short) ((r42 + 255) >>> 8);
                } else {
                    int r124 = r14 / 2;
                    r11[r124] = 1;
                    sArr5[r124] = 0;
                    sArr4[r124] = (short) r42;
                }
                r14 += 2;
            }
            if (r14 < r18) {
                sArr4[r14 / 2] = sArr2[r14];
            }
            decode(sArr3, bArr, sArr4, r32, r19, r52);
            int r02 = r19;
            int r15 = 0;
            while (r15 < r12) {
                int r22 = r15 / 2;
                int[] unsignedDivMod = getUnsignedDivMod((r11[r22] * sToUnsignedInt(sArr3[r22])) + sToUnsignedInt(sArr5[r22]), sArr2[r15]);
                int r33 = r02 + 1;
                sArr[r02] = (short) unsignedDivMod[1];
                r02 = r33 + 1;
                sArr[r33] = (short) getUnsignedMod(unsignedDivMod[0], sArr2[r15 + 1]);
                r15 += 2;
            }
            if (r15 < r18) {
                sArr[r02] = sArr3[r15 / 2];
            }
        }
    }

    private static void encode(byte[] bArr, short[] sArr, short[] sArr2, int r11, int r12) {
        int r02 = 0;
        if (r11 == 1) {
            short s7 = sArr[0];
            short s10 = sArr2[0];
            while (s10 > 1) {
                bArr[r12] = (byte) s7;
                s7 = (short) (s7 >>> 8);
                s10 = (short) ((s10 + 255) >>> 8);
                r12++;
            }
        }
        if (r11 > 1) {
            int r13 = (r11 + 1) / 2;
            short[] sArr3 = new short[r13];
            short[] sArr4 = new short[r13];
            while (r02 < r11 - 1) {
                short s11 = sArr2[r02];
                int r6 = r02 + 1;
                int r72 = (sArr[r6] * s11) + sArr[r02];
                int r52 = sArr2[r6] * s11;
                while (r52 >= 16384) {
                    bArr[r12] = (byte) r72;
                    r72 >>>= 8;
                    r52 = (r52 + 255) >>> 8;
                    r12++;
                }
                int r42 = r02 / 2;
                sArr3[r42] = (short) r72;
                sArr4[r42] = (short) r52;
                r02 += 2;
            }
            if (r02 < r11) {
                int r112 = r02 / 2;
                sArr3[r112] = sArr[r02];
                sArr4[r112] = sArr2[r02];
            }
            encode(bArr, sArr3, sArr4, r13, r12);
        }
    }

    public static void expand(int[] r52, byte[] bArr) throws DataLengthException, IllegalArgumentException {
        byte[] bArr2 = new byte[r52.length * 4];
        byte[] bArr3 = new byte[r52.length * 4];
        generateAES256CTRStream(bArr2, bArr3, new byte[16], bArr);
        for (int r6 = 0; r6 < r52.length; r6++) {
            int r02 = r6 * 4;
            r52[r6] = bToUnsignedInt(bArr3[r02]) + (bToUnsignedInt(bArr3[r02 + 1]) << 8) + (bToUnsignedInt(bArr3[r02 + 2]) << 16) + (bToUnsignedInt(bArr3[r02 + 3]) << 24);
        }
    }

    private static void generateAES256CTRStream(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws DataLengthException, IllegalArgumentException {
        CTRModeCipher cTRModeCipherNewInstance = SICBlockCipher.newInstance(AESEngine.newInstance());
        cTRModeCipherNewInstance.init(true, new ParametersWithIV(new KeyParameter(bArr4), bArr3));
        cTRModeCipherNewInstance.processBytes(bArr, 0, bArr2.length, bArr2, 0);
    }

    public static void generatePolynomialInRQFromSeed(short[] sArr, byte[] bArr, int r52, int r6) throws DataLengthException, IllegalArgumentException {
        int[] r02 = new int[r52];
        expand(r02, bArr);
        for (int r42 = 0; r42 < r52; r42++) {
            sArr[r42] = (short) (getUnsignedMod(r02[r42], r6) - ((r6 - 1) / 2));
        }
    }

    public static void getDecodedPolynomial(short[] sArr, byte[] bArr, int r10, int r11) {
        short[] sArr2 = new short[r10];
        short[] sArr3 = new short[r10];
        for (int r02 = 0; r02 < r10; r02++) {
            sArr3[r02] = (short) r11;
        }
        decode(sArr2, bArr, sArr3, r10, 0, 0);
        for (int r72 = 0; r72 < r10; r72++) {
            sArr[r72] = (short) (sArr2[r72] - ((r11 - 1) / 2));
        }
    }

    public static void getDecodedSmallPolynomial(byte[] bArr, byte[] bArr2, int r82) {
        int r02 = 0;
        int r12 = 0;
        int r22 = 0;
        while (r02 < r82 / 4) {
            int r32 = r12 + 1;
            byte b10 = bArr2[r12];
            int r42 = r22 + 1;
            bArr[r22] = (byte) ((bToUnsignedInt(b10) & 3) - 1);
            int r23 = r42 + 1;
            bArr[r42] = (byte) ((bToUnsignedInt(r1) & 3) - 1);
            byte b11 = (byte) (((byte) (b10 >>> 2)) >>> 2);
            int r43 = r23 + 1;
            bArr[r23] = (byte) ((bToUnsignedInt(b11) & 3) - 1);
            r22 = r43 + 1;
            bArr[r43] = (byte) ((bToUnsignedInt((byte) (b11 >>> 2)) & 3) - 1);
            r02++;
            r12 = r32;
        }
        bArr[r22] = (byte) ((bToUnsignedInt(bArr2[r12]) & 3) - 1);
    }

    public static void getEncodedInputs(byte[] bArr, byte[] bArr2) {
        for (int r02 = 0; r02 < bArr2.length; r02++) {
            int r12 = r02 >>> 3;
            bArr[r12] = (byte) (bArr[r12] | (bArr2[r02] << (r02 & 7)));
        }
    }

    public static void getEncodedPolynomial(byte[] bArr, short[] sArr, int r82, int r92) {
        short[] sArr2 = new short[r82];
        short[] sArr3 = new short[r82];
        for (int r32 = 0; r32 < r82; r32++) {
            sArr2[r32] = (short) (((r92 - 1) / 2) + sArr[r32]);
        }
        for (int r72 = 0; r72 < r82; r72++) {
            sArr3[r72] = (short) r92;
        }
        encode(bArr, sArr2, sArr3, r82, 0);
    }

    public static void getEncodedSmallPolynomial(byte[] bArr, byte[] bArr2, int r72) {
        int r02 = 0;
        int r12 = 0;
        int r22 = 0;
        while (r02 < r72 / 4) {
            int r32 = r22 + 1;
            int r42 = r32 + 1;
            byte b10 = (byte) (((byte) (bArr2[r22] + 1)) + (((byte) (bArr2[r32] + 1)) << 2));
            int r33 = r42 + 1;
            byte b11 = (byte) (b10 + (((byte) (bArr2[r42] + 1)) << 4));
            bArr[r12] = (byte) (b11 + (((byte) (bArr2[r33] + 1)) << 6));
            r02++;
            r12++;
            r22 = r33 + 1;
        }
        bArr[r12] = (byte) (bArr2[r22] + 1);
    }

    public static byte[] getHashWithPrefix(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[64];
        int length = bArr.length + bArr2.length;
        byte[] bArr4 = new byte[length];
        System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr4, bArr.length, bArr2.length);
        SHA512Digest sHA512Digest = new SHA512Digest();
        sHA512Digest.update(bArr4, 0, length);
        sHA512Digest.doFinal(bArr3, 0);
        return bArr3;
    }

    public static int getInverseInRQ(int r32, int r42) {
        int modFreeze = r32;
        for (int r02 = 1; r02 < r42 - 2; r02++) {
            modFreeze = getModFreeze(modFreeze * r32, r42);
        }
        return modFreeze;
    }

    public static int getModFreeze(int r12, int r22) {
        int r02 = (r22 - 1) / 2;
        return getSignedDivMod(r12 + r02, r22)[1] - r02;
    }

    public static void getOneThirdInverseInRQ(short[] sArr, byte[] bArr, int r19, int r20) {
        int r22 = r19 + 1;
        short[] sArr2 = new short[r22];
        short[] sArr3 = new short[r22];
        short[] sArr4 = new short[r22];
        short[] sArr5 = new short[r22];
        sArr4[0] = (short) getInverseInRQ(3, r20);
        sArr2[0] = 1;
        int r92 = r19 - 1;
        sArr2[r92] = -1;
        sArr2[r19] = -1;
        for (int r10 = 0; r10 < r19; r10++) {
            sArr3[r92 - r10] = bArr[r10];
        }
        sArr3[r19] = 0;
        int r11 = 1;
        for (int r102 = 0; r102 < (r19 * 2) - 1; r102++) {
            System.arraycopy(sArr5, 0, sArr5, 1, r19);
            sArr5[0] = 0;
            int r12 = -r11;
            int r13 = checkLessThanZero(r12) & checkNotEqualToZero(sArr3[0]);
            r11 = (r11 ^ ((r12 ^ r11) & r13)) + 1;
            for (int r122 = 0; r122 < r22; r122++) {
                short s7 = sArr2[r122];
                int r15 = (sArr3[r122] ^ s7) & r13;
                sArr2[r122] = (short) (s7 ^ r15);
                sArr3[r122] = (short) (sArr3[r122] ^ r15);
                short s10 = sArr5[r122];
                int r152 = (sArr4[r122] ^ s10) & r13;
                sArr5[r122] = (short) (s10 ^ r152);
                sArr4[r122] = (short) (sArr4[r122] ^ r152);
            }
            short s11 = sArr2[0];
            short s12 = sArr3[0];
            for (int r14 = 0; r14 < r22; r14++) {
                sArr3[r14] = (short) getModFreeze((sArr3[r14] * s11) - (sArr2[r14] * s12), r20);
            }
            for (int r142 = 0; r142 < r22; r142++) {
                sArr4[r142] = (short) getModFreeze((sArr4[r142] * s11) - (sArr5[r142] * s12), r20);
            }
            int r123 = 0;
            while (r123 < r19) {
                int r132 = r123 + 1;
                sArr3[r123] = sArr3[r132];
                r123 = r132;
            }
            sArr3[r19] = 0;
        }
        int inverseInRQ = getInverseInRQ(sArr2[0], r20);
        for (int r82 = 0; r82 < r19; r82++) {
            sArr[r82] = (short) getModFreeze(sArr5[r92 - r82] * inverseInRQ, r20);
        }
    }

    public static void getRandomInputs(SecureRandom secureRandom, byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length / 8];
        secureRandom.nextBytes(bArr2);
        for (int r32 = 0; r32 < bArr.length; r32++) {
            bArr[r32] = (byte) ((bArr2[r32 >>> 3] >>> (r32 & 7)) & 1);
        }
    }

    public static void getRandomShortPolynomial(SecureRandom secureRandom, byte[] bArr, int r52, int r6) {
        int[] r02 = new int[r52];
        for (int r12 = 0; r12 < r52; r12++) {
            r02[r12] = getRandomUnsignedInteger(secureRandom);
        }
        sortGenerateShortPolynomial(bArr, r02, r52, r6);
    }

    public static void getRandomSmallPolynomial(SecureRandom secureRandom, byte[] bArr) {
        for (int r02 = 0; r02 < bArr.length; r02++) {
            bArr[r02] = (byte) ((((getRandomUnsignedInteger(secureRandom) & 1073741823) * 3) >>> 30) - 1);
        }
    }

    public static int getRandomUnsignedInteger(SecureRandom secureRandom) {
        byte[] bArr = new byte[4];
        secureRandom.nextBytes(bArr);
        return bToUnsignedInt(bArr[0]) + (bToUnsignedInt(bArr[1]) << 8) + (bToUnsignedInt(bArr[2]) << 16) + (bToUnsignedInt(bArr[3]) << 24);
    }

    public static void getRoundedDecodedPolynomial(short[] sArr, byte[] bArr, int r10, int r11) {
        short[] sArr2 = new short[r10];
        short[] sArr3 = new short[r10];
        for (int r02 = 0; r02 < r10; r02++) {
            sArr3[r02] = (short) ((r11 + 2) / 3);
        }
        decode(sArr2, bArr, sArr3, r10, 0, 0);
        for (int r72 = 0; r72 < r10; r72++) {
            sArr[r72] = (short) ((sArr2[r72] * 3) - ((r11 - 1) / 2));
        }
    }

    public static void getRoundedEncodedPolynomial(byte[] bArr, short[] sArr, int r82, int r92) {
        short[] sArr2 = new short[r82];
        short[] sArr3 = new short[r82];
        for (int r32 = 0; r32 < r82; r32++) {
            sArr2[r32] = (short) (((((r92 - 1) / 2) + sArr[r32]) * 10923) >>> 15);
            sArr3[r32] = (short) ((r92 + 2) / 3);
        }
        encode(bArr, sArr2, sArr3, r82, 0);
    }

    private static int[] getSignedDivMod(int r82, int r92) {
        int[] unsignedDivMod = getUnsignedDivMod(toIntExact(iToUnsignedLong(r82) - 2147483648L), r92);
        int[] unsignedDivMod2 = getUnsignedDivMod(Integer.MIN_VALUE, r92);
        int intExact = toIntExact(iToUnsignedLong(unsignedDivMod[0]) - iToUnsignedLong(unsignedDivMod2[0]));
        int intExact2 = toIntExact(iToUnsignedLong(unsignedDivMod[1]) - iToUnsignedLong(unsignedDivMod2[1]));
        int r02 = -(intExact2 >>> 31);
        return new int[]{intExact + r02, intExact2 + (r92 & r02)};
    }

    public static void getTopDecodedPolynomial(byte[] bArr, byte[] bArr2) {
        for (int r02 = 0; r02 < bArr2.length; r02++) {
            int r12 = r02 * 2;
            bArr[r12] = (byte) (bArr2[r02] & PassportService.SFI_DG15);
            bArr[r12 + 1] = (byte) (bArr2[r02] >>> 4);
        }
    }

    public static void getTopEncodedPolynomial(byte[] bArr, byte[] bArr2) {
        for (int r02 = 0; r02 < bArr.length; r02++) {
            int r12 = r02 * 2;
            bArr[r02] = (byte) (bArr2[r12] + (bArr2[r12 + 1] << 4));
        }
    }

    private static int[] getUnsignedDivMod(int r92, int r10) {
        long jIToUnsignedLong = iToUnsignedLong(r92);
        long j10 = r10;
        long jIToUnsignedLong2 = iToUnsignedLong(Integer.MIN_VALUE) / j10;
        long j11 = (jIToUnsignedLong * jIToUnsignedLong2) >>> 31;
        long j12 = jIToUnsignedLong - (j11 * j10);
        long j13 = (jIToUnsignedLong2 * j12) >>> 31;
        long j14 = (j12 - (j13 * j10)) - j10;
        long j15 = j11 + 0 + j13 + 1;
        long j16 = -(j14 >>> 63);
        return new int[]{toIntExact(j15 + j16), toIntExact(j14 + (j10 & j16))};
    }

    private static int getUnsignedMod(int r02, int r12) {
        return getUnsignedDivMod(r02, r12)[1];
    }

    public static long iToUnsignedLong(int r42) {
        return r42 & BodyPartID.bodyIdMax;
    }

    public static boolean isInvertiblePolynomialInR3(byte[] bArr, byte[] bArr2, int r18) {
        int r12 = r18 + 1;
        byte[] bArr3 = new byte[r12];
        byte[] bArr4 = new byte[r12];
        byte[] bArr5 = new byte[r12];
        byte[] bArr6 = new byte[r12];
        bArr5[0] = 1;
        bArr3[0] = 1;
        int r82 = r18 - 1;
        bArr3[r82] = -1;
        bArr3[r18] = -1;
        for (int r92 = 0; r92 < r18; r92++) {
            bArr4[r82 - r92] = bArr[r92];
        }
        bArr4[r18] = 0;
        int r10 = 1;
        for (int r93 = 0; r93 < (r18 * 2) - 1; r93++) {
            System.arraycopy(bArr6, 0, bArr6, 1, r18);
            bArr6[0] = 0;
            int r11 = (-bArr4[0]) * bArr3[0];
            int r122 = -r10;
            int r13 = checkLessThanZero(r122) & checkNotEqualToZero(bArr4[0]);
            r10 = (r10 ^ ((r122 ^ r10) & r13)) + 1;
            for (int r123 = 0; r123 < r12; r123++) {
                byte b10 = bArr3[r123];
                int r15 = (bArr4[r123] ^ b10) & r13;
                bArr3[r123] = (byte) (b10 ^ r15);
                bArr4[r123] = (byte) (bArr4[r123] ^ r15);
                byte b11 = bArr6[r123];
                int r152 = (bArr5[r123] ^ b11) & r13;
                bArr6[r123] = (byte) (b11 ^ r152);
                bArr5[r123] = (byte) (bArr5[r123] ^ r152);
            }
            for (int r124 = 0; r124 < r12; r124++) {
                bArr4[r124] = (byte) getModFreeze((bArr3[r124] * r11) + bArr4[r124], 3);
            }
            for (int r125 = 0; r125 < r12; r125++) {
                bArr5[r125] = (byte) getModFreeze((bArr6[r125] * r11) + bArr5[r125], 3);
            }
            int r112 = 0;
            while (r112 < r18) {
                int r126 = r112 + 1;
                bArr4[r112] = bArr4[r126];
                r112 = r126;
            }
            bArr4[r18] = 0;
        }
        byte b12 = bArr3[0];
        for (int r22 = 0; r22 < r18; r22++) {
            bArr2[r22] = (byte) (bArr6[r82 - r22] * b12);
        }
        return r10 == 0;
    }

    public static void minmax(int[] r6, int r72, int r82) {
        int r02 = r6[r72];
        int r12 = r6[r82];
        int r22 = r02 ^ r12;
        int r32 = r12 - r02;
        int r23 = r22 & (-((r32 ^ (((r32 ^ r12) ^ Integer.MIN_VALUE) & r22)) >>> 31));
        r6[r72] = r02 ^ r23;
        r6[r82] = r12 ^ r23;
    }

    public static void multiplicationInR3(byte[] bArr, byte[] bArr2, byte[] bArr3, int r13) {
        int r02 = r13 + r13;
        int r12 = r02 - 1;
        byte[] bArr4 = new byte[r12];
        for (int r42 = 0; r42 < r13; r42++) {
            byte modFreeze = 0;
            for (int r6 = 0; r6 <= r42; r6++) {
                modFreeze = (byte) getModFreeze((bArr2[r6] * bArr3[r42 - r6]) + modFreeze, 3);
            }
            bArr4[r42] = modFreeze;
        }
        for (int r43 = r13; r43 < r12; r43++) {
            byte modFreeze2 = 0;
            for (int r62 = (r43 - r13) + 1; r62 < r13; r62++) {
                modFreeze2 = (byte) getModFreeze((bArr2[r62] * bArr3[r43 - r62]) + modFreeze2, 3);
            }
            bArr4[r43] = modFreeze2;
        }
        for (int r03 = r02 - 2; r03 >= r13; r03--) {
            int r11 = r03 - r13;
            bArr4[r11] = (byte) getModFreeze(bArr4[r11] + bArr4[r03], 3);
            int r112 = r11 + 1;
            bArr4[r112] = (byte) getModFreeze(bArr4[r112] + bArr4[r03], 3);
        }
        for (int r32 = 0; r32 < r13; r32++) {
            bArr[r32] = bArr4[r32];
        }
    }

    public static void multiplicationInRQ(short[] sArr, short[] sArr2, byte[] bArr, int r12, int r13) {
        int r02 = r12 + r12;
        int r14 = r02 - 1;
        short[] sArr3 = new short[r14];
        for (int r42 = 0; r42 < r12; r42++) {
            short modFreeze = 0;
            for (int r52 = 0; r52 <= r42; r52++) {
                modFreeze = (short) getModFreeze((sArr2[r52] * bArr[r42 - r52]) + modFreeze, r13);
            }
            sArr3[r42] = modFreeze;
        }
        for (int r43 = r12; r43 < r14; r43++) {
            short modFreeze2 = 0;
            for (int r53 = (r43 - r12) + 1; r53 < r12; r53++) {
                modFreeze2 = (short) getModFreeze((sArr2[r53] * bArr[r43 - r53]) + modFreeze2, r13);
            }
            sArr3[r43] = modFreeze2;
        }
        for (int r03 = r02 - 2; r03 >= r12; r03--) {
            int r10 = r03 - r12;
            sArr3[r10] = (short) getModFreeze(sArr3[r10] + sArr3[r03], r13);
            int r102 = r10 + 1;
            sArr3[r102] = (short) getModFreeze(sArr3[r102] + sArr3[r03], r13);
        }
        for (int r32 = 0; r32 < r12; r32++) {
            sArr[r32] = sArr3[r32];
        }
    }

    public static void right(byte[] bArr, short[] sArr, byte[] bArr2, int r72, int r82, int r92, int r10) {
        for (int r02 = 0; r02 < bArr.length; r02++) {
            bArr[r02] = (byte) (-checkLessThanZero(getModFreeze(a.d(r82, 4, getModFreeze((bArr2[r02] * r10) - r92, r72) - sArr[r02], 1), r72)));
        }
    }

    public static void roundPolynomial(short[] sArr, short[] sArr2) {
        for (int r02 = 0; r02 < sArr.length; r02++) {
            short s7 = sArr2[r02];
            sArr[r02] = (short) (s7 - getModFreeze(s7, 3));
        }
    }

    public static int sToUnsignedInt(short s7) {
        return s7 & HPKE.aead_EXPORT_ONLY;
    }

    public static void scalarMultiplicationInRQ(short[] sArr, short[] sArr2, int r42, int r52) {
        for (int r02 = 0; r02 < sArr2.length; r02++) {
            sArr[r02] = (short) getModFreeze(sArr2[r02] * r42, r52);
        }
    }

    public static void sortGenerateShortPolynomial(byte[] bArr, int[] r42, int r52, int r6) {
        for (int r12 = 0; r12 < r6; r12++) {
            r42[r12] = r42[r12] & (-2);
        }
        while (r6 < r52) {
            r42[r6] = (r42[r6] & (-3)) | 1;
            r6++;
        }
        cryptoSort(r42, r52);
        for (int r02 = 0; r02 < r52; r02++) {
            bArr[r02] = (byte) ((r42[r02] & 3) - 1);
        }
    }

    public static int toIntExact(long j10) {
        int r02 = (int) j10;
        if (r02 == j10) {
            return r02;
        }
        throw new IllegalStateException("value out of integer range");
    }

    public static void top(byte[] bArr, short[] sArr, byte[] bArr2, int r72, int r82, int r92) {
        for (int r02 = 0; r02 < bArr.length; r02++) {
            bArr[r02] = (byte) ((((getModFreeze((((r72 - 1) / 2) * bArr2[r02]) + sArr[r02], r72) + r82) * r92) + 16384) >>> 15);
        }
    }

    public static void transformRQToR3(byte[] bArr, short[] sArr) {
        for (int r02 = 0; r02 < sArr.length; r02++) {
            bArr[r02] = (byte) getModFreeze(sArr[r02], 3);
        }
    }

    public static void updateDiffMask(byte[] bArr, byte[] bArr2, int r52) {
        for (int r02 = 0; r02 < bArr.length; r02++) {
            int r12 = bArr[r02];
            bArr[r02] = (byte) (r12 ^ ((bArr2[r02] ^ r12) & r52));
        }
    }
}
