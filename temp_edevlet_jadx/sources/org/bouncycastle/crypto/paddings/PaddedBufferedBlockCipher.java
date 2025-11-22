package org.bouncycastle.crypto.paddings;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DefaultBufferedBlockCipher;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.ParametersWithRandom;

/* loaded from: classes2.dex */
public class PaddedBufferedBlockCipher extends DefaultBufferedBlockCipher {
    BlockCipherPadding padding;

    public PaddedBufferedBlockCipher(BlockCipher blockCipher) {
        this(blockCipher, new PKCS7Padding());
    }

    public PaddedBufferedBlockCipher(BlockCipher blockCipher, BlockCipherPadding blockCipherPadding) {
        ((DefaultBufferedBlockCipher) this).cipher = blockCipher;
        this.padding = blockCipherPadding;
        ((DefaultBufferedBlockCipher) this).buf = new byte[blockCipher.getBlockSize()];
        ((DefaultBufferedBlockCipher) this).bufOff = 0;
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int doFinal(byte[] bArr, int r72) throws InvalidCipherTextException, IllegalStateException, DataLengthException {
        int r02;
        int blockSize = ((DefaultBufferedBlockCipher) this).cipher.getBlockSize();
        if (((DefaultBufferedBlockCipher) this).forEncryption) {
            if (((DefaultBufferedBlockCipher) this).bufOff != blockSize) {
                r02 = 0;
            } else {
                if ((blockSize * 2) + r72 > bArr.length) {
                    reset();
                    throw new OutputLengthException("output buffer too short");
                }
                r02 = ((DefaultBufferedBlockCipher) this).cipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr, r72);
                ((DefaultBufferedBlockCipher) this).bufOff = 0;
            }
            this.padding.addPadding(((DefaultBufferedBlockCipher) this).buf, ((DefaultBufferedBlockCipher) this).bufOff);
            return ((DefaultBufferedBlockCipher) this).cipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr, r72 + r02) + r02;
        }
        if (((DefaultBufferedBlockCipher) this).bufOff != blockSize) {
            reset();
            throw new DataLengthException("last block incomplete in decryption");
        }
        BlockCipher blockCipher = ((DefaultBufferedBlockCipher) this).cipher;
        byte[] bArr2 = ((DefaultBufferedBlockCipher) this).buf;
        int r03 = blockCipher.processBlock(bArr2, 0, bArr2, 0);
        ((DefaultBufferedBlockCipher) this).bufOff = 0;
        try {
            int r04 = r03 - this.padding.padCount(((DefaultBufferedBlockCipher) this).buf);
            System.arraycopy(((DefaultBufferedBlockCipher) this).buf, 0, bArr, r72, r04);
            return r04;
        } finally {
            reset();
        }
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int getOutputSize(int r32) {
        int r33 = r32 + ((DefaultBufferedBlockCipher) this).bufOff;
        byte[] bArr = ((DefaultBufferedBlockCipher) this).buf;
        int length = r33 % bArr.length;
        if (length != 0) {
            r33 -= length;
        } else if (!((DefaultBufferedBlockCipher) this).forEncryption) {
            return r33;
        }
        return r33 + bArr.length;
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int getUpdateOutputSize(int r32) {
        int r33 = r32 + ((DefaultBufferedBlockCipher) this).bufOff;
        byte[] bArr = ((DefaultBufferedBlockCipher) this).buf;
        int length = r33 % bArr.length;
        return length == 0 ? Math.max(0, r33 - bArr.length) : r33 - length;
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        ((DefaultBufferedBlockCipher) this).forEncryption = z10;
        reset();
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.padding.init(parametersWithRandom.getRandom());
            blockCipher = ((DefaultBufferedBlockCipher) this).cipher;
            cipherParameters = parametersWithRandom.getParameters();
        } else {
            this.padding.init(null);
            blockCipher = ((DefaultBufferedBlockCipher) this).cipher;
        }
        blockCipher.init(z10, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int processByte(byte b10, byte[] bArr, int r72) throws IllegalStateException, DataLengthException {
        int r02 = ((DefaultBufferedBlockCipher) this).bufOff;
        byte[] bArr2 = ((DefaultBufferedBlockCipher) this).buf;
        int r32 = 0;
        if (r02 == bArr2.length) {
            int r6 = ((DefaultBufferedBlockCipher) this).cipher.processBlock(bArr2, 0, bArr, r72);
            ((DefaultBufferedBlockCipher) this).bufOff = 0;
            r32 = r6;
        }
        byte[] bArr3 = ((DefaultBufferedBlockCipher) this).buf;
        int r73 = ((DefaultBufferedBlockCipher) this).bufOff;
        ((DefaultBufferedBlockCipher) this).bufOff = r73 + 1;
        bArr3[r73] = b10;
        return r32;
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int processBytes(byte[] bArr, int r72, int r82, byte[] bArr2, int r10) throws IllegalStateException, DataLengthException {
        if (r82 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int blockSize = getBlockSize();
        int updateOutputSize = getUpdateOutputSize(r82);
        if (updateOutputSize > 0 && updateOutputSize + r10 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        byte[] bArr3 = ((DefaultBufferedBlockCipher) this).buf;
        int length = bArr3.length;
        int r32 = ((DefaultBufferedBlockCipher) this).bufOff;
        int r22 = length - r32;
        int r42 = 0;
        if (r82 > r22) {
            System.arraycopy(bArr, r72, bArr3, r32, r22);
            int r12 = ((DefaultBufferedBlockCipher) this).cipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, r10) + 0;
            ((DefaultBufferedBlockCipher) this).bufOff = 0;
            r82 -= r22;
            r72 += r22;
            r42 = r12;
            while (r82 > ((DefaultBufferedBlockCipher) this).buf.length) {
                r42 += ((DefaultBufferedBlockCipher) this).cipher.processBlock(bArr, r72, bArr2, r10 + r42);
                r82 -= blockSize;
                r72 += blockSize;
            }
        }
        System.arraycopy(bArr, r72, ((DefaultBufferedBlockCipher) this).buf, ((DefaultBufferedBlockCipher) this).bufOff, r82);
        ((DefaultBufferedBlockCipher) this).bufOff += r82;
        return r42;
    }
}
