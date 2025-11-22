package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DefaultBufferedBlockCipher;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

/* loaded from: classes2.dex */
public class NISTCTSBlockCipher extends DefaultBufferedBlockCipher {
    public static final int CS1 = 1;
    public static final int CS2 = 2;
    public static final int CS3 = 3;
    private final int blockSize;
    private final int type;

    public NISTCTSBlockCipher(int r12, BlockCipher blockCipher) {
        this.type = r12;
        ((DefaultBufferedBlockCipher) this).cipher = CBCBlockCipher.newInstance(blockCipher);
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
        int r12 = ((DefaultBufferedBlockCipher) this).bufOff;
        int r22 = r12 - blockSize;
        byte[] bArr2 = new byte[blockSize];
        if (((DefaultBufferedBlockCipher) this).forEncryption) {
            if (r12 < blockSize) {
                throw new DataLengthException("need at least one block of input for NISTCTS");
            }
            if (r12 > blockSize) {
                byte[] bArr3 = new byte[blockSize];
                int r42 = this.type;
                if (r42 == 2 || r42 == 3) {
                    ((DefaultBufferedBlockCipher) this).cipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0);
                    System.arraycopy(((DefaultBufferedBlockCipher) this).buf, blockSize, bArr3, 0, r22);
                    ((DefaultBufferedBlockCipher) this).cipher.processBlock(bArr3, 0, bArr3, 0);
                    if (this.type == 2 && r22 == blockSize) {
                        System.arraycopy(bArr2, 0, bArr, r11, blockSize);
                        System.arraycopy(bArr3, 0, bArr, r11 + blockSize, r22);
                    } else {
                        System.arraycopy(bArr3, 0, bArr, r11, blockSize);
                        System.arraycopy(bArr2, 0, bArr, r11 + blockSize, r22);
                    }
                } else {
                    System.arraycopy(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0, blockSize);
                    ((DefaultBufferedBlockCipher) this).cipher.processBlock(bArr2, 0, bArr2, 0);
                    System.arraycopy(bArr2, 0, bArr, r11, r22);
                    System.arraycopy(((DefaultBufferedBlockCipher) this).buf, ((DefaultBufferedBlockCipher) this).bufOff - r22, bArr3, 0, r22);
                    ((DefaultBufferedBlockCipher) this).cipher.processBlock(bArr3, 0, bArr3, 0);
                    System.arraycopy(bArr3, 0, bArr, r11 + r22, blockSize);
                }
            } else {
                ((DefaultBufferedBlockCipher) this).cipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0);
                System.arraycopy(bArr2, 0, bArr, r11, blockSize);
            }
        } else {
            if (r12 < blockSize) {
                throw new DataLengthException("need at least one block of input for CTS");
            }
            byte[] bArr4 = new byte[blockSize];
            if (r12 > blockSize) {
                int r82 = this.type;
                if (r82 == 3 || (r82 == 2 && (((DefaultBufferedBlockCipher) this).buf.length - r12) % blockSize != 0)) {
                    BlockCipher blockCipher = ((DefaultBufferedBlockCipher) this).cipher;
                    if (blockCipher instanceof CBCModeCipher) {
                        ((CBCModeCipher) blockCipher).getUnderlyingCipher().processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0);
                    } else {
                        blockCipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0);
                    }
                    for (int r13 = blockSize; r13 != ((DefaultBufferedBlockCipher) this).bufOff; r13++) {
                        int r52 = r13 - blockSize;
                        bArr4[r52] = (byte) (bArr2[r52] ^ ((DefaultBufferedBlockCipher) this).buf[r13]);
                    }
                    System.arraycopy(((DefaultBufferedBlockCipher) this).buf, blockSize, bArr2, 0, r22);
                    ((DefaultBufferedBlockCipher) this).cipher.processBlock(bArr2, 0, bArr, r11);
                } else {
                    ((CBCModeCipher) ((DefaultBufferedBlockCipher) this).cipher).getUnderlyingCipher().processBlock(((DefaultBufferedBlockCipher) this).buf, ((DefaultBufferedBlockCipher) this).bufOff - blockSize, bArr4, 0);
                    System.arraycopy(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0, blockSize);
                    if (r22 != blockSize) {
                        System.arraycopy(bArr4, r22, bArr2, r22, blockSize - r22);
                    }
                    ((DefaultBufferedBlockCipher) this).cipher.processBlock(bArr2, 0, bArr2, 0);
                    System.arraycopy(bArr2, 0, bArr, r11, blockSize);
                    for (int r14 = 0; r14 != r22; r14++) {
                        bArr4[r14] = (byte) (bArr4[r14] ^ ((DefaultBufferedBlockCipher) this).buf[r14]);
                    }
                }
                System.arraycopy(bArr4, 0, bArr, r11 + blockSize, r22);
            } else {
                ((DefaultBufferedBlockCipher) this).cipher.processBlock(((DefaultBufferedBlockCipher) this).buf, 0, bArr2, 0);
                System.arraycopy(bArr2, 0, bArr, r11, blockSize);
            }
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
