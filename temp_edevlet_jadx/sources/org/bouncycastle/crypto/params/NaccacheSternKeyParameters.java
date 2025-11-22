package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* loaded from: classes2.dex */
public class NaccacheSternKeyParameters extends AsymmetricKeyParameter {

    /* renamed from: g, reason: collision with root package name */
    private BigInteger f11638g;
    int lowerSigmaBound;

    /* renamed from: n, reason: collision with root package name */
    private BigInteger f11639n;

    public NaccacheSternKeyParameters(boolean z10, BigInteger bigInteger, BigInteger bigInteger2, int r42) {
        super(z10);
        this.f11638g = bigInteger;
        this.f11639n = bigInteger2;
        this.lowerSigmaBound = r42;
    }

    public BigInteger getG() {
        return this.f11638g;
    }

    public int getLowerSigmaBound() {
        return this.lowerSigmaBound;
    }

    public BigInteger getModulus() {
        return this.f11639n;
    }
}
