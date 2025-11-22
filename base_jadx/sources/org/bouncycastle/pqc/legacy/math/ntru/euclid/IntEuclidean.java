package org.bouncycastle.pqc.legacy.math.ntru.euclid;

/* loaded from: classes2.dex */
public class IntEuclidean {
    public int gcd;

    /* renamed from: x, reason: collision with root package name */
    public int f12063x;

    /* renamed from: y, reason: collision with root package name */
    public int f12064y;

    private IntEuclidean() {
    }

    public static IntEuclidean calculate(int r92, int r10) {
        int r02 = 0;
        int r12 = 0;
        int r22 = 1;
        int r32 = 1;
        int r102 = r92;
        int r93 = r10;
        while (r93 != 0) {
            int r42 = r102 / r93;
            int r103 = r102 % r93;
            int r33 = r32 - (r42 * r12);
            r102 = r93;
            r93 = r103;
            int r72 = r22;
            r22 = r02 - (r42 * r22);
            r02 = r72;
            r32 = r12;
            r12 = r33;
        }
        IntEuclidean intEuclidean = new IntEuclidean();
        intEuclidean.f12063x = r32;
        intEuclidean.f12064y = r02;
        intEuclidean.gcd = r102;
        return intEuclidean;
    }
}
