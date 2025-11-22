package org.bouncycastle.pqc.legacy.math.linearalgebra;

import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class GF2nPolynomial {
    private GF2nElement[] coeff;
    private int size;

    private GF2nPolynomial(int r12) {
        this.size = r12;
        this.coeff = new GF2nElement[r12];
    }

    public GF2nPolynomial(int r32, GF2nElement gF2nElement) {
        this.size = r32;
        this.coeff = new GF2nElement[r32];
        for (int r33 = 0; r33 < this.size; r33++) {
            this.coeff[r33] = (GF2nElement) gF2nElement.clone();
        }
    }

    public GF2nPolynomial(GF2Polynomial gF2Polynomial, GF2nField gF2nField) {
        int degree = gF2nField.getDegree() + 1;
        this.size = degree;
        this.coeff = new GF2nElement[degree];
        int r12 = 0;
        if (gF2nField instanceof GF2nONBField) {
            while (r12 < this.size) {
                if (gF2Polynomial.testBit(r12)) {
                    this.coeff[r12] = GF2nONBElement.ONE((GF2nONBField) gF2nField);
                } else {
                    this.coeff[r12] = GF2nONBElement.ZERO((GF2nONBField) gF2nField);
                }
                r12++;
            }
            return;
        }
        if (!(gF2nField instanceof GF2nPolynomialField)) {
            throw new IllegalArgumentException("PolynomialGF2n(Bitstring, GF2nField): B1 must be an instance of GF2nONBField or GF2nPolynomialField!");
        }
        while (r12 < this.size) {
            if (gF2Polynomial.testBit(r12)) {
                this.coeff[r12] = GF2nPolynomialElement.ONE((GF2nPolynomialField) gF2nField);
            } else {
                this.coeff[r12] = GF2nPolynomialElement.ZERO((GF2nPolynomialField) gF2nField);
            }
            r12++;
        }
    }

    public GF2nPolynomial(GF2nPolynomial gF2nPolynomial) {
        int r02 = gF2nPolynomial.size;
        this.coeff = new GF2nElement[r02];
        this.size = r02;
        for (int r03 = 0; r03 < this.size; r03++) {
            this.coeff[r03] = (GF2nElement) gF2nPolynomial.coeff[r03].clone();
        }
    }

    public final GF2nPolynomial add(GF2nPolynomial gF2nPolynomial) {
        GF2nPolynomial gF2nPolynomial2;
        int r22 = 0;
        if (size() >= gF2nPolynomial.size()) {
            gF2nPolynomial2 = new GF2nPolynomial(size());
            while (r22 < gF2nPolynomial.size()) {
                gF2nPolynomial2.coeff[r22] = (GF2nElement) this.coeff[r22].add(gF2nPolynomial.coeff[r22]);
                r22++;
            }
            while (r22 < size()) {
                gF2nPolynomial2.coeff[r22] = this.coeff[r22];
                r22++;
            }
        } else {
            gF2nPolynomial2 = new GF2nPolynomial(gF2nPolynomial.size());
            while (r22 < size()) {
                gF2nPolynomial2.coeff[r22] = (GF2nElement) this.coeff[r22].add(gF2nPolynomial.coeff[r22]);
                r22++;
            }
            while (r22 < gF2nPolynomial.size()) {
                gF2nPolynomial2.coeff[r22] = gF2nPolynomial.coeff[r22];
                r22++;
            }
        }
        return gF2nPolynomial2;
    }

    public final void assignZeroToElements() {
        for (int r02 = 0; r02 < this.size; r02++) {
            this.coeff[r02].assignZero();
        }
    }

    public final GF2nElement at(int r22) {
        return this.coeff[r22];
    }

    public final GF2nPolynomial[] divide(GF2nPolynomial gF2nPolynomial) {
        GF2nPolynomial gF2nPolynomial2;
        GF2nPolynomial[] gF2nPolynomialArr = new GF2nPolynomial[2];
        GF2nPolynomial gF2nPolynomial3 = new GF2nPolynomial(this);
        gF2nPolynomial3.shrink();
        int degree = gF2nPolynomial.getDegree();
        GF2nElement gF2nElement = (GF2nElement) gF2nPolynomial.coeff[degree].invert();
        if (gF2nPolynomial3.getDegree() < degree) {
            GF2nPolynomial gF2nPolynomial4 = new GF2nPolynomial(this);
            gF2nPolynomialArr[0] = gF2nPolynomial4;
            gF2nPolynomial4.assignZeroToElements();
            gF2nPolynomialArr[0].shrink();
            gF2nPolynomial2 = new GF2nPolynomial(this);
            gF2nPolynomialArr[1] = gF2nPolynomial2;
        } else {
            GF2nPolynomial gF2nPolynomial5 = new GF2nPolynomial(this);
            gF2nPolynomialArr[0] = gF2nPolynomial5;
            gF2nPolynomial5.assignZeroToElements();
            while (true) {
                int degree2 = gF2nPolynomial3.getDegree() - degree;
                if (degree2 < 0) {
                    break;
                }
                GF2nElement gF2nElement2 = (GF2nElement) gF2nPolynomial3.coeff[gF2nPolynomial3.getDegree()].multiply(gF2nElement);
                GF2nPolynomial gF2nPolynomialScalarMultiply = gF2nPolynomial.scalarMultiply(gF2nElement2);
                gF2nPolynomialScalarMultiply.shiftThisLeft(degree2);
                gF2nPolynomial3 = gF2nPolynomial3.add(gF2nPolynomialScalarMultiply);
                gF2nPolynomial3.shrink();
                gF2nPolynomialArr[0].coeff[degree2] = (GF2nElement) gF2nElement2.clone();
            }
            gF2nPolynomialArr[1] = gF2nPolynomial3;
            gF2nPolynomial2 = gF2nPolynomialArr[0];
        }
        gF2nPolynomial2.shrink();
        return gF2nPolynomialArr;
    }

    public final void enlarge(int r52) {
        int r02 = this.size;
        if (r52 <= r02) {
            return;
        }
        GF2nElement[] gF2nElementArr = new GF2nElement[r52];
        System.arraycopy(this.coeff, 0, gF2nElementArr, 0, r02);
        GF2nField field = this.coeff[0].getField();
        GF2nElement gF2nElement = this.coeff[0];
        if (gF2nElement instanceof GF2nPolynomialElement) {
            for (int r22 = this.size; r22 < r52; r22++) {
                gF2nElementArr[r22] = GF2nPolynomialElement.ZERO((GF2nPolynomialField) field);
            }
        } else if (gF2nElement instanceof GF2nONBElement) {
            for (int r23 = this.size; r23 < r52; r23++) {
                gF2nElementArr[r23] = GF2nONBElement.ZERO((GF2nONBField) field);
            }
        }
        this.size = r52;
        this.coeff = gF2nElementArr;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof GF2nPolynomial)) {
            return false;
        }
        GF2nPolynomial gF2nPolynomial = (GF2nPolynomial) obj;
        if (getDegree() != gF2nPolynomial.getDegree()) {
            return false;
        }
        for (int r12 = 0; r12 < this.size; r12++) {
            if (!this.coeff[r12].equals(gF2nPolynomial.coeff[r12])) {
                return false;
            }
        }
        return true;
    }

    public final GF2nPolynomial gcd(GF2nPolynomial gF2nPolynomial) {
        GF2nPolynomial gF2nPolynomial2 = new GF2nPolynomial(this);
        GF2nPolynomial gF2nPolynomial3 = new GF2nPolynomial(gF2nPolynomial);
        gF2nPolynomial2.shrink();
        gF2nPolynomial3.shrink();
        GF2nPolynomial gF2nPolynomial4 = gF2nPolynomial2;
        GF2nPolynomial gF2nPolynomialRemainder = gF2nPolynomial3;
        while (!gF2nPolynomialRemainder.isZero()) {
            GF2nPolynomial gF2nPolynomial5 = gF2nPolynomialRemainder;
            gF2nPolynomialRemainder = gF2nPolynomial4.remainder(gF2nPolynomialRemainder);
            gF2nPolynomial4 = gF2nPolynomial5;
        }
        return gF2nPolynomial4.scalarMultiply((GF2nElement) gF2nPolynomial4.coeff[gF2nPolynomial4.getDegree()].invert());
    }

    public final int getDegree() {
        for (int r02 = this.size - 1; r02 >= 0; r02--) {
            if (!this.coeff[r02].isZero()) {
                return r02;
            }
        }
        return -1;
    }

    public int hashCode() {
        return (getDegree() * 7) + Arrays.hashCode(this.coeff);
    }

    public final boolean isZero() {
        for (int r12 = 0; r12 < this.size; r12++) {
            GF2nElement gF2nElement = this.coeff[r12];
            if (gF2nElement != null && !gF2nElement.isZero()) {
                return false;
            }
        }
        return true;
    }

    public final GF2nPolynomial multiply(GF2nPolynomial gF2nPolynomial) {
        if (size() != gF2nPolynomial.size()) {
            throw new IllegalArgumentException("PolynomialGF2n.multiply: this and b must have the same size!");
        }
        GF2nPolynomial gF2nPolynomial2 = new GF2nPolynomial((r0 << 1) - 1);
        for (int r22 = 0; r22 < size(); r22++) {
            for (int r32 = 0; r32 < gF2nPolynomial.size(); r32++) {
                GF2nElement[] gF2nElementArr = gF2nPolynomial2.coeff;
                int r52 = r22 + r32;
                GF2nElement gF2nElement = gF2nElementArr[r52];
                if (gF2nElement == null) {
                    gF2nElementArr[r52] = (GF2nElement) this.coeff[r22].multiply(gF2nPolynomial.coeff[r32]);
                } else {
                    gF2nElementArr[r52] = (GF2nElement) gF2nElement.add(this.coeff[r22].multiply(gF2nPolynomial.coeff[r32]));
                }
            }
        }
        return gF2nPolynomial2;
    }

    public final GF2nPolynomial multiplyAndReduce(GF2nPolynomial gF2nPolynomial, GF2nPolynomial gF2nPolynomial2) {
        return multiply(gF2nPolynomial).reduce(gF2nPolynomial2);
    }

    public final GF2nPolynomial quotient(GF2nPolynomial gF2nPolynomial) throws RuntimeException {
        return divide(gF2nPolynomial)[0];
    }

    public final GF2nPolynomial reduce(GF2nPolynomial gF2nPolynomial) throws RuntimeException {
        return remainder(gF2nPolynomial);
    }

    public final GF2nPolynomial remainder(GF2nPolynomial gF2nPolynomial) throws RuntimeException {
        return divide(gF2nPolynomial)[1];
    }

    public final GF2nPolynomial scalarMultiply(GF2nElement gF2nElement) {
        GF2nPolynomial gF2nPolynomial = new GF2nPolynomial(size());
        for (int r12 = 0; r12 < size(); r12++) {
            gF2nPolynomial.coeff[r12] = (GF2nElement) this.coeff[r12].multiply(gF2nElement);
        }
        return gF2nPolynomial;
    }

    public final void set(int r22, GF2nElement gF2nElement) {
        if (!(gF2nElement instanceof GF2nPolynomialElement) && !(gF2nElement instanceof GF2nONBElement)) {
            throw new IllegalArgumentException("PolynomialGF2n.set f must be an instance of either GF2nPolynomialElement or GF2nONBElement!");
        }
        this.coeff[r22] = (GF2nElement) gF2nElement.clone();
    }

    public final GF2nPolynomial shiftLeft(int r6) {
        if (r6 <= 0) {
            return new GF2nPolynomial(this);
        }
        GF2nPolynomial gF2nPolynomial = new GF2nPolynomial(this.size + r6, this.coeff[0]);
        gF2nPolynomial.assignZeroToElements();
        for (int r32 = 0; r32 < this.size; r32++) {
            gF2nPolynomial.coeff[r32 + r6] = this.coeff[r32];
        }
        return gF2nPolynomial;
    }

    public final void shiftThisLeft(int r72) {
        if (r72 > 0) {
            int r02 = this.size;
            GF2nField field = this.coeff[0].getField();
            enlarge(this.size + r72);
            for (int r03 = r02 - 1; r03 >= 0; r03--) {
                GF2nElement[] gF2nElementArr = this.coeff;
                gF2nElementArr[r03 + r72] = gF2nElementArr[r03];
            }
            GF2nElement gF2nElement = this.coeff[0];
            if (gF2nElement instanceof GF2nPolynomialElement) {
                for (int r73 = r72 - 1; r73 >= 0; r73--) {
                    this.coeff[r73] = GF2nPolynomialElement.ZERO((GF2nPolynomialField) field);
                }
                return;
            }
            if (gF2nElement instanceof GF2nONBElement) {
                for (int r74 = r72 - 1; r74 >= 0; r74--) {
                    this.coeff[r74] = GF2nONBElement.ZERO((GF2nONBField) field);
                }
            }
        }
    }

    public final void shrink() {
        int r02 = this.size;
        do {
            r02--;
            if (!this.coeff[r02].isZero()) {
                break;
            }
        } while (r02 > 0);
        int r03 = r02 + 1;
        if (r03 < this.size) {
            GF2nElement[] gF2nElementArr = new GF2nElement[r03];
            System.arraycopy(this.coeff, 0, gF2nElementArr, 0, r03);
            this.coeff = gF2nElementArr;
            this.size = r03;
        }
    }

    public final int size() {
        return this.size;
    }
}
