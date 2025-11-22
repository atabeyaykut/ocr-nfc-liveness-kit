package org.bouncycastle.crypto.signers;

import android.support.v4.media.a;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.SignerWithRecovery;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.params.ParametersWithSalt;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class ISO9796d2PSSSigner implements SignerWithRecovery {
    public static final int TRAILER_IMPLICIT = 188;
    public static final int TRAILER_RIPEMD128 = 13004;
    public static final int TRAILER_RIPEMD160 = 12748;
    public static final int TRAILER_SHA1 = 13260;
    public static final int TRAILER_SHA256 = 13516;
    public static final int TRAILER_SHA384 = 14028;
    public static final int TRAILER_SHA512 = 13772;
    public static final int TRAILER_WHIRLPOOL = 14284;
    private byte[] block;
    private AsymmetricBlockCipher cipher;
    private Digest digest;
    private boolean fullMessage;
    private int hLen;
    private int keyBits;
    private byte[] mBuf;
    private int messageLength;
    private byte[] preBlock;
    private int preMStart;
    private byte[] preSig;
    private int preTLength;
    private SecureRandom random;
    private byte[] recoveredMessage;
    private int saltLength;
    private byte[] standardSalt;
    private int trailer;

    public ISO9796d2PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, int r42) {
        this(asymmetricBlockCipher, digest, r42, false);
    }

    public ISO9796d2PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, int r32, boolean z10) {
        int r12;
        this.cipher = asymmetricBlockCipher;
        this.digest = digest;
        this.hLen = digest.getDigestSize();
        this.saltLength = r32;
        if (z10) {
            r12 = 188;
        } else {
            Integer trailer = ISOTrailers.getTrailer(digest);
            if (trailer == null) {
                throw new IllegalArgumentException("no valid trailer for digest: " + digest.getAlgorithmName());
            }
            r12 = trailer.intValue();
        }
        this.trailer = r12;
    }

    private void ItoOSP(int r42, byte[] bArr) {
        bArr[0] = (byte) (r42 >>> 24);
        bArr[1] = (byte) (r42 >>> 16);
        bArr[2] = (byte) (r42 >>> 8);
        bArr[3] = (byte) (r42 >>> 0);
    }

    private void LtoOSP(long j10, byte[] bArr) {
        bArr[0] = (byte) (j10 >>> 56);
        bArr[1] = (byte) (j10 >>> 48);
        bArr[2] = (byte) (j10 >>> 40);
        bArr[3] = (byte) (j10 >>> 32);
        bArr[4] = (byte) (j10 >>> 24);
        bArr[5] = (byte) (j10 >>> 16);
        bArr[6] = (byte) (j10 >>> 8);
        bArr[7] = (byte) (j10 >>> 0);
    }

    private void clearBlock(byte[] bArr) {
        for (int r12 = 0; r12 != bArr.length; r12++) {
            bArr[r12] = 0;
        }
    }

    private boolean isSameAs(byte[] bArr, byte[] bArr2) {
        boolean z10 = this.messageLength == bArr2.length;
        for (int r12 = 0; r12 != bArr2.length; r12++) {
            if (bArr[r12] != bArr2[r12]) {
                z10 = false;
            }
        }
        return z10;
    }

    private byte[] maskGeneratorFunction1(byte[] bArr, int r10, int r11, int r12) {
        int r6;
        byte[] bArr2 = new byte[r12];
        byte[] bArr3 = new byte[this.hLen];
        byte[] bArr4 = new byte[4];
        this.digest.reset();
        int r52 = 0;
        while (true) {
            r6 = this.hLen;
            if (r52 >= r12 / r6) {
                break;
            }
            ItoOSP(r52, bArr4);
            this.digest.update(bArr, r10, r11);
            this.digest.update(bArr4, 0, 4);
            this.digest.doFinal(bArr3, 0);
            int r62 = this.hLen;
            System.arraycopy(bArr3, 0, bArr2, r52 * r62, r62);
            r52++;
        }
        if (r6 * r52 < r12) {
            ItoOSP(r52, bArr4);
            this.digest.update(bArr, r10, r11);
            this.digest.update(bArr4, 0, 4);
            this.digest.doFinal(bArr3, 0);
            int r92 = this.hLen;
            System.arraycopy(bArr3, 0, bArr2, r52 * r92, r12 - (r52 * r92));
        }
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() throws CryptoException {
        int digestSize = this.digest.getDigestSize();
        byte[] bArr = new byte[digestSize];
        this.digest.doFinal(bArr, 0);
        byte[] bArr2 = new byte[8];
        LtoOSP(this.messageLength * 8, bArr2);
        this.digest.update(bArr2, 0, 8);
        this.digest.update(this.mBuf, 0, this.messageLength);
        this.digest.update(bArr, 0, digestSize);
        byte[] bArr3 = this.standardSalt;
        if (bArr3 == null) {
            bArr3 = new byte[this.saltLength];
            this.random.nextBytes(bArr3);
        }
        this.digest.update(bArr3, 0, bArr3.length);
        int digestSize2 = this.digest.getDigestSize();
        byte[] bArr4 = new byte[digestSize2];
        this.digest.doFinal(bArr4, 0);
        int r42 = this.trailer == 188 ? 1 : 2;
        byte[] bArr5 = this.block;
        int length = bArr5.length;
        int r10 = this.messageLength;
        int length2 = ((((length - r10) - bArr3.length) - this.hLen) - r42) - 1;
        bArr5[length2] = 1;
        int r92 = length2 + 1;
        System.arraycopy(this.mBuf, 0, bArr5, r92, r10);
        System.arraycopy(bArr3, 0, this.block, r92 + this.messageLength, bArr3.length);
        byte[] bArrMaskGeneratorFunction1 = maskGeneratorFunction1(bArr4, 0, digestSize2, (this.block.length - this.hLen) - r42);
        for (int r12 = 0; r12 != bArrMaskGeneratorFunction1.length; r12++) {
            byte[] bArr6 = this.block;
            bArr6[r12] = (byte) (bArr6[r12] ^ bArrMaskGeneratorFunction1[r12]);
        }
        byte[] bArr7 = this.block;
        int length3 = bArr7.length;
        int r82 = this.hLen;
        System.arraycopy(bArr4, 0, bArr7, (length3 - r82) - r42, r82);
        int r02 = this.trailer;
        if (r02 == 188) {
            byte[] bArr8 = this.block;
            bArr8[bArr8.length - 1] = PSSSigner.TRAILER_IMPLICIT;
        } else {
            byte[] bArr9 = this.block;
            bArr9[bArr9.length - 2] = (byte) (r02 >>> 8);
            bArr9[bArr9.length - 1] = (byte) r02;
        }
        byte[] bArr10 = this.block;
        bArr10[0] = (byte) (bArr10[0] & 127);
        byte[] bArrProcessBlock = this.cipher.processBlock(bArr10, 0, bArr10.length);
        int r13 = this.messageLength;
        byte[] bArr11 = new byte[r13];
        this.recoveredMessage = bArr11;
        byte[] bArr12 = this.mBuf;
        this.fullMessage = r13 <= bArr12.length;
        System.arraycopy(bArr12, 0, bArr11, 0, bArr11.length);
        clearBlock(this.mBuf);
        clearBlock(this.block);
        this.messageLength = 0;
        return bArrProcessBlock;
    }

    @Override // org.bouncycastle.crypto.SignerWithRecovery
    public byte[] getRecoveredMessage() {
        return this.recoveredMessage;
    }

    @Override // org.bouncycastle.crypto.SignerWithRecovery
    public boolean hasFullMessage() {
        return this.fullMessage;
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z10, CipherParameters cipherParameters) {
        RSAKeyParameters rSAKeyParameters;
        SecureRandom secureRandom;
        int length = this.saltLength;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            rSAKeyParameters = (RSAKeyParameters) parametersWithRandom.getParameters();
            if (z10) {
                secureRandom = parametersWithRandom.getRandom();
                this.random = secureRandom;
            }
        } else if (cipherParameters instanceof ParametersWithSalt) {
            ParametersWithSalt parametersWithSalt = (ParametersWithSalt) cipherParameters;
            rSAKeyParameters = (RSAKeyParameters) parametersWithSalt.getParameters();
            byte[] salt = parametersWithSalt.getSalt();
            this.standardSalt = salt;
            length = salt.length;
            if (salt.length != this.saltLength) {
                throw new IllegalArgumentException("Fixed salt is of wrong length");
            }
        } else {
            rSAKeyParameters = (RSAKeyParameters) cipherParameters;
            if (z10) {
                secureRandom = CryptoServicesRegistrar.getSecureRandom();
                this.random = secureRandom;
            }
        }
        this.cipher.init(z10, rSAKeyParameters);
        int r42 = rSAKeyParameters.getModulus().bitLength();
        this.keyBits = r42;
        byte[] bArr = new byte[(r42 + 7) / 8];
        this.block = bArr;
        int r52 = this.trailer;
        int length2 = bArr.length;
        if (r52 == 188) {
            this.mBuf = new byte[(((length2 - this.digest.getDigestSize()) - length) - 1) - 1];
        } else {
            this.mBuf = new byte[(((length2 - this.digest.getDigestSize()) - length) - 1) - 2];
        }
        reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.digest.reset();
        this.messageLength = 0;
        byte[] bArr = this.mBuf;
        if (bArr != null) {
            clearBlock(bArr);
        }
        byte[] bArr2 = this.recoveredMessage;
        if (bArr2 != null) {
            clearBlock(bArr2);
            this.recoveredMessage = null;
        }
        this.fullMessage = false;
        if (this.preSig != null) {
            this.preSig = null;
            clearBlock(this.preBlock);
            this.preBlock = null;
        }
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b10) {
        if (this.preSig == null) {
            int r02 = this.messageLength;
            byte[] bArr = this.mBuf;
            if (r02 < bArr.length) {
                this.messageLength = r02 + 1;
                bArr[r02] = b10;
                return;
            }
        }
        this.digest.update(b10);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int r42, int r52) {
        if (this.preSig == null) {
            while (r52 > 0 && this.messageLength < this.mBuf.length) {
                update(bArr[r42]);
                r42++;
                r52--;
            }
        }
        if (r52 > 0) {
            this.digest.update(bArr, r42, r52);
        }
    }

    @Override // org.bouncycastle.crypto.SignerWithRecovery
    public void updateWithRecoveredMessage(byte[] bArr) throws InvalidCipherTextException {
        int r12;
        byte[] bArrProcessBlock = this.cipher.processBlock(bArr, 0, bArr.length);
        int length = bArrProcessBlock.length;
        int r32 = this.keyBits;
        if (length < (r32 + 7) / 8) {
            int r33 = (r32 + 7) / 8;
            byte[] bArr2 = new byte[r33];
            System.arraycopy(bArrProcessBlock, 0, bArr2, r33 - bArrProcessBlock.length, bArrProcessBlock.length);
            clearBlock(bArrProcessBlock);
            bArrProcessBlock = bArr2;
        }
        if (((bArrProcessBlock[bArrProcessBlock.length - 1] & 255) ^ 188) == 0) {
            r12 = 1;
        } else {
            int r13 = ((bArrProcessBlock[bArrProcessBlock.length - 2] & 255) << 8) | (bArrProcessBlock[bArrProcessBlock.length - 1] & 255);
            Integer trailer = ISOTrailers.getTrailer(this.digest);
            if (trailer == null) {
                throw new IllegalArgumentException("unrecognised hash in signature");
            }
            int r52 = trailer.intValue();
            if (r13 != r52 && (r52 != 15052 || r13 != 16588)) {
                throw new IllegalStateException(a.d("signer initialised with wrong digest for trailer ", r13));
            }
            r12 = 2;
        }
        this.digest.doFinal(new byte[this.hLen], 0);
        int length2 = bArrProcessBlock.length;
        int r53 = this.hLen;
        byte[] bArrMaskGeneratorFunction1 = maskGeneratorFunction1(bArrProcessBlock, (length2 - r53) - r12, r53, (bArrProcessBlock.length - r53) - r12);
        for (int r54 = 0; r54 != bArrMaskGeneratorFunction1.length; r54++) {
            bArrProcessBlock[r54] = (byte) (bArrProcessBlock[r54] ^ bArrMaskGeneratorFunction1[r54]);
        }
        bArrProcessBlock[0] = (byte) (bArrProcessBlock[0] & 127);
        int r55 = 0;
        while (r55 != bArrProcessBlock.length && bArrProcessBlock[r55] != 1) {
            r55++;
        }
        int r56 = r55 + 1;
        if (r56 >= bArrProcessBlock.length) {
            clearBlock(bArrProcessBlock);
        }
        this.fullMessage = r56 > 1;
        byte[] bArr3 = new byte[(bArrMaskGeneratorFunction1.length - r56) - this.saltLength];
        this.recoveredMessage = bArr3;
        System.arraycopy(bArrProcessBlock, r56, bArr3, 0, bArr3.length);
        byte[] bArr4 = this.recoveredMessage;
        System.arraycopy(bArr4, 0, this.mBuf, 0, bArr4.length);
        this.preSig = bArr;
        this.preBlock = bArrProcessBlock;
        this.preMStart = r56;
        this.preTLength = r12;
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        int r02 = this.hLen;
        byte[] bArr2 = new byte[r02];
        this.digest.doFinal(bArr2, 0);
        byte[] bArr3 = this.preSig;
        if (bArr3 == null) {
            try {
                updateWithRecoveredMessage(bArr);
            } catch (Exception unused) {
                return false;
            }
        } else if (!Arrays.areEqual(bArr3, bArr)) {
            throw new IllegalStateException("updateWithRecoveredMessage called on different signature");
        }
        byte[] bArr4 = this.preBlock;
        int r22 = this.preMStart;
        int r42 = this.preTLength;
        this.preSig = null;
        this.preBlock = null;
        byte[] bArr5 = new byte[8];
        LtoOSP(this.recoveredMessage.length * 8, bArr5);
        this.digest.update(bArr5, 0, 8);
        byte[] bArr6 = this.recoveredMessage;
        if (bArr6.length != 0) {
            this.digest.update(bArr6, 0, bArr6.length);
        }
        this.digest.update(bArr2, 0, r02);
        byte[] bArr7 = this.standardSalt;
        if (bArr7 != null) {
            this.digest.update(bArr7, 0, bArr7.length);
        } else {
            this.digest.update(bArr4, r22 + this.recoveredMessage.length, this.saltLength);
        }
        int digestSize = this.digest.getDigestSize();
        byte[] bArr8 = new byte[digestSize];
        this.digest.doFinal(bArr8, 0);
        int length = (bArr4.length - r42) - digestSize;
        boolean z10 = true;
        for (int r52 = 0; r52 != digestSize; r52++) {
            if (bArr8[r52] != bArr4[length + r52]) {
                z10 = false;
            }
        }
        clearBlock(bArr4);
        clearBlock(bArr8);
        if (!z10) {
            this.fullMessage = false;
            this.messageLength = 0;
            clearBlock(this.recoveredMessage);
            return false;
        }
        if (this.messageLength == 0 || isSameAs(this.mBuf, this.recoveredMessage)) {
            this.messageLength = 0;
            clearBlock(this.mBuf);
            return true;
        }
        this.messageLength = 0;
        clearBlock(this.mBuf);
        return false;
    }
}
