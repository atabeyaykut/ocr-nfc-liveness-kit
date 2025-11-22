package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DefaultBufferedBlockCipher;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

/* loaded from: classes2.dex */
public class PaddedBlockCipher extends DefaultBufferedBlockCipher {
    public PaddedBlockCipher(BlockCipher blockCipher) {
        ((DefaultBufferedBlockCipher) this).cipher = blockCipher;
        ((DefaultBufferedBlockCipher) this).buf = new byte[blockCipher.getBlockSize()];
        ((DefaultBufferedBlockCipher) this).bufOff = 0;
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int doFinal(byte[] bArr, int r82) throws InvalidCipherTextException, IllegalStateException, DataLengthException {
        int r72;
        int r12;
        int blockSize = ((DefaultBufferedBlockCipher) this).cipher.getBlockSize();
        if (((DefaultBufferedBlockCipher) this).forEncryption) {
            if (((DefaultBufferedBlockCipher) this).bufOff != blockSize) {
                r12 = 0;
            } else {
                if ((blockSize * 2) + r82 > bArr.length) {
                    throw new OutputLengthException("output buffer too short");
                }
                r12 = ((DefaultBufferedBlockCipher) this).cipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr, r82);
                ((DefaultBufferedBlockCipher) this).bufOff = 0;
            }
            byte b10 = (byte) (blockSize - ((DefaultBufferedBlockCipher) this).bufOff);
            while (true) {
                int r42 = ((DefaultBufferedBlockCipher) this).bufOff;
                if (r42 >= blockSize) {
                    break;
                }
                ((DefaultBufferedBlockCipher) this).buf[r42] = b10;
                ((DefaultBufferedBlockCipher) this).bufOff = r42 + 1;
            }
            r72 = ((DefaultBufferedBlockCipher) this).cipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr, r82 + r12) + r12;
        } else {
            if (((DefaultBufferedBlockCipher) this).bufOff != blockSize) {
                throw new DataLengthException("last block incomplete in decryption");
            }
            BlockCipher blockCipher = ((DefaultBufferedBlockCipher) this).cipher;
            byte[] bArr2 = ((DefaultBufferedBlockCipher) this).buf;
            int r13 = blockCipher.processBlock(bArr2, 0, bArr2, 0);
            ((DefaultBufferedBlockCipher) this).bufOff = 0;
            byte[] bArr3 = ((DefaultBufferedBlockCipher) this).buf;
            int r43 = bArr3[blockSize - 1] & 255;
            if (r43 > blockSize) {
                throw new InvalidCipherTextException("pad block corrupted");
            }
            int r02 = r13 - r43;
            System.arraycopy(bArr3, 0, bArr, r82, r02);
            r72 = r02;
        }
        reset();
        return r72;
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
        return length == 0 ? r33 - bArr.length : r33 - length;
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
