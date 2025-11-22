package org.bouncycastle.pqc.legacy.math.ntru.polynomial;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class BigIntPolynomial {
    private static final double LOG_10_2 = Math.log10(2.0d);
    BigInteger[] coeffs;

    public BigIntPolynomial(int r42) {
        this.coeffs = new BigInteger[r42];
        for (int r02 = 0; r02 < r42; r02++) {
            this.coeffs[r02] = Constants.BIGINT_ZERO;
        }
    }

    public BigIntPolynomial(IntegerPolynomial integerPolynomial) {
        this.coeffs = new BigInteger[integerPolynomial.coeffs.length];
        int r02 = 0;
        while (true) {
            BigInteger[] bigIntegerArr = this.coeffs;
            if (r02 >= bigIntegerArr.length) {
                return;
            }
            bigIntegerArr[r02] = BigInteger.valueOf(integerPolynomial.coeffs[r02]);
            r02++;
        }
    }

    public BigIntPolynomial(BigInteger[] bigIntegerArr) {
        this.coeffs = bigIntegerArr;
    }

    public static BigIntPolynomial generateRandomSmall(int r42, int r52, int r6) {
        ArrayList arrayList = new ArrayList();
        for (int r22 = 0; r22 < r52; r22++) {
            arrayList.add(Constants.BIGINT_ONE);
        }
        for (int r53 = 0; r53 < r6; r53++) {
            arrayList.add(BigInteger.valueOf(-1L));
        }
        while (arrayList.size() < r42) {
            arrayList.add(Constants.BIGINT_ZERO);
        }
        Collections.shuffle(arrayList, CryptoServicesRegistrar.getSecureRandom());
        BigIntPolynomial bigIntPolynomial = new BigIntPolynomial(r42);
        for (int r12 = 0; r12 < arrayList.size(); r12++) {
            bigIntPolynomial.coeffs[r12] = (BigInteger) arrayList.get(r12);
        }
        return bigIntPolynomial;
    }

    private BigInteger maxCoeffAbs() {
        BigInteger bigIntegerAbs = this.coeffs[0].abs();
        int r12 = 1;
        while (true) {
            BigInteger[] bigIntegerArr = this.coeffs;
            if (r12 >= bigIntegerArr.length) {
                return bigIntegerAbs;
            }
            BigInteger bigIntegerAbs2 = bigIntegerArr[r12].abs();
            if (bigIntegerAbs2.compareTo(bigIntegerAbs) > 0) {
                bigIntegerAbs = bigIntegerAbs2;
            }
            r12++;
        }
    }

    private BigIntPolynomial multRecursive(BigIntPolynomial bigIntPolynomial) {
        BigInteger[] bigIntegerArr = this.coeffs;
        BigInteger[] bigIntegerArr2 = bigIntPolynomial.coeffs;
        int length = bigIntegerArr2.length;
        int r32 = 0;
        if (length <= 1) {
            BigInteger[] bigIntegerArrClone = Arrays.clone(bigIntegerArr);
            for (int r12 = 0; r12 < this.coeffs.length; r12++) {
                bigIntegerArrClone[r12] = bigIntegerArrClone[r12].multiply(bigIntPolynomial.coeffs[0]);
            }
            return new BigIntPolynomial(bigIntegerArrClone);
        }
        int r10 = length / 2;
        BigIntPolynomial bigIntPolynomial2 = new BigIntPolynomial(Arrays.copyOf(bigIntegerArr, r10));
        BigIntPolynomial bigIntPolynomial3 = new BigIntPolynomial(Arrays.copyOfRange(bigIntegerArr, r10, length));
        BigIntPolynomial bigIntPolynomial4 = new BigIntPolynomial(Arrays.copyOf(bigIntegerArr2, r10));
        BigIntPolynomial bigIntPolynomial5 = new BigIntPolynomial(Arrays.copyOfRange(bigIntegerArr2, r10, length));
        BigIntPolynomial bigIntPolynomial6 = (BigIntPolynomial) bigIntPolynomial2.clone();
        bigIntPolynomial6.add(bigIntPolynomial3);
        BigIntPolynomial bigIntPolynomial7 = (BigIntPolynomial) bigIntPolynomial4.clone();
        bigIntPolynomial7.add(bigIntPolynomial5);
        BigIntPolynomial bigIntPolynomialMultRecursive = bigIntPolynomial2.multRecursive(bigIntPolynomial4);
        BigIntPolynomial bigIntPolynomialMultRecursive2 = bigIntPolynomial3.multRecursive(bigIntPolynomial5);
        BigIntPolynomial bigIntPolynomialMultRecursive3 = bigIntPolynomial6.multRecursive(bigIntPolynomial7);
        bigIntPolynomialMultRecursive3.sub(bigIntPolynomialMultRecursive);
        bigIntPolynomialMultRecursive3.sub(bigIntPolynomialMultRecursive2);
        BigIntPolynomial bigIntPolynomial8 = new BigIntPolynomial((length * 2) - 1);
        int r22 = 0;
        while (true) {
            BigInteger[] bigIntegerArr3 = bigIntPolynomialMultRecursive.coeffs;
            if (r22 >= bigIntegerArr3.length) {
                break;
            }
            bigIntPolynomial8.coeffs[r22] = bigIntegerArr3[r22];
            r22++;
        }
        int r02 = 0;
        while (true) {
            BigInteger[] bigIntegerArr4 = bigIntPolynomialMultRecursive3.coeffs;
            if (r02 >= bigIntegerArr4.length) {
                break;
            }
            BigInteger[] bigIntegerArr5 = bigIntPolynomial8.coeffs;
            int r72 = r10 + r02;
            bigIntegerArr5[r72] = bigIntegerArr5[r72].add(bigIntegerArr4[r02]);
            r02++;
        }
        while (true) {
            BigInteger[] bigIntegerArr6 = bigIntPolynomialMultRecursive2.coeffs;
            if (r32 >= bigIntegerArr6.length) {
                return bigIntPolynomial8;
            }
            BigInteger[] bigIntegerArr7 = bigIntPolynomial8.coeffs;
            int r23 = (r10 * 2) + r32;
            bigIntegerArr7[r23] = bigIntegerArr7[r23].add(bigIntegerArr6[r32]);
            r32++;
        }
    }

    public void add(BigIntPolynomial bigIntPolynomial) {
        BigInteger[] bigIntegerArr = bigIntPolynomial.coeffs;
        int length = bigIntegerArr.length;
        BigInteger[] bigIntegerArr2 = this.coeffs;
        if (length > bigIntegerArr2.length) {
            int length2 = bigIntegerArr2.length;
            this.coeffs = Arrays.copyOf(bigIntegerArr2, bigIntegerArr.length);
            while (true) {
                BigInteger[] bigIntegerArr3 = this.coeffs;
                if (length2 >= bigIntegerArr3.length) {
                    break;
                }
                bigIntegerArr3[length2] = Constants.BIGINT_ZERO;
                length2++;
            }
        }
        int r02 = 0;
        while (true) {
            BigInteger[] bigIntegerArr4 = bigIntPolynomial.coeffs;
            if (r02 >= bigIntegerArr4.length) {
                return;
            }
            BigInteger[] bigIntegerArr5 = this.coeffs;
            bigIntegerArr5[r02] = bigIntegerArr5[r02].add(bigIntegerArr4[r02]);
            r02++;
        }
    }

    public void add(BigIntPolynomial bigIntPolynomial, BigInteger bigInteger) {
        add(bigIntPolynomial);
        mod(bigInteger);
    }

    public Object clone() {
        return new BigIntPolynomial((BigInteger[]) this.coeffs.clone());
    }

    public BigDecimalPolynomial div(BigDecimal bigDecimal, int r82) {
        BigDecimal bigDecimalDivide = Constants.BIGDEC_ONE.divide(bigDecimal, ((int) (maxCoeffAbs().bitLength() * LOG_10_2)) + 1 + r82 + 1, 6);
        BigDecimalPolynomial bigDecimalPolynomial = new BigDecimalPolynomial(this.coeffs.length);
        for (int r12 = 0; r12 < this.coeffs.length; r12++) {
            bigDecimalPolynomial.coeffs[r12] = new BigDecimal(this.coeffs[r12]).multiply(bigDecimalDivide).setScale(r82, 6);
        }
        return bigDecimalPolynomial;
    }

    public void div(BigInteger bigInteger) {
        BigInteger bigIntegerDivide = bigInteger.add(Constants.BIGINT_ONE).divide(BigInteger.valueOf(2L));
        int r12 = 0;
        while (true) {
            BigInteger[] bigIntegerArr = this.coeffs;
            if (r12 >= bigIntegerArr.length) {
                return;
            }
            bigIntegerArr[r12] = bigIntegerArr[r12].compareTo(Constants.BIGINT_ZERO) > 0 ? this.coeffs[r12].add(bigIntegerDivide) : this.coeffs[r12].add(bigIntegerDivide.negate());
            BigInteger[] bigIntegerArr2 = this.coeffs;
            bigIntegerArr2[r12] = bigIntegerArr2[r12].divide(bigInteger);
            r12++;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && Arrays.areEqual(this.coeffs, ((BigIntPolynomial) obj).coeffs);
    }

    public BigInteger[] getCoeffs() {
        return Arrays.clone(this.coeffs);
    }

    public int getMaxCoeffLength() {
        return ((int) (maxCoeffAbs().bitLength() * LOG_10_2)) + 1;
    }

    public int hashCode() {
        return 31 + Arrays.hashCode(this.coeffs);
    }

    public void mod(BigInteger bigInteger) {
        int r02 = 0;
        while (true) {
            BigInteger[] bigIntegerArr = this.coeffs;
            if (r02 >= bigIntegerArr.length) {
                return;
            }
            bigIntegerArr[r02] = bigIntegerArr[r02].mod(bigInteger);
            r02++;
        }
    }

    public BigIntPolynomial mult(BigIntPolynomial bigIntPolynomial) {
        BigInteger[] bigIntegerArr;
        int length = this.coeffs.length;
        if (bigIntPolynomial.coeffs.length != length) {
            throw new IllegalArgumentException("Number of coefficients must be the same");
        }
        BigIntPolynomial bigIntPolynomialMultRecursive = multRecursive(bigIntPolynomial);
        if (bigIntPolynomialMultRecursive.coeffs.length > length) {
            int r12 = length;
            while (true) {
                bigIntegerArr = bigIntPolynomialMultRecursive.coeffs;
                if (r12 >= bigIntegerArr.length) {
                    break;
                }
                int r32 = r12 - length;
                bigIntegerArr[r32] = bigIntegerArr[r32].add(bigIntegerArr[r12]);
                r12++;
            }
            bigIntPolynomialMultRecursive.coeffs = Arrays.copyOf(bigIntegerArr, length);
        }
        return bigIntPolynomialMultRecursive;
    }

    public void mult(int r32) {
        mult(BigInteger.valueOf(r32));
    }

    public void mult(BigInteger bigInteger) {
        int r02 = 0;
        while (true) {
            BigInteger[] bigIntegerArr = this.coeffs;
            if (r02 >= bigIntegerArr.length) {
                return;
            }
            bigIntegerArr[r02] = bigIntegerArr[r02].multiply(bigInteger);
            r02++;
        }
    }

    public void sub(BigIntPolynomial bigIntPolynomial) {
        BigInteger[] bigIntegerArr = bigIntPolynomial.coeffs;
        int length = bigIntegerArr.length;
        BigInteger[] bigIntegerArr2 = this.coeffs;
        if (length > bigIntegerArr2.length) {
            int length2 = bigIntegerArr2.length;
            this.coeffs = Arrays.copyOf(bigIntegerArr2, bigIntegerArr.length);
            while (true) {
                BigInteger[] bigIntegerArr3 = this.coeffs;
                if (length2 >= bigIntegerArr3.length) {
                    break;
                }
                bigIntegerArr3[length2] = Constants.BIGINT_ZERO;
                length2++;
            }
        }
        int r02 = 0;
        while (true) {
            BigInteger[] bigIntegerArr4 = bigIntPolynomial.coeffs;
            if (r02 >= bigIntegerArr4.length) {
                return;
            }
            BigInteger[] bigIntegerArr5 = this.coeffs;
            bigIntegerArr5[r02] = bigIntegerArr5[r02].subtract(bigIntegerArr4[r02]);
            r02++;
        }
    }

    public BigInteger sumCoeffs() {
        BigInteger bigIntegerAdd = Constants.BIGINT_ZERO;
        int r12 = 0;
        while (true) {
            BigInteger[] bigIntegerArr = this.coeffs;
            if (r12 >= bigIntegerArr.length) {
                return bigIntegerAdd;
            }
            bigIntegerAdd = bigIntegerAdd.add(bigIntegerArr[r12]);
            r12++;
        }
    }
}
