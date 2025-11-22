package org.bouncycastle.math.field;

import java.math.BigInteger;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes2.dex */
public abstract class FiniteFields {
    static final FiniteField GF_2 = new PrimeField(BigInteger.valueOf(2));
    static final FiniteField GF_3 = new PrimeField(BigInteger.valueOf(3));

    public static PolynomialExtensionField getBinaryExtensionField(int[] r32) {
        if (r32[0] != 0) {
            throw new IllegalArgumentException("Irreducible polynomials in GF(2) must have constant term");
        }
        for (int r02 = 1; r02 < r32.length; r02++) {
            if (r32[r02] <= r32[r02 - 1]) {
                throw new IllegalArgumentException("Polynomial exponents must be monotonically increasing");
            }
        }
        return new GenericPolynomialExtensionField(GF_2, new GF2Polynomial(r32));
    }

    public static FiniteField getPrimeField(BigInteger bigInteger) {
        int r02 = bigInteger.bitLength();
        if (bigInteger.signum() <= 0 || r02 < 2) {
            throw new IllegalArgumentException("'characteristic' must be >= 2");
        }
        if (r02 < 3) {
            int r03 = BigIntegers.intValueExact(bigInteger);
            if (r03 == 2) {
                return GF_2;
            }
            if (r03 == 3) {
                return GF_3;
            }
        }
        return new PrimeField(bigInteger);
    }
}
