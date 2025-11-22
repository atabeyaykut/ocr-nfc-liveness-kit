package org.bouncycastle.pqc.legacy.math.linearalgebra;

import java.io.PrintStream;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* loaded from: classes2.dex */
public final class PolynomialRingGF2 {
    private PolynomialRingGF2() {
    }

    public static int add(int r02, int r12) {
        return r02 ^ r12;
    }

    public static int degree(int r12) {
        int r02 = -1;
        while (r12 != 0) {
            r02++;
            r12 >>>= 1;
        }
        return r02;
    }

    public static int degree(long j10) {
        int r02 = 0;
        while (j10 != 0) {
            r02++;
            j10 >>>= 1;
        }
        return r02 - 1;
    }

    public static int gcd(int r12, int r22) {
        while (true) {
            int r02 = r22;
            int r23 = r12;
            r12 = r02;
            if (r12 == 0) {
                return r23;
            }
            r22 = remainder(r23, r12);
        }
    }

    public static int getIrreduciblePolynomial(int r32) {
        PrintStream printStream;
        String str;
        if (r32 < 0) {
            printStream = System.err;
            str = "The Degree is negative";
        } else {
            if (r32 <= 31) {
                if (r32 == 0) {
                    return 1;
                }
                int r33 = 1 << (r32 + 1);
                for (int r22 = (1 << r32) + 1; r22 < r33; r22 += 2) {
                    if (isIrreducible(r22)) {
                        return r22;
                    }
                }
                return 0;
            }
            printStream = System.err;
            str = "The Degree is more then 31";
        }
        printStream.println(str);
        return 0;
    }

    public static boolean isIrreducible(int r6) {
        if (r6 == 0) {
            return false;
        }
        int r12 = degree(r6) >>> 1;
        int r32 = 2;
        for (int r42 = 0; r42 < r12; r42++) {
            r32 = modMultiply(r32, r32, r6);
            if (gcd(r32 ^ 2, r6) != 1) {
                return false;
            }
        }
        return true;
    }

    public static int modMultiply(int r42, int r52, int r6) {
        int r43 = remainder(r42, r6);
        int r53 = remainder(r52, r6);
        int r02 = 0;
        if (r53 != 0) {
            int r12 = 1 << degree(r6);
            while (r43 != 0) {
                if (((byte) (r43 & 1)) == 1) {
                    r02 ^= r53;
                }
                r43 >>>= 1;
                r53 <<= 1;
                if (r53 >= r12) {
                    r53 ^= r6;
                }
            }
        }
        return r02;
    }

    public static long multiply(int r6, int r72) {
        long j10 = 0;
        if (r72 != 0) {
            long j11 = r72 & BodyPartID.bodyIdMax;
            while (r6 != 0) {
                if (((byte) (r6 & 1)) == 1) {
                    j10 ^= j11;
                }
                r6 >>>= 1;
                j11 <<= 1;
            }
        }
        return j10;
    }

    public static int remainder(int r22, int r32) {
        if (r32 == 0) {
            System.err.println("Error: to be divided by 0");
            return 0;
        }
        while (degree(r22) >= degree(r32)) {
            r22 ^= r32 << (degree(r22) - degree(r32));
        }
        return r22;
    }

    public static int rest(long j10, int r92) {
        if (r92 == 0) {
            System.err.println("Error: to be divided by 0");
            return 0;
        }
        long j11 = r92 & BodyPartID.bodyIdMax;
        while ((j10 >>> 32) != 0) {
            j10 ^= j11 << (degree(j10) - degree(j11));
        }
        int r82 = (int) (j10 & (-1));
        while (degree(r82) >= degree(r92)) {
            r82 ^= r92 << (degree(r82) - degree(r92));
        }
        return r82;
    }
}
