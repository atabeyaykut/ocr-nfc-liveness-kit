package org.bouncycastle.pqc.crypto.ntru;

import org.bouncycastle.pqc.math.ntru.HPSPolynomial;
import org.bouncycastle.pqc.math.ntru.Polynomial;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUHPSParameterSet;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUHRSSParameterSet;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUParameterSet;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class NTRUOWCPA {
    private final NTRUParameterSet params;
    private final NTRUSampling sampling;

    public NTRUOWCPA(NTRUParameterSet nTRUParameterSet) {
        this.params = nTRUParameterSet;
        this.sampling = new NTRUSampling(nTRUParameterSet);
    }

    private int checkCiphertext(byte[] bArr) {
        return (((~((short) (bArr[this.params.ntruCiphertextBytes() - 1] & (255 << (8 - ((this.params.packDegree() * this.params.logQ()) & 7)))))) + 1) >>> 15) & 1;
    }

    private int checkM(HPSPolynomial hPSPolynomial) {
        short s7 = 0;
        short s10 = 0;
        for (int r12 = 0; r12 < this.params.n() - 1; r12++) {
            short s11 = hPSPolynomial.coeffs[r12];
            s7 = (short) (s7 + (s11 & 1));
            s10 = (short) (s10 + (s11 & 2));
        }
        return (((~((((s10 >>> 1) ^ s7) | 0) | (((NTRUHPSParameterSet) this.params).weight() ^ s10))) + 1) >>> 31) & 1;
    }

    private int checkR(Polynomial polynomial) {
        int r12 = 0;
        for (int r02 = 0; r02 < this.params.n() - 1; r02++) {
            short s7 = polynomial.coeffs[r02];
            r12 = r12 | ((s7 + 1) & (this.params.q() - 4)) | ((s7 + 2) & 4);
        }
        return (((~(polynomial.coeffs[this.params.n() - 1] | r12)) + 1) >>> 31) & 1;
    }

    public OWCPADecryptResult decrypt(byte[] bArr, byte[] bArr2) {
        int r02 = this.params.owcpaMsgBytes();
        byte[] bArr3 = new byte[r02];
        Polynomial polynomialCreatePolynomial = this.params.createPolynomial();
        Polynomial polynomialCreatePolynomial2 = this.params.createPolynomial();
        Polynomial polynomialCreatePolynomial3 = this.params.createPolynomial();
        Polynomial polynomialCreatePolynomial4 = this.params.createPolynomial();
        polynomialCreatePolynomial.rqSumZeroFromBytes(bArr);
        polynomialCreatePolynomial2.s3FromBytes(bArr2);
        polynomialCreatePolynomial2.z3ToZq();
        polynomialCreatePolynomial3.rqMul(polynomialCreatePolynomial, polynomialCreatePolynomial2);
        polynomialCreatePolynomial2.rqToS3(polynomialCreatePolynomial3);
        polynomialCreatePolynomial3.s3FromBytes(Arrays.copyOfRange(bArr2, this.params.packTrinaryBytes(), bArr2.length));
        polynomialCreatePolynomial4.s3Mul(polynomialCreatePolynomial2, polynomialCreatePolynomial3);
        byte[] bArrS3ToBytes = polynomialCreatePolynomial4.s3ToBytes(r02 - this.params.packTrinaryBytes());
        int r12 = checkCiphertext(bArr) | 0;
        if (this.params instanceof NTRUHPSParameterSet) {
            r12 |= checkM((HPSPolynomial) polynomialCreatePolynomial4);
        }
        polynomialCreatePolynomial2.lift(polynomialCreatePolynomial4);
        for (int r72 = 0; r72 < this.params.n(); r72++) {
            short[] sArr = polynomialCreatePolynomial.coeffs;
            sArr[r72] = (short) (sArr[r72] - polynomialCreatePolynomial2.coeffs[r72]);
        }
        polynomialCreatePolynomial3.sqFromBytes(Arrays.copyOfRange(bArr2, this.params.packTrinaryBytes() * 2, bArr2.length));
        polynomialCreatePolynomial4.sqMul(polynomialCreatePolynomial, polynomialCreatePolynomial3);
        int r122 = r12 | checkR(polynomialCreatePolynomial4);
        polynomialCreatePolynomial4.trinaryZqToZ3();
        byte[] bArrS3ToBytes2 = polynomialCreatePolynomial4.s3ToBytes(this.params.owcpaMsgBytes());
        System.arraycopy(bArrS3ToBytes2, 0, bArr3, 0, bArrS3ToBytes2.length);
        System.arraycopy(bArrS3ToBytes, 0, bArr3, this.params.packTrinaryBytes(), bArrS3ToBytes.length);
        return new OWCPADecryptResult(bArr3, r122);
    }

    public byte[] encrypt(Polynomial polynomial, Polynomial polynomial2, byte[] bArr) {
        Polynomial polynomialCreatePolynomial = this.params.createPolynomial();
        Polynomial polynomialCreatePolynomial2 = this.params.createPolynomial();
        polynomialCreatePolynomial.rqSumZeroFromBytes(bArr);
        polynomialCreatePolynomial2.rqMul(polynomial, polynomialCreatePolynomial);
        polynomialCreatePolynomial.lift(polynomial2);
        for (int r42 = 0; r42 < this.params.n(); r42++) {
            short[] sArr = polynomialCreatePolynomial2.coeffs;
            sArr[r42] = (short) (sArr[r42] + polynomialCreatePolynomial.coeffs[r42]);
        }
        return polynomialCreatePolynomial2.rqSumZeroToBytes(this.params.ntruCiphertextBytes());
    }

    public OWCPAKeyPair keypair(byte[] bArr) {
        int r02 = this.params.owcpaSecretKeyBytes();
        byte[] bArr2 = new byte[r02];
        int r22 = this.params.n();
        this.params.q();
        Polynomial polynomialCreatePolynomial = this.params.createPolynomial();
        Polynomial polynomialCreatePolynomial2 = this.params.createPolynomial();
        Polynomial polynomialCreatePolynomial3 = this.params.createPolynomial();
        PolynomialPair polynomialPairSampleFg = this.sampling.sampleFg(bArr);
        Polynomial polynomialF = polynomialPairSampleFg.f();
        Polynomial polynomialG = polynomialPairSampleFg.g();
        polynomialCreatePolynomial.s3Inv(polynomialF);
        byte[] bArrS3ToBytes = polynomialF.s3ToBytes(this.params.owcpaMsgBytes());
        System.arraycopy(bArrS3ToBytes, 0, bArr2, 0, bArrS3ToBytes.length);
        byte[] bArrS3ToBytes2 = polynomialCreatePolynomial.s3ToBytes(r02 - this.params.packTrinaryBytes());
        System.arraycopy(bArrS3ToBytes2, 0, bArr2, this.params.packTrinaryBytes(), bArrS3ToBytes2.length);
        polynomialF.z3ToZq();
        polynomialG.z3ToZq();
        if (this.params instanceof NTRUHRSSParameterSet) {
            for (int r23 = r22 - 1; r23 > 0; r23--) {
                short[] sArr = polynomialG.coeffs;
                sArr[r23] = (short) ((sArr[r23 - 1] - sArr[r23]) * 3);
            }
            short[] sArr2 = polynomialG.coeffs;
            sArr2[0] = (short) (-(sArr2[0] * 3));
        } else {
            for (int r72 = 0; r72 < r22; r72++) {
                short[] sArr3 = polynomialG.coeffs;
                sArr3[r72] = (short) (sArr3[r72] * 3);
            }
        }
        polynomialCreatePolynomial.rqMul(polynomialG, polynomialF);
        polynomialCreatePolynomial2.rqInv(polynomialCreatePolynomial);
        polynomialCreatePolynomial3.rqMul(polynomialCreatePolynomial2, polynomialF);
        polynomialCreatePolynomial.sqMul(polynomialCreatePolynomial3, polynomialF);
        byte[] bArrSqToBytes = polynomialCreatePolynomial.sqToBytes(r02 - (this.params.packTrinaryBytes() * 2));
        System.arraycopy(bArrSqToBytes, 0, bArr2, this.params.packTrinaryBytes() * 2, bArrSqToBytes.length);
        polynomialCreatePolynomial3.rqMul(polynomialCreatePolynomial2, polynomialG);
        polynomialCreatePolynomial.rqMul(polynomialCreatePolynomial3, polynomialG);
        return new OWCPAKeyPair(polynomialCreatePolynomial.rqSumZeroToBytes(this.params.owcpaPublicKeyBytes()), bArr2);
    }
}
