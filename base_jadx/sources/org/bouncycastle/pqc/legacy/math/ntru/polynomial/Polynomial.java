package org.bouncycastle.pqc.legacy.math.ntru.polynomial;

/* loaded from: classes2.dex */
public interface Polynomial {
    BigIntPolynomial mult(BigIntPolynomial bigIntPolynomial);

    IntegerPolynomial mult(IntegerPolynomial integerPolynomial);

    IntegerPolynomial mult(IntegerPolynomial integerPolynomial, int r22);

    IntegerPolynomial toIntegerPolynomial();
}
