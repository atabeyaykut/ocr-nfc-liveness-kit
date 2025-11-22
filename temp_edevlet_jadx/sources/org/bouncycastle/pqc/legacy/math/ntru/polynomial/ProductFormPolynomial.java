package org.bouncycastle.pqc.legacy.math.ntru.polynomial;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.SecureRandom;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class ProductFormPolynomial implements Polynomial {

    /* renamed from: f1, reason: collision with root package name */
    private SparseTernaryPolynomial f12065f1;

    /* renamed from: f2, reason: collision with root package name */
    private SparseTernaryPolynomial f12066f2;

    /* renamed from: f3, reason: collision with root package name */
    private SparseTernaryPolynomial f12067f3;

    public ProductFormPolynomial(SparseTernaryPolynomial sparseTernaryPolynomial, SparseTernaryPolynomial sparseTernaryPolynomial2, SparseTernaryPolynomial sparseTernaryPolynomial3) {
        this.f12065f1 = sparseTernaryPolynomial;
        this.f12066f2 = sparseTernaryPolynomial2;
        this.f12067f3 = sparseTernaryPolynomial3;
    }

    public static ProductFormPolynomial fromBinary(InputStream inputStream, int r12, int r22, int r32, int r42, int r52) throws IOException {
        return new ProductFormPolynomial(SparseTernaryPolynomial.fromBinary(inputStream, r12, r22, r22), SparseTernaryPolynomial.fromBinary(inputStream, r12, r32, r32), SparseTernaryPolynomial.fromBinary(inputStream, r12, r42, r52));
    }

    public static ProductFormPolynomial fromBinary(byte[] bArr, int r72, int r82, int r92, int r10, int r11) throws IOException {
        return fromBinary(new ByteArrayInputStream(bArr), r72, r82, r92, r10, r11);
    }

    public static ProductFormPolynomial generateRandom(int r02, int r12, int r22, int r32, int r42, SecureRandom secureRandom) {
        return new ProductFormPolynomial(SparseTernaryPolynomial.generateRandom(r02, r12, r12, secureRandom), SparseTernaryPolynomial.generateRandom(r02, r22, r22, secureRandom), SparseTernaryPolynomial.generateRandom(r02, r32, r42, secureRandom));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ProductFormPolynomial productFormPolynomial = (ProductFormPolynomial) obj;
        SparseTernaryPolynomial sparseTernaryPolynomial = this.f12065f1;
        if (sparseTernaryPolynomial == null) {
            if (productFormPolynomial.f12065f1 != null) {
                return false;
            }
        } else if (!sparseTernaryPolynomial.equals(productFormPolynomial.f12065f1)) {
            return false;
        }
        SparseTernaryPolynomial sparseTernaryPolynomial2 = this.f12066f2;
        if (sparseTernaryPolynomial2 == null) {
            if (productFormPolynomial.f12066f2 != null) {
                return false;
            }
        } else if (!sparseTernaryPolynomial2.equals(productFormPolynomial.f12066f2)) {
            return false;
        }
        SparseTernaryPolynomial sparseTernaryPolynomial3 = this.f12067f3;
        SparseTernaryPolynomial sparseTernaryPolynomial4 = productFormPolynomial.f12067f3;
        if (sparseTernaryPolynomial3 == null) {
            if (sparseTernaryPolynomial4 != null) {
                return false;
            }
        } else if (!sparseTernaryPolynomial3.equals(sparseTernaryPolynomial4)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        SparseTernaryPolynomial sparseTernaryPolynomial = this.f12065f1;
        int r02 = ((sparseTernaryPolynomial == null ? 0 : sparseTernaryPolynomial.hashCode()) + 31) * 31;
        SparseTernaryPolynomial sparseTernaryPolynomial2 = this.f12066f2;
        int r03 = (r02 + (sparseTernaryPolynomial2 == null ? 0 : sparseTernaryPolynomial2.hashCode())) * 31;
        SparseTernaryPolynomial sparseTernaryPolynomial3 = this.f12067f3;
        return r03 + (sparseTernaryPolynomial3 != null ? sparseTernaryPolynomial3.hashCode() : 0);
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial
    public BigIntPolynomial mult(BigIntPolynomial bigIntPolynomial) {
        BigIntPolynomial bigIntPolynomialMult = this.f12066f2.mult(this.f12065f1.mult(bigIntPolynomial));
        bigIntPolynomialMult.add(this.f12067f3.mult(bigIntPolynomial));
        return bigIntPolynomialMult;
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial
    public IntegerPolynomial mult(IntegerPolynomial integerPolynomial) {
        IntegerPolynomial integerPolynomialMult = this.f12066f2.mult(this.f12065f1.mult(integerPolynomial));
        integerPolynomialMult.add(this.f12067f3.mult(integerPolynomial));
        return integerPolynomialMult;
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial
    public IntegerPolynomial mult(IntegerPolynomial integerPolynomial, int r22) {
        IntegerPolynomial integerPolynomialMult = mult(integerPolynomial);
        integerPolynomialMult.mod(r22);
        return integerPolynomialMult;
    }

    public byte[] toBinary() {
        byte[] binary = this.f12065f1.toBinary();
        byte[] binary2 = this.f12066f2.toBinary();
        byte[] binary3 = this.f12067f3.toBinary();
        byte[] bArrCopyOf = Arrays.copyOf(binary, binary.length + binary2.length + binary3.length);
        System.arraycopy(binary2, 0, bArrCopyOf, binary.length, binary2.length);
        System.arraycopy(binary3, 0, bArrCopyOf, binary.length + binary2.length, binary3.length);
        return bArrCopyOf;
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial
    public IntegerPolynomial toIntegerPolynomial() {
        IntegerPolynomial integerPolynomialMult = this.f12065f1.mult(this.f12066f2.toIntegerPolynomial());
        integerPolynomialMult.add(this.f12067f3.toIntegerPolynomial());
        return integerPolynomialMult;
    }
}
