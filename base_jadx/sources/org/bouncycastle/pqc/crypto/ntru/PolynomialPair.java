package org.bouncycastle.pqc.crypto.ntru;

import org.bouncycastle.pqc.math.ntru.Polynomial;

/* loaded from: classes2.dex */
class PolynomialPair {

    /* renamed from: a, reason: collision with root package name */
    private final Polynomial f11924a;

    /* renamed from: b, reason: collision with root package name */
    private final Polynomial f11925b;

    public PolynomialPair(Polynomial polynomial, Polynomial polynomial2) {
        this.f11924a = polynomial;
        this.f11925b = polynomial2;
    }

    public Polynomial f() {
        return this.f11924a;
    }

    public Polynomial g() {
        return this.f11925b;
    }

    public Polynomial m() {
        return this.f11925b;
    }

    public Polynomial r() {
        return this.f11924a;
    }
}
