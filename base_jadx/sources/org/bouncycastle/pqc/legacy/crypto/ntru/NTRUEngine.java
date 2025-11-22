package org.bouncycastle.pqc.legacy.crypto.ntru;

import androidx.constraintlayout.core.a;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.DenseTernaryPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.IntegerPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.ProductFormPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.SparseTernaryPolynomial;
import org.bouncycastle.pqc.legacy.math.ntru.polynomial.TernaryPolynomial;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class NTRUEngine implements AsymmetricBlockCipher {
    private boolean forEncryption;
    private NTRUEncryptionParameters params;
    private NTRUEncryptionPrivateKeyParameters privKey;
    private NTRUEncryptionPublicKeyParameters pubKey;
    private SecureRandom random;

    private IntegerPolynomial MGF(byte[] bArr, int r12, int r13, boolean z10) {
        Digest digest = this.params.hashAlg;
        int digestSize = digest.getDigestSize();
        byte[] bArrCalcHash = new byte[r13 * digestSize];
        if (z10) {
            bArr = calcHash(digest, bArr);
        }
        int r32 = 0;
        while (r32 < r13) {
            digest.update(bArr, 0, bArr.length);
            putInt(digest, r32);
            System.arraycopy(calcHash(digest), 0, bArrCalcHash, r32 * digestSize, digestSize);
            r32++;
        }
        IntegerPolynomial integerPolynomial = new IntegerPolynomial(r12);
        while (true) {
            int r42 = 0;
            for (int r14 = 0; r14 != bArrCalcHash.length; r14++) {
                int r52 = bArrCalcHash[r14] & 255;
                if (r52 < 243) {
                    for (int r6 = 0; r6 < 4; r6++) {
                        int r72 = r52 % 3;
                        integerPolynomial.coeffs[r42] = r72 - 1;
                        r42++;
                        if (r42 == r12) {
                            return integerPolynomial;
                        }
                        r52 = (r52 - r72) / 3;
                    }
                    integerPolynomial.coeffs[r42] = r52 - 1;
                    r42++;
                    if (r42 == r12) {
                        return integerPolynomial;
                    }
                }
            }
            if (r42 >= r12) {
                return integerPolynomial;
            }
            digest.update(bArr, 0, bArr.length);
            putInt(digest, r32);
            bArrCalcHash = calcHash(digest);
            r32++;
        }
    }

    private byte[] buildSData(byte[] bArr, byte[] bArr2, int r6, byte[] bArr3, byte[] bArr4) {
        byte[] bArr5 = new byte[bArr.length + r6 + bArr3.length + bArr4.length];
        System.arraycopy(bArr, 0, bArr5, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr5, bArr.length, bArr2.length);
        System.arraycopy(bArr3, 0, bArr5, bArr.length + bArr2.length, bArr3.length);
        System.arraycopy(bArr4, 0, bArr5, bArr.length + bArr2.length + bArr3.length, bArr4.length);
        return bArr5;
    }

    private byte[] calcHash(Digest digest) {
        byte[] bArr = new byte[digest.getDigestSize()];
        digest.doFinal(bArr, 0);
        return bArr;
    }

    private byte[] calcHash(Digest digest, byte[] bArr) {
        byte[] bArr2 = new byte[digest.getDigestSize()];
        digest.update(bArr, 0, bArr.length);
        digest.doFinal(bArr2, 0);
        return bArr2;
    }

    private byte[] copyOf(byte[] bArr, int r42) {
        byte[] bArr2 = new byte[r42];
        if (r42 >= bArr.length) {
            r42 = bArr.length;
        }
        System.arraycopy(bArr, 0, bArr2, 0, r42);
        return bArr2;
    }

    private byte[] decrypt(byte[] bArr, NTRUEncryptionPrivateKeyParameters nTRUEncryptionPrivateKeyParameters) throws InvalidCipherTextException {
        Polynomial polynomial = nTRUEncryptionPrivateKeyParameters.f12032t;
        IntegerPolynomial integerPolynomial = nTRUEncryptionPrivateKeyParameters.fp;
        IntegerPolynomial integerPolynomial2 = nTRUEncryptionPrivateKeyParameters.f12031h;
        NTRUEncryptionParameters nTRUEncryptionParameters = this.params;
        int r32 = nTRUEncryptionParameters.N;
        int r82 = nTRUEncryptionParameters.f12030q;
        int r42 = nTRUEncryptionParameters.f12027db;
        int r52 = nTRUEncryptionParameters.maxMsgLenBytes;
        int r92 = nTRUEncryptionParameters.dm0;
        int r10 = nTRUEncryptionParameters.pkLen;
        int r11 = nTRUEncryptionParameters.minCallsMask;
        boolean z10 = nTRUEncryptionParameters.hashSeed;
        byte[] bArr2 = nTRUEncryptionParameters.oid;
        if (r52 > 255) {
            throw new DataLengthException("maxMsgLenBytes values bigger than 255 are not supported");
        }
        int r43 = r42 / 8;
        IntegerPolynomial integerPolynomialFromBinary = IntegerPolynomial.fromBinary(bArr, r32, r82);
        IntegerPolynomial integerPolynomialDecrypt = decrypt(integerPolynomialFromBinary, polynomial, integerPolynomial);
        if (integerPolynomialDecrypt.count(-1) < r92) {
            throw new InvalidCipherTextException("Less than dm0 coefficients equal -1");
        }
        if (integerPolynomialDecrypt.count(0) < r92) {
            throw new InvalidCipherTextException("Less than dm0 coefficients equal 0");
        }
        if (integerPolynomialDecrypt.count(1) < r92) {
            throw new InvalidCipherTextException("Less than dm0 coefficients equal 1");
        }
        IntegerPolynomial integerPolynomial3 = (IntegerPolynomial) integerPolynomialFromBinary.clone();
        integerPolynomial3.sub(integerPolynomialDecrypt);
        integerPolynomial3.modPositive(r82);
        IntegerPolynomial integerPolynomial4 = (IntegerPolynomial) integerPolynomial3.clone();
        integerPolynomial4.modPositive(4);
        integerPolynomialDecrypt.sub(MGF(integerPolynomial4.toBinary(4), r32, r11, z10));
        integerPolynomialDecrypt.mod3();
        byte[] binary3Sves = integerPolynomialDecrypt.toBinary3Sves();
        byte[] bArr3 = new byte[r43];
        System.arraycopy(binary3Sves, 0, bArr3, 0, r43);
        int r33 = binary3Sves[r43] & 255;
        if (r33 > r52) {
            throw new InvalidCipherTextException(a.c("Message too long: ", r33, ">", r52));
        }
        byte[] bArr4 = new byte[r33];
        int r44 = r43 + 1;
        System.arraycopy(binary3Sves, r44, bArr4, 0, r33);
        int r45 = r44 + r33;
        int length = binary3Sves.length - r45;
        byte[] bArr5 = new byte[length];
        System.arraycopy(binary3Sves, r45, bArr5, 0, length);
        if (!Arrays.constantTimeAreEqual(bArr5, new byte[length])) {
            throw new InvalidCipherTextException("The message is not followed by zeroes");
        }
        IntegerPolynomial integerPolynomialMult = generateBlindingPoly(buildSData(bArr2, bArr4, r33, bArr3, copyOf(integerPolynomial2.toBinary(r82), r10 / 8)), bArr4).mult(integerPolynomial2);
        integerPolynomialMult.modPositive(r82);
        if (integerPolynomialMult.equals(integerPolynomial3)) {
            return bArr4;
        }
        throw new InvalidCipherTextException("Invalid message encoding");
    }

    private byte[] encrypt(byte[] bArr, NTRUEncryptionPublicKeyParameters nTRUEncryptionPublicKeyParameters) {
        byte[] bArr2 = bArr;
        IntegerPolynomial integerPolynomial = nTRUEncryptionPublicKeyParameters.f12033h;
        NTRUEncryptionParameters nTRUEncryptionParameters = this.params;
        int r92 = nTRUEncryptionParameters.N;
        int r10 = nTRUEncryptionParameters.f12030q;
        int r11 = nTRUEncryptionParameters.maxMsgLenBytes;
        int r12 = nTRUEncryptionParameters.f12027db;
        int r13 = nTRUEncryptionParameters.bufferLenBits;
        int r14 = nTRUEncryptionParameters.dm0;
        int r15 = nTRUEncryptionParameters.pkLen;
        int r52 = nTRUEncryptionParameters.minCallsMask;
        boolean z10 = nTRUEncryptionParameters.hashSeed;
        byte[] bArr3 = nTRUEncryptionParameters.oid;
        int length = bArr2.length;
        if (r11 > 255) {
            throw new IllegalArgumentException("llen values bigger than 1 are not supported");
        }
        if (length > r11) {
            throw new DataLengthException(a.c("Message too long: ", length, ">", r11));
        }
        while (true) {
            int r02 = r12 / 8;
            byte[] bArr4 = new byte[r02];
            boolean z11 = z10;
            this.random.nextBytes(bArr4);
            int r42 = (r11 + 1) - length;
            int r16 = r52;
            int r17 = r12;
            byte[] bArr5 = new byte[r13 / 8];
            int r18 = r13;
            System.arraycopy(bArr4, 0, bArr5, 0, r02);
            bArr5[r02] = (byte) length;
            int r03 = r02 + 1;
            System.arraycopy(bArr2, 0, bArr5, r03, bArr2.length);
            System.arraycopy(new byte[r42], 0, bArr5, r03 + bArr2.length, r42);
            IntegerPolynomial integerPolynomialFromBinary3Sves = IntegerPolynomial.fromBinary3Sves(bArr5, r92);
            int r19 = length;
            byte[] bArr6 = bArr3;
            int r23 = r15;
            IntegerPolynomial integerPolynomialMult = generateBlindingPoly(buildSData(bArr3, bArr, r19, bArr4, copyOf(integerPolynomial.toBinary(r10), r15 / 8)), bArr5).mult(integerPolynomial, r10);
            IntegerPolynomial integerPolynomial2 = (IntegerPolynomial) integerPolynomialMult.clone();
            integerPolynomial2.modPositive(4);
            integerPolynomialFromBinary3Sves.add(MGF(integerPolynomial2.toBinary(4), r92, r16, z11));
            integerPolynomialFromBinary3Sves.mod3();
            if (integerPolynomialFromBinary3Sves.count(-1) >= r14 && integerPolynomialFromBinary3Sves.count(0) >= r14 && integerPolynomialFromBinary3Sves.count(1) >= r14) {
                integerPolynomialMult.add(integerPolynomialFromBinary3Sves, r10);
                integerPolynomialMult.ensurePositive(r10);
                return integerPolynomialMult.toBinary(r10);
            }
            z10 = z11;
            r52 = r16;
            r12 = r17;
            r13 = r18;
            length = r19;
            bArr3 = bArr6;
            bArr2 = bArr;
            r15 = r23;
        }
    }

    private int[] generateBlindingCoeffs(IndexGenerator indexGenerator, int r72) {
        int[] r02 = new int[this.params.N];
        for (int r12 = -1; r12 <= 1; r12 += 2) {
            int r22 = 0;
            while (r22 < r72) {
                int r32 = indexGenerator.nextIndex();
                if (r02[r32] == 0) {
                    r02[r32] = r12;
                    r22++;
                }
            }
        }
        return r02;
    }

    private Polynomial generateBlindingPoly(byte[] bArr, byte[] bArr2) {
        IndexGenerator indexGenerator = new IndexGenerator(bArr, this.params);
        NTRUEncryptionParameters nTRUEncryptionParameters = this.params;
        if (nTRUEncryptionParameters.polyType == 1) {
            return new ProductFormPolynomial(new SparseTernaryPolynomial(generateBlindingCoeffs(indexGenerator, nTRUEncryptionParameters.dr1)), new SparseTernaryPolynomial(generateBlindingCoeffs(indexGenerator, this.params.dr2)), new SparseTernaryPolynomial(generateBlindingCoeffs(indexGenerator, this.params.dr3)));
        }
        int r02 = nTRUEncryptionParameters.dr;
        boolean z10 = nTRUEncryptionParameters.sparse;
        int[] r52 = generateBlindingCoeffs(indexGenerator, r02);
        return z10 ? new SparseTernaryPolynomial(r52) : new DenseTernaryPolynomial(r52);
    }

    private int log2(int r22) {
        if (r22 == 2048) {
            return 11;
        }
        throw new IllegalStateException("log2 not fully implemented");
    }

    private void putInt(Digest digest, int r32) {
        digest.update((byte) (r32 >> 24));
        digest.update((byte) (r32 >> 16));
        digest.update((byte) (r32 >> 8));
        digest.update((byte) r32);
    }

    public IntegerPolynomial decrypt(IntegerPolynomial integerPolynomial, Polynomial polynomial, IntegerPolynomial integerPolynomial2) {
        NTRUEncryptionParameters nTRUEncryptionParameters = this.params;
        boolean z10 = nTRUEncryptionParameters.fastFp;
        IntegerPolynomial integerPolynomialMult = polynomial.mult(integerPolynomial, nTRUEncryptionParameters.f12030q);
        if (z10) {
            integerPolynomialMult.mult(3);
            integerPolynomialMult.add(integerPolynomial);
        }
        integerPolynomialMult.center0(this.params.f12030q);
        integerPolynomialMult.mod3();
        if (!this.params.fastFp) {
            integerPolynomialMult = new DenseTernaryPolynomial(integerPolynomialMult).mult(integerPolynomial2, 3);
        }
        integerPolynomialMult.center0(3);
        return integerPolynomialMult;
    }

    public IntegerPolynomial encrypt(IntegerPolynomial integerPolynomial, TernaryPolynomial ternaryPolynomial, IntegerPolynomial integerPolynomial2) {
        IntegerPolynomial integerPolynomialMult = ternaryPolynomial.mult(integerPolynomial2, this.params.f12030q);
        integerPolynomialMult.add(integerPolynomial, this.params.f12030q);
        integerPolynomialMult.ensurePositive(this.params.f12030q);
        return integerPolynomialMult;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        return this.params.maxMsgLenBytes;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        NTRUEncryptionParameters nTRUEncryptionParameters = this.params;
        return ((nTRUEncryptionParameters.N * log2(nTRUEncryptionParameters.f12030q)) + 7) / 8;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        SecureRandom random;
        this.forEncryption = z10;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            random = parametersWithRandom.getRandom();
            cipherParameters = parametersWithRandom.getParameters();
        } else {
            random = null;
        }
        if (z10) {
            NTRUEncryptionPublicKeyParameters nTRUEncryptionPublicKeyParameters = (NTRUEncryptionPublicKeyParameters) cipherParameters;
            this.pubKey = nTRUEncryptionPublicKeyParameters;
            this.privKey = null;
            this.params = nTRUEncryptionPublicKeyParameters.getParameters();
            this.random = CryptoServicesRegistrar.getSecureRandom(random);
            return;
        }
        this.pubKey = null;
        NTRUEncryptionPrivateKeyParameters nTRUEncryptionPrivateKeyParameters = (NTRUEncryptionPrivateKeyParameters) cipherParameters;
        this.privKey = nTRUEncryptionPrivateKeyParameters;
        this.params = nTRUEncryptionPrivateKeyParameters.getParameters();
        this.random = null;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int r42, int r52) throws InvalidCipherTextException {
        byte[] bArr2 = new byte[r52];
        System.arraycopy(bArr, r42, bArr2, 0, r52);
        return this.forEncryption ? encrypt(bArr2, this.pubKey) : decrypt(bArr2, this.privKey);
    }
}
