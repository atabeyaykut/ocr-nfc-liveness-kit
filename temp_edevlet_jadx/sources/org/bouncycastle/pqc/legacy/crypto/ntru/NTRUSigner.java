package org.bouncycastle.pqc.legacy.crypto.ntru;

import androidx.browser.browseractions.a;
import java.nio.ByteBuffer;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.IntegerPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial;

/* loaded from: classes2.dex */
public class NTRUSigner {
    private Digest hashAlg;
    private NTRUSigningParameters params;
    private NTRUSigningPrivateKeyParameters signingKeyPair;
    private NTRUSigningPublicKeyParameters verificationKey;

    public NTRUSigner(NTRUSigningParameters nTRUSigningParameters) {
        this.params = nTRUSigningParameters;
    }

    private IntegerPolynomial sign(IntegerPolynomial integerPolynomial, NTRUSigningPrivateKeyParameters nTRUSigningPrivateKeyParameters) {
        NTRUSigningParameters nTRUSigningParameters = this.params;
        int r12 = nTRUSigningParameters.N;
        int r22 = nTRUSigningParameters.f12043q;
        int r02 = nTRUSigningParameters.B;
        NTRUSigningPublicKeyParameters publicKey = nTRUSigningPrivateKeyParameters.getPublicKey();
        IntegerPolynomial integerPolynomial2 = new IntegerPolynomial(r12);
        while (r02 >= 1) {
            Polynomial polynomial = nTRUSigningPrivateKeyParameters.getBasis(r02).f;
            Polynomial polynomial2 = nTRUSigningPrivateKeyParameters.getBasis(r02).fPrime;
            IntegerPolynomial integerPolynomialMult = polynomial.mult(integerPolynomial);
            integerPolynomialMult.div(r22);
            IntegerPolynomial integerPolynomialMult2 = polynomial2.mult(integerPolynomialMult);
            IntegerPolynomial integerPolynomialMult3 = polynomial2.mult(integerPolynomial);
            integerPolynomialMult3.div(r22);
            integerPolynomialMult2.sub(polynomial.mult(integerPolynomialMult3));
            integerPolynomial2.add(integerPolynomialMult2);
            IntegerPolynomial integerPolynomial3 = (IntegerPolynomial) nTRUSigningPrivateKeyParameters.getBasis(r02).f12044h.clone();
            integerPolynomial3.sub(r02 > 1 ? nTRUSigningPrivateKeyParameters.getBasis(r02 - 1).f12044h : publicKey.f12045h);
            integerPolynomial = integerPolynomialMult2.mult(integerPolynomial3, r22);
            r02--;
        }
        Polynomial polynomial3 = nTRUSigningPrivateKeyParameters.getBasis(0).f;
        Polynomial polynomial4 = nTRUSigningPrivateKeyParameters.getBasis(0).fPrime;
        IntegerPolynomial integerPolynomialMult4 = polynomial3.mult(integerPolynomial);
        integerPolynomialMult4.div(r22);
        IntegerPolynomial integerPolynomialMult5 = polynomial4.mult(integerPolynomialMult4);
        IntegerPolynomial integerPolynomialMult6 = polynomial4.mult(integerPolynomial);
        integerPolynomialMult6.div(r22);
        integerPolynomialMult5.sub(polynomial3.mult(integerPolynomialMult6));
        integerPolynomial2.add(integerPolynomialMult5);
        integerPolynomial2.modPositive(r22);
        return integerPolynomial2;
    }

    private byte[] signHash(byte[] bArr, NTRUSigningPrivateKeyParameters nTRUSigningPrivateKeyParameters) {
        IntegerPolynomial integerPolynomialCreateMsgRep;
        IntegerPolynomial integerPolynomialSign;
        NTRUSigningPublicKeyParameters publicKey = nTRUSigningPrivateKeyParameters.getPublicKey();
        int r12 = 0;
        do {
            r12++;
            if (r12 > this.params.signFailTolerance) {
                throw new IllegalStateException(a.b(new StringBuilder("Signing failed: too many retries (max="), this.params.signFailTolerance, ")"));
            }
            integerPolynomialCreateMsgRep = createMsgRep(bArr, r12);
            integerPolynomialSign = sign(integerPolynomialCreateMsgRep, nTRUSigningPrivateKeyParameters);
        } while (!verify(integerPolynomialCreateMsgRep, integerPolynomialSign, publicKey.f12045h));
        byte[] binary = integerPolynomialSign.toBinary(this.params.f12043q);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(binary.length + 4);
        byteBufferAllocate.put(binary);
        byteBufferAllocate.putInt(r12);
        return byteBufferAllocate.array();
    }

    private boolean verify(IntegerPolynomial integerPolynomial, IntegerPolynomial integerPolynomial2, IntegerPolynomial integerPolynomial3) {
        NTRUSigningParameters nTRUSigningParameters = this.params;
        int r12 = nTRUSigningParameters.f12043q;
        double d10 = nTRUSigningParameters.normBoundSq;
        double d11 = nTRUSigningParameters.betaSq;
        IntegerPolynomial integerPolynomialMult = integerPolynomial3.mult(integerPolynomial2, r12);
        integerPolynomialMult.sub(integerPolynomial);
        return ((double) ((long) ((d11 * ((double) integerPolynomialMult.centeredNormSq(r12))) + ((double) integerPolynomial2.centeredNormSq(r12))))) <= d10;
    }

    private boolean verifyHash(byte[] bArr, byte[] bArr2, NTRUSigningPublicKeyParameters nTRUSigningPublicKeyParameters) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr2);
        byte[] bArr3 = new byte[bArr2.length - 4];
        byteBufferWrap.get(bArr3);
        NTRUSigningParameters nTRUSigningParameters = this.params;
        return verify(createMsgRep(bArr, byteBufferWrap.getInt()), IntegerPolynomial.fromBinary(bArr3, nTRUSigningParameters.N, nTRUSigningParameters.f12043q), nTRUSigningPublicKeyParameters.f12045h);
    }

    public IntegerPolynomial createMsgRep(byte[] bArr, int r10) {
        NTRUSigningParameters nTRUSigningParameters = this.params;
        int r12 = nTRUSigningParameters.N;
        int r02 = 31 - Integer.numberOfLeadingZeros(nTRUSigningParameters.f12043q);
        int r22 = (r02 + 7) / 8;
        IntegerPolynomial integerPolynomial = new IntegerPolynomial(r12);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length + 4);
        byteBufferAllocate.put(bArr);
        byteBufferAllocate.putInt(r10);
        NTRUSignerPrng nTRUSignerPrng = new NTRUSignerPrng(byteBufferAllocate.array(), this.params.hashAlg);
        for (int r102 = 0; r102 < r12; r102++) {
            byte[] bArrNextBytes = nTRUSignerPrng.nextBytes(r22);
            int r72 = (r22 * 8) - r02;
            bArrNextBytes[bArrNextBytes.length - 1] = (byte) ((bArrNextBytes[bArrNextBytes.length - 1] >> r72) << r72);
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(4);
            byteBufferAllocate2.put(bArrNextBytes);
            integerPolynomial.coeffs[r102] = Integer.reverseBytes(byteBufferAllocate2.getInt());
        }
        return integerPolynomial;
    }

    public byte[] generateSignature() {
        Digest digest = this.hashAlg;
        if (digest == null || this.signingKeyPair == null) {
            throw new IllegalStateException("Call initSign first!");
        }
        byte[] bArr = new byte[digest.getDigestSize()];
        this.hashAlg.doFinal(bArr, 0);
        return signHash(bArr, this.signingKeyPair);
    }

    public void init(boolean z10, CipherParameters cipherParameters) {
        if (z10) {
            this.signingKeyPair = (NTRUSigningPrivateKeyParameters) cipherParameters;
        } else {
            this.verificationKey = (NTRUSigningPublicKeyParameters) cipherParameters;
        }
        Digest digest = this.params.hashAlg;
        this.hashAlg = digest;
        digest.reset();
    }

    public void update(byte b10) {
        Digest digest = this.hashAlg;
        if (digest == null) {
            throw new IllegalStateException("Call initSign or initVerify first!");
        }
        digest.update(b10);
    }

    public void update(byte[] bArr, int r32, int r42) {
        Digest digest = this.hashAlg;
        if (digest == null) {
            throw new IllegalStateException("Call initSign or initVerify first!");
        }
        digest.update(bArr, r32, r42);
    }

    public boolean verifySignature(byte[] bArr) {
        Digest digest = this.hashAlg;
        if (digest == null || this.verificationKey == null) {
            throw new IllegalStateException("Call initVerify first!");
        }
        byte[] bArr2 = new byte[digest.getDigestSize()];
        this.hashAlg.doFinal(bArr2, 0);
        return verifyHash(bArr2, bArr, this.verificationKey);
    }
}
