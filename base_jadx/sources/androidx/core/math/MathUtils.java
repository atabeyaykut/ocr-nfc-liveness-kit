package androidx.core.math;

import androidx.core.location.LocationRequestCompat;

/* loaded from: classes.dex */
public class MathUtils {
    private MathUtils() {
    }

    public static int addExact(int r12, int r22) {
        int r02 = r12 + r22;
        if (((r12 ^ r02) & (r22 ^ r02)) >= 0) {
            return r02;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static long addExact(long j10, long j11) {
        long j12 = j10 + j11;
        if (((j10 ^ j12) & (j11 ^ j12)) >= 0) {
            return j12;
        }
        throw new ArithmeticException("long overflow");
    }

    public static double clamp(double d10, double d11, double d12) {
        return d10 < d11 ? d11 : d10 > d12 ? d12 : d10;
    }

    public static float clamp(float f, float f10, float f11) {
        return f < f10 ? f10 : f > f11 ? f11 : f;
    }

    public static int clamp(int r02, int r12, int r22) {
        return r02 < r12 ? r12 : r02 > r22 ? r22 : r02;
    }

    public static long clamp(long j10, long j11, long j12) {
        return j10 < j11 ? j11 : j10 > j12 ? j12 : j10;
    }

    public static int decrementExact(int r12) {
        if (r12 != Integer.MIN_VALUE) {
            return r12 - 1;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static long decrementExact(long j10) {
        if (j10 != Long.MIN_VALUE) {
            return j10 - 1;
        }
        throw new ArithmeticException("long overflow");
    }

    public static int incrementExact(int r12) {
        if (r12 != Integer.MAX_VALUE) {
            return r12 + 1;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static long incrementExact(long j10) {
        if (j10 != LocationRequestCompat.PASSIVE_INTERVAL) {
            return j10 + 1;
        }
        throw new ArithmeticException("long overflow");
    }

    public static int multiplyExact(int r42, int r52) {
        long j10 = r42 * r52;
        int r43 = (int) j10;
        if (r43 == j10) {
            return r43;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static long multiplyExact(long j10, long j11) {
        long j12 = j10 * j11;
        if (((Math.abs(j10) | Math.abs(j11)) >>> 31) == 0 || ((j11 == 0 || j12 / j11 == j10) && !(j10 == Long.MIN_VALUE && j11 == -1))) {
            return j12;
        }
        throw new ArithmeticException("long overflow");
    }

    public static int negateExact(int r12) {
        if (r12 != Integer.MIN_VALUE) {
            return -r12;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static long negateExact(long j10) {
        if (j10 != Long.MIN_VALUE) {
            return -j10;
        }
        throw new ArithmeticException("long overflow");
    }

    public static int subtractExact(int r12, int r22) {
        int r02 = r12 - r22;
        if (((r12 ^ r02) & (r22 ^ r12)) >= 0) {
            return r02;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static long subtractExact(long j10, long j11) {
        long j12 = j10 - j11;
        if (((j10 ^ j12) & (j11 ^ j10)) >= 0) {
            return j12;
        }
        throw new ArithmeticException("long overflow");
    }

    public static int toIntExact(long j10) {
        int r02 = (int) j10;
        if (r02 == j10) {
            return r02;
        }
        throw new ArithmeticException("integer overflow");
    }
}
