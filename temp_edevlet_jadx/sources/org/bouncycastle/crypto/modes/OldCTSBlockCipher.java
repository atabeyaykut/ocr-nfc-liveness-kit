package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DefaultBufferedBlockCipher;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

/* loaded from: classes2.dex */
public class OldCTSBlockCipher extends DefaultBufferedBlockCipher {
    private int blockSize;

    public OldCTSBlockCipher(BlockCipher blockCipher) {
        if ((blockCipher instanceof OFBBlockCipher) || (blockCipher instanceof CFBBlockCipher)) {
            throw new IllegalArgumentException("CTSBlockCipher can only accept ECB, or CBC ciphers");
        }
        ((DefaultBufferedBlockCipher) this).cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        ((DefaultBufferedBlockCipher) this).buf = new byte[blockSize * 2];
        ((DefaultBufferedBlockCipher) this).bufOff = 0;
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int doFinal(byte[] bArr, int r11) throws InvalidCipherTextException, IllegalStateException, DataLengthException {
        if (((DefaultBufferedBlockCipher) this).bufOff + r11 > bArr.length) {
            throw new OutputLengthException("output buffer to small in doFinal");
        }
        int blockSize = ((DefaultBufferedBlockCipher) this).cipher.getBlockSize();
        int r12 = ((DefaultBufferedBlockCipher) this).bufOff - blockSize;
        byte[] bArr2 = new byte[blockSize];
        if (((DefaultBufferedBlockCipher) this).forEncryption) {
            ((DefaultBufferedBlockCipher) this).cipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0);
            int r32 = ((DefaultBufferedBlockCipher) this).bufOff;
            if (r32 < blockSize) {
                throw new DataLengthException("need at least one block of input for CTS");
            }
            while (true) {
                byte[] bArr3 = ((DefaultBufferedBlockCipher) this).buf;
                if (r32 == bArr3.length) {
                    break;
                }
                bArr3[r32] = bArr2[r32 - blockSize];
                r32++;
            }
            for (int r33 = blockSize; r33 != ((DefaultBufferedBlockCipher) this).bufOff; r33++) {
                byte[] bArr4 = ((DefaultBufferedBlockCipher) this).buf;
                bArr4[r33] = (byte) (bArr4[r33] ^ bArr2[r33 - blockSize]);
            }
            BlockCipher blockCipher = ((DefaultBufferedBlockCipher) this).cipher;
            if (blockCipher instanceof CBCBlockCipher) {
                ((CBCBlockCipher) blockCipher).getUnderlyingCipher().processBlock(((DefaultBufferedBlockCipher) this).buf, blockSize, bArr, r11);
            } else {
                blockCipher.processBlock(((DefaultBufferedBlockCipher) this).buf, blockSize, bArr, r11);
            }
            System.arraycopy(bArr2, 0, bArr, r11 + blockSize, r12);
        } else {
            byte[] bArr5 = new byte[blockSize];
            BlockCipher blockCipher2 = ((DefaultBufferedBlockCipher) this).cipher;
            if (blockCipher2 instanceof CBCBlockCipher) {
                ((CBCBlockCipher) blockCipher2).getUnderlyingCipher().processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0);
            } else {
                blockCipher2.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0);
            }
            for (int r52 = blockSize; r52 != ((DefaultBufferedBlockCipher) this).bufOff; r52++) {
                int r6 = r52 - blockSize;
                bArr5[r6] = (byte) (bArr2[r6] ^ ((DefaultBufferedBlockCipher) this).buf[r52]);
            }
            System.arraycopy(((DefaultBufferedBlockCipher) this).buf, blockSize, bArr2, 0, r12);
            ((DefaultBufferedBlockCipher) this).cipher.processBlock(bArr2, 0, bArr, r11);
            System.arraycopy(bArr5, 0, bArr, r11 + blockSize, r12);
        }
        int r10 = ((DefaultBufferedBlockCipher) this).bufOff;
        reset();
        return r10;
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int getOutputSize(int r22) {
        return r22 + ((DefaultBufferedBlockCipher) this).bufOff;
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
            byte[] bArr3 = ((DefaultBufferedBlockCipher) this).buf;
            int r03 = this.blockSize;
            System.arraycopy(bArr3, r03, bArr3, 0, r03);
            ((DefaultBufferedBlockCipher) this).bufOff = this.blockSize;
            r32 = r6;
        }
        byte[] bArr4 = ((DefaultBufferedBlockCipher) this).buf;
        int r73 = ((DefaultBufferedBlockCipher) this).bufOff;
        ((DefaultBufferedBlockCipher) this).bufOff = r73 + 1;
        bArr4[r73] = b10;
        return r32;
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int processBytes(byte[] bArr, int r82, int r92, byte[] bArr2, int r11) throws IllegalStateException, DataLengthException {
        if (r92 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int blockSize = getBlockSize();
        int updateOutputSize = getUpdateOutputSize(r92);
        if (updateOutputSize > 0 && updateOutputSize + r11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        byte[] bArr3 = ((DefaultBufferedBlockCipher) this).buf;
        int length = bArr3.length;
        int r32 = ((DefaultBufferedBlockCipher) this).bufOff;
        int r22 = length - r32;
        int r42 = 0;
        if (r92 > r22) {
            System.arraycopy(bArr, r82, bArr3, r32, r22);
            int r12 = ((DefaultBufferedBlockCipher) this).cipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, r11) + 0;
            byte[] bArr4 = ((DefaultBufferedBlockCipher) this).buf;
            System.arraycopy(bArr4, blockSize, bArr4, 0, blockSize);
            ((DefaultBufferedBlockCipher) this).bufOff = blockSize;
            r92 -= r22;
            r82 += r22;
            while (r92 > blockSize) {
                System.arraycopy(bArr, r82, ((DefaultBufferedBlockCipher) this).buf, ((DefaultBufferedBlockCipher) this).bufOff, blockSize);
                r12 += ((DefaultBufferedBlockCipher) this).cipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, r11 + r12);
                byte[] bArr5 = ((DefaultBufferedBlockCipher) this).buf;
                System.arraycopy(bArr5, blockSize, bArr5, 0, blockSize);
                r92 -= blockSize;
                r82 += blockSize;
            }
            r42 = r12;
        }
        System.arraycopy(bArr, r82, ((DefaultBufferedBlockCipher) this).buf, ((DefaultBufferedBlockCipher) this).bufOff, r92);
        ((DefaultBufferedBlockCipher) this).bufOff += r92;
        return r42;
    }
}
