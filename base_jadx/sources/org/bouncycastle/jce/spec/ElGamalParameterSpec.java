package org.bouncycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;

/* loaded from: classes2.dex */
public class ElGamalParameterSpec implements AlgorithmParameterSpec {

    /* renamed from: g, reason: collision with root package name */
    private BigInteger f11699g;

    /* renamed from: p, reason: collision with root package name */
    private BigInteger f11700p;

    public ElGamalParameterSpec(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f11700p = bigInteger;
        this.f11699g = bigInteger2;
    }

    public BigInteger getG() {
        return this.f11699g;
    }

    public BigInteger getP() {
        return this.f11700p;
    }
}
