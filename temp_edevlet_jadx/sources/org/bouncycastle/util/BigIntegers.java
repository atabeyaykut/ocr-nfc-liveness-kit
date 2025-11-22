package org.bouncycastle.util;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Map;
import java.util.WeakHashMap;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;

/* loaded from: classes2.dex */
public final class BigIntegers {
    private static final int MAX_ITERATIONS = 1000;
    public static final BigInteger ZERO = BigInteger.valueOf(0);
    public static final BigInteger ONE = BigInteger.valueOf(1);
    public static final BigInteger TWO = BigInteger.valueOf(2);
    private static final BigInteger THREE = BigInteger.valueOf(3);
    private static final BigInteger SMALL_PRIMES_PRODUCT = new BigInteger("8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f", 16);
    private static final int MAX_SMALL = BigInteger.valueOf(743).bitLength();

    public static class Cache {
        private final Map<BigInteger, Boolean> values = new WeakHashMap();
        private final BigInteger[] preserve = new BigInteger[8];
        private int preserveCounter = 0;

        public synchronized void add(BigInteger bigInteger) {
            this.values.put(bigInteger, Boolean.TRUE);
            BigInteger[] bigIntegerArr = this.preserve;
            int r12 = this.preserveCounter;
            bigIntegerArr[r12] = bigInteger;
            this.preserveCounter = (r12 + 1) % bigIntegerArr.length;
        }

        public synchronized void clear() {
            this.values.clear();
            int r02 = 0;
            while (true) {
                BigInteger[] bigIntegerArr = this.preserve;
                if (r02 != bigIntegerArr.length) {
                    bigIntegerArr[r02] = null;
                    r02++;
                }
            }
        }

        public synchronized boolean contains(BigInteger bigInteger) {
            return this.values.containsKey(bigInteger);
        }

        public synchronized int size() {
            return this.values.size();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void asUnsignedByteArray(java.math.BigInteger r3, byte[] r4, int r5, int r6) {
        /*
            byte[] r3 = r3.toByteArray()
            int r0 = r3.length
            r1 = 0
            if (r0 != r6) goto Lc
            java.lang.System.arraycopy(r3, r1, r4, r5, r6)
            return
        Lc:
            r0 = r3[r1]
            if (r0 != 0) goto L15
            int r0 = r3.length
            r2 = 1
            if (r0 == r2) goto L15
            goto L16
        L15:
            r2 = 0
        L16:
            int r0 = r3.length
            int r0 = r0 - r2
            if (r0 > r6) goto L23
            int r6 = r6 - r0
            int r6 = r6 + r5
            org.bouncycastle.util.Arrays.fill(r4, r5, r6, r1)
            java.lang.System.arraycopy(r3, r2, r4, r6, r0)
            return
        L23:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r4 = "standard length exceeded for value"
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.util.BigIntegers.asUnsignedByteArray(java.math.BigInteger, byte[], int, int):void");
    }

    public static byte[] asUnsignedByteArray(int r32, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == r32) {
            return byteArray;
        }
        int r02 = 0;
        if (byteArray[0] == 0 && byteArray.length != 1) {
            r02 = 1;
        }
        int length = byteArray.length - r02;
        if (length > r32) {
            throw new IllegalArgumentException("standard length exceeded for value");
        }
        byte[] bArr = new byte[r32];
        System.arraycopy(byteArray, r02, bArr, r32 - length, length);
        return bArr;
    }

    public static byte[] asUnsignedByteArray(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] != 0 || byteArray.length == 1) {
            return byteArray;
        }
        int length = byteArray.length - 1;
        byte[] bArr = new byte[length];
        System.arraycopy(byteArray, 1, bArr, 0, length);
        return bArr;
    }

    public static byte byteValueExact(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 7) {
            return bigInteger.byteValue();
        }
        throw new ArithmeticException("BigInteger out of int range");
    }

    private static byte[] createRandom(int r32, SecureRandom secureRandom) throws IllegalArgumentException {
        if (r32 < 1) {
            throw new IllegalArgumentException("bitLength must be at least 1");
        }
        int r02 = (r32 + 7) / 8;
        byte[] bArr = new byte[r02];
        secureRandom.nextBytes(bArr);
        bArr[0] = (byte) (bArr[0] & ((byte) (255 >>> ((r02 * 8) - r32))));
        return bArr;
    }

    public static BigInteger createRandomBigInteger(int r22, SecureRandom secureRandom) {
        return new BigInteger(1, createRandom(r22, secureRandom));
    }

    public static BigInteger createRandomInRange(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        BigInteger bigIntegerCreateRandomBigInteger;
        int r02 = bigInteger.compareTo(bigInteger2);
        if (r02 >= 0) {
            if (r02 <= 0) {
                return bigInteger;
            }
            throw new IllegalArgumentException("'min' may not be greater than 'max'");
        }
        if (bigInteger.bitLength() > bigInteger2.bitLength() / 2) {
            bigIntegerCreateRandomBigInteger = createRandomInRange(ZERO, bigInteger2.subtract(bigInteger), secureRandom);
        } else {
            for (int r03 = 0; r03 < 1000; r03++) {
                BigInteger bigIntegerCreateRandomBigInteger2 = createRandomBigInteger(bigInteger2.bitLength(), secureRandom);
                if (bigIntegerCreateRandomBigInteger2.compareTo(bigInteger) >= 0 && bigIntegerCreateRandomBigInteger2.compareTo(bigInteger2) <= 0) {
                    return bigIntegerCreateRandomBigInteger2;
                }
            }
            bigIntegerCreateRandomBigInteger = createRandomBigInteger(bigInteger2.subtract(bigInteger).bitLength() - 1, secureRandom);
        }
        return bigIntegerCreateRandomBigInteger.add(bigInteger);
    }

    public static BigInteger createRandomPrime(int r52, int r6, SecureRandom secureRandom) throws IllegalArgumentException {
        BigInteger bigInteger;
        if (r52 < 2) {
            throw new IllegalArgumentException("bitLength < 2");
        }
        if (r52 == 2) {
            return secureRandom.nextInt() < 0 ? TWO : THREE;
        }
        do {
            byte[] bArrCreateRandom = createRandom(r52, secureRandom);
            bArrCreateRandom[0] = (byte) (((byte) (1 << (7 - ((bArrCreateRandom.length * 8) - r52)))) | bArrCreateRandom[0]);
            int length = bArrCreateRandom.length - 1;
            bArrCreateRandom[length] = (byte) (bArrCreateRandom[length] | 1);
            bigInteger = new BigInteger(1, bArrCreateRandom);
            if (r52 > MAX_SMALL) {
                while (!bigInteger.gcd(SMALL_PRIMES_PRODUCT).equals(ONE)) {
                    bigInteger = bigInteger.add(TWO);
                }
            }
        } while (!bigInteger.isProbablePrime(r6));
        return bigInteger;
    }

    public static BigInteger fromUnsignedByteArray(byte[] bArr) {
        return new BigInteger(1, bArr);
    }

    public static BigInteger fromUnsignedByteArray(byte[] bArr, int r32, int r42) {
        if (r32 != 0 || r42 != bArr.length) {
            byte[] bArr2 = new byte[r42];
            System.arraycopy(bArr, r32, bArr2, 0, r42);
            bArr = bArr2;
        }
        return new BigInteger(1, bArr);
    }

    public static int getUnsignedByteLength(BigInteger bigInteger) {
        if (bigInteger.equals(ZERO)) {
            return 1;
        }
        return (bigInteger.bitLength() + 7) / 8;
    }

    public static int intValueExact(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 31) {
            return bigInteger.intValue();
        }
        throw new ArithmeticException("BigInteger out of int range");
    }

    public static long longValueExact(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 63) {
            return bigInteger.longValue();
        }
        throw new ArithmeticException("BigInteger out of long range");
    }

    public static BigInteger modOddInverse(BigInteger bigInteger, BigInteger bigInteger2) {
        if (!bigInteger.testBit(0)) {
            throw new IllegalArgumentException("'M' must be odd");
        }
        if (bigInteger.signum() != 1) {
            throw new ArithmeticException("BigInteger: modulus not positive");
        }
        if (bigInteger2.signum() < 0 || bigInteger2.bitLength() > bigInteger.bitLength()) {
            bigInteger2 = bigInteger2.mod(bigInteger);
        }
        int r02 = bigInteger.bitLength();
        int[] r22 = Nat.fromBigInteger(r02, bigInteger);
        int[] r32 = Nat.fromBigInteger(r02, bigInteger2);
        int length = r22.length;
        int[] r12 = Nat.create(length);
        if (Mod.modOddInverse(r22, r32, r12) != 0) {
            return Nat.toBigInteger(length, r12);
        }
        throw new ArithmeticException("BigInteger not invertible.");
    }

    public static BigInteger modOddInverseVar(BigInteger bigInteger, BigInteger bigInteger2) {
        if (!bigInteger.testBit(0)) {
            throw new IllegalArgumentException("'M' must be odd");
        }
        if (bigInteger.signum() != 1) {
            throw new ArithmeticException("BigInteger: modulus not positive");
        }
        BigInteger bigInteger3 = ONE;
        if (bigInteger.equals(bigInteger3)) {
            return ZERO;
        }
        if (bigInteger2.signum() < 0 || bigInteger2.bitLength() > bigInteger.bitLength()) {
            bigInteger2 = bigInteger2.mod(bigInteger);
        }
        if (bigInteger2.equals(bigInteger3)) {
            return bigInteger3;
        }
        int r02 = bigInteger.bitLength();
        int[] r32 = Nat.fromBigInteger(r02, bigInteger);
        int[] r42 = Nat.fromBigInteger(r02, bigInteger2);
        int length = r32.length;
        int[] r12 = Nat.create(length);
        if (Mod.modOddInverseVar(r32, r42, r12)) {
            return Nat.toBigInteger(length, r12);
        }
        throw new ArithmeticException("BigInteger not invertible.");
    }

    public static boolean modOddIsCoprime(BigInteger bigInteger, BigInteger bigInteger2) {
        if (!bigInteger.testBit(0)) {
            throw new IllegalArgumentException("'M' must be odd");
        }
        if (bigInteger.signum() != 1) {
            throw new ArithmeticException("BigInteger: modulus not positive");
        }
        if (bigInteger2.signum() < 0 || bigInteger2.bitLength() > bigInteger.bitLength()) {
            bigInteger2 = bigInteger2.mod(bigInteger);
        }
        int r12 = bigInteger.bitLength();
        return Mod.modOddIsCoprime(Nat.fromBigInteger(r12, bigInteger), Nat.fromBigInteger(r12, bigInteger2)) != 0;
    }

    public static boolean modOddIsCoprimeVar(BigInteger bigInteger, BigInteger bigInteger2) {
        if (!bigInteger.testBit(0)) {
            throw new IllegalArgumentException("'M' must be odd");
        }
        if (bigInteger.signum() != 1) {
            throw new ArithmeticException("BigInteger: modulus not positive");
        }
        if (bigInteger2.signum() < 0 || bigInteger2.bitLength() > bigInteger.bitLength()) {
            bigInteger2 = bigInteger2.mod(bigInteger);
        }
        if (bigInteger2.equals(ONE)) {
            return true;
        }
        int r02 = bigInteger.bitLength();
        return Mod.modOddIsCoprimeVar(Nat.fromBigInteger(r02, bigInteger), Nat.fromBigInteger(r02, bigInteger2));
    }

    public static short shortValueExact(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 15) {
            return bigInteger.shortValue();
        }
        throw new ArithmeticException("BigInteger out of int range");
    }
}
