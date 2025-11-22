package org.bouncycastle.crypto.fpe;

import android.support.v4.media.a;
import java.math.BigInteger;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.crypto.util.RadixConverter;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.BigIntegers;
import org.bouncycastle.util.Bytes;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
class SP80038G {
    protected static final int BLOCK_SIZE = 16;
    static final String FF1_DISABLED = "org.bouncycastle.fpe.disable_ff1";
    static final String FPE_DISABLED = "org.bouncycastle.fpe.disable";
    protected static final double LOG2 = Math.log(2.0d);
    protected static final double TWO_TO_96 = Math.pow(2.0d, 96.0d);

    public static int calculateB_FF1(int r42, int r52) {
        int r02 = Integers.numberOfTrailingZeros(r42);
        int r12 = r02 * r52;
        int r43 = r42 >>> r02;
        if (r43 != 1) {
            r12 += BigInteger.valueOf(r43).pow(r52).bitLength();
        }
        return (r12 + 7) / 8;
    }

    public static BigInteger[] calculateModUV(BigInteger bigInteger, int r42, int r52) {
        BigInteger bigIntegerPow = bigInteger.pow(r42);
        BigInteger[] bigIntegerArr = {bigIntegerPow, bigIntegerPow};
        if (r52 != r42) {
            bigIntegerArr[1] = bigIntegerPow.multiply(bigInteger);
        }
        return bigIntegerArr;
    }

    public static byte[] calculateP_FF1(int r42, byte b10, int r6, int r72) {
        byte[] bArr = {1, 2, 1, 0, (byte) (r42 >> 8), (byte) r42, 10, b10, 0, 0, 0, 0, 0, 0, 0, 0};
        Pack.intToBigEndian(r6, bArr, 8);
        Pack.intToBigEndian(r72, bArr, 12);
        return bArr;
    }

    public static byte[] calculateTweak64_FF3_1(byte[] bArr) {
        return new byte[]{bArr[0], bArr[1], bArr[2], (byte) (bArr[3] & 240), bArr[4], bArr[5], bArr[6], (byte) (bArr[3] << 4)};
    }

    public static BigInteger calculateY_FF1(BlockCipher blockCipher, byte[] bArr, int r6, int r72, int r82, byte[] bArr2, short[] sArr, RadixConverter radixConverter) throws IllegalStateException, DataLengthException {
        int length = bArr.length;
        byte[] bArrAsUnsignedByteArray = BigIntegers.asUnsignedByteArray(radixConverter.fromEncoding(sArr));
        int r11 = ((-(length + r6 + 1)) & 15) + length;
        int r22 = r11 + 1 + r6;
        byte[] bArr3 = new byte[r22];
        System.arraycopy(bArr, 0, bArr3, 0, length);
        bArr3[r11] = (byte) r82;
        System.arraycopy(bArrAsUnsignedByteArray, 0, bArr3, r22 - bArrAsUnsignedByteArray.length, bArrAsUnsignedByteArray.length);
        byte[] bArrPrf = prf(blockCipher, Arrays.concatenate(bArr2, bArr3));
        if (r72 > 16) {
            int r83 = ((r72 + 16) - 1) / 16;
            byte[] bArr4 = new byte[r83 * 16];
            int r112 = Pack.bigEndianToInt(bArrPrf, 12);
            System.arraycopy(bArrPrf, 0, bArr4, 0, 16);
            for (int r12 = 1; r12 < r83; r12++) {
                int r62 = r12 * 16;
                System.arraycopy(bArrPrf, 0, bArr4, r62, 12);
                Pack.intToBigEndian(r112 ^ r12, bArr4, (r62 + 16) - 4);
                blockCipher.processBlock(bArr4, r62, bArr4, r62);
            }
            bArrPrf = bArr4;
        }
        return num(bArrPrf, 0, r72);
    }

    public static BigInteger calculateY_FF3(BlockCipher blockCipher, byte[] bArr, int r42, int r52, short[] sArr, RadixConverter radixConverter) throws IllegalStateException, DataLengthException {
        byte[] bArr2 = new byte[16];
        Pack.intToBigEndian(Pack.bigEndianToInt(bArr, r42) ^ r52, bArr2, 0);
        BigIntegers.asUnsignedByteArray(radixConverter.fromEncoding(sArr), bArr2, 4, 12);
        Arrays.reverseInPlace(bArr2);
        blockCipher.processBlock(bArr2, 0, bArr2, 0);
        Arrays.reverseInPlace(bArr2);
        return num(bArr2, 0, 16);
    }

    public static void checkArgs(BlockCipher blockCipher, boolean z10, int r22, byte[] bArr, int r42, int r52) {
        checkCipher(blockCipher);
        if (r22 < 2 || r22 > 256) {
            throw new IllegalArgumentException();
        }
        checkData(z10, r22, bArr, r42, r52);
    }

    public static void checkArgs(BlockCipher blockCipher, boolean z10, int r22, short[] sArr, int r42, int r52) {
        checkCipher(blockCipher);
        if (r22 < 2 || r22 > 65536) {
            throw new IllegalArgumentException();
        }
        checkData(z10, r22, sArr, r42, r52);
    }

    public static void checkCipher(BlockCipher blockCipher) {
        if (16 != blockCipher.getBlockSize()) {
            throw new IllegalArgumentException();
        }
    }

    public static void checkData(boolean z10, int r22, byte[] bArr, int r42, int r52) {
        checkLength(z10, r22, r52);
        for (int r12 = 0; r12 < r52; r12++) {
            if ((bArr[r42 + r12] & 255) >= r22) {
                throw new IllegalArgumentException("input data outside of radix");
            }
        }
    }

    public static void checkData(boolean z10, int r32, short[] sArr, int r52, int r6) {
        checkLength(z10, r32, r6);
        for (int r22 = 0; r22 < r6; r22++) {
            if ((sArr[r52 + r22] & HPKE.aead_EXPORT_ONLY) >= r32) {
                throw new IllegalArgumentException("input data outside of radix");
            }
        }
    }

    private static void checkLength(boolean z10, int r72, int r82) {
        int r6;
        if (r82 >= 2) {
            double d10 = r72;
            if (Math.pow(d10, r82) >= 1000000.0d) {
                if (!z10 && r82 > (r6 = ((int) Math.floor(Math.log(TWO_TO_96) / Math.log(d10))) * 2)) {
                    throw new IllegalArgumentException(a.d("maximum input length is ", r6));
                }
                return;
            }
        }
        throw new IllegalArgumentException("input too short");
    }

    public static short[] decFF1(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, int r21, int r22, int r23, short[] sArr, short[] sArr2) throws IllegalStateException, DataLengthException {
        int radix = radixConverter.getRadix();
        int length = bArr.length;
        int r11 = calculateB_FF1(radix, r23);
        int r12 = (r11 + 7) & (-4);
        byte[] bArrCalculateP_FF1 = calculateP_FF1(radix, (byte) r22, r21, length);
        BigInteger[] bigIntegerArrCalculateModUV = calculateModUV(BigInteger.valueOf(radix), r22, r23);
        short[] sArr3 = sArr;
        short[] sArr4 = sArr2;
        int r15 = r22;
        int r16 = 9;
        while (r16 >= 0) {
            short[] sArr5 = sArr4;
            int r17 = r11;
            short[] sArr6 = sArr3;
            r15 = r21 - r15;
            radixConverter.toEncoding(radixConverter.fromEncoding(sArr5).subtract(calculateY_FF1(blockCipher, bArr, r11, r12, r16, bArrCalculateP_FF1, sArr3, radixConverter)).mod(bigIntegerArrCalculateModUV[r16 & 1]), r15, sArr5);
            r16--;
            sArr3 = sArr5;
            sArr4 = sArr6;
            r11 = r17;
        }
        return Arrays.concatenate(sArr3, sArr4);
    }

    private static short[] decFF3_1(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, int r17, int r18, int r19, short[] sArr, short[] sArr2) throws IllegalStateException, DataLengthException {
        int r22 = r19;
        BigInteger[] bigIntegerArrCalculateModUV = calculateModUV(BigInteger.valueOf(radixConverter.getRadix()), r18, r22);
        Arrays.reverseInPlace(sArr);
        Arrays.reverseInPlace(sArr2);
        short[] sArr3 = sArr;
        short[] sArr4 = sArr2;
        int r10 = 7;
        while (r10 >= 0) {
            int r11 = r17 - r22;
            int r02 = r10 & 1;
            radixConverter.toEncoding(radixConverter.fromEncoding(sArr4).subtract(calculateY_FF3(blockCipher, bArr, 4 - (r02 * 4), r10, sArr3, radixConverter)).mod(bigIntegerArrCalculateModUV[1 - r02]), r11, sArr4);
            r10--;
            r22 = r11;
            short[] sArr5 = sArr4;
            sArr4 = sArr3;
            sArr3 = sArr5;
        }
        Arrays.reverseInPlace(sArr3);
        Arrays.reverseInPlace(sArr4);
        return Arrays.concatenate(sArr3, sArr4);
    }

    public static byte[] decryptFF1(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, byte[] bArr2, int r13, int r14) {
        checkArgs(blockCipher, true, radixConverter.getRadix(), bArr2, r13, r14);
        int r42 = r14 / 2;
        int r52 = r14 - r42;
        return toByte(decFF1(blockCipher, radixConverter, bArr, r14, r42, r52, toShort(bArr2, r13, r42), toShort(bArr2, r13 + r42, r52)));
    }

    public static short[] decryptFF1w(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, short[] sArr, int r14, int r15) {
        checkArgs(blockCipher, true, radixConverter.getRadix(), sArr, r14, r15);
        int r42 = r15 / 2;
        int r52 = r15 - r42;
        short[] sArr2 = new short[r42];
        short[] sArr3 = new short[r52];
        System.arraycopy(sArr, r14, sArr2, 0, r42);
        System.arraycopy(sArr, r14 + r42, sArr3, 0, r52);
        return decFF1(blockCipher, radixConverter, bArr, r15, r42, r52, sArr2, sArr3);
    }

    public static byte[] decryptFF3(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, byte[] bArr2, int r10, int r11) {
        checkArgs(blockCipher, false, radixConverter.getRadix(), bArr2, r10, r11);
        if (bArr.length == 8) {
            return implDecryptFF3(blockCipher, radixConverter, bArr, bArr2, r10, r11);
        }
        throw new IllegalArgumentException();
    }

    public static byte[] decryptFF3_1(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, byte[] bArr2, int r12, int r13) {
        checkArgs(blockCipher, false, radixConverter.getRadix(), bArr2, r12, r13);
        if (bArr.length == 7) {
            return implDecryptFF3(blockCipher, radixConverter, calculateTweak64_FF3_1(bArr), bArr2, r12, r13);
        }
        throw new IllegalArgumentException("tweak should be 56 bits");
    }

    public static short[] decryptFF3_1w(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, short[] sArr, int r12, int r13) {
        checkArgs(blockCipher, false, radixConverter.getRadix(), sArr, r12, r13);
        if (bArr.length == 7) {
            return implDecryptFF3w(blockCipher, radixConverter, calculateTweak64_FF3_1(bArr), sArr, r12, r13);
        }
        throw new IllegalArgumentException("tweak should be 56 bits");
    }

    private static short[] encFF1(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, int r20, int r21, int r22, short[] sArr, short[] sArr2) throws IllegalStateException, DataLengthException {
        int radix = radixConverter.getRadix();
        int length = bArr.length;
        int r11 = calculateB_FF1(radix, r22);
        int r12 = (r11 + 7) & (-4);
        byte[] bArrCalculateP_FF1 = calculateP_FF1(radix, (byte) r21, r20, length);
        BigInteger[] bigIntegerArrCalculateModUV = calculateModUV(BigInteger.valueOf(radix), r21, r22);
        short[] sArr3 = sArr;
        short[] sArr4 = sArr2;
        int r15 = r22;
        int r6 = 0;
        while (r6 < 10) {
            short[] sArr5 = sArr4;
            int r16 = r6;
            short[] sArr6 = sArr3;
            r15 = r20 - r15;
            radixConverter.toEncoding(radixConverter.fromEncoding(sArr6).add(calculateY_FF1(blockCipher, bArr, r11, r12, r6, bArrCalculateP_FF1, sArr5, radixConverter)).mod(bigIntegerArrCalculateModUV[r16 & 1]), r15, sArr6);
            r6 = r16 + 1;
            sArr3 = sArr5;
            sArr4 = sArr6;
        }
        return Arrays.concatenate(sArr3, sArr4);
    }

    private static short[] encFF3_1(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, int r17, int r18, int r19, short[] sArr, short[] sArr2) throws IllegalStateException, DataLengthException {
        int r12 = r18;
        BigInteger[] bigIntegerArrCalculateModUV = calculateModUV(BigInteger.valueOf(radixConverter.getRadix()), r12, r19);
        Arrays.reverseInPlace(sArr);
        Arrays.reverseInPlace(sArr2);
        short[] sArr3 = sArr;
        short[] sArr4 = sArr2;
        int r10 = 0;
        while (r10 < 8) {
            int r11 = r17 - r12;
            int r02 = r10 & 1;
            radixConverter.toEncoding(radixConverter.fromEncoding(sArr3).add(calculateY_FF3(blockCipher, bArr, 4 - (r02 * 4), r10, sArr4, radixConverter)).mod(bigIntegerArrCalculateModUV[1 - r02]), r11, sArr3);
            r10++;
            r12 = r11;
            short[] sArr5 = sArr4;
            sArr4 = sArr3;
            sArr3 = sArr5;
        }
        Arrays.reverseInPlace(sArr3);
        Arrays.reverseInPlace(sArr4);
        return Arrays.concatenate(sArr3, sArr4);
    }

    public static byte[] encryptFF1(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, byte[] bArr2, int r13, int r14) {
        checkArgs(blockCipher, true, radixConverter.getRadix(), bArr2, r13, r14);
        int r42 = r14 / 2;
        int r52 = r14 - r42;
        return toByte(encFF1(blockCipher, radixConverter, bArr, r14, r42, r52, toShort(bArr2, r13, r42), toShort(bArr2, r13 + r42, r52)));
    }

    public static short[] encryptFF1w(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, short[] sArr, int r14, int r15) {
        checkArgs(blockCipher, true, radixConverter.getRadix(), sArr, r14, r15);
        int r42 = r15 / 2;
        int r52 = r15 - r42;
        short[] sArr2 = new short[r42];
        short[] sArr3 = new short[r52];
        System.arraycopy(sArr, r14, sArr2, 0, r42);
        System.arraycopy(sArr, r14 + r42, sArr3, 0, r52);
        return encFF1(blockCipher, radixConverter, bArr, r15, r42, r52, sArr2, sArr3);
    }

    public static byte[] encryptFF3(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, byte[] bArr2, int r10, int r11) {
        checkArgs(blockCipher, false, radixConverter.getRadix(), bArr2, r10, r11);
        if (bArr.length == 8) {
            return implEncryptFF3(blockCipher, radixConverter, bArr, bArr2, r10, r11);
        }
        throw new IllegalArgumentException();
    }

    public static byte[] encryptFF3_1(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, byte[] bArr2, int r12, int r13) {
        checkArgs(blockCipher, false, radixConverter.getRadix(), bArr2, r12, r13);
        if (bArr.length == 7) {
            return encryptFF3(blockCipher, radixConverter, calculateTweak64_FF3_1(bArr), bArr2, r12, r13);
        }
        throw new IllegalArgumentException("tweak should be 56 bits");
    }

    public static short[] encryptFF3_1w(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, short[] sArr, int r12, int r13) {
        checkArgs(blockCipher, false, radixConverter.getRadix(), sArr, r12, r13);
        if (bArr.length == 7) {
            return encryptFF3w(blockCipher, radixConverter, calculateTweak64_FF3_1(bArr), sArr, r12, r13);
        }
        throw new IllegalArgumentException("tweak should be 56 bits");
    }

    public static short[] encryptFF3w(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, short[] sArr, int r10, int r11) {
        checkArgs(blockCipher, false, radixConverter.getRadix(), sArr, r10, r11);
        if (bArr.length == 8) {
            return implEncryptFF3w(blockCipher, radixConverter, bArr, sArr, r10, r11);
        }
        throw new IllegalArgumentException();
    }

    public static byte[] implDecryptFF3(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, byte[] bArr2, int r12, int r13) {
        int r42 = r13 / 2;
        int r52 = r13 - r42;
        return toByte(decFF3_1(blockCipher, radixConverter, bArr, r13, r42, r52, toShort(bArr2, r12, r52), toShort(bArr2, r12 + r52, r42)));
    }

    public static short[] implDecryptFF3w(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, short[] sArr, int r12, int r13) {
        int r42 = r13 / 2;
        int r52 = r13 - r42;
        short[] sArr2 = new short[r52];
        short[] sArr3 = new short[r42];
        System.arraycopy(sArr, r12, sArr2, 0, r52);
        System.arraycopy(sArr, r12 + r52, sArr3, 0, r42);
        return decFF3_1(blockCipher, radixConverter, bArr, r13, r42, r52, sArr2, sArr3);
    }

    public static byte[] implEncryptFF3(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, byte[] bArr2, int r12, int r13) {
        int r42 = r13 / 2;
        int r52 = r13 - r42;
        return toByte(encFF3_1(blockCipher, radixConverter, bArr, r13, r42, r52, toShort(bArr2, r12, r52), toShort(bArr2, r12 + r52, r42)));
    }

    public static short[] implEncryptFF3w(BlockCipher blockCipher, RadixConverter radixConverter, byte[] bArr, short[] sArr, int r12, int r13) {
        int r42 = r13 / 2;
        int r52 = r13 - r42;
        short[] sArr2 = new short[r52];
        short[] sArr3 = new short[r42];
        System.arraycopy(sArr, r12, sArr2, 0, r52);
        System.arraycopy(sArr, r12 + r52, sArr3, 0, r42);
        return encFF3_1(blockCipher, radixConverter, bArr, r13, r42, r52, sArr2, sArr3);
    }

    public static BigInteger num(byte[] bArr, int r22, int r32) {
        return new BigInteger(1, Arrays.copyOfRange(bArr, r22, r32 + r22));
    }

    public static byte[] prf(BlockCipher blockCipher, byte[] bArr) throws IllegalStateException, DataLengthException {
        if (bArr.length % 16 != 0) {
            throw new IllegalArgumentException();
        }
        int length = bArr.length / 16;
        byte[] bArr2 = new byte[16];
        for (int r42 = 0; r42 < length; r42++) {
            Bytes.xorTo(16, bArr, r42 * 16, bArr2, 0);
            blockCipher.processBlock(bArr2, 0, bArr2, 0);
        }
        return bArr2;
    }

    private static byte[] toByte(short[] sArr) {
        int length = sArr.length;
        byte[] bArr = new byte[length];
        for (int r22 = 0; r22 != length; r22++) {
            bArr[r22] = (byte) sArr[r22];
        }
        return bArr;
    }

    private static short[] toShort(byte[] bArr, int r42, int r52) {
        short[] sArr = new short[r52];
        for (int r12 = 0; r12 != r52; r12++) {
            sArr[r12] = (short) (bArr[r42 + r12] & 255);
        }
        return sArr;
    }
}
