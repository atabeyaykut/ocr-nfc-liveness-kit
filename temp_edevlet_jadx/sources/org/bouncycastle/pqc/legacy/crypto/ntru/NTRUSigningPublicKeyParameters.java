package org.bouncycastle.pqc.legacy.crypto.ntru;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.IntegerPolynomial;

/* loaded from: classes2.dex */
public class NTRUSigningPublicKeyParameters extends AsymmetricKeyParameter {

    /* renamed from: h, reason: collision with root package name */
    public IntegerPolynomial f12045h;
    private NTRUSigningParameters params;

    public NTRUSigningPublicKeyParameters(InputStream inputStream, NTRUSigningParameters nTRUSigningParameters) throws IOException {
        super(false);
        this.f12045h = IntegerPolynomial.fromBinary(inputStream, nTRUSigningParameters.N, nTRUSigningParameters.f12043q);
        this.params = nTRUSigningParameters;
    }

    public NTRUSigningPublicKeyParameters(IntegerPolynomial integerPolynomial, NTRUSigningParameters nTRUSigningParameters) {
        super(false);
        this.f12045h = integerPolynomial;
        this.params = nTRUSigningParameters;
    }

    public NTRUSigningPublicKeyParameters(byte[] bArr, NTRUSigningParameters nTRUSigningParameters) {
        super(false);
        this.f12045h = IntegerPolynomial.fromBinary(bArr, nTRUSigningParameters.N, nTRUSigningParameters.f12043q);
        this.params = nTRUSigningParameters;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        NTRUSigningPublicKeyParameters nTRUSigningPublicKeyParameters = (NTRUSigningPublicKeyParameters) obj;
        IntegerPolynomial integerPolynomial = this.f12045h;
        if (integerPolynomial == null) {
            if (nTRUSigningPublicKeyParameters.f12045h != null) {
                return false;
            }
        } else if (!integerPolynomial.equals(nTRUSigningPublicKeyParameters.f12045h)) {
            return false;
        }
        NTRUSigningParameters nTRUSigningParameters = this.params;
        NTRUSigningParameters nTRUSigningParameters2 = nTRUSigningPublicKeyParameters.params;
        if (nTRUSigningParameters == null) {
            if (nTRUSigningParameters2 != null) {
                return false;
            }
        } else if (!nTRUSigningParameters.equals(nTRUSigningParameters2)) {
            return false;
        }
        return true;
    }

    public byte[] getEncoded() {
        return this.f12045h.toBinary(this.params.f12043q);
    }

    public int hashCode() {
        IntegerPolynomial integerPolynomial = this.f12045h;
        int r02 = ((integerPolynomial == null ? 0 : integerPolynomial.hashCode()) + 31) * 31;
        NTRUSigningParameters nTRUSigningParameters = this.params;
        return r02 + (nTRUSigningParameters != null ? nTRUSigningParameters.hashCode() : 0);
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(getEncoded());
    }
}
