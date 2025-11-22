package org.bouncycastle.jce.spec;

import java.math.BigInteger;

/* loaded from: classes2.dex */
public class ElGamalPublicKeySpec extends ElGamalKeySpec {

    /* renamed from: y, reason: collision with root package name */
    private BigInteger f11702y;

    public ElGamalPublicKeySpec(BigInteger bigInteger, ElGamalParameterSpec elGamalParameterSpec) {
        super(elGamalParameterSpec);
        this.f11702y = bigInteger;
    }

    public BigInteger getY() {
        return this.f11702y;
    }
}
