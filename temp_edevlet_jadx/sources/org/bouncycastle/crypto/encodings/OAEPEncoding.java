package org.bouncycastle.crypto.encodings;

import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.util.DigestFactory;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Bytes;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class OAEPEncoding implements AsymmetricBlockCipher {
    private final byte[] defHash;
    private final AsymmetricBlockCipher engine;
    private boolean forEncryption;
    private final Digest mgf1Hash;
    private final int mgf1NoMemoLimit;
    private SecureRandom random;

    public OAEPEncoding(AsymmetricBlockCipher asymmetricBlockCipher) {
        this(asymmetricBlockCipher, DigestFactory.createSHA1(), null);
    }

    public OAEPEncoding(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest) {
        this(asymmetricBlockCipher, digest, null);
    }

    public OAEPEncoding(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, byte[] bArr) {
        this.engine = asymmetricBlockCipher;
        this.mgf1Hash = digest2;
        this.mgf1NoMemoLimit = getMGF1NoMemoLimit(digest2);
        byte[] bArr2 = new byte[digest.getDigestSize()];
        this.defHash = bArr2;
        digest.reset();
        if (bArr != null) {
            digest.update(bArr, 0, bArr.length);
        }
        digest.doFinal(bArr2, 0);
    }

    public OAEPEncoding(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, byte[] bArr) {
        this(asymmetricBlockCipher, digest, digest, bArr);
    }

    private static int getMGF1NoMemoLimit(Digest digest) {
        if ((digest instanceof Memoable) && (digest instanceof ExtendedDigest)) {
            return ((ExtendedDigest) digest).getByteLength() - 1;
        }
        return Integer.MAX_VALUE;
    }

    private void maskGeneratorFunction1(byte[] bArr, int r10, int r11, byte[] bArr2, int r13, int r14) {
        int r112;
        int digestSize = this.mgf1Hash.getDigestSize();
        byte[] bArr3 = new byte[digestSize];
        byte[] bArr4 = new byte[4];
        int r142 = r14 + r13;
        int r42 = r142 - digestSize;
        this.mgf1Hash.update(bArr, r10, r11);
        if (r11 > this.mgf1NoMemoLimit) {
            Memoable memoable = (Memoable) this.mgf1Hash;
            Memoable memoableCopy = memoable.copy();
            r112 = 0;
            while (r13 < r42) {
                Pack.intToBigEndian(r112, bArr4, 0);
                this.mgf1Hash.update(bArr4, 0, 4);
                this.mgf1Hash.doFinal(bArr3, 0);
                memoable.reset(memoableCopy);
                Bytes.xorTo(digestSize, bArr3, 0, bArr2, r13);
                r13 += digestSize;
                r112++;
            }
        } else {
            int r52 = r13;
            int r132 = 0;
            while (r52 < r42) {
                Pack.intToBigEndian(r132, bArr4, 0);
                this.mgf1Hash.update(bArr4, 0, 4);
                this.mgf1Hash.doFinal(bArr3, 0);
                this.mgf1Hash.update(bArr, r10, r11);
                Bytes.xorTo(digestSize, bArr3, 0, bArr2, r52);
                r52 += digestSize;
                r132++;
            }
            r112 = r132;
            r13 = r52;
        }
        Pack.intToBigEndian(r112, bArr4, 0);
        this.mgf1Hash.update(bArr4, 0, 4);
        this.mgf1Hash.doFinal(bArr3, 0);
        Bytes.xorTo(r142 - r13, bArr3, 0, bArr2, r13);
    }

    public byte[] decodeBlock(byte[] bArr, int r13, int r14) throws InvalidCipherTextException {
        byte[] bArr2;
        int outputBlockSize = getOutputBlockSize() >> 31;
        int outputBlockSize2 = this.engine.getOutputBlockSize();
        byte[] bArr3 = new byte[outputBlockSize2];
        byte[] bArrProcessBlock = this.engine.processBlock(bArr, r13, r14);
        int length = ((outputBlockSize2 - bArrProcessBlock.length) >> 31) | outputBlockSize;
        int r142 = Math.min(outputBlockSize2, bArrProcessBlock.length);
        System.arraycopy(bArrProcessBlock, 0, bArr3, outputBlockSize2 - r142, r142);
        Arrays.fill(bArrProcessBlock, (byte) 0);
        this.mgf1Hash.reset();
        byte[] bArr4 = this.defHash;
        maskGeneratorFunction1(bArr3, bArr4.length, outputBlockSize2 - bArr4.length, bArr3, 0, bArr4.length);
        byte[] bArr5 = this.defHash;
        maskGeneratorFunction1(bArr3, 0, bArr5.length, bArr3, bArr5.length, outputBlockSize2 - bArr5.length);
        int r12 = 0;
        while (true) {
            bArr2 = this.defHash;
            if (r12 == bArr2.length) {
                break;
            }
            length |= bArr3[bArr2.length + r12] ^ bArr2[r12];
            r12++;
        }
        int r143 = -1;
        for (int length2 = bArr2.length * 2; length2 != outputBlockSize2; length2++) {
            r143 += (((-(bArr3[length2] & 255)) & r143) >> 31) & length2;
        }
        int r122 = (r143 >> 31) | length;
        int r144 = r143 + 1;
        if ((r122 | (bArr3[r144] ^ 1)) != 0) {
            Arrays.fill(bArr3, (byte) 0);
            throw new InvalidCipherTextException("data wrong");
        }
        int r145 = r144 + 1;
        int r15 = outputBlockSize2 - r145;
        byte[] bArr6 = new byte[r15];
        System.arraycopy(bArr3, r145, bArr6, 0, r15);
        Arrays.fill(bArr3, (byte) 0);
        return bArr6;
    }

    public byte[] encodeBlock(byte[] bArr, int r12, int r13) throws InvalidCipherTextException {
        int inputBlockSize = getInputBlockSize();
        if (r13 > inputBlockSize) {
            throw new DataLengthException("input data too long");
        }
        int length = (this.defHash.length * 2) + inputBlockSize + 1;
        byte[] bArr2 = new byte[length];
        int r32 = length - r13;
        System.arraycopy(bArr, r12, bArr2, r32, r13);
        bArr2[r32 - 1] = 1;
        byte[] bArr3 = this.defHash;
        System.arraycopy(bArr3, 0, bArr2, bArr3.length, bArr3.length);
        int length2 = this.defHash.length;
        byte[] bArr4 = new byte[length2];
        this.random.nextBytes(bArr4);
        System.arraycopy(bArr4, 0, bArr2, 0, this.defHash.length);
        this.mgf1Hash.reset();
        byte[] bArr5 = this.defHash;
        maskGeneratorFunction1(bArr4, 0, length2, bArr2, bArr5.length, length - bArr5.length);
        byte[] bArr6 = this.defHash;
        maskGeneratorFunction1(bArr2, bArr6.length, length - bArr6.length, bArr2, 0, bArr6.length);
        return this.engine.processBlock(bArr2, 0, length);
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        int inputBlockSize = this.engine.getInputBlockSize();
        return this.forEncryption ? (inputBlockSize - 1) - (this.defHash.length * 2) : inputBlockSize;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        int outputBlockSize = this.engine.getOutputBlockSize();
        return this.forEncryption ? outputBlockSize : (outputBlockSize - 1) - (this.defHash.length * 2);
    }

    public AsymmetricBlockCipher getUnderlyingCipher() {
        return this.engine;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        this.random = z10 ? CryptoServicesRegistrar.getSecureRandom(cipherParameters instanceof ParametersWithRandom ? ((ParametersWithRandom) cipherParameters).getRandom() : null) : null;
        this.forEncryption = z10;
        this.engine.init(z10, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int r32, int r42) throws InvalidCipherTextException {
        return this.forEncryption ? encodeBlock(bArr, r32, r42) : decodeBlock(bArr, r32, r42);
    }
}
