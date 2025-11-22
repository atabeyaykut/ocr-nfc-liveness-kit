package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

/* loaded from: classes2.dex */
public class OpenPGPCFBBlockCipher implements BlockCipher {
    private byte[] FR;
    private byte[] FRE;
    private byte[] IV;
    private int blockSize;
    private BlockCipher cipher;
    private int count;
    private boolean forEncryption;

    public OpenPGPCFBBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.IV = new byte[blockSize];
        this.FR = new byte[blockSize];
        this.FRE = new byte[blockSize];
    }

    private int decryptBlock(byte[] bArr, int r10, byte[] bArr2, int r12) throws IllegalStateException, DataLengthException {
        int r02;
        int r03 = this.blockSize;
        if (r10 + r03 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r12 + r03 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        int r13 = this.count;
        int r22 = 2;
        int r32 = 0;
        if (r13 > r03) {
            byte b10 = bArr[r10];
            this.FR[r03 - 2] = b10;
            bArr2[r12] = encryptByte(b10, r03 - 2);
            byte b11 = bArr[r10 + 1];
            byte[] bArr3 = this.FR;
            int r52 = this.blockSize;
            bArr3[r52 - 1] = b11;
            bArr2[r12 + 1] = encryptByte(b11, r52 - 1);
            this.cipher.processBlock(this.FR, 0, this.FRE, 0);
            while (r22 < this.blockSize) {
                byte b12 = bArr[r10 + r22];
                int r33 = r22 - 2;
                this.FR[r33] = b12;
                bArr2[r12 + r22] = encryptByte(b12, r33);
                r22++;
            }
        } else {
            if (r13 != 0) {
                if (r13 == r03) {
                    this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                    byte b13 = bArr[r10];
                    byte b14 = bArr[r10 + 1];
                    bArr2[r12] = encryptByte(b13, 0);
                    bArr2[r12 + 1] = encryptByte(b14, 1);
                    byte[] bArr4 = this.FR;
                    System.arraycopy(bArr4, 2, bArr4, 0, this.blockSize - 2);
                    byte[] bArr5 = this.FR;
                    int r6 = this.blockSize;
                    bArr5[r6 - 2] = b13;
                    bArr5[r6 - 1] = b14;
                    this.cipher.processBlock(bArr5, 0, this.FRE, 0);
                    while (true) {
                        r02 = this.blockSize;
                        if (r22 >= r02) {
                            break;
                        }
                        byte b15 = bArr[r10 + r22];
                        int r34 = r22 - 2;
                        this.FR[r34] = b15;
                        bArr2[r12 + r22] = encryptByte(b15, r34);
                        r22++;
                    }
                }
            } else {
                this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                while (true) {
                    r02 = this.blockSize;
                    if (r32 >= r02) {
                        break;
                    }
                    int r14 = r10 + r32;
                    this.FR[r32] = bArr[r14];
                    bArr2[r12 + r32] = encryptByte(bArr[r14], r32);
                    r32++;
                }
            }
            this.count += r02;
        }
        return this.blockSize;
    }

    private int encryptBlock(byte[] bArr, int r10, byte[] bArr2, int r12) throws IllegalStateException, DataLengthException {
        int r02;
        int r03 = this.blockSize;
        if (r10 + r03 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r12 + r03 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        int r13 = this.count;
        int r32 = 2;
        int r42 = 0;
        if (r13 > r03) {
            byte[] bArr3 = this.FR;
            int r52 = r03 - 2;
            byte bEncryptByte = encryptByte(bArr[r10], r03 - 2);
            bArr2[r12] = bEncryptByte;
            bArr3[r52] = bEncryptByte;
            byte[] bArr4 = this.FR;
            int r14 = this.blockSize;
            int r53 = r14 - 1;
            byte bEncryptByte2 = encryptByte(bArr[r10 + 1], r14 - 1);
            bArr2[r12 + 1] = bEncryptByte2;
            bArr4[r53] = bEncryptByte2;
            this.cipher.processBlock(this.FR, 0, this.FRE, 0);
            while (r32 < this.blockSize) {
                byte[] bArr5 = this.FR;
                int r15 = r32 - 2;
                byte bEncryptByte3 = encryptByte(bArr[r10 + r32], r15);
                bArr2[r12 + r32] = bEncryptByte3;
                bArr5[r15] = bEncryptByte3;
                r32++;
            }
        } else {
            if (r13 != 0) {
                if (r13 == r03) {
                    this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                    bArr2[r12] = encryptByte(bArr[r10], 0);
                    bArr2[r12 + 1] = encryptByte(bArr[r10 + 1], 1);
                    byte[] bArr6 = this.FR;
                    System.arraycopy(bArr6, 2, bArr6, 0, this.blockSize - 2);
                    System.arraycopy(bArr2, r12, this.FR, this.blockSize - 2, 2);
                    this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                    while (true) {
                        r02 = this.blockSize;
                        if (r32 >= r02) {
                            break;
                        }
                        byte[] bArr7 = this.FR;
                        int r16 = r32 - 2;
                        byte bEncryptByte4 = encryptByte(bArr[r10 + r32], r16);
                        bArr2[r12 + r32] = bEncryptByte4;
                        bArr7[r16] = bEncryptByte4;
                        r32++;
                    }
                }
            } else {
                this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                while (true) {
                    r02 = this.blockSize;
                    if (r42 >= r02) {
                        break;
                    }
                    byte[] bArr8 = this.FR;
                    byte bEncryptByte5 = encryptByte(bArr[r10 + r42], r42);
                    bArr2[r12 + r42] = bEncryptByte5;
                    bArr8[r42] = bEncryptByte5;
                    r42++;
                }
            }
            this.count += r02;
        }
        return this.blockSize;
    }

    private byte encryptByte(byte b10, int r32) {
        return (byte) (b10 ^ this.FRE[r32]);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/OpenPGPCFB";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.cipher.getBlockSize();
    }

    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.forEncryption = z10;
        reset();
        this.cipher.init(true, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r32, byte[] bArr2, int r52) throws IllegalStateException, DataLengthException {
        return this.forEncryption ? encryptBlock(bArr, r32, bArr2, r52) : decryptBlock(bArr, r32, bArr2, r52);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        this.count = 0;
        byte[] bArr = this.IV;
        byte[] bArr2 = this.FR;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.cipher.reset();
    }
}
