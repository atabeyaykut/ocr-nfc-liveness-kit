package org.bouncycastle.pqc.legacy.crypto.ntru;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.IntegerPolynomial;

/* loaded from: classes2.dex */
public class NTRUEncryptionPublicKeyParameters extends NTRUEncryptionKeyParameters {

    /* renamed from: h, reason: collision with root package name */
    public IntegerPolynomial f12033h;

    public NTRUEncryptionPublicKeyParameters(InputStream inputStream, NTRUEncryptionParameters nTRUEncryptionParameters) throws IOException {
        super(false, nTRUEncryptionParameters);
        this.f12033h = IntegerPolynomial.fromBinary(inputStream, nTRUEncryptionParameters.N, nTRUEncryptionParameters.f12030q);
    }

    public NTRUEncryptionPublicKeyParameters(IntegerPolynomial integerPolynomial, NTRUEncryptionParameters nTRUEncryptionParameters) {
        super(false, nTRUEncryptionParameters);
        this.f12033h = integerPolynomial;
    }

    public NTRUEncryptionPublicKeyParameters(byte[] bArr, NTRUEncryptionParameters nTRUEncryptionParameters) {
        super(false, nTRUEncryptionParameters);
        this.f12033h = IntegerPolynomial.fromBinary(bArr, nTRUEncryptionParameters.N, nTRUEncryptionParameters.f12030q);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof NTRUEncryptionPublicKeyParameters)) {
            return false;
        }
        NTRUEncryptionPublicKeyParameters nTRUEncryptionPublicKeyParameters = (NTRUEncryptionPublicKeyParameters) obj;
        IntegerPolynomial integerPolynomial = this.f12033h;
        if (integerPolynomial == null) {
            if (nTRUEncryptionPublicKeyParameters.f12033h != null) {
                return false;
            }
        } else if (!integerPolynomial.equals(nTRUEncryptionPublicKeyParameters.f12033h)) {
            return false;
        }
        NTRUEncryptionParameters nTRUEncryptionParameters = this.params;
        NTRUEncryptionParameters nTRUEncryptionParameters2 = nTRUEncryptionPublicKeyParameters.params;
        if (nTRUEncryptionParameters == null) {
            if (nTRUEncryptionParameters2 != null) {
                return false;
            }
        } else if (!nTRUEncryptionParameters.equals(nTRUEncryptionParameters2)) {
            return false;
        }
        return true;
    }

    public byte[] getEncoded() {
        return this.f12033h.toBinary(this.params.f12030q);
    }

    public int hashCode() {
        IntegerPolynomial integerPolynomial = this.f12033h;
        int r02 = ((integerPolynomial == null ? 0 : integerPolynomial.hashCode()) + 31) * 31;
        NTRUEncryptionParameters nTRUEncryptionParameters = this.params;
        return r02 + (nTRUEncryptionParameters != null ? nTRUEncryptionParameters.hashCode() : 0);
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(getEncoded());
    }
}
