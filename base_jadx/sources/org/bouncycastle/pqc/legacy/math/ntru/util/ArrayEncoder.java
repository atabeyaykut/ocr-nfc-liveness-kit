package org.bouncycastle.pqc.legacy.math.ntru.util;

import androidx.camera.core.impl.a;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class ArrayEncoder {
    private static final int[] COEFF1_TABLE = {0, 0, 0, 1, 1, 1, -1, -1};
    private static final int[] COEFF2_TABLE = {0, 1, -1, 0, 1, -1, 0, 1};
    private static final int[] BIT1_TABLE = {1, 1, 1, 0, 0, 0, 1, 0, 1};
    private static final int[] BIT2_TABLE = {1, 1, 1, 1, 0, 0, 0, 1, 0};
    private static final int[] BIT3_TABLE = {1, 0, 1, 0, 0, 1, 1, 1, 0};

    public static int[] decodeMod3Sves(byte[] bArr, int r82) {
        int[] r02 = new int[r82];
        int r12 = 0;
        int r22 = 0;
        while (r12 < bArr.length * 8) {
            int r32 = r12 + 1;
            int r42 = r32 + 1;
            int r52 = r42 + 1;
            int r13 = a.d(getBit(bArr, r32), 2, getBit(bArr, r12) * 4, getBit(bArr, r42));
            int r33 = r22 + 1;
            r02[r22] = COEFF1_TABLE[r13];
            r22 = r33 + 1;
            r02[r33] = COEFF2_TABLE[r13];
            if (r22 > r82 - 2) {
                break;
            }
            r12 = r52;
        }
        return r02;
    }

    public static int[] decodeMod3Tight(InputStream inputStream, int r52) throws IOException {
        return decodeMod3Tight(Util.readFullLength(inputStream, (int) Math.ceil(((Math.log(3.0d) * r52) / Math.log(2.0d)) / 8.0d)), r52);
    }

    public static int[] decodeMod3Tight(byte[] bArr, int r72) {
        BigInteger bigInteger = new BigInteger(1, bArr);
        int[] r6 = new int[r72];
        for (int r22 = 0; r22 < r72; r22++) {
            int r52 = bigInteger.mod(BigInteger.valueOf(3L)).intValue() - 1;
            r6[r22] = r52;
            if (r52 > 1) {
                r6[r22] = r52 - 3;
            }
            bigInteger = bigInteger.divide(BigInteger.valueOf(3L));
        }
        return r6;
    }

    public static int[] decodeModQ(InputStream inputStream, int r22, int r32) throws IOException {
        return decodeModQ(Util.readFullLength(inputStream, (((31 - Integer.numberOfLeadingZeros(r32)) * r22) + 7) / 8), r22, r32);
    }

    public static int[] decodeModQ(byte[] bArr, int r72, int r82) {
        int[] r02 = new int[r72];
        int r83 = 31 - Integer.numberOfLeadingZeros(r82);
        int r73 = r72 * r83;
        int r22 = 0;
        for (int r12 = 0; r12 < r73; r12++) {
            if (r12 > 0 && r12 % r83 == 0) {
                r22++;
            }
            r02[r22] = r02[r22] + (getBit(bArr, r12) << (r12 % r83));
        }
        return r02;
    }

    public static byte[] encodeMod3Sves(int[] r13) {
        byte[] bArr = new byte[((((r13.length * 3) + 1) / 2) + 7) / 8];
        int r6 = 0;
        int r72 = 0;
        int r82 = 0;
        while (r6 < (r13.length / 2) * 2) {
            int r92 = r6 + 1;
            int r62 = r13[r6] + 1;
            int r10 = r92 + 1;
            int r93 = r13[r92] + 1;
            if (r62 == 0 && r93 == 0) {
                throw new IllegalStateException("Illegal encoding!");
            }
            int r63 = (r62 * 3) + r93;
            int[] r94 = {BIT1_TABLE[r63], BIT2_TABLE[r63], BIT3_TABLE[r63]};
            for (int r64 = 0; r64 < 3; r64++) {
                bArr[r82] = (byte) (bArr[r82] | (r94[r64] << r72));
                if (r72 == 7) {
                    r82++;
                    r72 = 0;
                } else {
                    r72++;
                }
            }
            r6 = r10;
        }
        return bArr;
    }

    public static byte[] encodeMod3Tight(int[] r52) {
        BigInteger bigIntegerAdd = BigInteger.ZERO;
        for (int length = r52.length - 1; length >= 0; length--) {
            bigIntegerAdd = bigIntegerAdd.multiply(BigInteger.valueOf(3L)).add(BigInteger.valueOf(r52[length] + 1));
        }
        int r53 = (BigInteger.valueOf(3L).pow(r52.length).bitLength() + 7) / 8;
        byte[] byteArray = bigIntegerAdd.toByteArray();
        if (byteArray.length >= r53) {
            return byteArray.length > r53 ? Arrays.copyOfRange(byteArray, 1, byteArray.length) : byteArray;
        }
        byte[] bArr = new byte[r53];
        System.arraycopy(byteArray, 0, bArr, r53 - byteArray.length, byteArray.length);
        return bArr;
    }

    public static byte[] encodeModQ(int[] r92, int r10) {
        int r102 = 31 - Integer.numberOfLeadingZeros(r10);
        byte[] bArr = new byte[((r92.length * r102) + 7) / 8];
        int r42 = 0;
        int r52 = 0;
        for (int r02 : r92) {
            for (int r6 = 0; r6 < r102; r6++) {
                bArr[r52] = (byte) ((((r02 >> r6) & 1) << r42) | bArr[r52]);
                if (r42 == 7) {
                    r52++;
                    r42 = 0;
                } else {
                    r42++;
                }
            }
        }
        return bArr;
    }

    private static int getBit(byte[] bArr, int r22) {
        return ((bArr[r22 / 8] & 255) >> (r22 % 8)) & 1;
    }
}
