package org.bouncycastle.pqc.legacy.math.linearalgebra;

import java.security.SecureRandom;

/* loaded from: classes2.dex */
public class GF2nPolynomialField extends GF2nField {
    private boolean isPentanomial;
    private boolean isTrinomial;

    /* renamed from: pc, reason: collision with root package name */
    private int[] f12054pc;
    GF2Polynomial[] squaringMatrix;

    /* renamed from: tc, reason: collision with root package name */
    private int f12055tc;

    public GF2nPolynomialField(int r22, SecureRandom secureRandom) throws RuntimeException {
        super(secureRandom);
        this.isTrinomial = false;
        this.isPentanomial = false;
        this.f12054pc = new int[3];
        if (r22 < 3) {
            throw new IllegalArgumentException("k must be at least 3");
        }
        this.mDegree = r22;
        computeFieldPolynomial();
        computeSquaringMatrix();
        this.fields = new java.util.Vector();
        this.matrices = new java.util.Vector();
    }

    public GF2nPolynomialField(int r42, SecureRandom secureRandom, GF2Polynomial gF2Polynomial) throws RuntimeException {
        super(secureRandom);
        this.isTrinomial = false;
        this.isPentanomial = false;
        this.f12054pc = new int[3];
        if (r42 < 3) {
            throw new IllegalArgumentException("degree must be at least 3");
        }
        if (gF2Polynomial.getLength() != r42 + 1) {
            throw new RuntimeException();
        }
        if (!gF2Polynomial.isIrreducible()) {
            throw new RuntimeException();
        }
        this.mDegree = r42;
        this.fieldPolynomial = gF2Polynomial;
        computeSquaringMatrix();
        int r6 = 2;
        for (int r02 = 1; r02 < this.fieldPolynomial.getLength() - 1; r02++) {
            if (this.fieldPolynomial.testBit(r02)) {
                r6++;
                if (r6 == 3) {
                    this.f12055tc = r02;
                }
                if (r6 <= 5) {
                    this.f12054pc[r6 - 3] = r02;
                }
            }
        }
        if (r6 == 3) {
            this.isTrinomial = true;
        }
        if (r6 == 5) {
            this.isPentanomial = true;
        }
        this.fields = new java.util.Vector();
        this.matrices = new java.util.Vector();
    }

    public GF2nPolynomialField(int r22, SecureRandom secureRandom, boolean z10) throws RuntimeException {
        super(secureRandom);
        this.isTrinomial = false;
        this.isPentanomial = false;
        this.f12054pc = new int[3];
        if (r22 < 3) {
            throw new IllegalArgumentException("k must be at least 3");
        }
        this.mDegree = r22;
        if (z10) {
            computeFieldPolynomial();
        } else {
            computeFieldPolynomial2();
        }
        computeSquaringMatrix();
        this.fields = new java.util.Vector();
        this.matrices = new java.util.Vector();
    }

    private void computeSquaringMatrix() throws RuntimeException {
        int r02 = this.mDegree;
        GF2Polynomial[] gF2PolynomialArr = new GF2Polynomial[r02 - 1];
        this.squaringMatrix = new GF2Polynomial[r02];
        int r22 = 0;
        while (true) {
            GF2Polynomial[] gF2PolynomialArr2 = this.squaringMatrix;
            if (r22 >= gF2PolynomialArr2.length) {
                break;
            }
            gF2PolynomialArr2[r22] = new GF2Polynomial(this.mDegree, "ZERO");
            r22++;
        }
        for (int r03 = 0; r03 < this.mDegree - 1; r03++) {
            gF2PolynomialArr[r03] = new GF2Polynomial(1, "ONE").shiftLeft(this.mDegree + r03).remainder(this.fieldPolynomial);
        }
        for (int r04 = 1; r04 <= Math.abs(this.mDegree >> 1); r04++) {
            int r23 = 1;
            while (true) {
                int r42 = this.mDegree;
                if (r23 <= r42) {
                    if (gF2PolynomialArr[r42 - (r04 << 1)].testBit(r42 - r23)) {
                        this.squaringMatrix[r23 - 1].setBit(this.mDegree - r04);
                    }
                    r23++;
                }
            }
        }
        int r05 = Math.abs(this.mDegree >> 1) + 1;
        while (true) {
            int r12 = this.mDegree;
            if (r05 > r12) {
                return;
            }
            this.squaringMatrix[((r05 << 1) - r12) - 1].setBit(r12 - r05);
            r05++;
        }
    }

    private boolean testPentanomials() throws RuntimeException {
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this.mDegree + 1);
        this.fieldPolynomial = gF2Polynomial;
        gF2Polynomial.setBit(0);
        this.fieldPolynomial.setBit(this.mDegree);
        int r02 = 1;
        boolean zIsIrreducible = false;
        while (r02 <= this.mDegree - 3 && !zIsIrreducible) {
            this.fieldPolynomial.setBit(r02);
            int r42 = r02 + 1;
            int r52 = r42;
            while (r52 <= this.mDegree - 2 && !zIsIrreducible) {
                this.fieldPolynomial.setBit(r52);
                int r6 = r52 + 1;
                for (int r82 = r6; r82 <= this.mDegree - 1 && !zIsIrreducible; r82++) {
                    this.fieldPolynomial.setBit(r82);
                    if (((((this.mDegree & 1) != 0) | ((r02 & 1) != 0) | ((r52 & 1) != 0)) || ((r82 & 1) != 0)) && (zIsIrreducible = this.fieldPolynomial.isIrreducible())) {
                        this.isPentanomial = true;
                        int[] r43 = this.f12054pc;
                        r43[0] = r02;
                        r43[1] = r52;
                        r43[2] = r82;
                        return zIsIrreducible;
                    }
                    this.fieldPolynomial.resetBit(r82);
                }
                this.fieldPolynomial.resetBit(r52);
                r52 = r6;
            }
            this.fieldPolynomial.resetBit(r02);
            r02 = r42;
        }
        return zIsIrreducible;
    }

    private boolean testRandom() throws RuntimeException {
        this.fieldPolynomial = new GF2Polynomial(this.mDegree + 1);
        do {
            this.fieldPolynomial.randomize();
            this.fieldPolynomial.setBit(this.mDegree);
            this.fieldPolynomial.setBit(0);
        } while (!this.fieldPolynomial.isIrreducible());
        return true;
    }

    private boolean testTrinomials() throws RuntimeException {
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this.mDegree + 1);
        this.fieldPolynomial = gF2Polynomial;
        boolean zIsIrreducible = false;
        gF2Polynomial.setBit(0);
        this.fieldPolynomial.setBit(this.mDegree);
        for (int r02 = 1; r02 < this.mDegree && !zIsIrreducible; r02++) {
            this.fieldPolynomial.setBit(r02);
            boolean zIsIrreducible2 = this.fieldPolynomial.isIrreducible();
            if (zIsIrreducible2) {
                this.isTrinomial = true;
                this.f12055tc = r02;
                return zIsIrreducible2;
            }
            this.fieldPolynomial.resetBit(r02);
            zIsIrreducible = this.fieldPolynomial.isIrreducible();
        }
        return zIsIrreducible;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nField
    public void computeCOBMatrix(GF2nField gF2nField) throws RuntimeException {
        GF2nElement randomRoot;
        GF2nElement[] gF2nElementArr;
        int r02 = this.mDegree;
        if (r02 != gF2nField.mDegree) {
            throw new IllegalArgumentException("GF2nPolynomialField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!");
        }
        boolean z10 = gF2nField instanceof GF2nONBField;
        if (z10) {
            gF2nField.computeCOBMatrix(this);
            return;
        }
        GF2Polynomial[] gF2PolynomialArr = new GF2Polynomial[r02];
        for (int r32 = 0; r32 < this.mDegree; r32++) {
            gF2PolynomialArr[r32] = new GF2Polynomial(this.mDegree);
        }
        do {
            randomRoot = gF2nField.getRandomRoot(this.fieldPolynomial);
        } while (randomRoot.isZero());
        if (randomRoot instanceof GF2nONBElement) {
            int r42 = this.mDegree;
            gF2nElementArr = new GF2nONBElement[r42];
            gF2nElementArr[r42 - 1] = GF2nONBElement.ONE((GF2nONBField) gF2nField);
        } else {
            int r43 = this.mDegree;
            gF2nElementArr = new GF2nPolynomialElement[r43];
            gF2nElementArr[r43 - 1] = GF2nPolynomialElement.ONE((GF2nPolynomialField) gF2nField);
        }
        int r44 = this.mDegree;
        gF2nElementArr[r44 - 2] = randomRoot;
        for (int r45 = r44 - 3; r45 >= 0; r45--) {
            gF2nElementArr[r45] = (GF2nElement) gF2nElementArr[r45 + 1].multiply(randomRoot);
        }
        if (z10) {
            for (int r12 = 0; r12 < this.mDegree; r12++) {
                int r33 = 0;
                while (true) {
                    if (r33 < this.mDegree) {
                        if (gF2nElementArr[r12].testBit((r4 - r33) - 1)) {
                            int r46 = this.mDegree;
                            gF2PolynomialArr[(r46 - r33) - 1].setBit((r46 - r12) - 1);
                        }
                        r33++;
                    }
                }
            }
        } else {
            for (int r13 = 0; r13 < this.mDegree; r13++) {
                for (int r34 = 0; r34 < this.mDegree; r34++) {
                    if (gF2nElementArr[r13].testBit(r34)) {
                        int r47 = this.mDegree;
                        gF2PolynomialArr[(r47 - r34) - 1].setBit((r47 - r13) - 1);
                    }
                }
            }
        }
        this.fields.addElement(gF2nField);
        this.matrices.addElement(gF2PolynomialArr);
        gF2nField.fields.addElement(this);
        gF2nField.matrices.addElement(invertMatrix(gF2PolynomialArr));
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nField
    public void computeFieldPolynomial() throws RuntimeException {
        if (testTrinomials() || testPentanomials()) {
            return;
        }
        testRandom();
    }

    public void computeFieldPolynomial2() throws RuntimeException {
        if (testTrinomials() || testPentanomials()) {
            return;
        }
        testRandom();
    }

    public int[] getPc() throws RuntimeException {
        if (!this.isPentanomial) {
            throw new RuntimeException();
        }
        int[] r12 = new int[3];
        System.arraycopy(this.f12054pc, 0, r12, 0, 3);
        return r12;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nField
    public GF2nElement getRandomRoot(GF2Polynomial gF2Polynomial) {
        GF2nPolynomial gF2nPolynomialGcd;
        int degree;
        int degree2;
        GF2nPolynomial gF2nPolynomial = new GF2nPolynomial(gF2Polynomial, this);
        while (gF2nPolynomial.getDegree() > 1) {
            while (true) {
                GF2nPolynomialElement gF2nPolynomialElement = new GF2nPolynomialElement(this, this.random);
                GF2nPolynomial gF2nPolynomial2 = new GF2nPolynomial(2, GF2nPolynomialElement.ZERO(this));
                gF2nPolynomial2.set(1, gF2nPolynomialElement);
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

    public GF2Polynomial getSquaringVector(int r32) {
        return new GF2Polynomial(this.squaringMatrix[r32]);
    }

    public int getTc() throws RuntimeException {
        if (this.isTrinomial) {
            return this.f12055tc;
        }
        throw new RuntimeException();
    }

    public boolean isPentanomial() {
        return this.isPentanomial;
    }

    public boolean isTrinomial() {
        return this.isTrinomial;
    }
}
