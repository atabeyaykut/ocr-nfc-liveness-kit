package org.bouncycastle.pqc.legacy.math.linearalgebra;

import java.lang.reflect.Array;
import java.security.SecureRandom;

/* loaded from: classes2.dex */
public final class GoppaCode {

    public static class MaMaPe {

        /* renamed from: h, reason: collision with root package name */
        private GF2Matrix f12056h;

        /* renamed from: p, reason: collision with root package name */
        private Permutation f12057p;

        /* renamed from: s, reason: collision with root package name */
        private GF2Matrix f12058s;

        public MaMaPe(GF2Matrix gF2Matrix, GF2Matrix gF2Matrix2, Permutation permutation) {
            this.f12058s = gF2Matrix;
            this.f12056h = gF2Matrix2;
            this.f12057p = permutation;
        }

        public GF2Matrix getFirstMatrix() {
            return this.f12058s;
        }

        public Permutation getPermutation() {
            return this.f12057p;
        }

        public GF2Matrix getSecondMatrix() {
            return this.f12056h;
        }
    }

    public static class MatrixSet {

        /* renamed from: g, reason: collision with root package name */
        private GF2Matrix f12059g;
        private int[] setJ;

        public MatrixSet(GF2Matrix gF2Matrix, int[] r22) {
            this.f12059g = gF2Matrix;
            this.setJ = r22;
        }

        public GF2Matrix getG() {
            return this.f12059g;
        }

        public int[] getSetJ() {
            return this.setJ;
        }
    }

    private GoppaCode() {
    }

    public static MaMaPe computeSystematicForm(GF2Matrix gF2Matrix, SecureRandom secureRandom) {
        GF2Matrix gF2Matrix2;
        boolean z10;
        int numColumns = gF2Matrix.getNumColumns();
        GF2Matrix gF2Matrix3 = null;
        while (true) {
            Permutation permutation = new Permutation(numColumns, secureRandom);
            GF2Matrix gF2Matrix4 = (GF2Matrix) gF2Matrix.rightMultiply(permutation);
            GF2Matrix leftSubMatrix = gF2Matrix4.getLeftSubMatrix();
            try {
                gF2Matrix2 = (GF2Matrix) leftSubMatrix.computeInverse();
                z10 = true;
            } catch (ArithmeticException unused) {
                gF2Matrix2 = gF2Matrix3;
                z10 = false;
            }
            if (z10) {
                return new MaMaPe(leftSubMatrix, ((GF2Matrix) gF2Matrix2.rightMultiply(gF2Matrix4)).getRightSubMatrix(), permutation);
            }
            gF2Matrix3 = gF2Matrix2;
        }
    }

    public static GF2Matrix createCanonicalCheckMatrix(GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM) {
        int degree = gF2mField.getDegree();
        int r42 = 1 << degree;
        int degree2 = polynomialGF2mSmallM.getDegree();
        Class cls = Integer.TYPE;
        int[][] r72 = (int[][]) Array.newInstance((Class<?>) cls, degree2, r42);
        int[][] r92 = (int[][]) Array.newInstance((Class<?>) cls, degree2, r42);
        for (int r10 = 0; r10 < r42; r10++) {
            r92[0][r10] = gF2mField.inverse(polynomialGF2mSmallM.evaluateAt(r10));
        }
        for (int r102 = 1; r102 < degree2; r102++) {
            for (int r11 = 0; r11 < r42; r11++) {
                r92[r102][r11] = gF2mField.mult(r92[r102 - 1][r11], r11);
            }
        }
        for (int r103 = 0; r103 < degree2; r103++) {
            for (int r112 = 0; r112 < r42; r112++) {
                for (int r12 = 0; r12 <= r103; r12++) {
                    int[] r13 = r72[r103];
                    r13[r112] = gF2mField.add(r13[r112], gF2mField.mult(r92[r12][r112], polynomialGF2mSmallM.getCoefficient((degree2 + r12) - r103)));
                }
            }
        }
        int[][] r02 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, degree2 * degree, (r42 + 31) >>> 5);
        for (int r6 = 0; r6 < r42; r6++) {
            int r82 = r6 >>> 5;
            int r93 = 1 << (r6 & 31);
            for (int r104 = 0; r104 < degree2; r104++) {
                int r113 = r72[r104][r6];
                for (int r122 = 0; r122 < degree; r122++) {
                    if (((r113 >>> r122) & 1) != 0) {
                        int[] r132 = r02[(((r104 + 1) * degree) - r122) - 1];
                        r132[r82] = r132[r82] ^ r93;
                    }
                }
            }
        }
        return new GF2Matrix(r42, r02);
    }

    public static GF2Vector syndromeDecode(GF2Vector gF2Vector, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, PolynomialGF2mSmallM[] polynomialGF2mSmallMArr) {
        int degree = 1 << gF2mField.getDegree();
        GF2Vector gF2Vector2 = new GF2Vector(degree);
        if (!gF2Vector.isZero()) {
            PolynomialGF2mSmallM[] polynomialGF2mSmallMArrModPolynomialToFracton = new PolynomialGF2mSmallM(gF2Vector.toExtensionFieldVector(gF2mField)).modInverse(polynomialGF2mSmallM).addMonomial(1).modSquareRootMatrix(polynomialGF2mSmallMArr).modPolynomialToFracton(polynomialGF2mSmallM);
            PolynomialGF2mSmallM polynomialGF2mSmallM2 = polynomialGF2mSmallMArrModPolynomialToFracton[0];
            PolynomialGF2mSmallM polynomialGF2mSmallMMultiply = polynomialGF2mSmallM2.multiply(polynomialGF2mSmallM2);
            PolynomialGF2mSmallM polynomialGF2mSmallM3 = polynomialGF2mSmallMArrModPolynomialToFracton[1];
            PolynomialGF2mSmallM polynomialGF2mSmallMAdd = polynomialGF2mSmallMMultiply.add(polynomialGF2mSmallM3.multiply(polynomialGF2mSmallM3).multWithMonomial(1));
            PolynomialGF2mSmallM polynomialGF2mSmallMMultWithElement = polynomialGF2mSmallMAdd.multWithElement(gF2mField.inverse(polynomialGF2mSmallMAdd.getHeadCoefficient()));
            for (int r6 = 0; r6 < degree; r6++) {
                if (polynomialGF2mSmallMMultWithElement.evaluateAt(r6) == 0) {
                    gF2Vector2.setBit(r6);
                }
            }
        }
        return gF2Vector2;
    }
}
