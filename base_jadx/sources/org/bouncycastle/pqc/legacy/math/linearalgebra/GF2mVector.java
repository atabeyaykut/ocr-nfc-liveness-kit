package org.bouncycastle.pqc.legacy.math.linearalgebra;

import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class GF2mVector extends Vector {
    private GF2mField field;
    private int[] vector;

    public GF2mVector(GF2mField gF2mField, byte[] bArr) {
        this.field = new GF2mField(gF2mField);
        int r02 = 8;
        int r12 = 1;
        while (gF2mField.getDegree() > r02) {
            r12++;
            r02 += 8;
        }
        if (bArr.length % r12 != 0) {
            throw new IllegalArgumentException("Byte array is not an encoded vector over the given finite field.");
        }
        int length = bArr.length / r12;
        this.length = length;
        this.vector = new int[length];
        int r42 = 0;
        for (int r22 = 0; r22 < this.vector.length; r22++) {
            int r52 = 0;
            while (r52 < r02) {
                int[] r6 = this.vector;
                r6[r22] = ((bArr[r42] & 255) << r52) | r6[r22];
                r52 += 8;
                r42++;
            }
            if (!gF2mField.isElementOfThisField(this.vector[r22])) {
                throw new IllegalArgumentException("Byte array is not an encoded vector over the given finite field.");
            }
        }
    }

    public GF2mVector(GF2mField gF2mField, int[] r42) {
        this.field = gF2mField;
        this.length = r42.length;
        for (int length = r42.length - 1; length >= 0; length--) {
            if (!gF2mField.isElementOfThisField(r42[length])) {
                throw new ArithmeticException("Element array is not specified over the given finite field.");
            }
        }
        this.vector = IntUtils.clone(r42);
    }

    public GF2mVector(GF2mVector gF2mVector) {
        this.field = new GF2mField(gF2mVector.field);
        this.length = gF2mVector.length;
        this.vector = IntUtils.clone(gF2mVector.vector);
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Vector
    public Vector add(Vector vector) {
        throw new RuntimeException("not implemented");
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Vector
    public boolean equals(Object obj) {
        if (!(obj instanceof GF2mVector)) {
            return false;
        }
        GF2mVector gF2mVector = (GF2mVector) obj;
        if (this.field.equals(gF2mVector.field)) {
            return IntUtils.equals(this.vector, gF2mVector.vector);
        }
        return false;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Vector
    public byte[] getEncoded() {
        int r02 = 8;
        int r12 = 1;
        while (this.field.getDegree() > r02) {
            r12++;
            r02 += 8;
        }
        byte[] bArr = new byte[this.vector.length * r12];
        int r42 = 0;
        for (int r32 = 0; r32 < this.vector.length; r32++) {
            int r52 = 0;
            while (r52 < r02) {
                bArr[r42] = (byte) (this.vector[r32] >>> r52);
                r52 += 8;
                r42++;
            }
        }
        return bArr;
    }

    public GF2mField getField() {
        return this.field;
    }

    public int[] getIntArrayForm() {
        return IntUtils.clone(this.vector);
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Vector
    public int hashCode() {
        return Arrays.hashCode(this.vector) + (this.field.hashCode() * 31);
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Vector
    public boolean isZero() {
        for (int length = this.vector.length - 1; length >= 0; length--) {
            if (this.vector[length] != 0) {
                return false;
            }
        }
        return true;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Vector
    public Vector multiply(Permutation permutation) {
        int[] vector = permutation.getVector();
        int r02 = this.length;
        if (r02 != vector.length) {
            throw new ArithmeticException("permutation size and vector size mismatch");
        }
        int[] r03 = new int[r02];
        for (int r12 = 0; r12 < vector.length; r12++) {
            r03[r12] = this.vector[vector[r12]];
        }
        return new GF2mVector(this.field, r03);
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Vector
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int r22 = 0; r22 < this.vector.length; r22++) {
            for (int r32 = 0; r32 < this.field.getDegree(); r32++) {
                stringBuffer.append(((1 << (r32 & 31)) & this.vector[r22]) != 0 ? '1' : '0');
            }
            stringBuffer.append(' ');
        }
        return stringBuffer.toString();
    }
}
