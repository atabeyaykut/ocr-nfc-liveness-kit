package org.bouncycastle.pqc.legacy.crypto.ntru;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.pqc.legacy.crypto.ntru.NTRUSigningPrivateKeyParameters;
import org.bouncycastle.pqc.legacy.math.ntru.euclid.BigIntEuclidean;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.BigDecimalPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.BigIntPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.DenseTernaryPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.IntegerPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.ProductFormPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.Resultant;

/* loaded from: classes2.dex */
public class NTRUSigningKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private NTRUSigningKeyGenerationParameters params;

    public class BasisGenerationTask implements Callable<NTRUSigningPrivateKeyParameters.Basis> {
        private BasisGenerationTask() {
        }

        @Override // java.util.concurrent.Callable
        public NTRUSigningPrivateKeyParameters.Basis call() throws Exception {
            return NTRUSigningKeyPairGenerator.this.generateBoundedBasis();
        }
    }

    public static class FGBasis extends NTRUSigningPrivateKeyParameters.Basis {
        public IntegerPolynomial F;
        public IntegerPolynomial G;

        public FGBasis(Polynomial polynomial, Polynomial polynomial2, IntegerPolynomial integerPolynomial, IntegerPolynomial integerPolynomial2, IntegerPolynomial integerPolynomial3, NTRUSigningKeyGenerationParameters nTRUSigningKeyGenerationParameters) {
            super(polynomial, polynomial2, integerPolynomial, nTRUSigningKeyGenerationParameters);
            this.F = integerPolynomial2;
            this.G = integerPolynomial3;
        }

        public boolean isNormOk() {
            NTRUSigningKeyGenerationParameters nTRUSigningKeyGenerationParameters = this.params;
            double d10 = nTRUSigningKeyGenerationParameters.keyNormBoundSq;
            int r02 = nTRUSigningKeyGenerationParameters.f12038q;
            return ((double) this.F.centeredNormSq(r02)) < d10 && ((double) this.G.centeredNormSq(r02)) < d10;
        }
    }

    private FGBasis generateBasis() {
        int r15;
        Polynomial polynomialGenerateRandom;
        Polynomial polynomial;
        IntegerPolynomial integerPolynomial;
        IntegerPolynomial integerPolynomialInvertFq;
        int r18;
        Resultant resultant;
        IntegerPolynomial integerPolynomial2;
        int r16;
        IntegerPolynomial integerPolynomial3;
        int r19;
        Polynomial polynomial2;
        Polynomial polynomialGenerateRandom2;
        IntegerPolynomial integerPolynomial4;
        Resultant resultant2;
        BigIntEuclidean bigIntEuclideanCalculate;
        BigIntPolynomial bigIntPolynomialRound;
        IntegerPolynomial integerPolynomialMult;
        Polynomial polynomial3;
        NTRUSigningKeyGenerationParameters nTRUSigningKeyGenerationParameters = this.params;
        int r52 = nTRUSigningKeyGenerationParameters.N;
        int r13 = nTRUSigningKeyGenerationParameters.f12038q;
        int r12 = nTRUSigningKeyGenerationParameters.f12034d;
        int r22 = nTRUSigningKeyGenerationParameters.f12035d1;
        int r32 = nTRUSigningKeyGenerationParameters.f12036d2;
        int r42 = nTRUSigningKeyGenerationParameters.f12037d3;
        int r14 = nTRUSigningKeyGenerationParameters.basisType;
        int r122 = (r52 * 2) + 1;
        boolean z10 = nTRUSigningKeyGenerationParameters.primeCheck;
        while (true) {
            if (this.params.polyType == 0) {
                polynomialGenerateRandom = DenseTernaryPolynomial.generateRandom(r52, r12 + 1, r12, CryptoServicesRegistrar.getSecureRandom());
                r15 = r122;
            } else {
                r15 = r122;
                polynomialGenerateRandom = ProductFormPolynomial.generateRandom(r52, r22, r32, r42 + 1, r42, CryptoServicesRegistrar.getSecureRandom());
            }
            polynomial = polynomialGenerateRandom;
            integerPolynomial = polynomial.toIntegerPolynomial();
            if ((!z10 || !integerPolynomial.resultant(r15).res.equals(BigInteger.ZERO)) && (integerPolynomialInvertFq = integerPolynomial.invertFq(r13)) != null) {
                break;
            }
            r122 = r15;
        }
        Resultant resultant3 = integerPolynomial.resultant();
        while (true) {
            if (this.params.polyType == 0) {
                polynomialGenerateRandom2 = DenseTernaryPolynomial.generateRandom(r52, r12 + 1, r12, CryptoServicesRegistrar.getSecureRandom());
                r18 = r12;
                r16 = r22;
                resultant = resultant3;
                integerPolynomial2 = integerPolynomialInvertFq;
                integerPolynomial3 = integerPolynomial;
                r19 = r14;
                polynomial2 = polynomial;
            } else {
                int r82 = r22;
                r18 = r12;
                resultant = resultant3;
                integerPolynomial2 = integerPolynomialInvertFq;
                r16 = r22;
                integerPolynomial3 = integerPolynomial;
                r19 = r14;
                polynomial2 = polynomial;
                polynomialGenerateRandom2 = ProductFormPolynomial.generateRandom(r52, r82, r32, r42 + 1, r42, CryptoServicesRegistrar.getSecureRandom());
            }
            integerPolynomial4 = polynomialGenerateRandom2.toIntegerPolynomial();
            if ((!z10 || !integerPolynomial4.resultant(r15).res.equals(BigInteger.ZERO)) && integerPolynomial4.invertFq(r13) != null) {
                resultant2 = integerPolynomial4.resultant();
                bigIntEuclideanCalculate = BigIntEuclidean.calculate(resultant.res, resultant2.res);
                if (bigIntEuclideanCalculate.gcd.equals(BigInteger.ONE)) {
                    break;
                }
            }
            resultant3 = resultant;
            integerPolynomial = integerPolynomial3;
            polynomial = polynomial2;
            r22 = r16;
            r12 = r18;
            r14 = r19;
            integerPolynomialInvertFq = integerPolynomial2;
        }
        BigIntPolynomial bigIntPolynomial = (BigIntPolynomial) resultant.rho.clone();
        bigIntPolynomial.mult(bigIntEuclideanCalculate.f12061x.multiply(BigInteger.valueOf(r13)));
        BigIntPolynomial bigIntPolynomial2 = (BigIntPolynomial) resultant2.rho.clone();
        bigIntPolynomial2.mult(bigIntEuclideanCalculate.f12062y.multiply(BigInteger.valueOf(-r13)));
        int r10 = 0;
        if (this.params.keyGenAlg == 0) {
            int[] r17 = new int[r52];
            int[] r43 = new int[r52];
            r17[0] = integerPolynomial3.coeffs[0];
            r43[0] = integerPolynomial4.coeffs[0];
            for (int r152 = 1; r152 < r52; r152++) {
                int r102 = r52 - r152;
                r17[r152] = integerPolynomial3.coeffs[r102];
                r43[r152] = integerPolynomial4.coeffs[r102];
            }
            IntegerPolynomial integerPolynomial5 = new IntegerPolynomial(r17);
            IntegerPolynomial integerPolynomial6 = new IntegerPolynomial(r43);
            IntegerPolynomial integerPolynomialMult2 = polynomial2.mult(integerPolynomial5);
            integerPolynomialMult2.add(polynomialGenerateRandom2.mult(integerPolynomial6));
            Resultant resultant4 = integerPolynomialMult2.resultant();
            BigIntPolynomial bigIntPolynomialMult = integerPolynomial5.mult(bigIntPolynomial2);
            bigIntPolynomialMult.add(integerPolynomial6.mult(bigIntPolynomial));
            bigIntPolynomialRound = bigIntPolynomialMult.mult(resultant4.rho);
            bigIntPolynomialRound.div(resultant4.res);
        } else {
            for (int r44 = 1; r44 < r52; r44 *= 10) {
                r10++;
            }
            BigDecimalPolynomial bigDecimalPolynomialDiv = resultant.rho.div(new BigDecimal(resultant.res), bigIntPolynomial2.getMaxCoeffLength() + 1 + r10);
            BigDecimalPolynomial bigDecimalPolynomialDiv2 = resultant2.rho.div(new BigDecimal(resultant2.res), bigIntPolynomial.getMaxCoeffLength() + 1 + r10);
            BigDecimalPolynomial bigDecimalPolynomialMult = bigDecimalPolynomialDiv.mult(bigIntPolynomial2);
            bigDecimalPolynomialMult.add(bigDecimalPolynomialDiv2.mult(bigIntPolynomial));
            bigDecimalPolynomialMult.halve();
            bigIntPolynomialRound = bigDecimalPolynomialMult.round();
        }
        BigIntPolynomial bigIntPolynomial3 = (BigIntPolynomial) bigIntPolynomial2.clone();
        bigIntPolynomial3.sub(polynomial2.mult(bigIntPolynomialRound));
        BigIntPolynomial bigIntPolynomial4 = (BigIntPolynomial) bigIntPolynomial.clone();
        bigIntPolynomial4.sub(polynomialGenerateRandom2.mult(bigIntPolynomialRound));
        IntegerPolynomial integerPolynomial7 = new IntegerPolynomial(bigIntPolynomial3);
        IntegerPolynomial integerPolynomial8 = new IntegerPolynomial(bigIntPolynomial4);
        minimizeFG(integerPolynomial3, integerPolynomial4, integerPolynomial7, integerPolynomial8, r52);
        IntegerPolynomial integerPolynomial9 = integerPolynomial2;
        if (r19 == 0) {
            integerPolynomialMult = polynomialGenerateRandom2.mult(integerPolynomial9, r13);
            polynomial3 = integerPolynomial7;
        } else {
            integerPolynomialMult = integerPolynomial7.mult(integerPolynomial9, r13);
            polynomial3 = polynomialGenerateRandom2;
        }
        integerPolynomialMult.modPositive(r13);
        return new FGBasis(polynomial2, polynomial3, integerPolynomialMult, integerPolynomial7, integerPolynomial8, this.params);
    }

    private void minimizeFG(IntegerPolynomial integerPolynomial, IntegerPolynomial integerPolynomial2, IntegerPolynomial integerPolynomial3, IntegerPolynomial integerPolynomial4, int r21) {
        int r72 = 0;
        for (int r6 = 0; r6 < r21; r6++) {
            int r92 = integerPolynomial.coeffs[r6];
            int r10 = integerPolynomial2.coeffs[r6];
            r72 += ((r10 * r10) + (r92 * r92)) * r21 * 2;
        }
        int r73 = r72 - 4;
        IntegerPolynomial integerPolynomial5 = (IntegerPolynomial) integerPolynomial.clone();
        IntegerPolynomial integerPolynomial6 = (IntegerPolynomial) integerPolynomial2.clone();
        int r93 = 0;
        int r102 = 0;
        while (r93 < r21 && r102 < r21) {
            int r12 = 0;
            for (int r11 = 0; r11 < r21; r11++) {
                r12 += ((integerPolynomial3.coeffs[r11] * integerPolynomial.coeffs[r11]) + (integerPolynomial4.coeffs[r11] * integerPolynomial2.coeffs[r11])) * r21 * 4;
            }
            int r122 = r12 - ((integerPolynomial4.sumCoeffs() + integerPolynomial3.sumCoeffs()) * 4);
            if (r122 > r73) {
                integerPolynomial3.sub(integerPolynomial5);
                integerPolynomial4.sub(integerPolynomial6);
            } else if (r122 < (-r73)) {
                integerPolynomial3.add(integerPolynomial5);
                integerPolynomial4.add(integerPolynomial6);
            } else {
                r102++;
                integerPolynomial5.rotate1();
                integerPolynomial6.rotate1();
            }
            r93++;
            r102 = 0;
            r102++;
            integerPolynomial5.rotate1();
            integerPolynomial6.rotate1();
        }
    }

    public NTRUSigningPrivateKeyParameters.Basis generateBoundedBasis() {
        FGBasis fGBasisGenerateBasis;
        do {
            fGBasisGenerateBasis = generateBasis();
        } while (!fGBasisGenerateBasis.isNormOk());
        return fGBasisGenerateBasis;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        NTRUSigningPublicKeyParameters nTRUSigningPublicKeyParameters;
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool();
        ArrayList arrayList = new ArrayList();
        int r22 = this.params.B;
        while (true) {
            nTRUSigningPublicKeyParameters = null;
            Object[] objArr = 0;
            if (r22 < 0) {
                break;
            }
            arrayList.add(executorServiceNewCachedThreadPool.submit(new BasisGenerationTask()));
            r22--;
        }
        executorServiceNewCachedThreadPool.shutdown();
        ArrayList arrayList2 = new ArrayList();
        for (int r23 = this.params.B; r23 >= 0; r23--) {
            Future future = (Future) arrayList.get(r23);
            try {
                arrayList2.add((NTRUSigningPrivateKeyParameters.Basis) future.get());
                if (r23 == this.params.B) {
                    nTRUSigningPublicKeyParameters = new NTRUSigningPublicKeyParameters(((NTRUSigningPrivateKeyParameters.Basis) future.get()).f12044h, this.params.getSigningParameters());
                }
            } catch (Exception e10) {
                throw new IllegalStateException(e10);
            }
        }
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) nTRUSigningPublicKeyParameters, (AsymmetricKeyParameter) new NTRUSigningPrivateKeyParameters(arrayList2, nTRUSigningPublicKeyParameters));
    }

    public AsymmetricCipherKeyPair generateKeyPairSingleThread() {
        ArrayList arrayList = new ArrayList();
        NTRUSigningPublicKeyParameters nTRUSigningPublicKeyParameters = null;
        for (int r12 = this.params.B; r12 >= 0; r12--) {
            NTRUSigningPrivateKeyParameters.Basis basisGenerateBoundedBasis = generateBoundedBasis();
            arrayList.add(basisGenerateBoundedBasis);
            if (r12 == 0) {
                nTRUSigningPublicKeyParameters = new NTRUSigningPublicKeyParameters(basisGenerateBoundedBasis.f12044h, this.params.getSigningParameters());
            }
        }
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) nTRUSigningPublicKeyParameters, (AsymmetricKeyParameter) new NTRUSigningPrivateKeyParameters(arrayList, nTRUSigningPublicKeyParameters));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.params = (NTRUSigningKeyGenerationParameters) keyGenerationParameters;
    }
}
