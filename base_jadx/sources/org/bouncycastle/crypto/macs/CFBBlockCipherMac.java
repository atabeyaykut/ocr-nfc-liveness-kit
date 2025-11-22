package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.paddings.BlockCipherPadding;

/* loaded from: classes2.dex */
public class CFBBlockCipherMac implements Mac {
    private byte[] buf;
    private int bufOff;
    private MacCFBBlockCipher cipher;
    private byte[] mac;
    private int macSize;
    private BlockCipherPadding padding;

    public CFBBlockCipherMac(BlockCipher blockCipher) {
        this(blockCipher, 8, (blockCipher.getBlockSize() * 8) / 2, null);
    }

    public CFBBlockCipherMac(BlockCipher blockCipher, int r32, int r42) {
        this(blockCipher, r32, r42, null);
    }

    public CFBBlockCipherMac(BlockCipher blockCipher, int r32, int r42, BlockCipherPadding blockCipherPadding) {
        this.padding = null;
        if (r42 % 8 != 0) {
            throw new IllegalArgumentException("MAC size must be multiple of 8");
        }
        this.mac = new byte[blockCipher.getBlockSize()];
        MacCFBBlockCipher macCFBBlockCipher = new MacCFBBlockCipher(blockCipher, r32);
        this.cipher = macCFBBlockCipher;
        this.padding = blockCipherPadding;
        this.macSize = r42 / 8;
        this.buf = new byte[macCFBBlockCipher.getBlockSize()];
        this.bufOff = 0;
    }

    public CFBBlockCipherMac(BlockCipher blockCipher, BlockCipherPadding blockCipherPadding) {
        this(blockCipher, 8, (blockCipher.getBlockSize() * 8) / 2, blockCipherPadding);
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int r6) throws IllegalStateException, DataLengthException {
        int blockSize = this.cipher.getBlockSize();
        BlockCipherPadding blockCipherPadding = this.padding;
        if (blockCipherPadding == null) {
            while (true) {
                int r12 = this.bufOff;
                if (r12 >= blockSize) {
                    break;
                }
                this.buf[r12] = 0;
                this.bufOff = r12 + 1;
            }
        } else {
            blockCipherPadding.addPadding(this.buf, this.bufOff);
        }
        this.cipher.processBlock(this.buf, 0, this.mac, 0);
        this.cipher.getMacBlock(this.mac);
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
        this.cipher.init(cipherParameters);
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
