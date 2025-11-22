package org.bouncycastle.pqc.legacy.crypto.ntru;

import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.DenseTernaryPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.IntegerPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.ProductFormPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.util.Util;

/* loaded from: classes2.dex */
public class NTRUEncryptionKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private NTRUEncryptionKeyGenerationParameters params;

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        Polynomial polynomialGenerateRandomTernary;
        IntegerPolynomial integerPolynomial;
        IntegerPolynomial integerPolynomialInvertFq;
        IntegerPolynomial integerPolynomial2;
        DenseTernaryPolynomial denseTernaryPolynomialGenerateRandom;
        NTRUEncryptionKeyGenerationParameters nTRUEncryptionKeyGenerationParameters = this.params;
        int r82 = nTRUEncryptionKeyGenerationParameters.N;
        int r92 = nTRUEncryptionKeyGenerationParameters.f12025q;
        int r10 = nTRUEncryptionKeyGenerationParameters.f12023df;
        int r11 = nTRUEncryptionKeyGenerationParameters.df1;
        int r12 = nTRUEncryptionKeyGenerationParameters.df2;
        int r13 = nTRUEncryptionKeyGenerationParameters.df3;
        int r14 = nTRUEncryptionKeyGenerationParameters.f12024dg;
        boolean z10 = nTRUEncryptionKeyGenerationParameters.fastFp;
        boolean z11 = nTRUEncryptionKeyGenerationParameters.sparse;
        IntegerPolynomial integerPolynomialInvertF3 = null;
        while (true) {
            NTRUEncryptionKeyGenerationParameters nTRUEncryptionKeyGenerationParameters2 = this.params;
            int r32 = nTRUEncryptionKeyGenerationParameters2.polyType;
            if (z10) {
                polynomialGenerateRandomTernary = r32 == 0 ? Util.generateRandomTernary(r82, r10, r10, z11, nTRUEncryptionKeyGenerationParameters2.getRandom()) : ProductFormPolynomial.generateRandom(r82, r11, r12, r13, r13, nTRUEncryptionKeyGenerationParameters2.getRandom());
                integerPolynomial = polynomialGenerateRandomTernary.toIntegerPolynomial();
                integerPolynomial.mult(3);
                int[] r42 = integerPolynomial.coeffs;
                r42[0] = r42[0] + 1;
            } else {
                polynomialGenerateRandomTernary = r32 == 0 ? Util.generateRandomTernary(r82, r10, r10 - 1, z11, nTRUEncryptionKeyGenerationParameters2.getRandom()) : ProductFormPolynomial.generateRandom(r82, r11, r12, r13, r13 - 1, nTRUEncryptionKeyGenerationParameters2.getRandom());
                integerPolynomial = polynomialGenerateRandomTernary.toIntegerPolynomial();
                integerPolynomialInvertF3 = integerPolynomial.invertF3();
                if (integerPolynomialInvertF3 == null) {
                    continue;
                }
            }
            integerPolynomialInvertFq = integerPolynomial.invertFq(r92);
            if (integerPolynomialInvertFq != null) {
                break;
            }
        }
        if (z10) {
            integerPolynomial2 = new IntegerPolynomial(r82);
            integerPolynomial2.coeffs[0] = 1;
        } else {
            integerPolynomial2 = integerPolynomialInvertF3;
        }
        do {
            denseTernaryPolynomialGenerateRandom = DenseTernaryPolynomial.generateRandom(r82, r14, r14 - 1, this.params.getRandom());
        } while (denseTernaryPolynomialGenerateRandom.invertFq(r92) == null);
        IntegerPolynomial integerPolynomialMult = denseTernaryPolynomialGenerateRandom.mult(integerPolynomialInvertFq, r92);
        integerPolynomialMult.mult3(r92);
        integerPolynomialMult.ensurePositive(r92);
        denseTernaryPolynomialGenerateRandom.clear();
        integerPolynomialInvertFq.clear();
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new NTRUEncryptionPublicKeyParameters(integerPolynomialMult, this.params.getEncryptionParameters()), (AsymmetricKeyParameter) new NTRUEncryptionPrivateKeyParameters(integerPolynomialMult, polynomialGenerateRandomTernary, integerPolynomial2, this.params.getEncryptionParameters()));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.params = (NTRUEncryptionKeyGenerationParameters) keyGenerationParameters;
    }
}
