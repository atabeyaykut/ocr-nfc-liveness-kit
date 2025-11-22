package org.bouncycastle.pqc.legacy.math.linearalgebra;

import java.security.SecureRandom;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class GF2Vector extends Vector {

    /* renamed from: v, reason: collision with root package name */
    private int[] f12053v;

    public GF2Vector(int r22) {
        if (r22 < 0) {
            throw new ArithmeticException("Negative length.");
        }
        this.length = r22;
        this.f12053v = new int[(r22 + 31) >> 5];
    }

    public GF2Vector(int r52, int r6, SecureRandom secureRandom) {
        if (r6 > r52) {
            throw new ArithmeticException("The hamming weight is greater than the length of vector.");
        }
        this.length = r52;
        this.f12053v = new int[(r52 + 31) >> 5];
        int[] r02 = new int[r52];
        for (int r22 = 0; r22 < r52; r22++) {
            r02[r22] = r22;
        }
        for (int r12 = 0; r12 < r6; r12++) {
            int r23 = RandUtils.nextInt(secureRandom, r52);
            setBit(r02[r23]);
            r52--;
            r02[r23] = r02[r52];
        }
    }

    public GF2Vector(int r6, SecureRandom secureRandom) {
        this.length = r6;
        int r02 = (r6 + 31) >> 5;
        this.f12053v = new int[r02];
        int r03 = r02 - 1;
        for (int r22 = r03; r22 >= 0; r22--) {
            this.f12053v[r22] = secureRandom.nextInt();
        }
        int r62 = r6 & 31;
        if (r62 != 0) {
            int[] r72 = this.f12053v;
            r72[r03] = ((1 << r62) - 1) & r72[r03];
        }
    }

    public GF2Vector(int r42, int[] r52) {
        if (r42 < 0) {
            throw new ArithmeticException("negative length");
        }
        this.length = r42;
        int r02 = (r42 + 31) >> 5;
        if (r52.length != r02) {
            throw new ArithmeticException("length mismatch");
        }
        int[] r53 = IntUtils.clone(r52);
        this.f12053v = r53;
        int r43 = r42 & 31;
        if (r43 != 0) {
            int r03 = r02 - 1;
            r53[r03] = ((1 << r43) - 1) & r53[r03];
        }
    }

    public GF2Vector(GF2Vector gF2Vector) {
        this.length = gF2Vector.length;
        this.f12053v = IntUtils.clone(gF2Vector.f12053v);
    }

    public GF2Vector(int[] r12, int r22) {
        this.f12053v = r12;
        this.length = r22;
    }

    public static GF2Vector OS2VP(int r22, byte[] bArr) {
        if (r22 < 0) {
            throw new ArithmeticException("negative length");
        }
        if (bArr.length <= ((r22 + 7) >> 3)) {
            return new GF2Vector(r22, LittleEndianConversions.toIntArray(bArr));
        }
        throw new ArithmeticException("length mismatch");
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Vector
    public Vector add(Vector vector) {
        if (!(vector instanceof GF2Vector)) {
            throw new ArithmeticException("vector is not defined over GF(2)");
        }
        GF2Vector gF2Vector = (GF2Vector) vector;
        if (this.length != gF2Vector.length) {
            throw new ArithmeticException("length mismatch");
        }
        int[] r42 = IntUtils.clone(gF2Vector.f12053v);
        for (int length = r42.length - 1; length >= 0; length--) {
            r42[length] = r42[length] ^ this.f12053v[length];
        }
        return new GF2Vector(this.length, r42);
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Vector
    public boolean equals(Object obj) {
        if (!(obj instanceof GF2Vector)) {
            return false;
        }
        GF2Vector gF2Vector = (GF2Vector) obj;
        return this.length == gF2Vector.length && IntUtils.equals(this.f12053v, gF2Vector.f12053v);
    }

    public GF2Vector extractLeftVector(int r6) {
        int r02 = this.length;
        if (r6 > r02) {
            throw new ArithmeticException("invalid length");
        }
        if (r6 == r02) {
            return new GF2Vector(this);
        }
        GF2Vector gF2Vector = new GF2Vector(r6);
        int r12 = r6 >> 5;
        int r62 = r6 & 31;
        System.arraycopy(this.f12053v, 0, gF2Vector.f12053v, 0, r12);
        if (r62 != 0) {
            gF2Vector.f12053v[r12] = ((1 << r62) - 1) & this.f12053v[r12];
        }
        return gF2Vector;
    }

    public GF2Vector extractRightVector(int r92) {
        int r42;
        int r02 = this.length;
        if (r92 > r02) {
            throw new ArithmeticException("invalid length");
        }
        if (r92 == r02) {
            return new GF2Vector(this);
        }
        GF2Vector gF2Vector = new GF2Vector(r92);
        int r12 = this.length;
        int r22 = (r12 - r92) >> 5;
        int r13 = (r12 - r92) & 31;
        int r93 = (r92 + 31) >> 5;
        int r32 = 0;
        if (r13 != 0) {
            while (true) {
                r42 = r93 - 1;
                if (r32 >= r42) {
                    break;
                }
                int[] r43 = gF2Vector.f12053v;
                int[] r52 = this.f12053v;
                int r6 = r22 + 1;
                r43[r32] = (r52[r22] >>> r13) | (r52[r6] << (32 - r13));
                r32++;
                r22 = r6;
            }
            int[] r94 = gF2Vector.f12053v;
            int[] r33 = this.f12053v;
            int r53 = r22 + 1;
            int r23 = r33[r22] >>> r13;
            r94[r42] = r23;
            if (r53 < r33.length) {
                r94[r42] = (r33[r53] << (32 - r13)) | r23;
            }
        } else {
            System.arraycopy(this.f12053v, r22, gF2Vector.f12053v, 0, r93);
        }
        return gF2Vector;
    }

    public GF2Vector extractVector(int[] r92) {
        int length = r92.length;
        if (r92[length - 1] > this.length) {
            throw new ArithmeticException("invalid index set");
        }
        GF2Vector gF2Vector = new GF2Vector(length);
        for (int r22 = 0; r22 < length; r22++) {
            int[] r32 = this.f12053v;
            int r42 = r92[r22];
            if ((r32[r42 >> 5] & (1 << (r42 & 31))) != 0) {
                int[] r33 = gF2Vector.f12053v;
                int r43 = r22 >> 5;
                r33[r43] = (1 << (r22 & 31)) | r33[r43];
            }
        }
        return gF2Vector;
    }

    public int getBit(int r32) {
        if (r32 >= this.length) {
            throw new IndexOutOfBoundsException();
        }
        int r02 = r32 >> 5;
        int r33 = r32 & 31;
        return (this.f12053v[r02] & (1 << r33)) >>> r33;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Vector
    public byte[] getEncoded() {
        return LittleEndianConversions.toByteArray(this.f12053v, (this.length + 7) >> 3);
    }

    public int getHammingWeight() {
        int r12 = 0;
        int r22 = 0;
        while (true) {
            int[] r32 = this.f12053v;
            if (r12 >= r32.length) {
                return r22;
            }
            int r33 = r32[r12];
            for (int r42 = 0; r42 < 32; r42++) {
                if ((r33 & 1) != 0) {
                    r22++;
                }
                r33 >>>= 1;
            }
            r12++;
        }
    }

    public int[] getVecArray() {
        return this.f12053v;
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Vector
    public int hashCode() {
        return Arrays.hashCode(this.f12053v) + (this.length * 31);
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Vector
    public boolean isZero() {
        for (int length = this.f12053v.length - 1; length >= 0; length--) {
            if (this.f12053v[length] != 0) {
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
            throw new ArithmeticException("length mismatch");
        }
        GF2Vector gF2Vector = new GF2Vector(r02);
        for (int r03 = 0; r03 < vector.length; r03++) {
            int[] r22 = this.f12053v;
            int r32 = vector[r03];
            if ((r22[r32 >> 5] & (1 << (r32 & 31))) != 0) {
                int[] r23 = gF2Vector.f12053v;
                int r33 = r03 >> 5;
                r23[r33] = (1 << (r03 & 31)) | r23[r33];
            }
        }
        return gF2Vector;
    }

    public void setBit(int r52) {
        if (r52 >= this.length) {
            throw new IndexOutOfBoundsException();
        }
        int[] r02 = this.f12053v;
        int r12 = r52 >> 5;
        r02[r12] = (1 << (r52 & 31)) | r02[r12];
    }

    public GF2mVector toExtensionFieldVector(GF2mField gF2mField) {
        int degree = gF2mField.getDegree();
        int r12 = this.length;
        if (r12 % degree != 0) {
            throw new ArithmeticException("conversion is impossible");
        }
        int r13 = r12 / degree;
        int[] r02 = new int[r13];
        int r32 = 0;
        for (int r14 = r13 - 1; r14 >= 0; r14--) {
            for (int degree2 = gF2mField.getDegree() - 1; degree2 >= 0; degree2--) {
                if (((this.f12053v[r32 >>> 5] >>> (r32 & 31)) & 1) == 1) {
                    r02[r14] = r02[r14] ^ (1 << degree2);
                }
                r32++;
            }
        }
        return new GF2mVector(gF2mField, r02);
    }

    @Override // org.bouncycastle.pqc.legacy.math.linearalgebra.Vector
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int r12 = 0; r12 < this.length; r12++) {
            if (r12 != 0 && (r12 & 31) == 0) {
                stringBuffer.append(' ');
            }
            stringBuffer.append((this.f12053v[r12 >> 5] & (1 << (r12 & 31))) == 0 ? '0' : '1');
        }
        return stringBuffer.toString();
    }
}
