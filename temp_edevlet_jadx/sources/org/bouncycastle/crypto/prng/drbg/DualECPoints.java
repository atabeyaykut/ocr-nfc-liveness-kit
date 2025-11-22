package org.bouncycastle.crypto.prng.drbg;

import org.bouncycastle.math.ec.ECPoint;

/* loaded from: classes2.dex */
public class DualECPoints {
    private final int cofactor;

    /* renamed from: p, reason: collision with root package name */
    private final ECPoint f11647p;

    /* renamed from: q, reason: collision with root package name */
    private final ECPoint f11648q;
    private final int securityStrength;

    public DualECPoints(int r32, ECPoint eCPoint, ECPoint eCPoint2, int r6) {
        if (!eCPoint.getCurve().equals(eCPoint2.getCurve())) {
            throw new IllegalArgumentException("points need to be on the same curve");
        }
        this.securityStrength = r32;
        this.f11647p = eCPoint;
        this.f11648q = eCPoint2;
        this.cofactor = r6;
    }

    private static int log2(int r12) {
        int r02 = 0;
        while (true) {
            r12 >>= 1;
            if (r12 == 0) {
                return r02;
            }
            r02++;
        }
    }

    public int getCofactor() {
        return this.cofactor;
    }

    public int getMaxOutlen() {
        return ((this.f11647p.getCurve().getFieldSize() - (log2(this.cofactor) + 13)) / 8) * 8;
    }

    public ECPoint getP() {
        return this.f11647p;
    }

    public ECPoint getQ() {
        return this.f11648q;
    }

    public int getSecurityStrength() {
        return this.securityStrength;
    }

    public int getSeedLen() {
        return this.f11647p.getCurve().getFieldSize();
    }
}
