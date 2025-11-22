package org.bouncycastle.crypto;

/* loaded from: classes2.dex */
public class DefaultBufferedBlockCipher extends BufferedBlockCipher {
    protected byte[] buf;
    protected int bufOff;
    protected BlockCipher cipher;
    protected boolean forEncryption;
    protected MultiBlockCipher mbCipher;
    protected boolean partialBlockOkay;
    protected boolean pgpCFB;

    public DefaultBufferedBlockCipher() {
    }

    public DefaultBufferedBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        if (blockCipher instanceof MultiBlockCipher) {
            MultiBlockCipher multiBlockCipher = (MultiBlockCipher) blockCipher;
            this.mbCipher = multiBlockCipher;
            this.buf = new byte[multiBlockCipher.getMultiBlockSize()];
        } else {
            this.mbCipher = null;
            this.buf = new byte[blockCipher.getBlockSize()];
        }
        boolean z10 = false;
        this.bufOff = 0;
        String algorithmName = blockCipher.getAlgorithmName();
        int r22 = algorithmName.indexOf(47) + 1;
        boolean z11 = r22 > 0 && algorithmName.startsWith("PGP", r22);
        this.pgpCFB = z11;
        if (z11 || (blockCipher instanceof StreamCipher)) {
            this.partialBlockOkay = true;
            return;
        }
        if (r22 > 0 && algorithmName.startsWith("OpenPGP", r22)) {
            z10 = true;
        }
        this.partialBlockOkay = z10;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int doFinal(byte[] bArr, int r52) throws InvalidCipherTextException, IllegalStateException, DataLengthException {
        try {
            int r02 = this.bufOff;
            if (r52 + r02 > bArr.length) {
                throw new OutputLengthException("output buffer too short for doFinal()");
            }
            int r12 = 0;
            if (r02 != 0) {
                if (!this.partialBlockOkay) {
                    throw new DataLengthException("data not block size aligned");
                }
                BlockCipher blockCipher = this.cipher;
                byte[] bArr2 = this.buf;
                blockCipher.processBlock(bArr2, 0, bArr2, 0);
                int r03 = this.bufOff;
                this.bufOff = 0;
                System.arraycopy(this.buf, 0, bArr, r52, r03);
                r12 = r03;
            }
            return r12;
        } finally {
            reset();
        }
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int getBlockSize() {
        return this.cipher.getBlockSize();
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int getOutputSize(int r22) {
        if (!this.pgpCFB || !this.forEncryption) {
            return r22 + this.bufOff;
        }
        return this.cipher.getBlockSize() + 2 + r22 + this.bufOff;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int getUpdateOutputSize(int r32) {
        int length;
        int r33 = r32 + this.bufOff;
        if (this.pgpCFB && this.forEncryption) {
            length = (r33 % this.buf.length) - (this.cipher.getBlockSize() + 2);
            return r33 - length;
        }
        int length2 = this.buf.length;
        length = r33 % length2;
        return r33 - length;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.forEncryption = z10;
        reset();
        this.cipher.init(z10, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int processByte(byte b10, byte[] bArr, int r6) throws IllegalStateException, DataLengthException {
        byte[] bArr2 = this.buf;
        int r12 = this.bufOff;
        int r22 = r12 + 1;
        this.bufOff = r22;
        bArr2[r12] = b10;
        if (r22 != bArr2.length) {
            return 0;
        }
        int r42 = this.cipher.processBlock(bArr2, 0, bArr, r6);
        this.bufOff = 0;
        return r42;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
    public int processBytes(byte[] bArr, int r17, int r18, byte[] bArr2, int r20) throws IllegalStateException, DataLengthException {
        int r13;
        int r12;
        int r11;
        if (r18 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int blockSize = getBlockSize();
        int updateOutputSize = getUpdateOutputSize(r18);
        if (updateOutputSize > 0 && updateOutputSize + r20 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        byte[] bArr3 = this.buf;
        int length = bArr3.length;
        int r6 = this.bufOff;
        int r52 = length - r6;
        if (r18 > r52) {
            System.arraycopy(bArr, r17, bArr3, r6, r52);
            r11 = this.cipher.processBlock(this.buf, 0, bArr2, r20) + 0;
            this.bufOff = 0;
            r12 = r18 - r52;
            r13 = r17 + r52;
            MultiBlockCipher multiBlockCipher = this.mbCipher;
            if (multiBlockCipher != null) {
                int multiBlockSize = r12 / multiBlockCipher.getMultiBlockSize();
                if (multiBlockSize > 0) {
                    r11 += this.mbCipher.processBlocks(bArr, r13, multiBlockSize, bArr2, r20 + r11);
                    int multiBlockSize2 = this.mbCipher.getMultiBlockSize() * multiBlockSize;
                    r12 -= multiBlockSize2;
                    r13 += multiBlockSize2;
                }
            } else {
                while (r12 > this.buf.length) {
                    r11 += this.cipher.processBlock(bArr, r13, bArr2, r20 + r11);
                    r12 -= blockSize;
                    r13 += blockSize;
                }
            }
        } else {
            r13 = r17;
            r12 = r18;
            r11 = 0;
        }
        System.arraycopy(bArr, r13, this.buf, this.bufOff, r12);
        int r14 = this.bufOff + r12;
        this.bufOff = r14;
        byte[] bArr4 = this.buf;
        if (r14 != bArr4.length) {
            return r11;
        }
        int r112 = r11 + this.cipher.processBlock(bArr4, 0, bArr2, r20 + r11);
        this.bufOff = 0;
        return r112;
    }

    @Override // org.bouncycastle.crypto.BufferedBlockCipher
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
}
