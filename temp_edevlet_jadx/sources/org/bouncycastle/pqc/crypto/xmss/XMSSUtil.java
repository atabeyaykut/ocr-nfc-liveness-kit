package org.bouncycastle.pqc.crypto.xmss;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidClassException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class XMSSUtil {

    public static class CheckingStream extends ObjectInputStream {
        private static final Set components;
        private boolean found;
        private final Class mainClass;

        static {
            HashSet hashSet = new HashSet();
            components = hashSet;
            hashSet.add("java.util.TreeMap");
            hashSet.add("java.lang.Integer");
            hashSet.add("java.lang.Number");
            hashSet.add("org.bouncycastle.pqc.crypto.xmss.BDS");
            hashSet.add("java.util.ArrayList");
            hashSet.add("org.bouncycastle.pqc.crypto.xmss.XMSSNode");
            hashSet.add("[B");
            hashSet.add("java.util.LinkedList");
            hashSet.add("java.util.Stack");
            hashSet.add("java.util.Vector");
            hashSet.add("[Ljava.lang.Object;");
            hashSet.add("org.bouncycastle.pqc.crypto.xmss.BDSTreeHash");
        }

        public CheckingStream(Class cls, InputStream inputStream) throws IOException {
            super(inputStream);
            this.found = false;
            this.mainClass = cls;
        }

        @Override // java.io.ObjectInputStream
        public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
            if (this.found) {
                if (!components.contains(objectStreamClass.getName())) {
                    throw new InvalidClassException("unexpected class: ", objectStreamClass.getName());
                }
            } else {
                if (!objectStreamClass.getName().equals(this.mainClass.getName())) {
                    throw new InvalidClassException("unexpected class: ", objectStreamClass.getName());
                }
                this.found = true;
            }
            return super.resolveClass(objectStreamClass);
        }
    }

    public static boolean areEqual(byte[][] bArr, byte[][] bArr2) {
        if (hasNullPointer(bArr) || hasNullPointer(bArr2)) {
            throw new NullPointerException("a or b == null");
        }
        for (int r12 = 0; r12 < bArr.length; r12++) {
            if (!Arrays.areEqual(bArr[r12], bArr2[r12])) {
                return false;
            }
        }
        return true;
    }

    public static long bytesToXBigEndian(byte[] bArr, int r6, int r72) {
        if (bArr == null) {
            throw new NullPointerException("in == null");
        }
        long j10 = 0;
        for (int r22 = r6; r22 < r6 + r72; r22++) {
            j10 = (j10 << 8) | (bArr[r22] & 255);
        }
        return j10;
    }

    public static int calculateTau(int r32, int r42) {
        for (int r12 = 0; r12 < r42; r12++) {
            if (((r32 >> r12) & 1) == 0) {
                return r12;
            }
        }
        return 0;
    }

    public static byte[] cloneArray(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("in == null");
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static byte[][] cloneArray(byte[][] bArr) {
        if (hasNullPointer(bArr)) {
            throw new NullPointerException("in has null pointers");
        }
        byte[][] bArr2 = new byte[bArr.length][];
        for (int r22 = 0; r22 < bArr.length; r22++) {
            byte[] bArr3 = new byte[bArr[r22].length];
            bArr2[r22] = bArr3;
            byte[] bArr4 = bArr[r22];
            System.arraycopy(bArr4, 0, bArr3, 0, bArr4.length);
        }
        return bArr2;
    }

    public static void copyBytesAtOffset(byte[] bArr, byte[] bArr2, int r52) {
        if (bArr == null) {
            throw new NullPointerException("dst == null");
        }
        if (bArr2 == null) {
            throw new NullPointerException("src == null");
        }
        if (r52 < 0) {
            throw new IllegalArgumentException("offset hast to be >= 0");
        }
        if (bArr2.length + r52 > bArr.length) {
            throw new IllegalArgumentException("src length + offset must not be greater than size of destination");
        }
        for (int r02 = 0; r02 < bArr2.length; r02++) {
            bArr[r52 + r02] = bArr2[r02];
        }
    }

    public static Object deserialize(byte[] bArr, Class cls) throws ClassNotFoundException, IOException {
        CheckingStream checkingStream = new CheckingStream(cls, new ByteArrayInputStream(bArr));
        Object object = checkingStream.readObject();
        if (checkingStream.available() != 0) {
            throw new IOException("unexpected data found at end of ObjectInputStream");
        }
        if (cls.isInstance(object)) {
            return object;
        }
        throw new IOException("unexpected class found in ObjectInputStream");
    }

    public static void dumpByteArray(byte[][] bArr) {
        if (hasNullPointer(bArr)) {
            throw new NullPointerException("x has null pointers");
        }
        for (byte[] bArr2 : bArr) {
            System.out.println(Hex.toHexString(bArr2));
        }
    }

    public static byte[] extractBytesAtOffset(byte[] bArr, int r42, int r52) {
        if (bArr == null) {
            throw new NullPointerException("src == null");
        }
        if (r42 < 0) {
            throw new IllegalArgumentException("offset hast to be >= 0");
        }
        if (r52 < 0) {
            throw new IllegalArgumentException("length hast to be >= 0");
        }
        if (r42 + r52 > bArr.length) {
            throw new IllegalArgumentException("offset + length must not be greater then size of source array");
        }
        byte[] bArr2 = new byte[r52];
        for (int r12 = 0; r12 < r52; r12++) {
            bArr2[r12] = bArr[r42 + r12];
        }
        return bArr2;
    }

    public static int getDigestSize(Digest digest) {
        if (digest == null) {
            throw new NullPointerException("digest == null");
        }
        String algorithmName = digest.getAlgorithmName();
        if (algorithmName.equals("SHAKE128")) {
            return 32;
        }
        if (algorithmName.equals("SHAKE256")) {
            return 64;
        }
        return digest.getDigestSize();
    }

    public static int getLeafIndex(long j10, int r6) {
        return (int) (j10 & ((1 << r6) - 1));
    }

    public static long getTreeIndex(long j10, int r22) {
        return j10 >> r22;
    }

    public static boolean hasNullPointer(byte[][] bArr) {
        if (bArr == null) {
            return true;
        }
        for (byte[] bArr2 : bArr) {
            if (bArr2 == null) {
                return true;
            }
        }
        return false;
    }

    public static boolean isIndexValid(int r32, long j10) {
        if (j10 >= 0) {
            return j10 < (1 << r32);
        }
        throw new IllegalStateException("index must not be negative");
    }

    public static boolean isNewAuthenticationPathNeeded(long j10, int r82, int r92) {
        return j10 != 0 && (j10 + 1) % ((long) Math.pow((double) (1 << r82), (double) r92)) == 0;
    }

    public static boolean isNewBDSInitNeeded(long j10, int r82, int r92) {
        return j10 != 0 && j10 % ((long) Math.pow((double) (1 << r82), (double) (r92 + 1))) == 0;
    }

    public static int log2(int r12) {
        int r02 = 0;
        while (true) {
            r12 >>= 1;
            if (r12 == 0) {
                return r02;
            }
            r02++;
        }
    }

    public static void longToBigEndian(long j10, byte[] bArr, int r92) {
        if (bArr == null) {
            throw new NullPointerException("in == null");
        }
        if (bArr.length - r92 < 8) {
            throw new IllegalArgumentException("not enough space in array");
        }
        bArr[r92] = (byte) ((j10 >> 56) & 255);
        bArr[r92 + 1] = (byte) ((j10 >> 48) & 255);
        bArr[r92 + 2] = (byte) ((j10 >> 40) & 255);
        bArr[r92 + 3] = (byte) ((j10 >> 32) & 255);
        bArr[r92 + 4] = (byte) ((j10 >> 24) & 255);
        bArr[r92 + 5] = (byte) ((j10 >> 16) & 255);
        bArr[r92 + 6] = (byte) ((j10 >> 8) & 255);
        bArr[r92 + 7] = (byte) (j10 & 255);
    }

    public static byte[] serialize(Object obj) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        objectOutputStream.writeObject(obj);
        objectOutputStream.flush();
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] toBytesBigEndian(long j10, int r42) {
        byte[] bArr = new byte[r42];
        for (int r43 = r42 - 1; r43 >= 0; r43--) {
            bArr[r43] = (byte) j10;
            j10 >>>= 8;
        }
        return bArr;
    }
}
