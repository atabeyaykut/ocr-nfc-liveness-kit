package org.bouncycastle.pqc.legacy.math.ntru.polynomial;

import java.math.BigDecimal;

/* loaded from: classes2.dex */
public class BigDecimalPolynomial {
    BigDecimal[] coeffs;
    private static final BigDecimal ZERO = new BigDecimal("0");
    private static final BigDecimal ONE_HALF = new BigDecimal("0.5");

    public BigDecimalPolynomial(int r42) {
        this.coeffs = new BigDecimal[r42];
        for (int r02 = 0; r02 < r42; r02++) {
            this.coeffs[r02] = ZERO;
        }
    }

    public BigDecimalPolynomial(BigIntPolynomial bigIntPolynomial) {
        int length = bigIntPolynomial.coeffs.length;
        this.coeffs = new BigDecimal[length];
        for (int r12 = 0; r12 < length; r12++) {
            this.coeffs[r12] = new BigDecimal(bigIntPolynomial.coeffs[r12]);
        }
    }

    public BigDecimalPolynomial(BigDecimal[] bigDecimalArr) {
        this.coeffs = bigDecimalArr;
    }

    private BigDecimal[] copyOf(BigDecimal[] bigDecimalArr, int r42) {
        BigDecimal[] bigDecimalArr2 = new BigDecimal[r42];
        if (bigDecimalArr.length < r42) {
            r42 = bigDecimalArr.length;
        }
        System.arraycopy(bigDecimalArr, 0, bigDecimalArr2, 0, r42);
        return bigDecimalArr2;
    }

    private BigDecimal[] copyOfRange(BigDecimal[] bigDecimalArr, int r42, int r52) {
        int length = r52 - r42;
        BigDecimal[] bigDecimalArr2 = new BigDecimal[length];
        if (bigDecimalArr.length - r42 < length) {
            length = bigDecimalArr.length - r42;
        }
        System.arraycopy(bigDecimalArr, r42, bigDecimalArr2, 0, length);
        return bigDecimalArr2;
    }

    private BigDecimalPolynomial multRecursive(BigDecimalPolynomial bigDecimalPolynomial) {
        BigDecimal[] bigDecimalArr = this.coeffs;
        BigDecimal[] bigDecimalArr2 = bigDecimalPolynomial.coeffs;
        int length = bigDecimalArr2.length;
        int r32 = 0;
        if (length <= 1) {
            BigDecimal[] bigDecimalArr3 = (BigDecimal[]) bigDecimalArr.clone();
            for (int r12 = 0; r12 < this.coeffs.length; r12++) {
                bigDecimalArr3[r12] = bigDecimalArr3[r12].multiply(bigDecimalPolynomial.coeffs[0]);
            }
            return new BigDecimalPolynomial(bigDecimalArr3);
        }
        int r10 = length / 2;
        BigDecimalPolynomial bigDecimalPolynomial2 = new BigDecimalPolynomial(copyOf(bigDecimalArr, r10));
        BigDecimalPolynomial bigDecimalPolynomial3 = new BigDecimalPolynomial(copyOfRange(bigDecimalArr, r10, length));
        BigDecimalPolynomial bigDecimalPolynomial4 = new BigDecimalPolynomial(copyOf(bigDecimalArr2, r10));
        BigDecimalPolynomial bigDecimalPolynomial5 = new BigDecimalPolynomial(copyOfRange(bigDecimalArr2, r10, length));
        BigDecimalPolynomial bigDecimalPolynomial6 = (BigDecimalPolynomial) bigDecimalPolynomial2.clone();
        bigDecimalPolynomial6.add(bigDecimalPolynomial3);
        BigDecimalPolynomial bigDecimalPolynomial7 = (BigDecimalPolynomial) bigDecimalPolynomial4.clone();
        bigDecimalPolynomial7.add(bigDecimalPolynomial5);
        BigDecimalPolynomial bigDecimalPolynomialMultRecursive = bigDecimalPolynomial2.multRecursive(bigDecimalPolynomial4);
        BigDecimalPolynomial bigDecimalPolynomialMultRecursive2 = bigDecimalPolynomial3.multRecursive(bigDecimalPolynomial5);
        BigDecimalPolynomial bigDecimalPolynomialMultRecursive3 = bigDecimalPolynomial6.multRecursive(bigDecimalPolynomial7);
        bigDecimalPolynomialMultRecursive3.sub(bigDecimalPolynomialMultRecursive);
        bigDecimalPolynomialMultRecursive3.sub(bigDecimalPolynomialMultRecursive2);
        BigDecimalPolynomial bigDecimalPolynomial8 = new BigDecimalPolynomial((length * 2) - 1);
        int r22 = 0;
        while (true) {
            BigDecimal[] bigDecimalArr4 = bigDecimalPolynomialMultRecursive.coeffs;
            if (r22 >= bigDecimalArr4.length) {
                break;
            }
            bigDecimalPolynomial8.coeffs[r22] = bigDecimalArr4[r22];
            r22++;
        }
        int r02 = 0;
        while (true) {
            BigDecimal[] bigDecimalArr5 = bigDecimalPolynomialMultRecursive3.coeffs;
            if (r02 >= bigDecimalArr5.length) {
                break;
            }
            BigDecimal[] bigDecimalArr6 = bigDecimalPolynomial8.coeffs;
            int r72 = r10 + r02;
            bigDecimalArr6[r72] = bigDecimalArr6[r72].add(bigDecimalArr5[r02]);
            r02++;
        }
        while (true) {
            BigDecimal[] bigDecimalArr7 = bigDecimalPolynomialMultRecursive2.coeffs;
            if (r32 >= bigDecimalArr7.length) {
                return bigDecimalPolynomial8;
            }
            BigDecimal[] bigDecimalArr8 = bigDecimalPolynomial8.coeffs;
            int r23 = (r10 * 2) + r32;
            bigDecimalArr8[r23] = bigDecimalArr8[r23].add(bigDecimalArr7[r32]);
            r32++;
        }
    }

    public void add(BigDecimalPolynomial bigDecimalPolynomial) {
        BigDecimal[] bigDecimalArr = bigDecimalPolynomial.coeffs;
        int length = bigDecimalArr.length;
        BigDecimal[] bigDecimalArr2 = this.coeffs;
        if (length > bigDecimalArr2.length) {
            int length2 = bigDecimalArr2.length;
            this.coeffs = copyOf(bigDecimalArr2, bigDecimalArr.length);
            while (true) {
                BigDecimal[] bigDecimalArr3 = this.coeffs;
                if (length2 >= bigDecimalArr3.length) {
                    break;
                }
                bigDecimalArr3[length2] = ZERO;
                length2++;
            }
        }
        int r02 = 0;
        while (true) {
            BigDecimal[] bigDecimalArr4 = bigDecimalPolynomial.coeffs;
            if (r02 >= bigDecimalArr4.length) {
                return;
            }
            BigDecimal[] bigDecimalArr5 = this.coeffs;
            bigDecimalArr5[r02] = bigDecimalArr5[r02].add(bigDecimalArr4[r02]);
            r02++;
        }
    }

    public Object clone() {
        return new BigDecimalPolynomial((BigDecimal[]) this.coeffs.clone());
    }

    public BigDecimal[] getCoeffs() {
        BigDecimal[] bigDecimalArr = this.coeffs;
        BigDecimal[] bigDecimalArr2 = new BigDecimal[bigDecimalArr.length];
        System.arraycopy(bigDecimalArr, 0, bigDecimalArr2, 0, bigDecimalArr.length);
        return bigDecimalArr2;
    }

    public void halve() {
        int r02 = 0;
        while (true) {
            BigDecimal[] bigDecimalArr = this.coeffs;
            if (r02 >= bigDecimalArr.length) {
                return;
            }
            bigDecimalArr[r02] = bigDecimalArr[r02].multiply(ONE_HALF);
            r02++;
        }
    }

    public BigDecimalPolynomial mult(BigDecimalPolynomial bigDecimalPolynomial) {
        BigDecimal[] bigDecimalArr;
        int length = this.coeffs.length;
        if (bigDecimalPolynomial.coeffs.length != length) {
            throw new IllegalArgumentException("Number of coefficients must be the same");
        }
        BigDecimalPolynomial bigDecimalPolynomialMultRecursive = multRecursive(bigDecimalPolynomial);
        if (bigDecimalPolynomialMultRecursive.coeffs.length > length) {
            int r12 = length;
            while (true) {
                bigDecimalArr = bigDecimalPolynomialMultRecursive.coeffs;
                if (r12 >= bigDecimalArr.length) {
                    break;
                }
                int r32 = r12 - length;
                bigDecimalArr[r32] = bigDecimalArr[r32].add(bigDecimalArr[r12]);
                r12++;
            }
            bigDecimalPolynomialMultRecursive.coeffs = copyOf(bigDecimalArr, length);
        }
        return bigDecimalPolynomialMultRecursive;
    }

    public BigDecimalPolynomial mult(BigIntPolynomial bigIntPolynomial) {
        return mult(new BigDecimalPolynomial(bigIntPolynomial));
    }

    public BigIntPolynomial round() {
        int length = this.coeffs.length;
        BigIntPolynomial bigIntPolynomial = new BigIntPolynomial(length);
        for (int r32 = 0; r32 < length; r32++) {
            bigIntPolynomial.coeffs[r32] = this.coeffs[r32].setScale(0, 6).toBigInteger();
        }
        return bigIntPolynomial;
    }

    public void sub(BigDecimalPolynomial bigDecimalPolynomial) {
        BigDecimal[] bigDecimalArr = bigDecimalPolynomial.coeffs;
        int length = bigDecimalArr.length;
        BigDecimal[] bigDecimalArr2 = this.coeffs;
        if (length > bigDecimalArr2.length) {
            int length2 = bigDecimalArr2.length;
            this.coeffs = copyOf(bigDecimalArr2, bigDecimalArr.length);
            while (true) {
                BigDecimal[] bigDecimalArr3 = this.coeffs;
                if (length2 >= bigDecimalArr3.length) {
                    break;
                }
                bigDecimalArr3[length2] = ZERO;
                length2++;
            }
        }
        int r02 = 0;
        while (true) {
            BigDecimal[] bigDecimalArr4 = bigDecimalPolynomial.coeffs;
            if (r02 >= bigDecimalArr4.length) {
                return;
            }
            BigDecimal[] bigDecimalArr5 = this.coeffs;
            bigDecimalArr5[r02] = bigDecimalArr5[r02].subtract(bigDecimalArr4[r02]);
            r02++;
        }
    }
}
