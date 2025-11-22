package org.bouncycastle.pqc.legacy.math.linearalgebra;

import androidx.constraintlayout.core.a;
import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public class GF2mMatrix extends Matrix {
    protected GF2mField field;
    protected int[][] matrix;

    public GF2mMatrix(GF2mField gF2mField, byte[] bArr) {
        this.field = gF2mField;
        int r22 = 8;
        int r32 = 1;
        while (gF2mField.getDegree() > r22) {
            r32++;
            r22 += 8;
        }
        if (bArr.length < 5) {
            throw new IllegalArgumentException(" Error: given array is not encoded matrix over GF(2^m)");
        }
        int r10 = ((((bArr[3] & 255) << 24) ^ ((bArr[2] & 255) << 16)) ^ ((bArr[1] & 255) << 8)) ^ (bArr[0] & 255);
        this.numRows = r10;
        int r33 = r32 * r10;
        if (r10 > 0) {
            int r72 = 4;
            if ((bArr.length - 4) % r33 == 0) {
                int length = (bArr.length - 4) / r33;
                this.numColumns = length;
                this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, r10, length);
                for (int r102 = 0; r102 < this.numRows; r102++) {
                    for (int r12 = 0; r12 < this.numColumns; r12++) {
                        int r34 = 0;
                        while (r34 < r22) {
                            int[] r42 = this.matrix[r102];
                            r42[r12] = r42[r12] ^ ((bArr[r72] & 255) << r34);
                            r34 += 8;
                            r72++;
                        }
                        if (!this.field.isElementOfThisField(this.matrix[r102][r12])) {
                            throw new IllegalArgumentException(" Error: given array is not encoded matrix over GF(2^m)");
                        }
                    }
                }
                return;
            }
        }
        throw new IllegalArgumentException(" Error: given array is not encoded matrix over GF(2^m)");
    }

    public GF2mMatrix(GF2mField gF2mField, int[][] r22) {
        this.field = gF2mField;
        this.matrix = r22;
        this.numRows = r22.length;
        this.numColumns = r22[0].length;
    }

    public GF2mMatrix(GF2mMatrix gF2mMatrix) {
        int r02 = gF2mMatrix.numRows;
        this.numRows = r02;
        this.numColumns = gF2mMatrix.numColumns;
        this.field = gF2mMatrix.field;
        this.matrix = new int[r02][];
        for (int r03 = 0; r03 < this.numRows; r03++) {
            this.matrix[r03] = IntUtils.clone(gF2mMatrix.matrix[r03]);
        }
    }

    private void addToRow(int[] r52, int[] r6) {
        for (int length = r6.length - 1; length >= 0; length--) {
            r6[length] = this.field.add(r52[length], r6[length]);
        }
    }

    private int[] multRowWithElement(int[] r52, int r6) {
        int[] r02 = new int[r52.length];
        for (int length = r52.length - 1; length >= 0; length--) {
            r02[length] = this.field.mult(r52[length], r6);
        }
        return r02;
    }

    private void multRowWithElementThis(int[] r42, int r52) {
        for (int length = r42.length - 1; length >= 0; length--) {
            r42[length] = this.field.mult(r42[length], r52);
        }
    }

    private static void swapColumns(int[][] r22, int r32, int r42) {
        int[] r02 = r22[r32];
        r22[r32] = r22[r42];
        r22[r42] = r02;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public Matrix computeInverse() {
        int r72;
        int r02 = this.numRows;
        if (r02 != this.numColumns) {
            throw new ArithmeticException("Matrix is not invertible.");
        }
        int[][] r03 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, r02, r02);
        for (int r32 = this.numRows - 1; r32 >= 0; r32--) {
            r03[r32] = IntUtils.clone(this.matrix[r32]);
        }
        int r33 = this.numRows;
        int[][] r12 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, r33, r33);
        for (int r34 = this.numRows - 1; r34 >= 0; r34--) {
            r12[r34][r34] = 1;
        }
        for (int r35 = 0; r35 < this.numRows; r35++) {
            if (r03[r35][r35] == 0) {
                int r6 = r35 + 1;
                boolean z10 = false;
                while (r6 < this.numRows) {
                    if (r03[r6][r35] != 0) {
                        swapColumns(r03, r35, r6);
                        swapColumns(r12, r35, r6);
                        r6 = this.numRows;
                        z10 = true;
                    }
                    r6++;
                }
                if (!z10) {
                    throw new ArithmeticException("Matrix is not invertible.");
                }
            }
            int r62 = this.field.inverse(r03[r35][r35]);
            multRowWithElementThis(r03[r35], r62);
            multRowWithElementThis(r12[r35], r62);
            for (int r63 = 0; r63 < this.numRows; r63++) {
                if (r63 != r35 && (r72 = r03[r63][r35]) != 0) {
                    int[] r82 = multRowWithElement(r03[r35], r72);
                    int[] r73 = multRowWithElement(r12[r35], r72);
                    addToRow(r82, r03[r63]);
                    addToRow(r73, r12[r63]);
                }
            }
        }
        return new GF2mMatrix(this.field, r12);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof GF2mMatrix)) {
            GF2mMatrix gF2mMatrix = (GF2mMatrix) obj;
            if (this.field.equals(gF2mMatrix.field)) {
                int r12 = gF2mMatrix.numRows;
                int r22 = this.numColumns;
                if (r12 == r22 && gF2mMatrix.numColumns == r22) {
                    for (int r13 = 0; r13 < this.numRows; r13++) {
                        for (int r23 = 0; r23 < this.numColumns; r23++) {
                            if (this.matrix[r13][r23] != gF2mMatrix.matrix[r13][r23]) {
                                return false;
                            }
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public byte[] getEncoded() {
        int r02 = 8;
        int r22 = 1;
        while (this.field.getDegree() > r02) {
            r22++;
            r02 += 8;
        }
        int r32 = this.numRows;
        int r42 = this.numColumns * r32 * r22;
        int r23 = 4;
        byte[] bArr = new byte[r42 + 4];
        bArr[0] = (byte) (r32 & 255);
        bArr[1] = (byte) ((r32 >>> 8) & 255);
        bArr[2] = (byte) ((r32 >>> 16) & 255);
        bArr[3] = (byte) ((r32 >>> 24) & 255);
        for (int r12 = 0; r12 < this.numRows; r12++) {
            for (int r33 = 0; r33 < this.numColumns; r33++) {
                int r52 = 0;
                while (r52 < r02) {
                    bArr[r23] = (byte) (this.matrix[r12][r33] >>> r52);
                    r52 += 8;
                    r23++;
                }
            }
        }
        return bArr;
    }

    public int hashCode() {
        int r02 = (((this.field.hashCode() * 31) + this.numRows) * 31) + this.numColumns;
        for (int r22 = 0; r22 < this.numRows; r22++) {
            for (int r32 = 0; r32 < this.numColumns; r32++) {
                r02 = (r02 * 31) + this.matrix[r22][r32];
            }
        }
        return r02;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public boolean isZero() {
        for (int r12 = 0; r12 < this.numRows; r12++) {
            for (int r22 = 0; r22 < this.numColumns; r22++) {
                if (this.matrix[r12][r22] != 0) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public Vector leftMultiply(Vector vector) {
        throw new RuntimeException("Not implemented.");
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public Matrix rightMultiply(Matrix matrix) {
        throw new RuntimeException("Not implemented.");
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public Matrix rightMultiply(Permutation permutation) {
        throw new RuntimeException("Not implemented.");
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public Vector rightMultiply(Vector vector) {
        throw new RuntimeException("Not implemented.");
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix
    public String toString() {
        String strF = this.numRows + " x " + this.numColumns + " Matrix over " + this.field.toString() + ": \n";
        for (int r12 = 0; r12 < this.numRows; r12++) {
            for (int r22 = 0; r22 < this.numColumns; r22++) {
                StringBuilder sbE = a.e(strF);
                sbE.append(this.field.elementToStr(this.matrix[r12][r22]));
                sbE.append(" : ");
                strF = sbE.toString();
            }
            strF = android.support.v4.media.a.f(strF, "\n");
        }
        return strF;
    }
}
