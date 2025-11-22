package org.bouncycastle.pqc.legacy.math.linearalgebra;

import java.security.SecureRandom;

/* loaded from: classes2.dex */
public abstract class GF2nField {
    protected GF2Polynomial fieldPolynomial;
    protected java.util.Vector fields;
    protected int mDegree;
    protected java.util.Vector matrices;
    protected final SecureRandom random;

    public GF2nField(SecureRandom secureRandom) {
        this.random = secureRandom;
    }

    public abstract void computeCOBMatrix(GF2nField gF2nField);

    public abstract void computeFieldPolynomial();

    public final GF2nElement convert(GF2nElement gF2nElement, GF2nField gF2nField) throws RuntimeException {
        if (gF2nField == this || this.fieldPolynomial.equals(gF2nField.fieldPolynomial)) {
            return (GF2nElement) gF2nElement.clone();
        }
        if (this.mDegree != gF2nField.mDegree) {
            throw new RuntimeException("GF2nField.convert: B1 has a different degree and thus cannot be coverted to!");
        }
        int r02 = this.fields.indexOf(gF2nField);
        if (r02 == -1) {
            computeCOBMatrix(gF2nField);
            r02 = this.fields.indexOf(gF2nField);
        }
        GF2Polynomial[] gF2PolynomialArr = (GF2Polynomial[]) this.matrices.elementAt(r02);
        GF2nElement gF2nElement2 = (GF2nElement) gF2nElement.clone();
        if (gF2nElement2 instanceof GF2nONBElement) {
            ((GF2nONBElement) gF2nElement2).reverseOrder();
        }
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this.mDegree, gF2nElement2.toFlexiBigInt());
        gF2Polynomial.expandN(this.mDegree);
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this.mDegree);
        for (int r22 = 0; r22 < this.mDegree; r22++) {
            if (gF2Polynomial.vectorMult(gF2PolynomialArr[r22])) {
                gF2Polynomial2.setBit((this.mDegree - 1) - r22);
            }
        }
        if (gF2nField instanceof GF2nPolynomialField) {
            return new GF2nPolynomialElement((GF2nPolynomialField) gF2nField, gF2Polynomial2);
        }
        if (!(gF2nField instanceof GF2nONBField)) {
            throw new RuntimeException("GF2nField.convert: B1 must be an instance of GF2nPolynomialField or GF2nONBField!");
        }
        GF2nONBElement gF2nONBElement = new GF2nONBElement((GF2nONBField) gF2nField, gF2Polynomial2.toFlexiBigInt());
        gF2nONBElement.reverseOrder();
        return gF2nONBElement;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof GF2nField)) {
            return false;
        }
        GF2nField gF2nField = (GF2nField) obj;
        if (gF2nField.mDegree != this.mDegree || !this.fieldPolynomial.equals(gF2nField.fieldPolynomial)) {
            return false;
        }
        if (!(this instanceof GF2nPolynomialField) || (gF2nField instanceof GF2nPolynomialField)) {
            return !(this instanceof GF2nONBField) || (gF2nField instanceof GF2nONBField);
        }
        return false;
    }

    public final int getDegree() {
        return this.mDegree;
    }

    public final GF2Polynomial getFieldPolynomial() {
        if (this.fieldPolynomial == null) {
            computeFieldPolynomial();
        }
        return new GF2Polynomial(this.fieldPolynomial);
    }

    public abstract GF2nElement getRandomRoot(GF2Polynomial gF2Polynomial);

    public int hashCode() {
        return this.fieldPolynomial.hashCode() + this.mDegree;
    }

    public final GF2Polynomial[] invertMatrix(GF2Polynomial[] gF2PolynomialArr) throws RuntimeException {
        GF2Polynomial[] gF2PolynomialArr2 = new GF2Polynomial[gF2PolynomialArr.length];
        GF2Polynomial[] gF2PolynomialArr3 = new GF2Polynomial[gF2PolynomialArr.length];
        int r22 = 0;
        for (int r32 = 0; r32 < this.mDegree; r32++) {
            gF2PolynomialArr2[r32] = new GF2Polynomial(gF2PolynomialArr[r32]);
            GF2Polynomial gF2Polynomial = new GF2Polynomial(this.mDegree);
            gF2PolynomialArr3[r32] = gF2Polynomial;
            gF2Polynomial.setBit((this.mDegree - 1) - r32);
        }
        while (true) {
            int r72 = this.mDegree;
            if (r22 >= r72 - 1) {
                for (int r73 = r72 - 1; r73 > 0; r73--) {
                    for (int r23 = r73 - 1; r23 >= 0; r23--) {
                        if (gF2PolynomialArr2[r23].testBit((this.mDegree - 1) - r73)) {
                            gF2PolynomialArr2[r23].addToThis(gF2PolynomialArr2[r73]);
                            gF2PolynomialArr3[r23].addToThis(gF2PolynomialArr3[r73]);
                        }
                    }
                }
                return gF2PolynomialArr3;
            }
            int r74 = r22;
            while (true) {
                int r33 = this.mDegree;
                if (r74 >= r33 || gF2PolynomialArr2[r74].testBit((r33 - 1) - r22)) {
                    break;
                }
                r74++;
            }
            if (r74 >= this.mDegree) {
                throw new RuntimeException("GF2nField.invertMatrix: Matrix cannot be inverted!");
            }
            if (r22 != r74) {
                GF2Polynomial gF2Polynomial2 = gF2PolynomialArr2[r22];
                gF2PolynomialArr2[r22] = gF2PolynomialArr2[r74];
                gF2PolynomialArr2[r74] = gF2Polynomial2;
                GF2Polynomial gF2Polynomial3 = gF2PolynomialArr3[r22];
                gF2PolynomialArr3[r22] = gF2PolynomialArr3[r74];
                gF2PolynomialArr3[r74] = gF2Polynomial3;
            }
            int r75 = r22 + 1;
            int r34 = r75;
            while (true) {
                int r42 = this.mDegree;
                if (r34 < r42) {
                    if (gF2PolynomialArr2[r34].testBit((r42 - 1) - r22)) {
                        gF2PolynomialArr2[r34].addToThis(gF2PolynomialArr2[r22]);
                        gF2PolynomialArr3[r34].addToThis(gF2PolynomialArr3[r22]);
                    }
                    r34++;
                }
            }
            r22 = r75;
        }
    }
}
