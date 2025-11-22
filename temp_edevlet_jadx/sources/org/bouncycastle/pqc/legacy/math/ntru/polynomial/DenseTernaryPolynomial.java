package org.bouncycastle.pqc.legacy.math.ntru.polynomial;

import androidx.appcompat.graphics.drawable.a;
import java.security.SecureRandom;
import org.bouncycastle.pqc.legacy.math.ntru.util.Util;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class DenseTernaryPolynomial extends IntegerPolynomial implements TernaryPolynomial {
    public DenseTernaryPolynomial(int r12) {
        super(r12);
        checkTernarity();
    }

    public DenseTernaryPolynomial(IntegerPolynomial integerPolynomial) {
        this(integerPolynomial.coeffs);
    }

    public DenseTernaryPolynomial(int[] r12) {
        super(r12);
        checkTernarity();
    }

    private void checkTernarity() {
        int r12;
        int r02 = 0;
        while (true) {
            int[] r13 = this.coeffs;
            if (r02 == r13.length) {
                return;
            }
            r12 = r13[r02];
            if (r12 < -1 || r12 > 1) {
                break;
            } else {
                r02++;
            }
        }
        throw new IllegalStateException(a.f("Illegal value: ", r12, ", must be one of {-1, 0, 1}"));
    }

    public static DenseTernaryPolynomial generateRandom(int r02, int r12, int r22, SecureRandom secureRandom) {
        return new DenseTernaryPolynomial(Util.generateRandomTernary(r02, r12, r22, secureRandom));
    }

    public static DenseTernaryPolynomial generateRandom(int r42, SecureRandom secureRandom) {
        DenseTernaryPolynomial denseTernaryPolynomial = new DenseTernaryPolynomial(r42);
        for (int r12 = 0; r12 < r42; r12++) {
            denseTernaryPolynomial.coeffs[r12] = secureRandom.nextInt(3) - 1;
        }
        return denseTernaryPolynomial;
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.TernaryPolynomial
    public int[] getNegOnes() {
        int length = this.coeffs.length;
        int[] r12 = new int[length];
        int r32 = 0;
        for (int r22 = 0; r22 < length; r22++) {
            if (this.coeffs[r22] == -1) {
                r12[r32] = r22;
                r32++;
            }
        }
        return Arrays.copyOf(r12, r32);
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.TernaryPolynomial
    public int[] getOnes() {
        int length = this.coeffs.length;
        int[] r12 = new int[length];
        int r32 = 0;
        for (int r22 = 0; r22 < length; r22++) {
            if (this.coeffs[r22] == 1) {
                r12[r32] = r22;
                r32++;
            }
        }
        return Arrays.copyOf(r12, r32);
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.IntegerPolynomial, org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial
    public IntegerPolynomial mult(IntegerPolynomial integerPolynomial, int r32) {
        if (r32 != 2048) {
            return super.mult(integerPolynomial, r32);
        }
        IntegerPolynomial integerPolynomial2 = (IntegerPolynomial) integerPolynomial.clone();
        integerPolynomial2.modPositive(2048);
        return new LongPolynomial5(integerPolynomial2).mult(this).toIntegerPolynomial();
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.TernaryPolynomial
    public int size() {
        return this.coeffs.length;
    }
}
