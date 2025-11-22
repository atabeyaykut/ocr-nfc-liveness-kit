package org.bouncycastle.pqc.legacy.math.ntru.polynomial;

import java.math.BigInteger;

/* loaded from: classes2.dex */
public class Resultant {
    public BigInteger res;
    public BigIntPolynomial rho;

    public Resultant(BigIntPolynomial bigIntPolynomial, BigInteger bigInteger) {
        this.rho = bigIntPolynomial;
        this.res = bigInteger;
    }
}
