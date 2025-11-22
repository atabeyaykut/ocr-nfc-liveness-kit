package org.bouncycastle.jce.spec;

import java.math.BigInteger;

/* loaded from: classes2.dex */
public class ElGamalPrivateKeySpec extends ElGamalKeySpec {

    /* renamed from: x, reason: collision with root package name */
    private BigInteger f11701x;

    public ElGamalPrivateKeySpec(BigInteger bigInteger, ElGamalParameterSpec elGamalParameterSpec) {
        super(elGamalParameterSpec);
        this.f11701x = bigInteger;
    }

    public BigInteger getX() {
        return this.f11701x;
    }
}
