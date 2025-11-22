package org.bouncycastle.crypto.modes;

import androidx.appcompat.graphics.drawable.a;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.StreamBlockCipher;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class CFBBlockCipher extends StreamBlockCipher implements CFBModeCipher {
    private byte[] IV;
    private int blockSize;
    private int byteCount;
    private byte[] cfbOutV;
    private byte[] cfbV;
    private BlockCipher cipher;
    private boolean encrypting;
    private byte[] inBuf;

    public CFBBlockCipher(BlockCipher blockCipher, int r42) {
        super(blockCipher);
        this.cipher = null;
        if (r42 > blockCipher.getBlockSize() * 8 || r42 < 8 || r42 % 8 != 0) {
            throw new IllegalArgumentException(a.f("CFB", r42, " not supported"));
        }
        this.cipher = blockCipher;
        this.blockSize = r42 / 8;
        this.IV = new byte[blockCipher.getBlockSize()];
        this.cfbV = new byte[blockCipher.getBlockSize()];
        this.cfbOutV = new byte[blockCipher.getBlockSize()];
        this.inBuf = new byte[this.blockSize];
    }

    private byte decryptByte(byte b10) throws IllegalStateException, DataLengthException {
        if (this.byteCount == 0) {
            this.cipher.processBlock(this.cfbV, 0, this.cfbOutV, 0);
        }
        byte[] bArr = this.inBuf;
        int r22 = this.byteCount;
        bArr[r22] = b10;
        byte[] bArr2 = this.cfbOutV;
        int r32 = r22 + 1;
        this.byteCount = r32;
        byte b11 = (byte) (b10 ^ bArr2[r22]);
        int r02 = this.blockSize;
        if (r32 == r02) {
            this.byteCount = 0;
            byte[] bArr3 = this.cfbV;
            System.arraycopy(bArr3, r02, bArr3, 0, bArr3.length - r02);
            byte[] bArr4 = this.inBuf;
            byte[] bArr5 = this.cfbV;
            int length = bArr5.length;
            int r42 = this.blockSize;
            System.arraycopy(bArr4, 0, bArr5, length - r42, r42);
        }
        return b11;
    }

    private byte encryptByte(byte b10) throws IllegalStateException, DataLengthException {
        if (this.byteCount == 0) {
            this.cipher.processBlock(this.cfbV, 0, this.cfbOutV, 0);
        }
        byte[] bArr = this.cfbOutV;
        int r22 = this.byteCount;
        byte b11 = (byte) (b10 ^ bArr[r22]);
        byte[] bArr2 = this.inBuf;
        int r32 = r22 + 1;
        this.byteCount = r32;
        bArr2[r22] = b11;
        int r02 = this.blockSize;
        if (r32 == r02) {
            this.byteCount = 0;
            byte[] bArr3 = this.cfbV;
            System.arraycopy(bArr3, r02, bArr3, 0, bArr3.length - r02);
            byte[] bArr4 = this.inBuf;
            byte[] bArr5 = this.cfbV;
            int length = bArr5.length;
            int r42 = this.blockSize;
            System.arraycopy(bArr4, 0, bArr5, length - r42, r42);
        }
        return b11;
    }

    public static CFBModeCipher newInstance(BlockCipher blockCipher, int r22) {
        return new CFBBlockCipher(blockCipher, r22);
    }

    @Override // org.bouncycastle.crypto.StreamBlockCipher
    public byte calculateByte(byte b10) throws IllegalStateException, DataLengthException {
        return this.encrypting ? encryptByte(b10) : decryptByte(b10);
    }

    public int decryptBlock(byte[] bArr, int r82, byte[] bArr2, int r10) throws IllegalStateException, DataLengthException {
        processBytes(bArr, r82, this.blockSize, bArr2, r10);
        return this.blockSize;
    }

    public int encryptBlock(byte[] bArr, int r82, byte[] bArr2, int r10) throws IllegalStateException, DataLengthException {
        processBytes(bArr, r82, this.blockSize, bArr2, r10);
        return this.blockSize;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/CFB" + (this.blockSize * 8);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.blockSize;
    }

    public byte[] getCurrentIV() {
        return Arrays.clone(this.cfbV);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        this.encrypting = z10;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] bArr = parametersWithIV.getIV();
            int length = bArr.length;
            byte[] bArr2 = this.IV;
            if (length < bArr2.length) {
                System.arraycopy(bArr, 0, bArr2, bArr2.length - bArr.length, bArr.length);
                int r12 = 0;
                while (true) {
                    byte[] bArr3 = this.IV;
                    if (r12 >= bArr3.length - bArr.length) {
                        break;
                    }
                    bArr3[r12] = 0;
                    r12++;
                }
            } else {
                System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
            }
            reset();
            if (parametersWithIV.getParameters() == null) {
                return;
            }
            blockCipher = this.cipher;
            cipherParameters = parametersWithIV.getParameters();
        } else {
            reset();
            if (cipherParameters == null) {
                return;
            } else {
                blockCipher = this.cipher;
            }
        }
        blockCipher.init(true, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r82, byte[] bArr2, int r10) throws IllegalStateException, DataLengthException {
        processBytes(bArr, r82, this.blockSize, bArr2, r10);
        return this.blockSize;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        byte[] bArr = this.IV;
        System.arraycopy(bArr, 0, this.cfbV, 0, bArr.length);
        Arrays.fill(this.inBuf, (byte) 0);
        this.byteCount = 0;
        this.cipher.reset();
    }
}
