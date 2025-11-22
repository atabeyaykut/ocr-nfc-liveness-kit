package org.bouncycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.KeySpec;

/* loaded from: classes2.dex */
public class GOST3410PrivateKeySpec implements KeySpec {

    /* renamed from: a, reason: collision with root package name */
    private BigInteger f11703a;

    /* renamed from: p, reason: collision with root package name */
    private BigInteger f11704p;

    /* renamed from: q, reason: collision with root package name */
    private BigInteger f11705q;

    /* renamed from: x, reason: collision with root package name */
    private BigInteger f11706x;

    public GOST3410PrivateKeySpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f11706x = bigInteger;
        this.f11704p = bigInteger2;
        this.f11705q = bigInteger3;
        this.f11703a = bigInteger4;
    }

    public BigInteger getA() {
        return this.f11703a;
    }

    public BigInteger getP() {
        return this.f11704p;
    }

    public BigInteger getQ() {
        return this.f11705q;
    }

    public BigInteger getX() {
        return this.f11706x;
    }
}
