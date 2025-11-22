package org.bouncycastle.pqc.legacy.crypto.gmss.util;

/* loaded from: classes2.dex */
public class GMSSUtil {
    public int bytesToIntLittleEndian(byte[] bArr) {
        return ((bArr[3] & 255) << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
    }

    public int bytesToIntLittleEndian(byte[] bArr, int r42) {
        int r02 = r42 + 1;
        int r12 = r02 + 1;
        int r43 = (bArr[r42] & 255) | ((bArr[r02] & 255) << 8);
        int r03 = r12 + 1;
        return ((bArr[r03] & 255) << 24) | r43 | ((bArr[r12] & 255) << 16);
    }

    public byte[] concatenateArray(byte[][] bArr) {
        byte[] bArr2 = new byte[bArr.length * bArr[0].length];
        int length = 0;
        for (int r22 = 0; r22 < bArr.length; r22++) {
            byte[] bArr3 = bArr[r22];
            System.arraycopy(bArr3, 0, bArr2, length, bArr3.length);
            length += bArr[r22].length;
        }
        return bArr2;
    }

    public int getLog(int r32) {
        int r02 = 1;
        int r12 = 2;
        while (r12 < r32) {
            r12 <<= 1;
            r02++;
        }
        return r02;
    }

    public byte[] intToBytesLittleEndian(int r42) {
        return new byte[]{(byte) (r42 & 255), (byte) ((r42 >> 8) & 255), (byte) ((r42 >> 16) & 255), (byte) ((r42 >> 24) & 255)};
    }

    public void printArray(String str, byte[] bArr) {
        System.out.println(str);
        int r02 = 0;
        for (byte b10 : bArr) {
            System.out.println(r02 + "; " + ((int) b10));
            r02++;
        }
    }

    public void printArray(String str, byte[][] bArr) {
        System.out.println(str);
        int r12 = 0;
        for (byte[] bArr2 : bArr) {
            for (int r22 = 0; r22 < bArr[0].length; r22++) {
                System.out.println(r12 + "; " + ((int) bArr2[r22]));
                r12++;
            }
        }
    }

    public boolean testPowerOfTwo(int r32) {
        int r12 = 1;
        while (r12 < r32) {
            r12 <<= 1;
        }
        return r32 == r12;
    }
}
