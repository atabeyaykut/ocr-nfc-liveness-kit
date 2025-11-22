package org.bouncycastle.crypto.ec;

import org.bouncycastle.math.ec.ECPoint;

/* loaded from: classes2.dex */
public class ECPair {

    /* renamed from: x, reason: collision with root package name */
    private final ECPoint f11481x;

    /* renamed from: y, reason: collision with root package name */
    private final ECPoint f11482y;

    public ECPair(ECPoint eCPoint, ECPoint eCPoint2) {
        this.f11481x = eCPoint;
        this.f11482y = eCPoint2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ECPair) {
            return equals((ECPair) obj);
        }
        return false;
    }

    public boolean equals(ECPair eCPair) {
        return eCPair.getX().equals(getX()) && eCPair.getY().equals(getY());
    }

    public ECPoint getX() {
        return this.f11481x;
    }

    public ECPoint getY() {
        return this.f11482y;
    }

    public int hashCode() {
        return (this.f11482y.hashCode() * 37) + this.f11481x.hashCode();
    }
}
