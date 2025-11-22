package org.bouncycastle.crypto.signers;

import android.support.v4.media.a;
import net.sf.scuba.smartcards.ISO7816;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.SignerWithRecovery;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.util.Arrays;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public class ISO9796d2Signer implements SignerWithRecovery {
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
    private int keyBits;
    private byte[] mBuf;
    private int messageLength;
    private byte[] preBlock;
    private byte[] preSig;
    private byte[] recoveredMessage;
    private int trailer;

    public ISO9796d2Signer(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest) {
        this(asymmetricBlockCipher, digest, false);
    }

    public ISO9796d2Signer(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, boolean z10) {
        int r22;
        this.cipher = asymmetricBlockCipher;
        this.digest = digest;
        if (z10) {
            r22 = 188;
        } else {
            Integer trailer = ISOTrailers.getTrailer(digest);
            if (trailer == null) {
                throw new IllegalArgumentException("no valid trailer for digest: " + digest.getAlgorithmName());
            }
            r22 = trailer.intValue();
        }
        this.trailer = r22;
    }

    private void clearBlock(byte[] bArr) {
        for (int r12 = 0; r12 != bArr.length; r12++) {
            bArr[r12] = 0;
        }
    }

    private boolean isSameAs(byte[] bArr, byte[] bArr2) {
        boolean z10;
        int r02 = this.messageLength;
        byte[] bArr3 = this.mBuf;
        if (r02 > bArr3.length) {
            z10 = bArr3.length <= bArr2.length;
            for (int r03 = 0; r03 != this.mBuf.length; r03++) {
                if (bArr[r03] != bArr2[r03]) {
                    z10 = false;
                }
            }
        } else {
            z10 = r02 == bArr2.length;
            for (int r04 = 0; r04 != bArr2.length; r04++) {
                if (bArr[r04] != bArr2[r04]) {
                    z10 = false;
                }
            }
        }
        return z10;
    }

    private boolean returnFalse(byte[] bArr) {
        this.messageLength = 0;
        clearBlock(this.mBuf);
        clearBlock(bArr);
        return false;
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() throws CryptoException {
        int length;
        int r12;
        int r22;
        int r02;
        int digestSize = this.digest.getDigestSize();
        if (this.trailer == 188) {
            byte[] bArr = this.block;
            length = (bArr.length - digestSize) - 1;
            this.digest.doFinal(bArr, length);
            byte[] bArr2 = this.block;
            bArr2[bArr2.length - 1] = PSSSigner.TRAILER_IMPLICIT;
            r12 = 8;
        } else {
            byte[] bArr3 = this.block;
            length = (bArr3.length - digestSize) - 2;
            this.digest.doFinal(bArr3, length);
            byte[] bArr4 = this.block;
            int length2 = bArr4.length - 2;
            int r6 = this.trailer;
            bArr4[length2] = (byte) (r6 >>> 8);
            bArr4[bArr4.length - 1] = (byte) r6;
            r12 = 16;
        }
        int r52 = this.messageLength;
        int r03 = ((((digestSize + r52) * 8) + r12) + 4) - this.keyBits;
        if (r03 > 0) {
            int r53 = r52 - ((r03 + 7) / 8);
            r22 = length - r53;
            System.arraycopy(this.mBuf, 0, this.block, r22, r53);
            this.recoveredMessage = new byte[r53];
            r02 = 96;
        } else {
            r22 = length - r52;
            System.arraycopy(this.mBuf, 0, this.block, r22, r52);
            this.recoveredMessage = new byte[this.messageLength];
            r02 = 64;
        }
        int r23 = r22 - 1;
        if (r23 > 0) {
            for (int r32 = r23; r32 != 0; r32--) {
                this.block[r32] = -69;
            }
            byte[] bArr5 = this.block;
            bArr5[r23] = (byte) (bArr5[r23] ^ 1);
            bArr5[0] = PassportService.SFI_DG11;
            bArr5[0] = (byte) (11 | r02);
        } else {
            byte[] bArr6 = this.block;
            bArr6[0] = 10;
            bArr6[0] = (byte) (10 | r02);
        }
        AsymmetricBlockCipher asymmetricBlockCipher = this.cipher;
        byte[] bArr7 = this.block;
        byte[] bArrProcessBlock = asymmetricBlockCipher.processBlock(bArr7, 0, bArr7.length);
        this.fullMessage = (r02 & 32) == 0;
        byte[] bArr8 = this.mBuf;
        byte[] bArr9 = this.recoveredMessage;
        System.arraycopy(bArr8, 0, bArr9, 0, bArr9.length);
        this.messageLength = 0;
        clearBlock(this.mBuf);
        clearBlock(this.block);
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
        RSAKeyParameters rSAKeyParameters = (RSAKeyParameters) cipherParameters;
        this.cipher.init(z10, rSAKeyParameters);
        int r22 = rSAKeyParameters.getModulus().bitLength();
        this.keyBits = r22;
        byte[] bArr = new byte[(r22 + 7) / 8];
        this.block = bArr;
        int r32 = this.trailer;
        int length = bArr.length;
        if (r32 == 188) {
            this.mBuf = new byte[(length - this.digest.getDigestSize()) - 2];
        } else {
            this.mBuf = new byte[(length - this.digest.getDigestSize()) - 3];
        }
        reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.digest.reset();
        this.messageLength = 0;
        clearBlock(this.mBuf);
        byte[] bArr = this.recoveredMessage;
        if (bArr != null) {
            clearBlock(bArr);
        }
        this.recoveredMessage = null;
        this.fullMessage = false;
        if (this.preSig != null) {
            this.preSig = null;
            clearBlock(this.preBlock);
            this.preBlock = null;
        }
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b10) {
        this.digest.update(b10);
        int r02 = this.messageLength;
        byte[] bArr = this.mBuf;
        if (r02 < bArr.length) {
            bArr[r02] = b10;
        }
        this.messageLength = r02 + 1;
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int r42, int r52) {
        while (r52 > 0 && this.messageLength < this.mBuf.length) {
            update(bArr[r42]);
            r42++;
            r52--;
        }
        this.digest.update(bArr, r42, r52);
        this.messageLength += r52;
    }

    @Override // org.bouncycastle.crypto.SignerWithRecovery
    public void updateWithRecoveredMessage(byte[] bArr) throws InvalidCipherTextException {
        int r12;
        byte[] bArrProcessBlock = this.cipher.processBlock(bArr, 0, bArr.length);
        if (((bArrProcessBlock[0] & ISO7816.INS_GET_RESPONSE) ^ 64) != 0) {
            throw new InvalidCipherTextException("malformed signature");
        }
        if (((bArrProcessBlock[bArrProcessBlock.length - 1] & PassportService.SFI_DG15) ^ 12) != 0) {
            throw new InvalidCipherTextException("malformed signature");
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
        int r32 = 0;
        while (r32 != bArrProcessBlock.length && ((bArrProcessBlock[r32] & PassportService.SFI_DG15) ^ 10) != 0) {
            r32++;
        }
        int r33 = r32 + 1;
        int length = ((bArrProcessBlock.length - r12) - this.digest.getDigestSize()) - r33;
        if (length <= 0) {
            throw new InvalidCipherTextException("malformed block");
        }
        if ((bArrProcessBlock[0] & ISO7816.INS_VERIFY) == 0) {
            this.fullMessage = true;
            byte[] bArr2 = new byte[length];
            this.recoveredMessage = bArr2;
            System.arraycopy(bArrProcessBlock, r33, bArr2, 0, bArr2.length);
        } else {
            this.fullMessage = false;
            byte[] bArr3 = new byte[length];
            this.recoveredMessage = bArr3;
            System.arraycopy(bArrProcessBlock, r33, bArr3, 0, bArr3.length);
        }
        this.preSig = bArr;
        this.preBlock = bArrProcessBlock;
        Digest digest = this.digest;
        byte[] bArr4 = this.recoveredMessage;
        digest.update(bArr4, 0, bArr4.length);
        byte[] bArr5 = this.recoveredMessage;
        this.messageLength = bArr5.length;
        System.arraycopy(bArr5, 0, this.mBuf, 0, bArr5.length);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        byte[] bArrProcessBlock;
        int r02;
        byte[] bArr2 = this.preSig;
        if (bArr2 == null) {
            try {
                bArrProcessBlock = this.cipher.processBlock(bArr, 0, bArr.length);
            } catch (Exception unused) {
                return false;
            }
        } else {
            if (!Arrays.areEqual(bArr2, bArr)) {
                throw new IllegalStateException("updateWithRecoveredMessage called on different signature");
            }
            bArrProcessBlock = this.preBlock;
            this.preSig = null;
            this.preBlock = null;
        }
        if (((bArrProcessBlock[0] & ISO7816.INS_GET_RESPONSE) ^ 64) != 0) {
            return returnFalse(bArrProcessBlock);
        }
        if (((bArrProcessBlock[bArrProcessBlock.length - 1] & PassportService.SFI_DG15) ^ 12) != 0) {
            return returnFalse(bArrProcessBlock);
        }
        if (((bArrProcessBlock[bArrProcessBlock.length - 1] & 255) ^ 188) == 0) {
            r02 = 1;
        } else {
            int r03 = ((bArrProcessBlock[bArrProcessBlock.length - 2] & 255) << 8) | (bArrProcessBlock[bArrProcessBlock.length - 1] & 255);
            Integer trailer = ISOTrailers.getTrailer(this.digest);
            if (trailer == null) {
                throw new IllegalArgumentException("unrecognised hash in signature");
            }
            int r42 = trailer.intValue();
            if (r03 != r42 && (r42 != 15052 || r03 != 16588)) {
                throw new IllegalStateException(a.d("signer initialised with wrong digest for trailer ", r03));
            }
            r02 = 2;
        }
        int r32 = 0;
        while (r32 != bArrProcessBlock.length && ((bArrProcessBlock[r32] & PassportService.SFI_DG15) ^ 10) != 0) {
            r32++;
        }
        int r33 = r32 + 1;
        int digestSize = this.digest.getDigestSize();
        byte[] bArr3 = new byte[digestSize];
        int length = (bArrProcessBlock.length - r02) - digestSize;
        int r04 = length - r33;
        if (r04 <= 0) {
            return returnFalse(bArrProcessBlock);
        }
        if ((bArrProcessBlock[0] & ISO7816.INS_VERIFY) == 0) {
            this.fullMessage = true;
            if (this.messageLength > r04) {
                return returnFalse(bArrProcessBlock);
            }
            this.digest.reset();
            this.digest.update(bArrProcessBlock, r33, r04);
            this.digest.doFinal(bArr3, 0);
            boolean z10 = true;
            for (int r72 = 0; r72 != digestSize; r72++) {
                int r92 = length + r72;
                byte b10 = (byte) (bArrProcessBlock[r92] ^ bArr3[r72]);
                bArrProcessBlock[r92] = b10;
                if (b10 != 0) {
                    z10 = false;
                }
            }
            if (!z10) {
                return returnFalse(bArrProcessBlock);
            }
            byte[] bArr4 = new byte[r04];
            this.recoveredMessage = bArr4;
            System.arraycopy(bArrProcessBlock, r33, bArr4, 0, bArr4.length);
        } else {
            this.fullMessage = false;
            this.digest.doFinal(bArr3, 0);
            boolean z11 = true;
            for (int r73 = 0; r73 != digestSize; r73++) {
                int r93 = length + r73;
                byte b11 = (byte) (bArrProcessBlock[r93] ^ bArr3[r73]);
                bArrProcessBlock[r93] = b11;
                if (b11 != 0) {
                    z11 = false;
                }
            }
            if (!z11) {
                return returnFalse(bArrProcessBlock);
            }
            byte[] bArr5 = new byte[r04];
            this.recoveredMessage = bArr5;
            System.arraycopy(bArrProcessBlock, r33, bArr5, 0, bArr5.length);
        }
        if (this.messageLength != 0 && !isSameAs(this.mBuf, this.recoveredMessage)) {
            return returnFalse(bArrProcessBlock);
        }
        clearBlock(this.mBuf);
        clearBlock(bArrProcessBlock);
        this.messageLength = 0;
        return true;
    }
}
