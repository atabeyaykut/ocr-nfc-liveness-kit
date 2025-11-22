package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.paddings.BlockCipherPadding;

/* loaded from: classes2.dex */
public class CBCBlockCipherMac implements Mac {
    private byte[] buf;
    private int bufOff;
    private BlockCipher cipher;
    private byte[] mac;
    private int macSize;
    private BlockCipherPadding padding;

    public CBCBlockCipherMac(BlockCipher blockCipher) {
        this(blockCipher, (blockCipher.getBlockSize() * 8) / 2, null);
    }

    public CBCBlockCipherMac(BlockCipher blockCipher, int r32) {
        this(blockCipher, r32, null);
    }

    public CBCBlockCipherMac(BlockCipher blockCipher, int r32, BlockCipherPadding blockCipherPadding) {
        if (r32 % 8 != 0) {
            throw new IllegalArgumentException("MAC size must be multiple of 8");
        }
        this.cipher = CBCBlockCipher.newInstance(blockCipher);
        this.padding = blockCipherPadding;
        this.macSize = r32 / 8;
        this.mac = new byte[blockCipher.getBlockSize()];
        this.buf = new byte[blockCipher.getBlockSize()];
        this.bufOff = 0;
    }

    public CBCBlockCipherMac(BlockCipher blockCipher, BlockCipherPadding blockCipherPadding) {
        this(blockCipher, (blockCipher.getBlockSize() * 8) / 2, blockCipherPadding);
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int r6) throws IllegalStateException, DataLengthException {
        int blockSize = this.cipher.getBlockSize();
        if (this.padding == null) {
            while (true) {
                int r12 = this.bufOff;
                if (r12 >= blockSize) {
                    break;
                }
                this.buf[r12] = 0;
                this.bufOff = r12 + 1;
            }
        } else {
            if (this.bufOff == blockSize) {
                this.cipher.processBlock(this.buf, 0, this.mac, 0);
                this.bufOff = 0;
            }
            this.padding.addPadding(this.buf, this.bufOff);
        }
        this.cipher.processBlock(this.buf, 0, this.mac, 0);
        System.arraycopy(this.mac, 0, bArr, r6, this.macSize);
        reset();
        return this.macSize;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.macSize;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        reset();
        this.cipher.init(true, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        int r12 = 0;
        while (true) {
            byte[] bArr = this.buf;
            if (r12 >= bArr.length) {
                this.bufOff = 0;
                this.cipher.reset();
                return;
            } else {
                bArr[r12] = 0;
                r12++;
            }
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b10) throws IllegalStateException, DataLengthException {
        int r02 = this.bufOff;
        byte[] bArr = this.buf;
        if (r02 == bArr.length) {
            this.cipher.processBlock(bArr, 0, this.mac, 0);
            this.bufOff = 0;
        }
        byte[] bArr2 = this.buf;
        int r12 = this.bufOff;
        this.bufOff = r12 + 1;
        bArr2[r12] = b10;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int r82, int r92) throws IllegalStateException, DataLengthException {
        if (r92 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int blockSize = this.cipher.getBlockSize();
        int r12 = this.bufOff;
        int r22 = blockSize - r12;
        if (r92 > r22) {
            System.arraycopy(bArr, r82, this.buf, r12, r22);
            this.cipher.processBlock(this.buf, 0, this.mac, 0);
            this.bufOff = 0;
            r92 -= r22;
            r82 += r22;
            while (r92 > blockSize) {
                this.cipher.processBlock(bArr, r82, this.mac, 0);
                r92 -= blockSize;
                r82 += blockSize;
            }
        }
        System.arraycopy(bArr, r82, this.buf, this.bufOff, r92);
        this.bufOff += r92;
    }
}
