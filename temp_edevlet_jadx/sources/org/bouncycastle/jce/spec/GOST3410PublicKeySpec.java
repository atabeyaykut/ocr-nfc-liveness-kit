package org.bouncycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.KeySpec;

/* loaded from: classes2.dex */
public class GOST3410PublicKeySpec implements KeySpec {

    /* renamed from: a, reason: collision with root package name */
    private BigInteger f11710a;

    /* renamed from: p, reason: collision with root package name */
    private BigInteger f11711p;

    /* renamed from: q, reason: collision with root package name */
    private BigInteger f11712q;

    /* renamed from: y, reason: collision with root package name */
    private BigInteger f11713y;

    public GOST3410PublicKeySpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f11713y = bigInteger;
        this.f11711p = bigInteger2;
        this.f11712q = bigInteger3;
        this.f11710a = bigInteger4;
    }

    public BigInteger getA() {
        return this.f11710a;
    }

    public BigInteger getP() {
        return this.f11711p;
    }

    public BigInteger getQ() {
        return this.f11712q;
    }

    public BigInteger getY() {
        return this.f11713y;
    }
}
