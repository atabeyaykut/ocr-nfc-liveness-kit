package androidx.collection;

/* loaded from: classes.dex */
class ContainerHelpers {
    static final int[] EMPTY_INTS = new int[0];
    static final long[] EMPTY_LONGS = new long[0];
    static final Object[] EMPTY_OBJECTS = new Object[0];

    private ContainerHelpers() {
    }

    public static int binarySearch(int[] r32, int r42, int r52) {
        int r43 = r42 - 1;
        int r02 = 0;
        while (r02 <= r43) {
            int r12 = (r02 + r43) >>> 1;
            int r22 = r32[r12];
            if (r22 < r52) {
                r02 = r12 + 1;
            } else {
                if (r22 <= r52) {
                    return r12;
                }
                r43 = r12 - 1;
            }
        }
        return ~r02;
    }

    public static int binarySearch(long[] jArr, int r6, long j10) {
        int r62 = r6 - 1;
        int r02 = 0;
        while (r02 <= r62) {
            int r12 = (r02 + r62) >>> 1;
            long j11 = jArr[r12];
            if (j11 < j10) {
                r02 = r12 + 1;
            } else {
                if (j11 <= j10) {
                    return r12;
                }
                r62 = r12 - 1;
            }
        }
        return ~r02;
    }

    public static boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int idealByteArraySize(int r22) {
        for (int r02 = 4; r02 < 32; r02++) {
            int r12 = (1 << r02) - 12;
            if (r22 <= r12) {
                return r12;
            }
        }
        return r22;
    }

    public static int idealIntArraySize(int r02) {
        return idealByteArraySize(r02 * 4) / 4;
    }

    public static int idealLongArraySize(int r02) {
        return idealByteArraySize(r02 * 8) / 8;
    }
}
