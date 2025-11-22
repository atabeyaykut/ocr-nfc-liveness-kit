package org.bouncycastle.pqc.legacy.math.linearalgebra;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Random;

/* loaded from: classes2.dex */
public class GF2nONBField extends GF2nField {
    private static final int MAXLONG = 64;
    private int mBit;
    private int mLength;
    int[][] mMult;
    private int mType;

    public GF2nONBField(int r42, SecureRandom secureRandom) throws RuntimeException {
        super(secureRandom);
        if (r42 < 3) {
            throw new IllegalArgumentException("k must be at least 3");
        }
        this.mDegree = r42;
        int r02 = r42 / 64;
        this.mLength = r02;
        int r43 = r42 & 63;
        this.mBit = r43;
        if (r43 == 0) {
            this.mBit = 64;
        } else {
            this.mLength = r02 + 1;
        }
        computeType();
        if (this.mType >= 3) {
            throw new RuntimeException("\nThe type of this field is " + this.mType);
        }
        this.mMult = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, this.mDegree, 2);
        for (int r44 = 0; r44 < this.mDegree; r44++) {
            int[] r03 = this.mMult[r44];
            r03[0] = -1;
            r03[1] = -1;
        }
        computeMultMatrix();
        computeFieldPolynomial();
        this.fields = new java.util.Vector();
        this.matrices = new java.util.Vector();
    }

    private void computeMultMatrix() {
        int r82;
        int r02 = this.mType;
        if ((r02 & 7) == 0) {
            throw new RuntimeException("bisher nur fuer Gausssche Normalbasen implementiert");
        }
        int r12 = (this.mDegree * r02) + 1;
        int[] r32 = new int[r12];
        int r03 = r02 == 1 ? 1 : r02 == 2 ? r12 - 1 : elementOfOrder(r02, r12);
        int r6 = 0;
        int r72 = 1;
        while (true) {
            r82 = this.mType;
            if (r6 >= r82) {
                break;
            }
            int r92 = r72;
            for (int r83 = 0; r83 < this.mDegree; r83++) {
                r32[r92] = r83;
                r92 = (r92 << 1) % r12;
                if (r92 < 0) {
                    r92 += r12;
                }
            }
            r72 = (r72 * r03) % r12;
            if (r72 < 0) {
                r72 += r12;
            }
            r6++;
        }
        if (r82 != 1) {
            if (r82 != 2) {
                throw new RuntimeException("only type 1 or type 2 implemented");
            }
            int r42 = 1;
            while (r42 < r12 - 1) {
                int r73 = r42 + 1;
                int[] r62 = this.mMult[r32[r73]];
                int r43 = r12 - r42;
                if (r62[0] == -1) {
                    r62[0] = r32[r43];
                } else {
                    r62[1] = r32[r43];
                }
                r42 = r73;
            }
            return;
        }
        int r44 = 1;
        while (r44 < r12 - 1) {
            int r74 = r44 + 1;
            int[] r63 = this.mMult[r32[r74]];
            int r45 = r12 - r44;
            if (r63[0] == -1) {
                r63[0] = r32[r45];
            } else {
                r63[1] = r32[r45];
            }
            r44 = r74;
        }
        int r13 = this.mDegree >> 1;
        for (int r33 = 1; r33 <= r13; r33++) {
            int[][] r46 = this.mMult;
            int r64 = r33 - 1;
            int[] r75 = r46[r64];
            if (r75[0] == -1) {
                r75[0] = (r13 + r33) - 1;
            } else {
                r75[1] = (r13 + r33) - 1;
            }
            int[] r47 = r46[(r13 + r33) - 1];
            if (r47[0] == -1) {
                r47[0] = r64;
            } else {
                r47[1] = r64;
            }
        }
    }

    private void computeType() throws RuntimeException {
        if ((this.mDegree & 7) == 0) {
            throw new RuntimeException("The extension degree is divisible by 8!");
        }
        this.mType = 1;
        int r12 = 0;
        while (r12 != 1) {
            int r32 = (this.mType * this.mDegree) + 1;
            if (IntegerFunctions.isPrime(r32)) {
                int r13 = IntegerFunctions.order(2, r32);
                int r22 = this.mType;
                int r33 = this.mDegree;
                r12 = IntegerFunctions.gcd((r22 * r33) / r13, r33);
            }
            this.mType++;
        }
        int r14 = this.mType - 1;
        this.mType = r14;
        if (r14 == 1) {
            int r15 = (this.mDegree << 1) + 1;
            if (IntegerFunctions.isPrime(r15)) {
                int r16 = IntegerFunctions.order(2, r15);
                int r23 = this.mDegree;
                if (IntegerFunctions.gcd((r23 << 1) / r16, r23) == 1) {
                    this.mType++;
                }
            }
        }
    }

    private int elementOfOrder(int r52, int r6) {
        int r22;
        Random random = new Random();
        int r12 = 0;
        while (r12 == 0) {
            int r23 = r6 - 1;
            r12 = random.nextInt() % r23;
            if (r12 < 0) {
                r12 += r23;
            }
        }
        while (true) {
            r22 = IntegerFunctions.order(r12, r6);
            if (r22 % r52 == 0 && r22 != 0) {
                break;
            }
            while (r12 == 0) {
                int r24 = r6 - 1;
                r12 = random.nextInt() % r24;
                if (r12 < 0) {
                    r12 += r24;
                }
            }
        }
        int r02 = r12;
        for (int r62 = 2; r62 <= r52 / r22; r62++) {
            r02 *= r12;
        }
        return r02;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nField
    public void computeCOBMatrix(GF2nField gF2nField) throws RuntimeException {
        GF2nElement randomRoot;
        int r02 = this.mDegree;
        if (r02 != gF2nField.mDegree) {
            throw new IllegalArgumentException("GF2nField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!");
        }
        GF2Polynomial[] gF2PolynomialArr = new GF2Polynomial[r02];
        for (int r22 = 0; r22 < this.mDegree; r22++) {
            gF2PolynomialArr[r22] = new GF2Polynomial(this.mDegree);
        }
        do {
            randomRoot = gF2nField.getRandomRoot(this.fieldPolynomial);
        } while (randomRoot.isZero());
        GF2nElement[] gF2nElementArr = new GF2nPolynomialElement[this.mDegree];
        gF2nElementArr[0] = (GF2nElement) randomRoot.clone();
        for (int r42 = 1; r42 < this.mDegree; r42++) {
            gF2nElementArr[r42] = gF2nElementArr[r42 - 1].square();
        }
        for (int r43 = 0; r43 < this.mDegree; r43++) {
            for (int r52 = 0; r52 < this.mDegree; r52++) {
                if (gF2nElementArr[r43].testBit(r52)) {
                    int r6 = this.mDegree;
                    gF2PolynomialArr[(r6 - r52) - 1].setBit((r6 - r43) - 1);
                }
            }
        }
        this.fields.addElement(gF2nField);
        this.matrices.addElement(gF2PolynomialArr);
        gF2nField.fields.addElement(this);
        gF2nField.matrices.addElement(invertMatrix(gF2PolynomialArr));
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nField
    public void computeFieldPolynomial() {
        GF2Polynomial gF2Polynomial;
        int r02 = this.mType;
        if (r02 == 1) {
            gF2Polynomial = new GF2Polynomial(this.mDegree + 1, "ALL");
        } else {
            if (r02 != 2) {
                return;
            }
            GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this.mDegree + 1, "ONE");
            GF2Polynomial gF2Polynomial3 = new GF2Polynomial(this.mDegree + 1, "X");
            gF2Polynomial3.addToThis(gF2Polynomial2);
            GF2Polynomial gF2Polynomial4 = gF2Polynomial2;
            gF2Polynomial = gF2Polynomial3;
            int r22 = 1;
            while (r22 < this.mDegree) {
                GF2Polynomial gF2PolynomialShiftLeft = gF2Polynomial.shiftLeft();
                gF2PolynomialShiftLeft.addToThis(gF2Polynomial4);
                r22++;
                gF2Polynomial4 = gF2Polynomial;
                gF2Polynomial = gF2PolynomialShiftLeft;
            }
        }
        this.fieldPolynomial = gF2Polynomial;
    }

    public int getONBBit() {
        return this.mBit;
    }

    public int getONBLength() {
        return this.mLength;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nField
    public GF2nElement getRandomRoot(GF2Polynomial gF2Polynomial) {
        GF2nPolynomial gF2nPolynomialGcd;
        int degree;
        int degree2;
        GF2nPolynomial gF2nPolynomial = new GF2nPolynomial(gF2Polynomial, this);
        while (gF2nPolynomial.getDegree() > 1) {
            while (true) {
                GF2nONBElement gF2nONBElement = new GF2nONBElement(this, this.random);
                GF2nPolynomial gF2nPolynomial2 = new GF2nPolynomial(2, GF2nONBElement.ZERO(this));
                gF2nPolynomial2.set(1, gF2nONBElement);
                GF2nPolynomial gF2nPolynomial3 = new GF2nPolynomial(gF2nPolynomial2);
                for (int r32 = 1; r32 <= this.mDegree - 1; r32++) {
                    gF2nPolynomial3 = gF2nPolynomial3.multiplyAndReduce(gF2nPolynomial3, gF2nPolynomial).add(gF2nPolynomial2);
                }
                gF2nPolynomialGcd = gF2nPolynomial3.gcd(gF2nPolynomial);
                degree = gF2nPolynomialGcd.getDegree();
                degree2 = gF2nPolynomial.getDegree();
                if (degree != 0 && degree != degree2) {
                    break;
                }
            }
            gF2nPolynomial = (degree << 1) > degree2 ? gF2nPolynomial.quotient(gF2nPolynomialGcd) : new GF2nPolynomial(gF2nPolynomialGcd);
        }
        return gF2nPolynomial.at(0);
    }

    public int[][] invMatrix(int[][] r6) {
        int r02 = this.mDegree;
        int[] r22 = {r02, r02};
        Class cls = Integer.TYPE;
        int r23 = this.mDegree;
        int[][] r03 = (int[][]) Array.newInstance((Class<?>) cls, r23, r23);
        for (int r12 = 0; r12 < this.mDegree; r12++) {
            r03[r12][r12] = 1;
        }
        for (int r42 = 0; r42 < this.mDegree; r42++) {
            int r04 = r42;
            while (true) {
                int r13 = this.mDegree;
                if (r04 < r13) {
                    r6[(r13 - 1) - r42][r04] = r6[r42][r42];
                    r04++;
                }
            }
        }
        return null;
    }
}
