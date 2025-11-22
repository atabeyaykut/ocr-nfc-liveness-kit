package org.bouncycastle.pqc.legacy.crypto.ntru;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.DenseTernaryPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.IntegerPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.ProductFormPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.SparseTernaryPolynomial;

/* loaded from: classes2.dex */
public class NTRUEncryptionPrivateKeyParameters extends NTRUEncryptionKeyParameters {
    public IntegerPolynomial fp;

    /* renamed from: h, reason: collision with root package name */
    public IntegerPolynomial f12031h;

    /* renamed from: t, reason: collision with root package name */
    public Polynomial f12032t;

    public NTRUEncryptionPrivateKeyParameters(InputStream inputStream, NTRUEncryptionParameters nTRUEncryptionParameters) throws IOException {
        super(true, nTRUEncryptionParameters);
        if (nTRUEncryptionParameters.polyType == 1) {
            int r32 = nTRUEncryptionParameters.N;
            int r42 = nTRUEncryptionParameters.df1;
            int r52 = nTRUEncryptionParameters.df2;
            int r6 = nTRUEncryptionParameters.df3;
            int r72 = nTRUEncryptionParameters.fastFp ? r6 : r6 - 1;
            this.f12031h = IntegerPolynomial.fromBinary(inputStream, r32, nTRUEncryptionParameters.f12030q);
            this.f12032t = ProductFormPolynomial.fromBinary(inputStream, r32, r42, r52, r6, r72);
        } else {
            this.f12031h = IntegerPolynomial.fromBinary(inputStream, nTRUEncryptionParameters.N, nTRUEncryptionParameters.f12030q);
            IntegerPolynomial integerPolynomialFromBinary3Tight = IntegerPolynomial.fromBinary3Tight(inputStream, nTRUEncryptionParameters.N);
            this.f12032t = nTRUEncryptionParameters.sparse ? new SparseTernaryPolynomial(integerPolynomialFromBinary3Tight) : new DenseTernaryPolynomial(integerPolynomialFromBinary3Tight);
        }
        init();
    }

    public NTRUEncryptionPrivateKeyParameters(IntegerPolynomial integerPolynomial, Polynomial polynomial, IntegerPolynomial integerPolynomial2, NTRUEncryptionParameters nTRUEncryptionParameters) {
        super(true, nTRUEncryptionParameters);
        this.f12031h = integerPolynomial;
        this.f12032t = polynomial;
        this.fp = integerPolynomial2;
    }

    public NTRUEncryptionPrivateKeyParameters(byte[] bArr, NTRUEncryptionParameters nTRUEncryptionParameters) throws IOException {
        this(new ByteArrayInputStream(bArr), nTRUEncryptionParameters);
    }

    private void init() {
        if (!this.params.fastFp) {
            this.fp = this.f12032t.toIntegerPolynomial().invertF3();
            return;
        }
        IntegerPolynomial integerPolynomial = new IntegerPolynomial(this.params.N);
        this.fp = integerPolynomial;
        integerPolynomial.coeffs[0] = 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof NTRUEncryptionPrivateKeyParameters)) {
            return false;
        }
        NTRUEncryptionPrivateKeyParameters nTRUEncryptionPrivateKeyParameters = (NTRUEncryptionPrivateKeyParameters) obj;
        NTRUEncryptionParameters nTRUEncryptionParameters = this.params;
        if (nTRUEncryptionParameters == null) {
            if (nTRUEncryptionPrivateKeyParameters.params != null) {
                return false;
            }
        } else if (!nTRUEncryptionParameters.equals(nTRUEncryptionPrivateKeyParameters.params)) {
            return false;
        }
        Polynomial polynomial = this.f12032t;
        if (polynomial == null) {
            if (nTRUEncryptionPrivateKeyParameters.f12032t != null) {
                return false;
            }
        } else if (!polynomial.equals(nTRUEncryptionPrivateKeyParameters.f12032t)) {
            return false;
        }
        return this.f12031h.equals(nTRUEncryptionPrivateKeyParameters.f12031h);
    }

    public byte[] getEncoded() {
        byte[] binary = this.f12031h.toBinary(this.params.f12030q);
        Polynomial polynomial = this.f12032t;
        byte[] binary2 = polynomial instanceof ProductFormPolynomial ? ((ProductFormPolynomial) polynomial).toBinary() : polynomial.toIntegerPolynomial().toBinary3Tight();
        byte[] bArr = new byte[binary.length + binary2.length];
        System.arraycopy(binary, 0, bArr, 0, binary.length);
        System.arraycopy(binary2, 0, bArr, binary.length, binary2.length);
        return bArr;
    }

    public int hashCode() {
        NTRUEncryptionParameters nTRUEncryptionParameters = this.params;
        int r02 = ((nTRUEncryptionParameters == null ? 0 : nTRUEncryptionParameters.hashCode()) + 31) * 31;
        Polynomial polynomial = this.f12032t;
        int r03 = (r02 + (polynomial == null ? 0 : polynomial.hashCode())) * 31;
        IntegerPolynomial integerPolynomial = this.f12031h;
        return r03 + (integerPolynomial != null ? integerPolynomial.hashCode() : 0);
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(getEncoded());
    }
}
