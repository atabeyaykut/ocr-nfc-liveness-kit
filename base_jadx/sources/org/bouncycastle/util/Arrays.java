package org.bouncycastle.util;

import java.math.BigInteger;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class Arrays {

    public static class Iterator<T> implements java.util.Iterator<T> {
        private final T[] dataArray;
        private int position = 0;

        public Iterator(T[] tArr) {
            this.dataArray = tArr;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.position < this.dataArray.length;
        }

        @Override // java.util.Iterator
        public T next() {
            int r02 = this.position;
            T[] tArr = this.dataArray;
            if (r02 != tArr.length) {
                this.position = r02 + 1;
                return tArr[r02];
            }
            throw new NoSuchElementException("Out of elements: " + this.position);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Cannot remove element from an Array.");
        }
    }

    private Arrays() {
    }

    public static byte[] append(byte[] bArr, byte b10) {
        if (bArr == null) {
            return new byte[]{b10};
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length + 1];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        bArr2[length] = b10;
        return bArr2;
    }

    public static int[] append(int[] r32, int r42) {
        if (r32 == null) {
            return new int[]{r42};
        }
        int length = r32.length;
        int[] r22 = new int[length + 1];
        System.arraycopy(r32, 0, r22, 0, length);
        r22[length] = r42;
        return r22;
    }

    public static String[] append(String[] strArr, String str) {
        if (strArr == null) {
            return new String[]{str};
        }
        int length = strArr.length;
        String[] strArr2 = new String[length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, length);
        strArr2[length] = str;
        return strArr2;
    }

    public static short[] append(short[] sArr, short s7) {
        if (sArr == null) {
            return new short[]{s7};
        }
        int length = sArr.length;
        short[] sArr2 = new short[length + 1];
        System.arraycopy(sArr, 0, sArr2, 0, length);
        sArr2[length] = s7;
        return sArr2;
    }

    public static boolean areAllZeroes(byte[] bArr, int r52, int r6) {
        int r22 = 0;
        for (int r12 = 0; r12 < r6; r12++) {
            r22 |= bArr[r52 + r12];
        }
        return r22 == 0;
    }

    public static boolean areEqual(byte[] bArr, int r42, int r52, byte[] bArr2, int r72, int r82) {
        int r53 = r52 - r42;
        if (r53 != r82 - r72) {
            return false;
        }
        for (int r83 = 0; r83 < r53; r83++) {
            if (bArr[r42 + r83] != bArr2[r72 + r83]) {
                return false;
            }
        }
        return true;
    }

    public static boolean areEqual(byte[] bArr, byte[] bArr2) {
        return java.util.Arrays.equals(bArr, bArr2);
    }

    public static boolean areEqual(char[] cArr, char[] cArr2) {
        return java.util.Arrays.equals(cArr, cArr2);
    }

    public static boolean areEqual(int[] r02, int[] r12) {
        return java.util.Arrays.equals(r02, r12);
    }

    public static boolean areEqual(long[] jArr, long[] jArr2) {
        return java.util.Arrays.equals(jArr, jArr2);
    }

    public static boolean areEqual(Object[] objArr, Object[] objArr2) {
        return java.util.Arrays.equals(objArr, objArr2);
    }

    public static boolean areEqual(short[] sArr, short[] sArr2) {
        return java.util.Arrays.equals(sArr, sArr2);
    }

    public static boolean areEqual(boolean[] zArr, boolean[] zArr2) {
        return java.util.Arrays.equals(zArr, zArr2);
    }

    public static void clear(byte[] bArr) {
        if (bArr != null) {
            java.util.Arrays.fill(bArr, (byte) 0);
        }
    }

    public static void clear(int[] r12) {
        if (r12 != null) {
            java.util.Arrays.fill(r12, 0);
        }
    }

    public static byte[] clone(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return (byte[]) bArr.clone();
    }

    public static byte[] clone(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return null;
        }
        if (bArr2 == null || bArr2.length != bArr.length) {
            return clone(bArr);
        }
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        return bArr2;
    }

    public static char[] clone(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return (char[]) cArr.clone();
    }

    public static int[] clone(int[] r02) {
        if (r02 == null) {
            return null;
        }
        return (int[]) r02.clone();
    }

    public static long[] clone(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        return (long[]) jArr.clone();
    }

    public static long[] clone(long[] jArr, long[] jArr2) {
        if (jArr == null) {
            return null;
        }
        if (jArr2 == null || jArr2.length != jArr.length) {
            return clone(jArr);
        }
        System.arraycopy(jArr, 0, jArr2, 0, jArr2.length);
        return jArr2;
    }

    public static BigInteger[] clone(BigInteger[] bigIntegerArr) {
        if (bigIntegerArr == null) {
            return null;
        }
        return (BigInteger[]) bigIntegerArr.clone();
    }

    public static short[] clone(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        return (short[]) sArr.clone();
    }

    public static boolean[] clone(boolean[] zArr) {
        if (zArr == null) {
            return null;
        }
        return (boolean[]) zArr.clone();
    }

    public static byte[][] clone(byte[][] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[][] bArr2 = new byte[length][];
        for (int r22 = 0; r22 != length; r22++) {
            bArr2[r22] = clone(bArr[r22]);
        }
        return bArr2;
    }

    public static byte[][][] clone(byte[][][] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[][][] bArr2 = new byte[length][][];
        for (int r22 = 0; r22 != length; r22++) {
            bArr2[r22] = clone(bArr[r22]);
        }
        return bArr2;
    }

    public static int compareUnsigned(byte[] bArr, byte[] bArr2) {
        if (bArr == bArr2) {
            return 0;
        }
        if (bArr == null) {
            return -1;
        }
        if (bArr2 == null) {
            return 1;
        }
        int r32 = Math.min(bArr.length, bArr2.length);
        for (int r42 = 0; r42 < r32; r42++) {
            int r52 = bArr[r42] & 255;
            int r6 = bArr2[r42] & 255;
            if (r52 < r6) {
                return -1;
            }
            if (r52 > r6) {
                return 1;
            }
        }
        if (bArr.length < bArr2.length) {
            return -1;
        }
        return bArr.length > bArr2.length ? 1 : 0;
    }

    public static byte[] concatenate(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return clone(bArr2);
        }
        if (bArr2 == null) {
            return clone(bArr);
        }
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static byte[] concatenate(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr == null) {
            return concatenate(bArr2, bArr3);
        }
        if (bArr2 == null) {
            return concatenate(bArr, bArr3);
        }
        if (bArr3 == null) {
            return concatenate(bArr, bArr2);
        }
        byte[] bArr4 = new byte[bArr.length + bArr2.length + bArr3.length];
        System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
        int length = bArr.length + 0;
        System.arraycopy(bArr2, 0, bArr4, length, bArr2.length);
        System.arraycopy(bArr3, 0, bArr4, length + bArr2.length, bArr3.length);
        return bArr4;
    }

    public static byte[] concatenate(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        if (bArr == null) {
            return concatenate(bArr2, bArr3, bArr4);
        }
        if (bArr2 == null) {
            return concatenate(bArr, bArr3, bArr4);
        }
        if (bArr3 == null) {
            return concatenate(bArr, bArr2, bArr4);
        }
        if (bArr4 == null) {
            return concatenate(bArr, bArr2, bArr3);
        }
        byte[] bArr5 = new byte[bArr.length + bArr2.length + bArr3.length + bArr4.length];
        System.arraycopy(bArr, 0, bArr5, 0, bArr.length);
        int length = bArr.length + 0;
        System.arraycopy(bArr2, 0, bArr5, length, bArr2.length);
        int length2 = length + bArr2.length;
        System.arraycopy(bArr3, 0, bArr5, length2, bArr3.length);
        System.arraycopy(bArr4, 0, bArr5, length2 + bArr3.length, bArr4.length);
        return bArr5;
    }

    public static byte[] concatenate(byte[][] bArr) {
        int length = 0;
        for (int r12 = 0; r12 != bArr.length; r12++) {
            length += bArr[r12].length;
        }
        byte[] bArr2 = new byte[length];
        int length2 = 0;
        for (int r22 = 0; r22 != bArr.length; r22++) {
            byte[] bArr3 = bArr[r22];
            System.arraycopy(bArr3, 0, bArr2, length2, bArr3.length);
            length2 += bArr[r22].length;
        }
        return bArr2;
    }

    public static int[] concatenate(int[] r32, int[] r42) {
        if (r32 == null) {
            return clone(r42);
        }
        if (r42 == null) {
            return clone(r32);
        }
        int[] r02 = new int[r32.length + r42.length];
        System.arraycopy(r32, 0, r02, 0, r32.length);
        System.arraycopy(r42, 0, r02, r32.length, r42.length);
        return r02;
    }

    public static short[] concatenate(short[] sArr, short[] sArr2) {
        if (sArr == null) {
            return clone(sArr2);
        }
        if (sArr2 == null) {
            return clone(sArr);
        }
        short[] sArr3 = new short[sArr.length + sArr2.length];
        System.arraycopy(sArr, 0, sArr3, 0, sArr.length);
        System.arraycopy(sArr2, 0, sArr3, sArr.length, sArr2.length);
        return sArr3;
    }

    public static boolean constantTimeAreEqual(int r52, byte[] bArr, int r72, byte[] bArr2, int r92) {
        if (bArr == null) {
            throw new NullPointerException("'a' cannot be null");
        }
        if (bArr2 == null) {
            throw new NullPointerException("'b' cannot be null");
        }
        if (r52 < 0) {
            throw new IllegalArgumentException("'len' cannot be negative");
        }
        if (r72 > bArr.length - r52) {
            throw new IndexOutOfBoundsException("'aOff' value invalid for specified length");
        }
        if (r92 > bArr2.length - r52) {
            throw new IndexOutOfBoundsException("'bOff' value invalid for specified length");
        }
        int r22 = 0;
        for (int r12 = 0; r12 < r52; r12++) {
            r22 |= bArr[r72 + r12] ^ bArr2[r92 + r12];
        }
        return r22 == 0;
    }

    public static boolean constantTimeAreEqual(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null) {
            return false;
        }
        if (bArr == bArr2) {
            return true;
        }
        int length = bArr.length < bArr2.length ? bArr.length : bArr2.length;
        int length2 = bArr.length ^ bArr2.length;
        for (int r42 = 0; r42 != length; r42++) {
            length2 |= bArr[r42] ^ bArr2[r42];
        }
        while (length < bArr2.length) {
            byte b10 = bArr2[length];
            length2 |= b10 ^ (~b10);
            length++;
        }
        return length2 == 0;
    }

    public static boolean constantTimeAreEqual(char[] cArr, char[] cArr2) {
        if (cArr == null || cArr2 == null) {
            return false;
        }
        if (cArr == cArr2) {
            return true;
        }
        int r22 = Math.min(cArr.length, cArr2.length);
        int length = cArr.length ^ cArr2.length;
        for (int r42 = 0; r42 != r22; r42++) {
            length |= cArr[r42] ^ cArr2[r42];
        }
        while (r22 < cArr2.length) {
            char c10 = cArr2[r22];
            length |= ((byte) (~c10)) ^ ((byte) c10);
            r22++;
        }
        return length == 0;
    }

    public static boolean contains(byte[] bArr, byte b10) {
        for (byte b11 : bArr) {
            if (b11 == b10) {
                return true;
            }
        }
        return false;
    }

    public static boolean contains(char[] cArr, char c10) {
        for (char c11 : cArr) {
            if (c11 == c10) {
                return true;
            }
        }
        return false;
    }

    public static boolean contains(int[] r32, int r42) {
        for (int r02 : r32) {
            if (r02 == r42) {
                return true;
            }
        }
        return false;
    }

    public static boolean contains(long[] jArr, long j10) {
        for (long j11 : jArr) {
            if (j11 == j10) {
                return true;
            }
        }
        return false;
    }

    public static boolean contains(short[] sArr, short s7) {
        for (short s10 : sArr) {
            if (s10 == s7) {
                return true;
            }
        }
        return false;
    }

    public static boolean contains(boolean[] zArr, boolean z10) {
        for (boolean z11 : zArr) {
            if (z11 == z10) {
                return true;
            }
        }
        return false;
    }

    public static byte[] copyOf(byte[] bArr, int r32) {
        byte[] bArr2 = new byte[r32];
        System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, r32));
        return bArr2;
    }

    public static char[] copyOf(char[] cArr, int r32) {
        char[] cArr2 = new char[r32];
        System.arraycopy(cArr, 0, cArr2, 0, Math.min(cArr.length, r32));
        return cArr2;
    }

    public static int[] copyOf(int[] r22, int r32) {
        int[] r02 = new int[r32];
        System.arraycopy(r22, 0, r02, 0, Math.min(r22.length, r32));
        return r02;
    }

    public static long[] copyOf(long[] jArr, int r32) {
        long[] jArr2 = new long[r32];
        System.arraycopy(jArr, 0, jArr2, 0, Math.min(jArr.length, r32));
        return jArr2;
    }

    public static BigInteger[] copyOf(BigInteger[] bigIntegerArr, int r32) {
        BigInteger[] bigIntegerArr2 = new BigInteger[r32];
        System.arraycopy(bigIntegerArr, 0, bigIntegerArr2, 0, Math.min(bigIntegerArr.length, r32));
        return bigIntegerArr2;
    }

    public static short[] copyOf(short[] sArr, int r32) {
        short[] sArr2 = new short[r32];
        System.arraycopy(sArr, 0, sArr2, 0, Math.min(sArr.length, r32));
        return sArr2;
    }

    public static boolean[] copyOf(boolean[] zArr, int r32) {
        boolean[] zArr2 = new boolean[r32];
        System.arraycopy(zArr, 0, zArr2, 0, Math.min(zArr.length, r32));
        return zArr2;
    }

    public static byte[] copyOfRange(byte[] bArr, int r32, int r42) {
        int length = getLength(r32, r42);
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, r32, bArr2, 0, Math.min(bArr.length - r32, length));
        return bArr2;
    }

    public static char[] copyOfRange(char[] cArr, int r32, int r42) {
        int length = getLength(r32, r42);
        char[] cArr2 = new char[length];
        System.arraycopy(cArr, r32, cArr2, 0, Math.min(cArr.length - r32, length));
        return cArr2;
    }

    public static int[] copyOfRange(int[] r22, int r32, int r42) {
        int length = getLength(r32, r42);
        int[] r02 = new int[length];
        System.arraycopy(r22, r32, r02, 0, Math.min(r22.length - r32, length));
        return r02;
    }

    public static long[] copyOfRange(long[] jArr, int r32, int r42) {
        int length = getLength(r32, r42);
        long[] jArr2 = new long[length];
        System.arraycopy(jArr, r32, jArr2, 0, Math.min(jArr.length - r32, length));
        return jArr2;
    }

    public static BigInteger[] copyOfRange(BigInteger[] bigIntegerArr, int r32, int r42) {
        int length = getLength(r32, r42);
        BigInteger[] bigIntegerArr2 = new BigInteger[length];
        System.arraycopy(bigIntegerArr, r32, bigIntegerArr2, 0, Math.min(bigIntegerArr.length - r32, length));
        return bigIntegerArr2;
    }

    public static short[] copyOfRange(short[] sArr, int r32, int r42) {
        int length = getLength(r32, r42);
        short[] sArr2 = new short[length];
        System.arraycopy(sArr, r32, sArr2, 0, Math.min(sArr.length - r32, length));
        return sArr2;
    }

    public static boolean[] copyOfRange(boolean[] zArr, int r32, int r42) {
        int length = getLength(r32, r42);
        boolean[] zArr2 = new boolean[length];
        System.arraycopy(zArr, r32, zArr2, 0, Math.min(zArr.length - r32, length));
        return zArr2;
    }

    public static void fill(byte[] bArr, byte b10) {
        java.util.Arrays.fill(bArr, b10);
    }

    public static void fill(byte[] bArr, int r12, int r22, byte b10) {
        java.util.Arrays.fill(bArr, r12, r22, b10);
    }

    public static void fill(char[] cArr, char c10) {
        java.util.Arrays.fill(cArr, c10);
    }

    public static void fill(char[] cArr, int r12, int r22, char c10) {
        java.util.Arrays.fill(cArr, r12, r22, c10);
    }

    public static void fill(int[] r02, int r12) {
        java.util.Arrays.fill(r02, r12);
    }

    public static void fill(int[] r02, int r12, int r22, int r32) {
        java.util.Arrays.fill(r02, r12, r22, r32);
    }

    public static void fill(long[] jArr, int r12, int r22, long j10) {
        java.util.Arrays.fill(jArr, r12, r22, j10);
    }

    public static void fill(long[] jArr, long j10) {
        java.util.Arrays.fill(jArr, j10);
    }

    public static void fill(Object[] objArr, int r12, int r22, Object obj) {
        java.util.Arrays.fill(objArr, r12, r22, obj);
    }

    public static void fill(Object[] objArr, Object obj) {
        java.util.Arrays.fill(objArr, obj);
    }

    public static void fill(short[] sArr, int r12, int r22, short s7) {
        java.util.Arrays.fill(sArr, r12, r22, s7);
    }

    public static void fill(short[] sArr, short s7) {
        java.util.Arrays.fill(sArr, s7);
    }

    public static void fill(boolean[] zArr, int r12, int r22, boolean z10) {
        java.util.Arrays.fill(zArr, r12, r22, z10);
    }

    public static void fill(boolean[] zArr, boolean z10) {
        java.util.Arrays.fill(zArr, z10);
    }

    private static int getLength(int r22, int r32) {
        int r02 = r32 - r22;
        if (r02 >= 0) {
            return r02;
        }
        throw new IllegalArgumentException(r22 + " > " + r32);
    }

    public static int hashCode(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        int length = bArr.length;
        int r12 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return r12;
            }
            r12 = (r12 * 257) ^ bArr[length];
        }
    }

    public static int hashCode(byte[] bArr, int r32, int r42) {
        if (bArr == null) {
            return 0;
        }
        int r02 = r42 + 1;
        while (true) {
            r42--;
            if (r42 < 0) {
                return r02;
            }
            r02 = (r02 * 257) ^ bArr[r32 + r42];
        }
    }

    public static int hashCode(char[] cArr) {
        if (cArr == null) {
            return 0;
        }
        int length = cArr.length;
        int r12 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return r12;
            }
            r12 = (r12 * 257) ^ cArr[length];
        }
    }

    public static int hashCode(int[] r32) {
        if (r32 == null) {
            return 0;
        }
        int length = r32.length;
        int r12 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return r12;
            }
            r12 = (r12 * 257) ^ r32[length];
        }
    }

    public static int hashCode(int[] r22, int r32, int r42) {
        if (r22 == null) {
            return 0;
        }
        int r02 = r42 + 1;
        while (true) {
            r42--;
            if (r42 < 0) {
                return r02;
            }
            r02 = (r02 * 257) ^ r22[r32 + r42];
        }
    }

    public static int hashCode(long[] jArr) {
        if (jArr == null) {
            return 0;
        }
        int length = jArr.length;
        int r12 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return r12;
            }
            long j10 = jArr[length];
            r12 = (((r12 * 257) ^ ((int) j10)) * 257) ^ ((int) (j10 >>> 32));
        }
    }

    public static int hashCode(long[] jArr, int r52, int r6) {
        if (jArr == null) {
            return 0;
        }
        int r02 = r6 + 1;
        while (true) {
            r6--;
            if (r6 < 0) {
                return r02;
            }
            long j10 = jArr[r52 + r6];
            r02 = (((r02 * 257) ^ ((int) j10)) * 257) ^ ((int) (j10 >>> 32));
        }
    }

    public static int hashCode(Object[] objArr) {
        if (objArr == null) {
            return 0;
        }
        int length = objArr.length;
        int r12 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return r12;
            }
            r12 = (r12 * 257) ^ Objects.hashCode(objArr[length]);
        }
    }

    public static int hashCode(short[] sArr) {
        if (sArr == null) {
            return 0;
        }
        int length = sArr.length;
        int r12 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return r12;
            }
            r12 = (r12 * 257) ^ (sArr[length] & 255);
        }
    }

    public static int hashCode(int[][] r32) {
        int r12 = 0;
        for (int r02 = 0; r02 != r32.length; r02++) {
            r12 = (r12 * 257) + hashCode(r32[r02]);
        }
        return r12;
    }

    public static int hashCode(short[][] sArr) {
        int r12 = 0;
        for (int r02 = 0; r02 != sArr.length; r02++) {
            r12 = (r12 * 257) + hashCode(sArr[r02]);
        }
        return r12;
    }

    public static int hashCode(short[][][] sArr) {
        int r12 = 0;
        for (int r02 = 0; r02 != sArr.length; r02++) {
            r12 = (r12 * 257) + hashCode(sArr[r02]);
        }
        return r12;
    }

    public static boolean isNullOrContainsNull(Object[] objArr) {
        if (objArr == null) {
            return true;
        }
        for (Object obj : objArr) {
            if (obj == null) {
                return true;
            }
        }
        return false;
    }

    public static boolean isNullOrEmpty(byte[] bArr) {
        return bArr == null || bArr.length < 1;
    }

    public static boolean isNullOrEmpty(int[] r12) {
        return r12 == null || r12.length < 1;
    }

    public static boolean isNullOrEmpty(Object[] objArr) {
        return objArr == null || objArr.length < 1;
    }

    public static byte[] prepend(byte[] bArr, byte b10) {
        if (bArr == null) {
            return new byte[]{b10};
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length + 1];
        System.arraycopy(bArr, 0, bArr2, 1, length);
        bArr2[0] = b10;
        return bArr2;
    }

    public static int[] prepend(int[] r42, int r52) {
        if (r42 == null) {
            return new int[]{r52};
        }
        int length = r42.length;
        int[] r32 = new int[length + 1];
        System.arraycopy(r42, 0, r32, 1, length);
        r32[0] = r52;
        return r32;
    }

    public static short[] prepend(short[] sArr, short s7) {
        if (sArr == null) {
            return new short[]{s7};
        }
        int length = sArr.length;
        short[] sArr2 = new short[length + 1];
        System.arraycopy(sArr, 0, sArr2, 1, length);
        sArr2[0] = s7;
        return sArr2;
    }

    public static void reverse(byte[] bArr, byte[] bArr2) {
        int length = bArr.length - 1;
        for (int r12 = 0; r12 <= length; r12++) {
            bArr2[r12] = bArr[length - r12];
        }
    }

    public static byte[] reverse(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        int r22 = 0;
        while (true) {
            length--;
            if (length < 0) {
                return bArr2;
            }
            bArr2[length] = bArr[r22];
            r22++;
        }
    }

    public static int[] reverse(int[] r42) {
        if (r42 == null) {
            return null;
        }
        int length = r42.length;
        int[] r12 = new int[length];
        int r22 = 0;
        while (true) {
            length--;
            if (length < 0) {
                return r12;
            }
            r12[length] = r42[r22];
            r22++;
        }
    }

    public static void reverseInPlace(byte[] bArr, int r42, int r52) {
        int r53 = (r52 + r42) - 1;
        while (r42 < r53) {
            byte b10 = bArr[r42];
            bArr[r42] = bArr[r53];
            bArr[r53] = b10;
            r53--;
            r42++;
        }
    }

    public static byte[] reverseInPlace(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length - 1;
        for (int r12 = 0; r12 < length; r12++) {
            byte b10 = bArr[r12];
            bArr[r12] = bArr[length];
            bArr[length] = b10;
            length--;
        }
        return bArr;
    }

    public static int[] reverseInPlace(int[] r52) {
        if (r52 == null) {
            return null;
        }
        int length = r52.length - 1;
        for (int r12 = 0; r12 < length; r12++) {
            int r22 = r52[r12];
            r52[r12] = r52[length];
            r52[length] = r22;
            length--;
        }
        return r52;
    }

    public static short[] reverseInPlace(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        int length = sArr.length - 1;
        for (int r12 = 0; r12 < length; r12++) {
            short s7 = sArr[r12];
            sArr[r12] = sArr[length];
            sArr[length] = s7;
            length--;
        }
        return sArr;
    }
}
