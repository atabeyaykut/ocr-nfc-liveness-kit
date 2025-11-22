package org.bouncycastle.pqc.legacy.crypto.ntru;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.DenseTernaryPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.IntegerPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.ProductFormPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.SparseTernaryPolynomial;

/* loaded from: classes2.dex */
public class NTRUSigningPrivateKeyParameters extends AsymmetricKeyParameter {
    private List<Basis> bases;
    private NTRUSigningPublicKeyParameters publicKey;

    public static class Basis {
        public Polynomial f;
        public Polynomial fPrime;

        /* renamed from: h, reason: collision with root package name */
        public IntegerPolynomial f12044h;
        NTRUSigningKeyGenerationParameters params;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r14v2, types: [org.bouncycastle.pqc.legacy.math.ntru.polynomial.IntegerPolynomial] */
        /* JADX WARN: Type inference failed for: r14v3, types: [org.bouncycastle.pqc.legacy.math.ntru.polynomial.ProductFormPolynomial] */
        /* JADX WARN: Type inference failed for: r14v4, types: [org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial] */
        /* JADX WARN: Type inference failed for: r14v5, types: [org.bouncycastle.pqc.legacy.math.ntru.polynomial.IntegerPolynomial] */
        public Basis(InputStream inputStream, NTRUSigningKeyGenerationParameters nTRUSigningKeyGenerationParameters, boolean z10) throws IOException {
            Polynomial sparseTernaryPolynomial;
            ?? FromBinary;
            int r6 = nTRUSigningKeyGenerationParameters.N;
            int r72 = nTRUSigningKeyGenerationParameters.f12038q;
            int r82 = nTRUSigningKeyGenerationParameters.f12035d1;
            int r92 = nTRUSigningKeyGenerationParameters.f12036d2;
            int r10 = nTRUSigningKeyGenerationParameters.f12037d3;
            boolean z11 = nTRUSigningKeyGenerationParameters.sparse;
            this.params = nTRUSigningKeyGenerationParameters;
            if (nTRUSigningKeyGenerationParameters.polyType == 1) {
                sparseTernaryPolynomial = ProductFormPolynomial.fromBinary(inputStream, r6, r82, r92, r10 + 1, r10);
            } else {
                IntegerPolynomial integerPolynomialFromBinary3Tight = IntegerPolynomial.fromBinary3Tight(inputStream, r6);
                sparseTernaryPolynomial = z11 ? new SparseTernaryPolynomial(integerPolynomialFromBinary3Tight) : new DenseTernaryPolynomial(integerPolynomialFromBinary3Tight);
            }
            this.f = sparseTernaryPolynomial;
            if (nTRUSigningKeyGenerationParameters.basisType == 0) {
                FromBinary = IntegerPolynomial.fromBinary(inputStream, r6, r72);
                int r02 = 0;
                while (true) {
                    int[] r12 = FromBinary.coeffs;
                    if (r02 >= r12.length) {
                        break;
                    }
                    r12[r02] = r12[r02] - (r72 / 2);
                    r02++;
                }
            } else {
                FromBinary = nTRUSigningKeyGenerationParameters.polyType == 1 ? ProductFormPolynomial.fromBinary(inputStream, r6, r82, r92, r10 + 1, r10) : IntegerPolynomial.fromBinary3Tight(inputStream, r6);
            }
            this.fPrime = FromBinary;
            if (z10) {
                this.f12044h = IntegerPolynomial.fromBinary(inputStream, r6, r72);
            }
        }

        public Basis(Polynomial polynomial, Polynomial polynomial2, IntegerPolynomial integerPolynomial, NTRUSigningKeyGenerationParameters nTRUSigningKeyGenerationParameters) {
            this.f = polynomial;
            this.fPrime = polynomial2;
            this.f12044h = integerPolynomial;
            this.params = nTRUSigningKeyGenerationParameters;
        }

        private byte[] getEncoded(Polynomial polynomial) {
            return polynomial instanceof ProductFormPolynomial ? ((ProductFormPolynomial) polynomial).toBinary() : polynomial.toIntegerPolynomial().toBinary3Tight();
        }

        public void encode(OutputStream outputStream, boolean z10) throws IOException {
            int r02 = this.params.f12038q;
            outputStream.write(getEncoded(this.f));
            if (this.params.basisType == 0) {
                IntegerPolynomial integerPolynomial = this.fPrime.toIntegerPolynomial();
                int r22 = 0;
                while (true) {
                    int[] r32 = integerPolynomial.coeffs;
                    if (r22 >= r32.length) {
                        break;
                    }
                    r32[r22] = (r02 / 2) + r32[r22];
                    r22++;
                }
                outputStream.write(integerPolynomial.toBinary(r02));
            } else {
                outputStream.write(getEncoded(this.fPrime));
            }
            if (z10) {
                outputStream.write(this.f12044h.toBinary(r02));
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof Basis)) {
                return false;
            }
            Basis basis = (Basis) obj;
            Polynomial polynomial = this.f;
            if (polynomial == null) {
                if (basis.f != null) {
                    return false;
                }
            } else if (!polynomial.equals(basis.f)) {
                return false;
            }
            Polynomial polynomial2 = this.fPrime;
            if (polynomial2 == null) {
                if (basis.fPrime != null) {
                    return false;
                }
            } else if (!polynomial2.equals(basis.fPrime)) {
                return false;
            }
            IntegerPolynomial integerPolynomial = this.f12044h;
            if (integerPolynomial == null) {
                if (basis.f12044h != null) {
                    return false;
                }
            } else if (!integerPolynomial.equals(basis.f12044h)) {
                return false;
            }
            NTRUSigningKeyGenerationParameters nTRUSigningKeyGenerationParameters = this.params;
            NTRUSigningKeyGenerationParameters nTRUSigningKeyGenerationParameters2 = basis.params;
            if (nTRUSigningKeyGenerationParameters == null) {
                if (nTRUSigningKeyGenerationParameters2 != null) {
                    return false;
                }
            } else if (!nTRUSigningKeyGenerationParameters.equals(nTRUSigningKeyGenerationParameters2)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            Polynomial polynomial = this.f;
            int r02 = ((polynomial == null ? 0 : polynomial.hashCode()) + 31) * 31;
            Polynomial polynomial2 = this.fPrime;
            int r03 = (r02 + (polynomial2 == null ? 0 : polynomial2.hashCode())) * 31;
            IntegerPolynomial integerPolynomial = this.f12044h;
            int r04 = (r03 + (integerPolynomial == null ? 0 : integerPolynomial.hashCode())) * 31;
            NTRUSigningKeyGenerationParameters nTRUSigningKeyGenerationParameters = this.params;
            return r04 + (nTRUSigningKeyGenerationParameters != null ? nTRUSigningKeyGenerationParameters.hashCode() : 0);
        }
    }

    public NTRUSigningPrivateKeyParameters(InputStream inputStream, NTRUSigningKeyGenerationParameters nTRUSigningKeyGenerationParameters) throws IOException {
        super(true);
        this.bases = new ArrayList();
        int r22 = 0;
        while (r22 <= nTRUSigningKeyGenerationParameters.B) {
            add(new Basis(inputStream, nTRUSigningKeyGenerationParameters, r22 != 0));
            r22++;
        }
        this.publicKey = new NTRUSigningPublicKeyParameters(inputStream, nTRUSigningKeyGenerationParameters.getSigningParameters());
    }

    public NTRUSigningPrivateKeyParameters(List<Basis> list, NTRUSigningPublicKeyParameters nTRUSigningPublicKeyParameters) {
        super(true);
        this.bases = new ArrayList(list);
        this.publicKey = nTRUSigningPublicKeyParameters;
    }

    public NTRUSigningPrivateKeyParameters(byte[] bArr, NTRUSigningKeyGenerationParameters nTRUSigningKeyGenerationParameters) throws IOException {
        this(new ByteArrayInputStream(bArr), nTRUSigningKeyGenerationParameters);
    }

    private void add(Basis basis) {
        this.bases.add(basis);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        NTRUSigningPrivateKeyParameters nTRUSigningPrivateKeyParameters = (NTRUSigningPrivateKeyParameters) obj;
        List<Basis> list = this.bases;
        if ((list == null) != (nTRUSigningPrivateKeyParameters.bases == null)) {
            return false;
        }
        if (list == null) {
            return true;
        }
        if (list.size() != nTRUSigningPrivateKeyParameters.bases.size()) {
            return false;
        }
        for (int r22 = 0; r22 < this.bases.size(); r22++) {
            Basis basis = this.bases.get(r22);
            Basis basis2 = nTRUSigningPrivateKeyParameters.bases.get(r22);
            if (!basis.f.equals(basis2.f) || !basis.fPrime.equals(basis2.fPrime)) {
                return false;
            }
            if ((r22 != 0 && !basis.f12044h.equals(basis2.f12044h)) || !basis.params.equals(basis2.params)) {
                return false;
            }
        }
        return true;
    }

    public Basis getBasis(int r22) {
        return this.bases.get(r22);
    }

    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int r22 = 0;
        while (r22 < this.bases.size()) {
            this.bases.get(r22).encode(byteArrayOutputStream, r22 != 0);
            r22++;
        }
        byteArrayOutputStream.write(this.publicKey.getEncoded());
        return byteArrayOutputStream.toByteArray();
    }

    public NTRUSigningPublicKeyParameters getPublicKey() {
        return this.publicKey;
    }

    public int hashCode() {
        List<Basis> list = this.bases;
        if (list == null) {
            return 31;
        }
        int r02 = list.hashCode() + 31;
        Iterator<Basis> it = this.bases.iterator();
        while (it.hasNext()) {
            r02 += it.next().hashCode();
        }
        return r02;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(getEncoded());
    }
}
