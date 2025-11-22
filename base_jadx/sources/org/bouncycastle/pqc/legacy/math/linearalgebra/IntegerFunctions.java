package org.bouncycastle.pqc.legacy.math.linearalgebra;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.PointerIconCompat;
import java.math.BigInteger;
import java.security.SecureRandom;
import net.sf.scuba.smartcards.ISO7816;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.math.Primes;
import org.bouncycastle.util.BigIntegers;
import org.jmrtd.PassportService;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
public final class IntegerFunctions {
    private static final long SMALL_PRIME_PRODUCT = 152125131763605L;
    private static final BigInteger ZERO = BigInteger.valueOf(0);
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);
    private static final BigInteger FOUR = BigInteger.valueOf(4);
    private static final int[] SMALL_PRIMES = {3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41};
    private static SecureRandom sr = null;
    private static final int[] jacobiTable = {0, 1, 0, -1, 0, -1, 0, 1};

    private IntegerFunctions() {
    }

    public static BigInteger binomial(int r42, int r52) {
        BigInteger bigIntegerDivide = ONE;
        if (r42 == 0) {
            return r52 == 0 ? bigIntegerDivide : ZERO;
        }
        if (r52 > (r42 >>> 1)) {
            r52 = r42 - r52;
        }
        for (int r12 = 1; r12 <= r52; r12++) {
            bigIntegerDivide = bigIntegerDivide.multiply(BigInteger.valueOf(r42 - (r12 - 1))).divide(BigInteger.valueOf(r12));
        }
        return bigIntegerDivide;
    }

    public static int bitCount(int r22) {
        int r02 = 0;
        while (r22 != 0) {
            r02 += r22 & 1;
            r22 >>>= 1;
        }
        return r02;
    }

    public static int ceilLog(int r22) {
        int r02 = 0;
        int r12 = 1;
        while (r12 < r22) {
            r12 <<= 1;
            r02++;
        }
        return r02;
    }

    public static int ceilLog(BigInteger bigInteger) {
        int r12 = 0;
        for (BigInteger bigIntegerShiftLeft = ONE; bigIntegerShiftLeft.compareTo(bigInteger) < 0; bigIntegerShiftLeft = bigIntegerShiftLeft.shiftLeft(1)) {
            r12++;
        }
        return r12;
    }

    public static int ceilLog256(int r12) {
        if (r12 == 0) {
            return 1;
        }
        if (r12 < 0) {
            r12 = -r12;
        }
        int r02 = 0;
        while (r12 > 0) {
            r02++;
            r12 >>>= 8;
        }
        return r02;
    }

    public static int ceilLog256(long j10) {
        if (j10 == 0) {
            return 1;
        }
        if (j10 < 0) {
            j10 = -j10;
        }
        int r22 = 0;
        while (j10 > 0) {
            r22++;
            j10 >>>= 8;
        }
        return r22;
    }

    public static BigInteger divideAndRound(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger.signum() < 0 ? divideAndRound(bigInteger.negate(), bigInteger2).negate() : bigInteger2.signum() < 0 ? divideAndRound(bigInteger, bigInteger2.negate()).negate() : bigInteger.shiftLeft(1).add(bigInteger2).divide(bigInteger2.shiftLeft(1));
    }

    public static BigInteger[] divideAndRound(BigInteger[] bigIntegerArr, BigInteger bigInteger) {
        BigInteger[] bigIntegerArr2 = new BigInteger[bigIntegerArr.length];
        for (int r12 = 0; r12 < bigIntegerArr.length; r12++) {
            bigIntegerArr2[r12] = divideAndRound(bigIntegerArr[r12], bigInteger);
        }
        return bigIntegerArr2;
    }

    public static int[] extGCD(int r22, int r32) {
        BigInteger[] bigIntegerArrExtgcd = extgcd(BigInteger.valueOf(r22), BigInteger.valueOf(r32));
        return new int[]{bigIntegerArrExtgcd[0].intValue(), bigIntegerArrExtgcd[1].intValue(), bigIntegerArrExtgcd[2].intValue()};
    }

    public static BigInteger[] extgcd(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigInteger3 = ONE;
        BigInteger bigIntegerDivide = ZERO;
        if (bigInteger2.signum() != 0) {
            BigInteger bigInteger4 = bigInteger;
            BigInteger bigInteger5 = bigInteger2;
            while (bigInteger5.signum() != 0) {
                BigInteger[] bigIntegerArrDivideAndRemainder = bigInteger4.divideAndRemainder(bigInteger5);
                BigInteger bigInteger6 = bigIntegerArrDivideAndRemainder[0];
                BigInteger bigInteger7 = bigIntegerArrDivideAndRemainder[1];
                BigInteger bigInteger8 = bigIntegerDivide;
                bigIntegerDivide = bigInteger3.subtract(bigInteger6.multiply(bigIntegerDivide));
                bigInteger3 = bigInteger8;
                bigInteger4 = bigInteger5;
                bigInteger5 = bigInteger7;
            }
            bigIntegerDivide = bigInteger4.subtract(bigInteger.multiply(bigInteger3)).divide(bigInteger2);
            bigInteger = bigInteger4;
        }
        return new BigInteger[]{bigInteger, bigInteger3, bigIntegerDivide};
    }

    public static float floatPow(float f, int r22) {
        float f10 = 1.0f;
        while (r22 > 0) {
            f10 *= f;
            r22--;
        }
        return f10;
    }

    public static int floorLog(int r12) {
        if (r12 <= 0) {
            return -1;
        }
        int r02 = 0;
        for (int r13 = r12 >>> 1; r13 > 0; r13 >>>= 1) {
            r02++;
        }
        return r02;
    }

    public static int floorLog(BigInteger bigInteger) {
        int r12 = -1;
        for (BigInteger bigIntegerShiftLeft = ONE; bigIntegerShiftLeft.compareTo(bigInteger) <= 0; bigIntegerShiftLeft = bigIntegerShiftLeft.shiftLeft(1)) {
            r12++;
        }
        return r12;
    }

    public static int gcd(int r22, int r32) {
        return BigInteger.valueOf(r22).gcd(BigInteger.valueOf(r32)).intValue();
    }

    public static float intRoot(int r82, int r92) {
        float fFloatPow;
        float fFloatPow2 = r82 / r92;
        float f = 0.0f;
        while (Math.abs(f - fFloatPow2) > 1.0E-4d) {
            while (true) {
                fFloatPow = floatPow(fFloatPow2, r92);
                if (Float.isInfinite(fFloatPow)) {
                    fFloatPow2 = (fFloatPow2 + f) / 2.0f;
                }
            }
            f = fFloatPow2;
            fFloatPow2 -= (fFloatPow - r82) / (floatPow(fFloatPow2, r92 - 1) * r92);
        }
        return fFloatPow2;
    }

    public static byte[] integerToOctets(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.abs().toByteArray();
        if ((bigInteger.bitLength() & 7) != 0) {
            return byteArray;
        }
        int r42 = bigInteger.bitLength() >> 3;
        byte[] bArr = new byte[r42];
        System.arraycopy(byteArray, 1, bArr, 0, r42);
        return bArr;
    }

    public static boolean isIncreasing(int[] r42) {
        for (int r12 = 1; r12 < r42.length; r12++) {
            if (r42[r12 - 1] >= r42[r12]) {
                return false;
            }
        }
        return true;
    }

    public static int isPower(int r32, int r42) {
        if (r32 <= 0) {
            return -1;
        }
        int r12 = 0;
        while (r32 > 1) {
            if (r32 % r42 != 0) {
                return -1;
            }
            r32 /= r42;
            r12++;
        }
        return r12;
    }

    public static boolean isPrime(int r52) {
        if (r52 < 2) {
            return false;
        }
        if (r52 == 2) {
            return true;
        }
        if ((r52 & 1) == 0) {
            return false;
        }
        if (r52 < 42) {
            int r12 = 0;
            while (true) {
                int[] r32 = SMALL_PRIMES;
                if (r12 >= r32.length) {
                    break;
                }
                if (r52 == r32[r12]) {
                    return true;
                }
                r12++;
            }
        }
        if (r52 % 3 == 0 || r52 % 5 == 0 || r52 % 7 == 0 || r52 % 11 == 0 || r52 % 13 == 0 || r52 % 17 == 0 || r52 % 19 == 0 || r52 % 23 == 0 || r52 % 29 == 0 || r52 % 31 == 0 || r52 % 37 == 0 || r52 % 41 == 0) {
            return false;
        }
        return BigInteger.valueOf(r52).isProbablePrime(20);
    }

    public static int jacobi(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigIntegerAdd = ZERO;
        if (bigInteger2.equals(bigIntegerAdd)) {
            return bigInteger.abs().equals(ONE) ? 1 : 0;
        }
        if (!bigInteger.testBit(0) && !bigInteger2.testBit(0)) {
            return 0;
        }
        long j10 = 1;
        if (bigInteger2.signum() == -1) {
            bigInteger2 = bigInteger2.negate();
            if (bigInteger.signum() == -1) {
                j10 = -1;
            }
        }
        while (!bigInteger2.testBit(0)) {
            bigIntegerAdd = bigIntegerAdd.add(ONE);
            bigInteger2 = bigInteger2.divide(TWO);
        }
        if (bigIntegerAdd.testBit(0)) {
            j10 *= jacobiTable[bigInteger.intValue() & 7];
        }
        if (bigInteger.signum() < 0) {
            if (bigInteger2.testBit(1)) {
                j10 = -j10;
            }
            bigInteger = bigInteger.negate();
        }
        while (bigInteger.signum() != 0) {
            BigInteger bigIntegerAdd2 = ZERO;
            while (!bigInteger.testBit(0)) {
                bigIntegerAdd2 = bigIntegerAdd2.add(ONE);
                bigInteger = bigInteger.divide(TWO);
            }
            if (bigIntegerAdd2.testBit(0)) {
                j10 *= jacobiTable[bigInteger2.intValue() & 7];
            }
            if (bigInteger.compareTo(bigInteger2) >= 0) {
                BigInteger bigInteger3 = bigInteger2;
                bigInteger2 = bigInteger;
                bigInteger = bigInteger3;
            } else if (bigInteger2.testBit(1) && bigInteger.testBit(1)) {
                j10 = -j10;
            }
            BigInteger bigIntegerSubtract = bigInteger2.subtract(bigInteger);
            bigInteger2 = bigInteger;
            bigInteger = bigIntegerSubtract;
        }
        if (bigInteger2.equals(ONE)) {
            return (int) j10;
        }
        return 0;
    }

    public static BigInteger leastCommonMultiple(BigInteger[] bigIntegerArr) {
        int length = bigIntegerArr.length;
        BigInteger bigIntegerDivide = bigIntegerArr[0];
        for (int r22 = 1; r22 < length; r22++) {
            bigIntegerDivide = bigIntegerDivide.multiply(bigIntegerArr[r22]).divide(bigIntegerDivide.gcd(bigIntegerArr[r22]));
        }
        return bigIntegerDivide;
    }

    public static int leastDiv(int r22) {
        if (r22 < 0) {
            r22 = -r22;
        }
        if (r22 == 0) {
            return 1;
        }
        if ((r22 & 1) == 0) {
            return 2;
        }
        for (int r02 = 3; r02 <= r22 / r02; r02 += 2) {
            if (r22 % r02 == 0) {
                return r02;
            }
        }
        return r22;
    }

    public static double log(double d10) {
        double d11 = 1.0d;
        if (d10 > 0.0d && d10 < 1.0d) {
            return -log(1.0d / d10);
        }
        int r02 = 0;
        double d12 = d10;
        while (d12 > 2.0d) {
            d12 /= 2.0d;
            r02++;
            d11 *= 2.0d;
        }
        return r02 + logBKM(d10 / d11);
    }

    public static double log(long j10) {
        return floorLog(BigInteger.valueOf(j10)) + logBKM(j10 / (1 << r0));
    }

    private static double logBKM(double d10) {
        double[] dArr = {1.0d, 0.5849625007211562d, 0.32192809488736235d, 0.16992500144231237d, 0.0874628412503394d, 0.044394119358453436d, 0.02236781302845451d, 0.01122725542325412d, 0.005624549193878107d, 0.0028150156070540383d, 0.0014081943928083889d, 7.042690112466433E-4d, 3.5217748030102726E-4d, 1.7609948644250602E-4d, 8.80524301221769E-5d, 4.4026886827316716E-5d, 2.2013611360340496E-5d, 1.1006847667481442E-5d, 5.503434330648604E-6d, 2.751719789561283E-6d, 1.375860550841138E-6d, 6.879304394358497E-7d, 3.4396526072176454E-7d, 1.7198264061184464E-7d, 8.599132286866321E-8d, 4.299566207501687E-8d, 2.1497831197679756E-8d, 1.0748915638882709E-8d, 5.374457829452062E-9d, 2.687228917228708E-9d, 1.3436144592400231E-9d, 6.718072297764289E-10d, 3.3590361492731876E-10d, 1.6795180747343547E-10d, 8.397590373916176E-11d, 4.1987951870191886E-11d, 2.0993975935248694E-11d, 1.0496987967662534E-11d, 5.2484939838408146E-12d, 2.624246991922794E-12d, 1.3121234959619935E-12d, 6.56061747981146E-13d, 3.2803087399061026E-13d, 1.6401543699531447E-13d, 8.200771849765956E-14d, 4.1003859248830365E-14d, 2.0501929624415328E-14d, 1.02509648122077E-14d, 5.1254824061038595E-15d, 2.5627412030519317E-15d, 1.2813706015259665E-15d, 6.406853007629834E-16d, 3.203426503814917E-16d, 1.6017132519074588E-16d, 8.008566259537294E-17d, 4.004283129768647E-17d, 2.0021415648843235E-17d, 1.0010707824421618E-17d, 5.005353912210809E-18d, 2.5026769561054044E-18d, 1.2513384780527022E-18d, 6.256692390263511E-19d, 3.1283461951317555E-19d, 1.5641730975658778E-19d, 7.820865487829389E-20d, 3.9104327439146944E-20d, 1.9552163719573472E-20d, 9.776081859786736E-21d, 4.888040929893368E-21d, 2.444020464946684E-21d, 1.222010232473342E-21d, 6.11005116236671E-22d, 3.055025581183355E-22d, 1.5275127905916775E-22d, 7.637563952958387E-23d, 3.818781976479194E-23d, 1.909390988239597E-23d, 9.546954941197984E-24d, 4.773477470598992E-24d, 2.386738735299496E-24d, 1.193369367649748E-24d, 5.96684683824874E-25d, 2.98342341912437E-25d, 1.491711709562185E-25d, 7.458558547810925E-26d, 3.7292792739054626E-26d, 1.8646396369527313E-26d, 9.323198184763657E-27d, 4.661599092381828E-27d, 2.330799546190914E-27d, 1.165399773095457E-27d, 5.826998865477285E-28d, 2.9134994327386427E-28d, 1.4567497163693213E-28d, 7.283748581846607E-29d, 3.6418742909233034E-29d, 1.8209371454616517E-29d, 9.104685727308258E-30d, 4.552342863654129E-30d, 2.2761714318270646E-30d};
        double d11 = 1.0d;
        double d12 = 0.0d;
        double d13 = 1.0d;
        for (int r72 = 0; r72 < 53; r72++) {
            double d14 = (d11 * d13) + d11;
            if (d14 <= d10) {
                d12 += dArr[r72];
                d11 = d14;
            }
            d13 *= 0.5d;
        }
        return d12;
    }

    public static int maxPower(int r32) {
        int r02 = 0;
        if (r32 != 0) {
            for (int r12 = 1; (r32 & r12) == 0; r12 <<= 1) {
                r02++;
            }
        }
        return r02;
    }

    public static long mod(long j10, long j11) {
        long j12 = j10 % j11;
        return j12 < 0 ? j12 + j11 : j12;
    }

    public static int modInverse(int r22, int r32) {
        return BigInteger.valueOf(r22).modInverse(BigInteger.valueOf(r32)).intValue();
    }

    public static long modInverse(long j10, long j11) {
        return BigInteger.valueOf(j10).modInverse(BigInteger.valueOf(j11)).longValue();
    }

    public static int modPow(int r52, int r6, int r72) {
        if (r72 <= 0) {
            return 0;
        }
        long j10 = r72;
        if (j10 * j10 > 2147483647L || r6 < 0) {
            return 0;
        }
        int r53 = ((r52 % r72) + r72) % r72;
        int r12 = 1;
        while (r6 > 0) {
            if ((r6 & 1) == 1) {
                r12 = (r12 * r53) % r72;
            }
            r53 = (r53 * r53) % r72;
            r6 >>>= 1;
        }
        return r12;
    }

    public static BigInteger nextPrime(long j10) {
        if (j10 <= 1) {
            return BigInteger.valueOf(2L);
        }
        if (j10 == 2) {
            return BigInteger.valueOf(3L);
        }
        boolean z10 = false;
        long j11 = 0;
        for (long j12 = j10 + 1 + (j10 & 1); j12 <= (j10 << 1) && !z10; j12 += 2) {
            for (long j13 = 3; j13 <= (j12 >> 1) && !z10; j13 += 2) {
                if (j12 % j13 == 0) {
                    z10 = true;
                }
            }
            if (!z10) {
                j11 = j12;
            }
            z10 = !z10;
        }
        return BigInteger.valueOf(j11);
    }

    public static BigInteger nextProbablePrime(BigInteger bigInteger) {
        return nextProbablePrime(bigInteger, 20);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.math.BigInteger nextProbablePrime(java.math.BigInteger r7, int r8) {
        /*
            int r0 = r7.signum()
            if (r0 < 0) goto Lb0
            int r0 = r7.signum()
            if (r0 == 0) goto Lb0
            java.math.BigInteger r0 = org.bouncycastle.pqc.legacy.math.linearalgebra.IntegerFunctions.ONE
            boolean r1 = r7.equals(r0)
            if (r1 == 0) goto L16
            goto Lb0
        L16:
            java.math.BigInteger r7 = r7.add(r0)
            r1 = 0
            boolean r1 = r7.testBit(r1)
            if (r1 != 0) goto L25
        L21:
            java.math.BigInteger r7 = r7.add(r0)
        L25:
            int r0 = r7.bitLength()
            r1 = 6
            if (r0 <= r1) goto La1
            r0 = 152125131763605(0x8a5b6470af95, double:7.515980147347E-310)
            java.math.BigInteger r0 = java.math.BigInteger.valueOf(r0)
            java.math.BigInteger r0 = r7.remainder(r0)
            long r0 = r0.longValue()
            r2 = 3
            long r2 = r0 % r2
            r4 = 0
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 == 0) goto L9e
            r2 = 5
            long r2 = r0 % r2
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 == 0) goto L9e
            r2 = 7
            long r2 = r0 % r2
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 == 0) goto L9e
            r2 = 11
            long r2 = r0 % r2
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 == 0) goto L9e
            r2 = 13
            long r2 = r0 % r2
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 == 0) goto L9e
            r2 = 17
            long r2 = r0 % r2
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 == 0) goto L9e
            r2 = 19
            long r2 = r0 % r2
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 == 0) goto L9e
            r2 = 23
            long r2 = r0 % r2
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 == 0) goto L9e
            r2 = 29
            long r2 = r0 % r2
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 == 0) goto L9e
            r2 = 31
            long r2 = r0 % r2
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 == 0) goto L9e
            r2 = 37
            long r2 = r0 % r2
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 == 0) goto L9e
            r2 = 41
            long r0 = r0 % r2
            int r2 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r2 != 0) goto La1
        L9e:
            java.math.BigInteger r0 = org.bouncycastle.pqc.legacy.math.linearalgebra.IntegerFunctions.TWO
            goto L21
        La1:
            int r0 = r7.bitLength()
            r1 = 4
            if (r0 >= r1) goto La9
            return r7
        La9:
            boolean r0 = r7.isProbablePrime(r8)
            if (r0 == 0) goto L9e
            return r7
        Lb0:
            java.math.BigInteger r7 = org.bouncycastle.pqc.legacy.math.linearalgebra.IntegerFunctions.TWO
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.legacy.math.linearalgebra.IntegerFunctions.nextProbablePrime(java.math.BigInteger, int):java.math.BigInteger");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0012, code lost:
    
        r2 = r2 - 2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int nextSmallerPrime(int r2) {
        /*
            r0 = 2
            if (r2 > r0) goto L5
            r2 = 1
            return r2
        L5:
            r1 = 3
            if (r2 != r1) goto L9
            return r0
        L9:
            r0 = r2 & 1
            if (r0 != 0) goto L10
            int r2 = r2 + (-1)
            goto L12
        L10:
            int r2 = r2 + (-2)
        L12:
            if (r2 <= r1) goto L1b
            boolean r0 = isPrime(r2)
            if (r0 != 0) goto L1b
            goto L10
        L1b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.legacy.math.linearalgebra.IntegerFunctions.nextSmallerPrime(int):int");
    }

    public static BigInteger octetsToInteger(byte[] bArr) {
        return octetsToInteger(bArr, 0, bArr.length);
    }

    public static BigInteger octetsToInteger(byte[] bArr, int r32, int r42) {
        byte[] bArr2 = new byte[r42 + 1];
        bArr2[0] = 0;
        System.arraycopy(bArr, r32, bArr2, 1, r42);
        return new BigInteger(bArr2);
    }

    public static int order(int r32, int r42) {
        int r02 = r32 % r42;
        if (r02 == 0) {
            throw new IllegalArgumentException(r32 + " is not an element of Z/(" + r42 + "Z)^*; it is not meaningful to compute its order.");
        }
        int r22 = 1;
        while (r02 != 1) {
            r02 = (r02 * r32) % r42;
            if (r02 < 0) {
                r02 += r42;
            }
            r22++;
        }
        return r22;
    }

    public static boolean passesSmallPrimeTest(BigInteger bigInteger) {
        int[] r12 = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, CertificateBody.profileType, ISO781611.CREATION_DATE_AND_TIME_TAG, 137, 139, 149, ISO7816.TAG_SM_EXPECTED_LENGTH, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, Primes.SMALL_FACTOR_LIMIT, PassportService.DEFAULT_MAX_BLOCKSIZE, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, TypedValues.AttributesType.TYPE_EASING, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, TypedValues.CycleType.TYPE_CURVE_FIT, 409, 419, TypedValues.CycleType.TYPE_WAVE_SHAPE, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, TypedValues.PositionType.TYPE_PERCENT_WIDTH, 509, 521, 523, 541, 547, 557, 563, 569, 571, 577, 587, 593, 599, 601, TypedValues.MotionType.TYPE_PATHMOTION_ARC, 613, 617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691, TypedValues.TransitionType.TYPE_FROM, 709, 719, 727, 733, 739, 743, 751, 757, 761, 769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877, 881, 883, 887, 907, 911, 919, 929, 937, 941, 947, 953, 967, 971, 977, 983, 991, 997, PointerIconCompat.TYPE_VERTICAL_TEXT, PointerIconCompat.TYPE_ALL_SCROLL, PointerIconCompat.TYPE_ZOOM_OUT, PointerIconCompat.TYPE_GRABBING, 1031, 1033, 1039, 1049, 1051, 1061, 1063, 1069, 1087, 1091, 1093, 1097, 1103, 1109, 1117, 1123, 1129, 1151, 1153, 1163, 1171, 1181, 1187, 1193, 1201, 1213, 1217, 1223, 1229, 1231, 1237, 1249, 1259, 1277, 1279, 1283, 1289, 1291, 1297, 1301, 1303, 1307, 1319, 1321, 1327, 1361, 1367, 1373, 1381, 1399, 1409, 1423, 1427, 1429, 1433, 1439, 1447, 1451, 1453, 1459, 1471, 1481, 1483, 1487, 1489, 1493, 1499};
        for (int r32 = 0; r32 < 239; r32++) {
            if (bigInteger.mod(BigInteger.valueOf(r12[r32])).equals(ZERO)) {
                return false;
            }
        }
        return true;
    }

    public static int pow(int r32, int r42) {
        int r12 = 1;
        while (r42 > 0) {
            if ((r42 & 1) == 1) {
                r12 *= r32;
            }
            r32 *= r32;
            r42 >>>= 1;
        }
        return r12;
    }

    public static long pow(long j10, int r6) {
        long j11 = 1;
        while (r6 > 0) {
            if ((r6 & 1) == 1) {
                j11 *= j10;
            }
            j10 *= j10;
            r6 >>>= 1;
        }
        return j11;
    }

    public static BigInteger randomize(BigInteger bigInteger) {
        if (sr == null) {
            sr = CryptoServicesRegistrar.getSecureRandom();
        }
        return randomize(bigInteger, sr);
    }

    public static BigInteger randomize(BigInteger bigInteger, SecureRandom secureRandom) {
        int r02 = bigInteger.bitLength();
        BigInteger bigIntegerValueOf = BigInteger.valueOf(0L);
        if (secureRandom == null && (secureRandom = sr) == null) {
            secureRandom = CryptoServicesRegistrar.getSecureRandom();
        }
        for (int r22 = 0; r22 < 20; r22++) {
            bigIntegerValueOf = BigIntegers.createRandomBigInteger(r02, secureRandom);
            if (bigIntegerValueOf.compareTo(bigInteger) < 0) {
                return bigIntegerValueOf;
            }
        }
        return bigIntegerValueOf.mod(bigInteger);
    }

    public static BigInteger reduceInto(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        return bigInteger.subtract(bigInteger2).mod(bigInteger3.subtract(bigInteger2)).add(bigInteger2);
    }

    public static BigInteger squareRoot(BigInteger bigInteger) {
        int r22;
        BigInteger bigIntegerAdd;
        BigInteger bigIntegerMultiply = ZERO;
        if (bigInteger.compareTo(bigIntegerMultiply) < 0) {
            throw new ArithmeticException("cannot extract root of negative number" + bigInteger + ".");
        }
        int r12 = bigInteger.bitLength();
        if ((r12 & 1) != 0) {
            int r13 = r12 - 1;
            bigIntegerAdd = bigIntegerMultiply;
            bigIntegerMultiply = bigIntegerMultiply.add(ONE);
            r22 = r13;
        } else {
            r22 = r12;
            bigIntegerAdd = bigIntegerMultiply;
        }
        while (r22 > 0) {
            BigInteger bigInteger2 = FOUR;
            BigInteger bigIntegerMultiply2 = bigIntegerAdd.multiply(bigInteger2);
            int r23 = r22 - 1;
            int r42 = bigInteger.testBit(r23) ? 2 : 0;
            r22 = r23 - 1;
            bigIntegerAdd = bigIntegerMultiply2.add(BigInteger.valueOf((bigInteger.testBit(r22) ? 1 : 0) + r42));
            BigInteger bigIntegerMultiply3 = bigIntegerMultiply.multiply(bigInteger2);
            BigInteger bigInteger3 = ONE;
            BigInteger bigIntegerAdd2 = bigIntegerMultiply3.add(bigInteger3);
            bigIntegerMultiply = bigIntegerMultiply.multiply(TWO);
            if (bigIntegerAdd.compareTo(bigIntegerAdd2) != -1) {
                bigIntegerMultiply = bigIntegerMultiply.add(bigInteger3);
                bigIntegerAdd = bigIntegerAdd.subtract(bigIntegerAdd2);
            }
        }
        return bigIntegerMultiply;
    }
}
