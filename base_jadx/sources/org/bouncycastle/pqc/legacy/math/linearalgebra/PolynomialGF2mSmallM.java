package org.bouncycastle.pqc.legacy.math.linearalgebra;

import androidx.constraintlayout.core.a;
import java.security.SecureRandom;

/* loaded from: classes2.dex */
public class PolynomialGF2mSmallM {
    public static final char RANDOM_IRREDUCIBLE_POLYNOMIAL = 'I';
    private int[] coefficients;
    private int degree;
    private GF2mField field;

    public PolynomialGF2mSmallM(GF2mField gF2mField) {
        this.field = gF2mField;
        this.degree = -1;
        this.coefficients = new int[1];
    }

    public PolynomialGF2mSmallM(GF2mField gF2mField, int r32) {
        this.field = gF2mField;
        this.degree = r32;
        int[] r22 = new int[r32 + 1];
        this.coefficients = r22;
        r22[r32] = 1;
    }

    public PolynomialGF2mSmallM(GF2mField gF2mField, int r22, char c10, SecureRandom secureRandom) {
        this.field = gF2mField;
        if (c10 == 'I') {
            this.coefficients = createRandomIrreduciblePolynomial(r22, secureRandom);
            computeDegree();
        } else {
            throw new IllegalArgumentException(" Error: type " + c10 + " is not defined for GF2smallmPolynomial");
        }
    }

    public PolynomialGF2mSmallM(GF2mField gF2mField, byte[] bArr) {
        this.field = gF2mField;
        int r02 = 8;
        int r22 = 1;
        while (gF2mField.getDegree() > r02) {
            r22++;
            r02 += 8;
        }
        if (bArr.length % r22 != 0) {
            throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
        }
        this.coefficients = new int[bArr.length / r22];
        int r23 = 0;
        int r42 = 0;
        while (true) {
            int[] r52 = this.coefficients;
            if (r23 >= r52.length) {
                if (r52.length != 1 && r52[r52.length - 1] == 0) {
                    throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
                }
                computeDegree();
                return;
            }
            int r53 = 0;
            while (r53 < r02) {
                int[] r6 = this.coefficients;
                r6[r23] = ((bArr[r42] & 255) << r53) ^ r6[r23];
                r53 += 8;
                r42++;
            }
            if (!this.field.isElementOfThisField(this.coefficients[r23])) {
                throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
            }
            r23++;
        }
    }

    public PolynomialGF2mSmallM(GF2mField gF2mField, int[] r22) {
        this.field = gF2mField;
        this.coefficients = normalForm(r22);
        computeDegree();
    }

    public PolynomialGF2mSmallM(GF2mVector gF2mVector) {
        this(gF2mVector.getField(), gF2mVector.getIntArrayForm());
    }

    public PolynomialGF2mSmallM(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        this.field = polynomialGF2mSmallM.field;
        this.degree = polynomialGF2mSmallM.degree;
        this.coefficients = IntUtils.clone(polynomialGF2mSmallM.coefficients);
    }

    private int[] add(int[] r52, int[] r6) {
        int[] r02;
        if (r52.length < r6.length) {
            r02 = new int[r6.length];
            System.arraycopy(r6, 0, r02, 0, r6.length);
        } else {
            r02 = new int[r52.length];
            System.arraycopy(r52, 0, r02, 0, r52.length);
            r52 = r6;
        }
        for (int length = r52.length - 1; length >= 0; length--) {
            r02[length] = this.field.add(r02[length], r52[length]);
        }
        return r02;
    }

    private static int computeDegree(int[] r22) {
        int length = r22.length - 1;
        while (length >= 0 && r22[length] == 0) {
            length--;
        }
        return length;
    }

    private void computeDegree() {
        int length = this.coefficients.length;
        do {
            this.degree = length - 1;
            length = this.degree;
            if (length < 0) {
                return;
            }
        } while (this.coefficients[length] == 0);
    }

    private int[] createRandomIrreduciblePolynomial(int r52, SecureRandom secureRandom) {
        int[] r02 = new int[r52 + 1];
        r02[r52] = 1;
        r02[0] = this.field.getRandomNonZeroElement(secureRandom);
        for (int r12 = 1; r12 < r52; r12++) {
            r02[r12] = this.field.getRandomElement(secureRandom);
        }
        while (!isIrreducible(r02)) {
            int r13 = RandUtils.nextInt(secureRandom, r52);
            if (r13 == 0) {
                r02[0] = this.field.getRandomNonZeroElement(secureRandom);
            } else {
                r02[r13] = this.field.getRandomElement(secureRandom);
            }
        }
        return r02;
    }

    private int[][] div(int[] r82, int[] r92) {
        int r02 = computeDegree(r92);
        int r12 = computeDegree(r82) + 1;
        if (r02 == -1) {
            throw new ArithmeticException("Division by zero.");
        }
        int[][] r32 = {new int[1], new int[r12]};
        int r13 = this.field.inverse(headCoefficient(r92));
        r32[0][0] = 0;
        int[] r42 = r32[1];
        System.arraycopy(r82, 0, r42, 0, r42.length);
        while (r02 <= computeDegree(r32[1])) {
            int r43 = this.field.mult(headCoefficient(r32[1]), r13);
            int[] r83 = {r43};
            int[] r44 = multWithElement(r92, r43);
            int r6 = computeDegree(r32[1]) - r02;
            int[] r45 = multWithMonomial(r44, r6);
            r32[0] = add(multWithMonomial(r83, r6), r32[0]);
            r32[1] = add(r45, r32[1]);
        }
        return r32;
    }

    private int[] gcd(int[] r52, int[] r6) {
        if (computeDegree(r52) == -1) {
            return r6;
        }
        while (computeDegree(r6) != -1) {
            int[] r53 = mod(r52, r6);
            int length = r6.length;
            int[] r22 = new int[length];
            System.arraycopy(r6, 0, r22, 0, length);
            int length2 = r53.length;
            int[] r02 = new int[length2];
            System.arraycopy(r53, 0, r02, 0, length2);
            r6 = r02;
            r52 = r22;
        }
        return multWithElement(r52, this.field.inverse(headCoefficient(r52)));
    }

    private static int headCoefficient(int[] r22) {
        int r02 = computeDegree(r22);
        if (r02 == -1) {
            return 0;
        }
        return r22[r02];
    }

    private static boolean isEqual(int[] r52, int[] r6) {
        int r02 = computeDegree(r52);
        if (r02 != computeDegree(r6)) {
            return false;
        }
        for (int r12 = 0; r12 <= r02; r12++) {
            if (r52[r12] != r6[r12]) {
                return false;
            }
        }
        return true;
    }

    private boolean isIrreducible(int[] r92) {
        if (r92[0] == 0) {
            return false;
        }
        int r12 = computeDegree(r92) >> 1;
        int[] r42 = {0, 1};
        int[] r32 = {0, 1};
        int degree = this.field.getDegree();
        for (int r6 = 0; r6 < r12; r6++) {
            for (int r72 = degree - 1; r72 >= 0; r72--) {
                r42 = modMultiply(r42, r42, r92);
            }
            r42 = normalForm(r42);
            if (computeDegree(gcd(add(r42, r32), r92)) != 0) {
                return false;
            }
        }
        return true;
    }

    private int[] mod(int[] r6, int[] r72) {
        int r02 = computeDegree(r72);
        if (r02 == -1) {
            throw new ArithmeticException("Division by zero");
        }
        int length = r6.length;
        int[] r22 = new int[length];
        int r32 = this.field.inverse(headCoefficient(r72));
        System.arraycopy(r6, 0, r22, 0, length);
        while (r02 <= computeDegree(r22)) {
            r22 = add(multWithElement(multWithMonomial(r72, computeDegree(r22) - r02), this.field.mult(headCoefficient(r22), r32)), r22);
        }
        return r22;
    }

    private int[] modDiv(int[] r72, int[] r82, int[] r92) {
        int[] r02 = normalForm(r92);
        int[] r83 = mod(r82, r92);
        int[] r22 = {0};
        int[] r73 = mod(r72, r92);
        while (computeDegree(r83) != -1) {
            int[][] r03 = div(r02, r83);
            int[] r84 = normalForm(r83);
            int[] r42 = normalForm(r03[1]);
            int[] r04 = add(r22, modMultiply(r03[0], r73, r92));
            r22 = normalForm(r73);
            r73 = normalForm(r04);
            r02 = r84;
            r83 = r42;
        }
        return multWithElement(r22, this.field.inverse(headCoefficient(r02)));
    }

    private int[] modMultiply(int[] r12, int[] r22, int[] r32) {
        return mod(multiply(r12, r22), r32);
    }

    private int[] multWithElement(int[] r52, int r6) {
        int r02 = computeDegree(r52);
        if (r02 == -1 || r6 == 0) {
            return new int[1];
        }
        if (r6 == 1) {
            return IntUtils.clone(r52);
        }
        int[] r12 = new int[r02 + 1];
        while (r02 >= 0) {
            r12[r02] = this.field.mult(r52[r02], r6);
            r02--;
        }
        return r12;
    }

    private static int[] multWithMonomial(int[] r42, int r52) {
        int r02 = computeDegree(r42);
        if (r02 == -1) {
            return new int[1];
        }
        int[] r12 = new int[r02 + r52 + 1];
        System.arraycopy(r42, 0, r12, r52, r02 + 1);
        return r12;
    }

    private int[] multiply(int[] r92, int[] r10) {
        if (computeDegree(r92) < computeDegree(r10)) {
            r10 = r92;
            r92 = r10;
        }
        int[] r93 = normalForm(r92);
        int[] r102 = normalForm(r10);
        if (r102.length == 1) {
            return multWithElement(r93, r102[0]);
        }
        int length = r93.length;
        int length2 = r102.length;
        int[] r42 = new int[(length + length2) - 1];
        if (length2 != length) {
            int[] r12 = new int[length2];
            int r02 = length - length2;
            int[] r43 = new int[r02];
            System.arraycopy(r93, 0, r12, 0, length2);
            System.arraycopy(r93, length2, r43, 0, r02);
            return add(multiply(r12, r102), multWithMonomial(multiply(r43, r102), length2));
        }
        int r13 = (length + 1) >>> 1;
        int r03 = length - r13;
        int[] r32 = new int[r13];
        int[] r44 = new int[r13];
        int[] r52 = new int[r03];
        int[] r6 = new int[r03];
        System.arraycopy(r93, 0, r32, 0, r13);
        System.arraycopy(r93, r13, r52, 0, r03);
        System.arraycopy(r102, 0, r44, 0, r13);
        System.arraycopy(r102, r13, r6, 0, r03);
        int[] r94 = add(r32, r52);
        int[] r103 = add(r44, r6);
        int[] r04 = multiply(r32, r44);
        int[] r95 = multiply(r94, r103);
        int[] r104 = multiply(r52, r6);
        return add(multWithMonomial(add(add(add(r95, r04), r104), multWithMonomial(r104, r13)), r13), r04);
    }

    private static int[] normalForm(int[] r32) {
        int r02 = computeDegree(r32);
        if (r02 == -1) {
            return new int[1];
        }
        int r03 = r02 + 1;
        if (r32.length == r03) {
            return IntUtils.clone(r32);
        }
        int[] r12 = new int[r03];
        System.arraycopy(r32, 0, r12, 0, r03);
        return r12;
    }

    public PolynomialGF2mSmallM add(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        return new PolynomialGF2mSmallM(this.field, add(this.coefficients, polynomialGF2mSmallM.coefficients));
    }

    public PolynomialGF2mSmallM addMonomial(int r32) {
        int[] r02 = new int[r32 + 1];
        r02[r32] = 1;
        return new PolynomialGF2mSmallM(this.field, add(this.coefficients, r02));
    }

    public void addToThis(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        this.coefficients = add(this.coefficients, polynomialGF2mSmallM.coefficients);
        computeDegree();
    }

    public PolynomialGF2mSmallM[] div(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        int[][] r6 = div(this.coefficients, polynomialGF2mSmallM.coefficients);
        return new PolynomialGF2mSmallM[]{new PolynomialGF2mSmallM(this.field, r6[0]), new PolynomialGF2mSmallM(this.field, r6[1])};
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof PolynomialGF2mSmallM)) {
            PolynomialGF2mSmallM polynomialGF2mSmallM = (PolynomialGF2mSmallM) obj;
            if (this.field.equals(polynomialGF2mSmallM.field) && this.degree == polynomialGF2mSmallM.degree && isEqual(this.coefficients, polynomialGF2mSmallM.coefficients)) {
                return true;
            }
        }
        return false;
    }

    public int evaluateAt(int r42) {
        int[] r02 = this.coefficients;
        int r12 = this.degree;
        int r03 = r02[r12];
        for (int r13 = r12 - 1; r13 >= 0; r13--) {
            r03 = this.field.mult(r03, r42) ^ this.coefficients[r13];
        }
        return r03;
    }

    public PolynomialGF2mSmallM gcd(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        return new PolynomialGF2mSmallM(this.field, gcd(this.coefficients, polynomialGF2mSmallM.coefficients));
    }

    public int getCoefficient(int r22) {
        if (r22 < 0 || r22 > this.degree) {
            return 0;
        }
        return this.coefficients[r22];
    }

    public int getDegree() {
        int[] r02 = this.coefficients;
        int length = r02.length - 1;
        if (r02[length] == 0) {
            return -1;
        }
        return length;
    }

    public byte[] getEncoded() {
        int r02 = 8;
        int r12 = 1;
        while (this.field.getDegree() > r02) {
            r12++;
            r02 += 8;
        }
        byte[] bArr = new byte[this.coefficients.length * r12];
        int r42 = 0;
        for (int r32 = 0; r32 < this.coefficients.length; r32++) {
            int r52 = 0;
            while (r52 < r02) {
                bArr[r42] = (byte) (this.coefficients[r32] >>> r52);
                r52 += 8;
                r42++;
            }
        }
        return bArr;
    }

    public int getHeadCoefficient() {
        int r02 = this.degree;
        if (r02 == -1) {
            return 0;
        }
        return this.coefficients[r02];
    }

    public int hashCode() {
        int r02 = this.field.hashCode();
        int r12 = 0;
        while (true) {
            int[] r22 = this.coefficients;
            if (r12 >= r22.length) {
                return r02;
            }
            r02 = (r02 * 31) + r22[r12];
            r12++;
        }
    }

    public PolynomialGF2mSmallM mod(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        return new PolynomialGF2mSmallM(this.field, mod(this.coefficients, polynomialGF2mSmallM.coefficients));
    }

    public PolynomialGF2mSmallM modDiv(PolynomialGF2mSmallM polynomialGF2mSmallM, PolynomialGF2mSmallM polynomialGF2mSmallM2) {
        return new PolynomialGF2mSmallM(this.field, modDiv(this.coefficients, polynomialGF2mSmallM.coefficients, polynomialGF2mSmallM2.coefficients));
    }

    public PolynomialGF2mSmallM modInverse(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        return new PolynomialGF2mSmallM(this.field, modDiv(new int[]{1}, this.coefficients, polynomialGF2mSmallM.coefficients));
    }

    public PolynomialGF2mSmallM modMultiply(PolynomialGF2mSmallM polynomialGF2mSmallM, PolynomialGF2mSmallM polynomialGF2mSmallM2) {
        return new PolynomialGF2mSmallM(this.field, modMultiply(this.coefficients, polynomialGF2mSmallM.coefficients, polynomialGF2mSmallM2.coefficients));
    }

    public PolynomialGF2mSmallM[] modPolynomialToFracton(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        int r02 = polynomialGF2mSmallM.degree >> 1;
        int[] r32 = normalForm(polynomialGF2mSmallM.coefficients);
        int[] r22 = mod(this.coefficients, polynomialGF2mSmallM.coefficients);
        int[] r6 = {0};
        int[] r42 = {1};
        while (computeDegree(r22) > r02) {
            int[][] r33 = div(r32, r22);
            int[] r72 = r33[1];
            int[] r34 = add(r6, modMultiply(r33[0], r42, polynomialGF2mSmallM.coefficients));
            r6 = r42;
            r42 = r34;
            r32 = r22;
            r22 = r72;
        }
        return new PolynomialGF2mSmallM[]{new PolynomialGF2mSmallM(this.field, r22), new PolynomialGF2mSmallM(this.field, r42)};
    }

    public PolynomialGF2mSmallM modSquareMatrix(PolynomialGF2mSmallM[] polynomialGF2mSmallMArr) {
        int length = polynomialGF2mSmallMArr.length;
        int[] r12 = new int[length];
        int[] r22 = new int[length];
        int r42 = 0;
        while (true) {
            int[] r52 = this.coefficients;
            if (r42 >= r52.length) {
                break;
            }
            GF2mField gF2mField = this.field;
            int r53 = r52[r42];
            r22[r42] = gF2mField.mult(r53, r53);
            r42++;
        }
        for (int r43 = 0; r43 < length; r43++) {
            for (int r54 = 0; r54 < length; r54++) {
                int[] r6 = polynomialGF2mSmallMArr[r54].coefficients;
                if (r43 < r6.length) {
                    r12[r43] = this.field.add(r12[r43], this.field.mult(r6[r43], r22[r54]));
                }
            }
        }
        return new PolynomialGF2mSmallM(this.field, r12);
    }

    public PolynomialGF2mSmallM modSquareRoot(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        int[] r02 = IntUtils.clone(this.coefficients);
        int[] r12 = modMultiply(r02, r02, polynomialGF2mSmallM.coefficients);
        while (!isEqual(r12, this.coefficients)) {
            r02 = normalForm(r12);
            r12 = modMultiply(r02, r02, polynomialGF2mSmallM.coefficients);
        }
        return new PolynomialGF2mSmallM(this.field, r02);
    }

    public PolynomialGF2mSmallM modSquareRootMatrix(PolynomialGF2mSmallM[] polynomialGF2mSmallMArr) {
        int length = polynomialGF2mSmallMArr.length;
        int[] r12 = new int[length];
        for (int r32 = 0; r32 < length; r32++) {
            for (int r42 = 0; r42 < length; r42++) {
                int[] r52 = polynomialGF2mSmallMArr[r42].coefficients;
                if (r32 < r52.length) {
                    int[] r6 = this.coefficients;
                    if (r42 < r6.length) {
                        r12[r32] = this.field.add(r12[r32], this.field.mult(r52[r32], r6[r42]));
                    }
                }
            }
        }
        for (int r22 = 0; r22 < length; r22++) {
            r12[r22] = this.field.sqRoot(r12[r22]);
        }
        return new PolynomialGF2mSmallM(this.field, r12);
    }

    public void multThisWithElement(int r22) {
        if (!this.field.isElementOfThisField(r22)) {
            throw new ArithmeticException("Not an element of the finite field this polynomial is defined over.");
        }
        this.coefficients = multWithElement(this.coefficients, r22);
        computeDegree();
    }

    public PolynomialGF2mSmallM multWithElement(int r32) {
        if (!this.field.isElementOfThisField(r32)) {
            throw new ArithmeticException("Not an element of the finite field this polynomial is defined over.");
        }
        return new PolynomialGF2mSmallM(this.field, multWithElement(this.coefficients, r32));
    }

    public PolynomialGF2mSmallM multWithMonomial(int r32) {
        return new PolynomialGF2mSmallM(this.field, multWithMonomial(this.coefficients, r32));
    }

    public PolynomialGF2mSmallM multiply(PolynomialGF2mSmallM polynomialGF2mSmallM) {
        return new PolynomialGF2mSmallM(this.field, multiply(this.coefficients, polynomialGF2mSmallM.coefficients));
    }

    public String toString() {
        String string = " Polynomial over " + this.field.toString() + ": \n";
        for (int r12 = 0; r12 < this.coefficients.length; r12++) {
            StringBuilder sbE = a.e(string);
            sbE.append(this.field.elementToStr(this.coefficients[r12]));
            sbE.append("Y^");
            sbE.append(r12);
            sbE.append("+");
            string = sbE.toString();
        }
        return android.support.v4.media.a.f(string, ";");
    }
}
