package org.bouncycastle.pqc.legacy.math.linearalgebra;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class GF2Matrix extends Matrix {
    private int length;
    private int[][] matrix;

    public GF2Matrix(int r22, char c10) {
        this(r22, c10, new SecureRandom());
    }

    public GF2Matrix(int r22, char c10, SecureRandom secureRandom) {
        if (r22 <= 0) {
            throw new ArithmeticException("Size of matrix is non-positive.");
        }
        if (c10 == 'I') {
            assignUnitMatrix(r22);
            return;
        }
        if (c10 == 'L') {
            assignRandomLowerTriangularMatrix(r22, secureRandom);
            return;
        }
        if (c10 == 'R') {
            assignRandomRegularMatrix(r22, secureRandom);
        } else if (c10 == 'U') {
            assignRandomUpperTriangularMatrix(r22, secureRandom);
        } else {
            if (c10 != 'Z') {
                throw new ArithmeticException("Unknown matrix type.");
            }
            assignZeroMatrix(r22, r22);
        }
    }

    private GF2Matrix(int r12, int r22) {
        if (r22 <= 0 || r12 <= 0) {
            throw new ArithmeticException("size of matrix is non-positive");
        }
        assignZeroMatrix(r12, r22);
    }

    public GF2Matrix(int r6, int[][] r72) {
        int[] r12 = r72[0];
        if (r12.length != ((r6 + 31) >> 5)) {
            throw new ArithmeticException("Int array does not match given number of columns.");
        }
        this.numColumns = r6;
        this.numRows = r72.length;
        this.length = r12.length;
        int r62 = r6 & 31;
        int r63 = r62 == 0 ? -1 : (1 << r62) - 1;
        for (int r02 = 0; r02 < this.numRows; r02++) {
            int[] r22 = r72[r02];
            int r32 = this.length - 1;
            r22[r32] = r22[r32] & r63;
        }
        this.matrix = r72;
    }

    public GF2Matrix(GF2Matrix gF2Matrix) {
        this.numColumns = gF2Matrix.getNumColumns();
        this.numRows = gF2Matrix.getNumRows();
        this.length = gF2Matrix.length;
        this.matrix = new int[gF2Matrix.matrix.length][];
        int r02 = 0;
        while (true) {
            int[][] r12 = this.matrix;
            if (r02 >= r12.length) {
                return;
            }
            r12[r02] = IntUtils.clone(gF2Matrix.matrix[r02]);
            r02++;
        }
    }

    public GF2Matrix(byte[] bArr) {
        if (bArr.length < 9) {
            throw new ArithmeticException("given array is not an encoded matrix over GF(2)");
        }
        this.numRows = LittleEndianConversions.OS2IP(bArr, 0);
        int r12 = LittleEndianConversions.OS2IP(bArr, 4);
        this.numColumns = r12;
        int r42 = this.numRows;
        int r32 = ((r12 + 7) >>> 3) * r42;
        if (r42 > 0) {
            int r6 = 8;
            if (r32 == bArr.length - 8) {
                int r13 = (r12 + 31) >>> 5;
                this.length = r13;
                this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, r42, r13);
                int r14 = this.numColumns;
                int r22 = r14 >> 5;
                int r15 = r14 & 31;
                for (int r33 = 0; r33 < this.numRows; r33++) {
                    int r43 = 0;
                    while (r43 < r22) {
                        this.matrix[r33][r43] = LittleEndianConversions.OS2IP(bArr, r6);
                        r43++;
                        r6 += 4;
                    }
                    int r44 = 0;
                    while (r44 < r15) {
                        int[] r52 = this.matrix[r33];
                        r52[r22] = ((bArr[r6] & 255) << r44) ^ r52[r22];
                        r44 += 8;
                        r6++;
                    }
                }
                return;
            }
        }
        throw new ArithmeticException("given array is not an encoded matrix over GF(2)");
    }

    private static void addToRow(int[] r32, int[] r42, int r52) {
        for (int length = r42.length - 1; length >= r52; length--) {
            r42[length] = r32[length] ^ r42[length];
        }
    }

    private void assignRandomLowerTriangularMatrix(int r92, SecureRandom secureRandom) {
        this.numRows = r92;
        this.numColumns = r92;
        int r02 = (r92 + 31) >>> 5;
        this.length = r02;
        this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, r92, r02);
        for (int r93 = 0; r93 < this.numRows; r93++) {
            int r12 = r93 >>> 5;
            int r32 = r93 & 31;
            int r42 = 31 - r32;
            int r33 = 1 << r32;
            for (int r52 = 0; r52 < r12; r52++) {
                this.matrix[r93][r52] = secureRandom.nextInt();
            }
            this.matrix[r93][r12] = r33 | (secureRandom.nextInt() >>> r42);
            while (true) {
                r12++;
                if (r12 < this.length) {
                    this.matrix[r93][r12] = 0;
                }
            }
        }
    }

    private void assignRandomRegularMatrix(int r72, SecureRandom secureRandom) {
        this.numRows = r72;
        this.numColumns = r72;
        int r02 = (r72 + 31) >>> 5;
        this.length = r02;
        this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, r72, r02);
        GF2Matrix gF2Matrix = (GF2Matrix) new GF2Matrix(r72, Matrix.MATRIX_TYPE_RANDOM_LT, secureRandom).rightMultiply(new GF2Matrix(r72, Matrix.MATRIX_TYPE_RANDOM_UT, secureRandom));
        int[] vector = new Permutation(r72, secureRandom).getVector();
        for (int r22 = 0; r22 < r72; r22++) {
            System.arraycopy(gF2Matrix.matrix[r22], 0, this.matrix[vector[r22]], 0, this.length);
        }
    }

    private void assignRandomUpperTriangularMatrix(int r92, SecureRandom secureRandom) {
        int r42;
        this.numRows = r92;
        this.numColumns = r92;
        int r02 = (r92 + 31) >>> 5;
        this.length = r02;
        this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, r92, r02);
        int r93 = r92 & 31;
        int r94 = r93 == 0 ? -1 : (1 << r93) - 1;
        for (int r12 = 0; r12 < this.numRows; r12++) {
            int r32 = r12 >>> 5;
            int r43 = r12 & 31;
            int r52 = 1 << r43;
            for (int r6 = 0; r6 < r32; r6++) {
                this.matrix[r12][r6] = 0;
            }
            this.matrix[r12][r32] = (secureRandom.nextInt() << r43) | r52;
            while (true) {
                r32++;
                r42 = this.length;
                if (r32 < r42) {
                    this.matrix[r12][r32] = secureRandom.nextInt();
                }
            }
            int[] r33 = this.matrix[r12];
            int r44 = r42 - 1;
            r33[r44] = r33[r44] & r94;
        }
    }

    private void assignUnitMatrix(int r52) {
        this.numRows = r52;
        this.numColumns = r52;
        int r02 = (r52 + 31) >>> 5;
        this.length = r02;
        int[] r12 = {r52, r02};
        this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, r12);
        for (int r53 = 0; r53 < this.numRows; r53++) {
            for (int r13 = 0; r13 < this.length; r13++) {
                this.matrix[r53][r13] = 0;
            }
        }
        for (int r03 = 0; r03 < this.numRows; r03++) {
            this.matrix[r03][r03 >>> 5] = 1 << (r03 & 31);
        }
    }

    private void assignZeroMatrix(int r32, int r42) {
        this.numRows = r32;
        this.numColumns = r42;
        int r43 = (r42 + 31) >>> 5;
        this.length = r43;
        this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, r32, r43);
        for (int r33 = 0; r33 < this.numRows; r33++) {
            for (int r02 = 0; r02 < this.length; r02++) {
                this.matrix[r33][r02] = 0;
            }
        }
    }

    public static GF2Matrix[] createRandomRegularMatrixAndItsInverse(int r18, SecureRandom secureRandom) {
        GF2Matrix[] gF2MatrixArr = new GF2Matrix[2];
        int r42 = (r18 + 31) >> 5;
        GF2Matrix gF2Matrix = new GF2Matrix(r18, Matrix.MATRIX_TYPE_RANDOM_LT, secureRandom);
        GF2Matrix gF2Matrix2 = new GF2Matrix(r18, Matrix.MATRIX_TYPE_RANDOM_UT, secureRandom);
        GF2Matrix gF2Matrix3 = (GF2Matrix) gF2Matrix.rightMultiply(gF2Matrix2);
        Permutation permutation = new Permutation(r18, secureRandom);
        int[] vector = permutation.getVector();
        int[][] r22 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, r18, r42);
        for (int r11 = 0; r11 < r18; r11++) {
            System.arraycopy(gF2Matrix3.matrix[vector[r11]], 0, r22[r11], 0, r42);
        }
        gF2MatrixArr[0] = new GF2Matrix(r18, r22);
        GF2Matrix gF2Matrix4 = new GF2Matrix(r18, 'I');
        int r72 = 0;
        while (r72 < r18) {
            int r12 = r72 >>> 5;
            int r112 = 1 << (r72 & 31);
            int r13 = r72 + 1;
            for (int r14 = r13; r14 < r18; r14++) {
                if ((gF2Matrix.matrix[r14][r12] & r112) != 0) {
                    for (int r15 = 0; r15 <= r12; r15++) {
                        int[][] r10 = gF2Matrix4.matrix;
                        int[] r16 = r10[r14];
                        r16[r15] = r16[r15] ^ r10[r72][r15];
                    }
                }
            }
            r72 = r13;
        }
        GF2Matrix gF2Matrix5 = new GF2Matrix(r18, 'I');
        for (int r02 = r18 - 1; r02 >= 0; r02--) {
            int r73 = r02 >>> 5;
            int r23 = 1 << (r02 & 31);
            for (int r102 = r02 - 1; r102 >= 0; r102--) {
                if ((gF2Matrix2.matrix[r102][r73] & r23) != 0) {
                    for (int r113 = r73; r113 < r42; r113++) {
                        int[][] r122 = gF2Matrix5.matrix;
                        int[] r132 = r122[r102];
                        r132[r113] = r122[r02][r113] ^ r132[r113];
                    }
                }
            }
        }
        gF2MatrixArr[1] = (GF2Matrix) gF2Matrix5.rightMultiply(gF2Matrix4.rightMultiply(permutation));
        return gF2MatrixArr;
    }

    private static void swapRows(int[][] r22, int r32, int r42) {
        int[] r02 = r22[r32];
        r22[r32] = r22[r42];
        r22[r42] = r02;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public Matrix computeInverse() {
        int r02 = this.numRows;
        if (r02 != this.numColumns) {
            throw new ArithmeticException("Matrix is not invertible.");
        }
        int[][] r03 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, r02, this.length);
        for (int r42 = this.numRows - 1; r42 >= 0; r42--) {
            r03[r42] = IntUtils.clone(this.matrix[r42]);
        }
        int[][] r32 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, this.numRows, this.length);
        for (int r43 = this.numRows - 1; r43 >= 0; r43--) {
            r32[r43][r43 >> 5] = 1 << (r43 & 31);
        }
        for (int r44 = 0; r44 < this.numRows; r44++) {
            int r6 = r44 >> 5;
            int r72 = 1 << (r44 & 31);
            if ((r03[r44][r6] & r72) == 0) {
                int r82 = r44 + 1;
                boolean z10 = false;
                while (r82 < this.numRows) {
                    if ((r03[r82][r6] & r72) != 0) {
                        swapRows(r03, r44, r82);
                        swapRows(r32, r44, r82);
                        r82 = this.numRows;
                        z10 = true;
                    }
                    r82++;
                }
                if (!z10) {
                    throw new ArithmeticException("Matrix is not invertible.");
                }
            }
            for (int r83 = this.numRows - 1; r83 >= 0; r83--) {
                if (r83 != r44) {
                    int[] r92 = r03[r83];
                    if ((r92[r6] & r72) != 0) {
                        addToRow(r03[r44], r92, r6);
                        addToRow(r32[r44], r32[r83], 0);
                    }
                }
            }
        }
        return new GF2Matrix(this.numColumns, r32);
    }

    public Matrix computeTranspose() {
        int[][] r02 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, this.numColumns, (this.numRows + 31) >>> 5);
        int r22 = 0;
        while (true) {
            int r42 = this.numRows;
            if (r22 >= r42) {
                return new GF2Matrix(r42, r02);
            }
            for (int r43 = 0; r43 < this.numColumns; r43++) {
                int r6 = r22 >>> 5;
                int r72 = r22 & 31;
                if (((this.matrix[r22][r43 >>> 5] >>> (r43 & 31)) & 1) == 1) {
                    int[] r52 = r02[r43];
                    r52[r6] = (1 << r72) | r52[r6];
                }
            }
            r22++;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GF2Matrix)) {
            return false;
        }
        GF2Matrix gF2Matrix = (GF2Matrix) obj;
        if (this.numRows != gF2Matrix.numRows || this.numColumns != gF2Matrix.numColumns || this.length != gF2Matrix.length) {
            return false;
        }
        for (int r02 = 0; r02 < this.numRows; r02++) {
            if (!IntUtils.equals(this.matrix[r02], gF2Matrix.matrix[r02])) {
                return false;
            }
        }
        return true;
    }

    public GF2Matrix extendLeftCompactForm() {
        int r02 = this.numColumns;
        int r12 = this.numRows;
        GF2Matrix gF2Matrix = new GF2Matrix(r12, r02 + r12);
        int r03 = this.numRows;
        int r13 = (r03 - 1) + this.numColumns;
        int r04 = r03 - 1;
        while (r04 >= 0) {
            System.arraycopy(this.matrix[r04], 0, gF2Matrix.matrix[r04], 0, this.length);
            int[] r42 = gF2Matrix.matrix[r04];
            int r52 = r13 >> 5;
            r42[r52] = r42[r52] | (1 << (r13 & 31));
            r04--;
            r13--;
        }
        return gF2Matrix;
    }

    public GF2Matrix extendRightCompactForm() {
        int r72;
        int r12 = this.numRows;
        GF2Matrix gF2Matrix = new GF2Matrix(r12, this.numColumns + r12);
        int r13 = this.numRows;
        int r22 = r13 >> 5;
        int r32 = r13 & 31;
        for (int r14 = r13 - 1; r14 >= 0; r14--) {
            int[] r52 = gF2Matrix.matrix[r14];
            int r6 = r14 >> 5;
            r52[r6] = r52[r6] | (1 << (r14 & 31));
            int r62 = 0;
            if (r32 != 0) {
                int r53 = r22;
                while (true) {
                    r72 = this.length;
                    if (r62 >= r72 - 1) {
                        break;
                    }
                    int r73 = this.matrix[r14][r62];
                    int[] r82 = gF2Matrix.matrix[r14];
                    int r92 = r53 + 1;
                    r82[r53] = r82[r53] | (r73 << r32);
                    r82[r92] = r82[r92] | (r73 >>> (32 - r32));
                    r62++;
                    r53 = r92;
                }
                int r63 = this.matrix[r14][r72 - 1];
                int[] r74 = gF2Matrix.matrix[r14];
                int r83 = r53 + 1;
                r74[r53] = r74[r53] | (r63 << r32);
                if (r83 < gF2Matrix.length) {
                    r74[r83] = r74[r83] | (r63 >>> (32 - r32));
                }
            } else {
                System.arraycopy(this.matrix[r14], 0, r52, r22, this.length);
            }
        }
        return gF2Matrix;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public byte[] getEncoded() {
        int r02 = (this.numColumns + 7) >>> 3;
        int r12 = this.numRows;
        int r22 = 8;
        byte[] bArr = new byte[(r02 * r12) + 8];
        LittleEndianConversions.I2OSP(r12, bArr, 0);
        LittleEndianConversions.I2OSP(this.numColumns, bArr, 4);
        int r13 = this.numColumns;
        int r42 = r13 >>> 5;
        int r14 = r13 & 31;
        for (int r52 = 0; r52 < this.numRows; r52++) {
            int r6 = 0;
            while (r6 < r42) {
                LittleEndianConversions.I2OSP(this.matrix[r52][r6], bArr, r22);
                r6++;
                r22 += 4;
            }
            int r62 = 0;
            while (r62 < r14) {
                bArr[r22] = (byte) ((this.matrix[r52][r42] >>> r62) & 255);
                r62 += 8;
                r22++;
            }
        }
        return bArr;
    }

    public double getHammingWeight() {
        int r02 = this.numColumns & 31;
        int r12 = this.length;
        if (r02 != 0) {
            r12--;
        }
        double d10 = 0.0d;
        double d11 = 0.0d;
        for (int r72 = 0; r72 < this.numRows; r72++) {
            for (int r82 = 0; r82 < r12; r82++) {
                int r11 = this.matrix[r72][r82];
                for (int r122 = 0; r122 < 32; r122++) {
                    d10 += (r11 >>> r122) & 1;
                    d11 += 1.0d;
                }
            }
            int r83 = this.matrix[r72][this.length - 1];
            for (int r112 = 0; r112 < r02; r112++) {
                d10 += (r83 >>> r112) & 1;
                d11 += 1.0d;
            }
        }
        return d10 / d11;
    }

    public int[][] getIntArray() {
        return this.matrix;
    }

    public GF2Matrix getLeftSubMatrix() {
        int r02 = this.numColumns;
        int r12 = this.numRows;
        if (r02 <= r12) {
            throw new ArithmeticException("empty submatrix");
        }
        int r03 = (r12 + 31) >> 5;
        int[][] r13 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, r12, r03);
        int r22 = this.numRows;
        int r52 = (1 << (r22 & 31)) - 1;
        if (r52 == 0) {
            r52 = -1;
        }
        for (int r23 = r22 - 1; r23 >= 0; r23--) {
            System.arraycopy(this.matrix[r23], 0, r13[r23], 0, r03);
            int[] r6 = r13[r23];
            int r72 = r03 - 1;
            r6[r72] = r6[r72] & r52;
        }
        return new GF2Matrix(this.numRows, r13);
    }

    public int getLength() {
        return this.length;
    }

    public GF2Matrix getRightSubMatrix() {
        int r6;
        int r02 = this.numColumns;
        int r12 = this.numRows;
        if (r02 <= r12) {
            throw new ArithmeticException("empty submatrix");
        }
        int r22 = r12 >> 5;
        int r32 = r12 & 31;
        GF2Matrix gF2Matrix = new GF2Matrix(r12, r02 - r12);
        for (int r03 = this.numRows - 1; r03 >= 0; r03--) {
            int r13 = 0;
            if (r32 != 0) {
                int r52 = r22;
                while (true) {
                    r6 = gF2Matrix.length;
                    if (r13 >= r6 - 1) {
                        break;
                    }
                    int[] r62 = gF2Matrix.matrix[r03];
                    int[] r72 = this.matrix[r03];
                    int r82 = r52 + 1;
                    r62[r13] = (r72[r52] >>> r32) | (r72[r82] << (32 - r32));
                    r13++;
                    r52 = r82;
                }
                int[] r14 = gF2Matrix.matrix[r03];
                int[] r83 = this.matrix[r03];
                int r92 = r52 + 1;
                r14[r6 - 1] = r83[r52] >>> r32;
                if (r92 < this.length) {
                    int r63 = r6 - 1;
                    r14[r63] = r14[r63] | (r83[r92] << (32 - r32));
                }
            } else {
                System.arraycopy(this.matrix[r03], r22, gF2Matrix.matrix[r03], 0, gF2Matrix.length);
            }
        }
        return gF2Matrix;
    }

    public int[] getRow(int r22) {
        return this.matrix[r22];
    }

    public int hashCode() {
        int r02 = (((this.numRows * 31) + this.numColumns) * 31) + this.length;
        for (int r12 = 0; r12 < this.numRows; r12++) {
            r02 = (r02 * 31) + Arrays.hashCode(this.matrix[r12]);
        }
        return r02;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public boolean isZero() {
        for (int r12 = 0; r12 < this.numRows; r12++) {
            for (int r22 = 0; r22 < this.length; r22++) {
                if (this.matrix[r12][r22] != 0) {
                    return false;
                }
            }
        }
        return true;
    }

    public Matrix leftMultiply(Permutation permutation) {
        int[] vector = permutation.getVector();
        int length = vector.length;
        int r12 = this.numRows;
        if (length != r12) {
            throw new ArithmeticException("length mismatch");
        }
        int[][] r02 = new int[r12][];
        for (int r13 = r12 - 1; r13 >= 0; r13--) {
            r02[r13] = IntUtils.clone(this.matrix[vector[r13]]);
        }
        return new GF2Matrix(this.numRows, r02);
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public Vector leftMultiply(Vector vector) {
        if (!(vector instanceof GF2Vector)) {
            throw new ArithmeticException("vector is not defined over GF(2)");
        }
        if (vector.length != this.numRows) {
            throw new ArithmeticException("length mismatch");
        }
        int[] vecArray = ((GF2Vector) vector).getVecArray();
        int[] r02 = new int[this.length];
        int r12 = this.numRows;
        int r22 = r12 >> 5;
        int r13 = 1 << (r12 & 31);
        int r6 = 0;
        for (int r52 = 0; r52 < r22; r52++) {
            int r72 = 1;
            do {
                if ((vecArray[r52] & r72) != 0) {
                    for (int r82 = 0; r82 < this.length; r82++) {
                        r02[r82] = r02[r82] ^ this.matrix[r6][r82];
                    }
                }
                r6++;
                r72 <<= 1;
            } while (r72 != 0);
        }
        for (int r32 = 1; r32 != r13; r32 <<= 1) {
            if ((vecArray[r22] & r32) != 0) {
                for (int r53 = 0; r53 < this.length; r53++) {
                    r02[r53] = r02[r53] ^ this.matrix[r6][r53];
                }
            }
            r6++;
        }
        return new GF2Vector(r02, this.numColumns);
    }

    public Vector leftMultiplyLeftCompactForm(Vector vector) {
        if (!(vector instanceof GF2Vector)) {
            throw new ArithmeticException("vector is not defined over GF(2)");
        }
        if (vector.length != this.numRows) {
            throw new ArithmeticException("length mismatch");
        }
        int[] vecArray = ((GF2Vector) vector).getVecArray();
        int r02 = this.numRows;
        int[] r12 = new int[((this.numColumns + r02) + 31) >>> 5];
        int r03 = r02 >>> 5;
        int r42 = 0;
        for (int r32 = 0; r32 < r03; r32++) {
            int r6 = 1;
            do {
                if ((vecArray[r32] & r6) != 0) {
                    for (int r72 = 0; r72 < this.length; r72++) {
                        r12[r72] = r12[r72] ^ this.matrix[r42][r72];
                    }
                    int r73 = this.numColumns;
                    int r82 = (r73 + r42) >>> 5;
                    r12[r82] = (1 << ((r73 + r42) & 31)) | r12[r82];
                }
                r42++;
                r6 <<= 1;
            } while (r6 != 0);
        }
        int r33 = 1 << (this.numRows & 31);
        for (int r62 = 1; r62 != r33; r62 <<= 1) {
            if ((vecArray[r03] & r62) != 0) {
                for (int r74 = 0; r74 < this.length; r74++) {
                    r12[r74] = r12[r74] ^ this.matrix[r42][r74];
                }
                int r75 = this.numColumns;
                int r83 = (r75 + r42) >>> 5;
                r12[r83] = (1 << ((r75 + r42) & 31)) | r12[r83];
            }
            r42++;
        }
        return new GF2Vector(r12, this.numRows + this.numColumns);
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public Matrix rightMultiply(Matrix matrix) {
        if (!(matrix instanceof GF2Matrix)) {
            throw new ArithmeticException("matrix is not defined over GF(2)");
        }
        if (matrix.numRows != this.numColumns) {
            throw new ArithmeticException("length mismatch");
        }
        GF2Matrix gF2Matrix = (GF2Matrix) matrix;
        GF2Matrix gF2Matrix2 = new GF2Matrix(this.numRows, matrix.numColumns);
        int r15 = this.numColumns & 31;
        int r32 = this.length;
        if (r15 != 0) {
            r32--;
        }
        for (int r52 = 0; r52 < this.numRows; r52++) {
            int r72 = 0;
            for (int r6 = 0; r6 < r32; r6++) {
                int r82 = this.matrix[r52][r6];
                for (int r92 = 0; r92 < 32; r92++) {
                    if (((1 << r92) & r82) != 0) {
                        for (int r10 = 0; r10 < gF2Matrix.length; r10++) {
                            int[] r11 = gF2Matrix2.matrix[r52];
                            r11[r10] = r11[r10] ^ gF2Matrix.matrix[r72][r10];
                        }
                    }
                    r72++;
                }
            }
            int r62 = this.matrix[r52][this.length - 1];
            for (int r83 = 0; r83 < r15; r83++) {
                if (((1 << r83) & r62) != 0) {
                    for (int r93 = 0; r93 < gF2Matrix.length; r93++) {
                        int[] r102 = gF2Matrix2.matrix[r52];
                        r102[r93] = r102[r93] ^ gF2Matrix.matrix[r72][r93];
                    }
                }
                r72++;
            }
        }
        return gF2Matrix2;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public Matrix rightMultiply(Permutation permutation) {
        int[] vector = permutation.getVector();
        int length = vector.length;
        int r12 = this.numColumns;
        if (length != r12) {
            throw new ArithmeticException("length mismatch");
        }
        GF2Matrix gF2Matrix = new GF2Matrix(this.numRows, r12);
        for (int r13 = this.numColumns - 1; r13 >= 0; r13--) {
            int r22 = r13 >>> 5;
            int r32 = r13 & 31;
            int r42 = vector[r13];
            int r52 = r42 >>> 5;
            int r43 = r42 & 31;
            for (int r6 = this.numRows - 1; r6 >= 0; r6--) {
                int[] r72 = gF2Matrix.matrix[r6];
                r72[r22] = r72[r22] | (((this.matrix[r6][r52] >>> r43) & 1) << r32);
            }
        }
        return gF2Matrix;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public Vector rightMultiply(Vector vector) {
        if (!(vector instanceof GF2Vector)) {
            throw new ArithmeticException("vector is not defined over GF(2)");
        }
        if (vector.length != this.numColumns) {
            throw new ArithmeticException("length mismatch");
        }
        int[] vecArray = ((GF2Vector) vector).getVecArray();
        int[] r02 = new int[(this.numRows + 31) >>> 5];
        int r22 = 0;
        while (true) {
            int r32 = this.numRows;
            if (r22 >= r32) {
                return new GF2Vector(r02, r32);
            }
            int r42 = 0;
            for (int r33 = 0; r33 < this.length; r33++) {
                r42 ^= this.matrix[r22][r33] & vecArray[r33];
            }
            int r52 = 0;
            for (int r34 = 0; r34 < 32; r34++) {
                r52 ^= (r42 >>> r34) & 1;
            }
            if (r52 == 1) {
                int r35 = r22 >>> 5;
                r02[r35] = r02[r35] | (1 << (r22 & 31));
            }
            r22++;
        }
    }

    public Vector rightMultiplyRightCompactForm(Vector vector) {
        int r11;
        if (!(vector instanceof GF2Vector)) {
            throw new ArithmeticException("vector is not defined over GF(2)");
        }
        if (vector.length != this.numColumns + this.numRows) {
            throw new ArithmeticException("length mismatch");
        }
        int[] vecArray = ((GF2Vector) vector).getVecArray();
        int r02 = this.numRows;
        int[] r12 = new int[(r02 + 31) >>> 5];
        int r22 = r02 >> 5;
        int r03 = r02 & 31;
        int r42 = 0;
        while (true) {
            int r52 = this.numRows;
            if (r42 >= r52) {
                return new GF2Vector(r12, r52);
            }
            int r53 = r42 >> 5;
            int r72 = r42 & 31;
            int r6 = (vecArray[r53] >>> r72) & 1;
            int r10 = r22;
            int r92 = 0;
            if (r03 != 0) {
                while (true) {
                    r11 = this.length;
                    if (r92 >= r11 - 1) {
                        break;
                    }
                    int r112 = r10 + 1;
                    r6 ^= ((vecArray[r10] >>> r03) | (vecArray[r112] << (32 - r03))) & this.matrix[r42][r92];
                    r92++;
                    r10 = r112;
                }
                int r93 = r10 + 1;
                int r102 = vecArray[r10] >>> r03;
                if (r93 < vecArray.length) {
                    r102 |= vecArray[r93] << (32 - r03);
                }
                r6 ^= this.matrix[r42][r11 - 1] & r102;
            } else {
                while (r92 < this.length) {
                    r6 ^= vecArray[r10] & this.matrix[r42][r92];
                    r92++;
                    r10++;
                }
            }
            int r103 = 0;
            for (int r94 = 0; r94 < 32; r94++) {
                r103 ^= r6 & 1;
                r6 >>>= 1;
            }
            if (r103 == 1) {
                r12[r53] = r12[r53] | (1 << r72);
            }
            r42++;
        }
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public String toString() {
        int r02 = this.numColumns & 31;
        int r12 = this.length;
        if (r02 != 0) {
            r12--;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int r42 = 0; r42 < this.numRows; r42++) {
            stringBuffer.append(r42 + ": ");
            for (int r52 = 0; r52 < r12; r52++) {
                int r82 = this.matrix[r42][r52];
                for (int r92 = 0; r92 < 32; r92++) {
                    if (((r82 >>> r92) & 1) == 0) {
                        stringBuffer.append('0');
                    } else {
                        stringBuffer.append('1');
                    }
                }
                stringBuffer.append(' ');
            }
            int r53 = this.matrix[r42][this.length - 1];
            for (int r83 = 0; r83 < r02; r83++) {
                if (((r53 >>> r83) & 1) == 0) {
                    stringBuffer.append('0');
                } else {
                    stringBuffer.append('1');
                }
            }
            stringBuffer.append('\n');
        }
        return stringBuffer.toString();
    }
}
