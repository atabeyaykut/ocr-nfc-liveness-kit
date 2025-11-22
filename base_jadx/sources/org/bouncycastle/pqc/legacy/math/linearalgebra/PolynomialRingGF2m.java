package org.bouncycastle.pqc.legacy.math.linearalgebra;

/* loaded from: classes2.dex */
public class PolynomialRingGF2m {
    private GF2mField field;

    /* renamed from: p, reason: collision with root package name */
    private PolynomialGF2mSmallM f12060p;
    protected PolynomialGF2mSmallM[] sqMatrix;
    protected PolynomialGF2mSmallM[] sqRootMatrix;

    public PolynomialRingGF2m(GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM) {
        this.field = gF2mField;
        this.f12060p = polynomialGF2mSmallM;
        computeSquaringMatrix();
        computeSquareRootMatrix();
    }

    private void computeSquareRootMatrix() {
        int coefficient;
        int degree = this.f12060p.getDegree();
        PolynomialGF2mSmallM[] polynomialGF2mSmallMArr = new PolynomialGF2mSmallM[degree];
        int r22 = degree - 1;
        for (int r32 = r22; r32 >= 0; r32--) {
            polynomialGF2mSmallMArr[r32] = new PolynomialGF2mSmallM(this.sqMatrix[r32]);
        }
        this.sqRootMatrix = new PolynomialGF2mSmallM[degree];
        while (r22 >= 0) {
            this.sqRootMatrix[r22] = new PolynomialGF2mSmallM(this.field, r22);
            r22--;
        }
        for (int r33 = 0; r33 < degree; r33++) {
            if (polynomialGF2mSmallMArr[r33].getCoefficient(r33) == 0) {
                int r42 = r33 + 1;
                boolean z10 = false;
                while (r42 < degree) {
                    if (polynomialGF2mSmallMArr[r42].getCoefficient(r33) != 0) {
                        swapColumns(polynomialGF2mSmallMArr, r33, r42);
                        swapColumns(this.sqRootMatrix, r33, r42);
                        r42 = degree;
                        z10 = true;
                    }
                    r42++;
                }
                if (!z10) {
                    throw new ArithmeticException("Squaring matrix is not invertible.");
                }
            }
            int r43 = this.field.inverse(polynomialGF2mSmallMArr[r33].getCoefficient(r33));
            polynomialGF2mSmallMArr[r33].multThisWithElement(r43);
            this.sqRootMatrix[r33].multThisWithElement(r43);
            for (int r44 = 0; r44 < degree; r44++) {
                if (r44 != r33 && (coefficient = polynomialGF2mSmallMArr[r44].getCoefficient(r33)) != 0) {
                    PolynomialGF2mSmallM polynomialGF2mSmallMMultWithElement = polynomialGF2mSmallMArr[r33].multWithElement(coefficient);
                    PolynomialGF2mSmallM polynomialGF2mSmallMMultWithElement2 = this.sqRootMatrix[r33].multWithElement(coefficient);
                    polynomialGF2mSmallMArr[r44].addToThis(polynomialGF2mSmallMMultWithElement);
                    this.sqRootMatrix[r44].addToThis(polynomialGF2mSmallMMultWithElement2);
                }
            }
        }
    }

    private void computeSquaringMatrix() {
        int r22;
        int degree = this.f12060p.getDegree();
        this.sqMatrix = new PolynomialGF2mSmallM[degree];
        int r12 = 0;
        while (true) {
            r22 = degree >> 1;
            if (r12 >= r22) {
                break;
            }
            int r23 = r12 << 1;
            int[] r42 = new int[r23 + 1];
            r42[r23] = 1;
            this.sqMatrix[r12] = new PolynomialGF2mSmallM(this.field, r42);
            r12++;
        }
        while (r22 < degree) {
            int r13 = r22 << 1;
            int[] r43 = new int[r13 + 1];
            r43[r13] = 1;
            this.sqMatrix[r22] = new PolynomialGF2mSmallM(this.field, r43).mod(this.f12060p);
            r22++;
        }
    }

    private static void swapColumns(PolynomialGF2mSmallM[] polynomialGF2mSmallMArr, int r32, int r42) {
        PolynomialGF2mSmallM polynomialGF2mSmallM = polynomialGF2mSmallMArr[r32];
        polynomialGF2mSmallMArr[r32] = polynomialGF2mSmallMArr[r42];
        polynomialGF2mSmallMArr[r42] = polynomialGF2mSmallM;
    }

    public PolynomialGF2mSmallM[] getSquareRootMatrix() {
        return this.sqRootMatrix;
    }

    public PolynomialGF2mSmallM[] getSquaringMatrix() {
        return this.sqMatrix;
    }
}
