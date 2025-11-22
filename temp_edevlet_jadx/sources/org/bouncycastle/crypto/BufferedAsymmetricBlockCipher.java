package org.bouncycastle.crypto;

/* loaded from: classes2.dex */
public class BufferedAsymmetricBlockCipher {
    protected byte[] buf;
    protected int bufOff;
    private final AsymmetricBlockCipher cipher;

    public BufferedAsymmetricBlockCipher(AsymmetricBlockCipher asymmetricBlockCipher) {
        this.cipher = asymmetricBlockCipher;
    }

    public byte[] doFinal() throws InvalidCipherTextException {
        byte[] bArrProcessBlock = this.cipher.processBlock(this.buf, 0, this.bufOff);
        reset();
        return bArrProcessBlock;
    }

    public int getBufferPosition() {
        return this.bufOff;
    }

    public int getInputBlockSize() {
        return this.cipher.getInputBlockSize();
    }

    public int getOutputBlockSize() {
        return this.cipher.getOutputBlockSize();
    }

    public AsymmetricBlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    public void init(boolean z10, CipherParameters cipherParameters) {
        reset();
        this.cipher.init(z10, cipherParameters);
        this.buf = new byte[this.cipher.getInputBlockSize() + (z10 ? 1 : 0)];
        this.bufOff = 0;
    }

    public void processByte(byte b10) {
        int r02 = this.bufOff;
        byte[] bArr = this.buf;
        if (r02 >= bArr.length) {
            throw new DataLengthException("attempt to process message too long for cipher");
        }
        this.bufOff = r02 + 1;
        bArr[r02] = b10;
    }

    public void processBytes(byte[] bArr, int r6, int r72) {
        if (r72 == 0) {
            return;
        }
        if (r72 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int r02 = this.bufOff;
        int r12 = r02 + r72;
        byte[] bArr2 = this.buf;
        if (r12 > bArr2.length) {
            throw new DataLengthException("attempt to process message too long for cipher");
        }
        System.arraycopy(bArr, r6, bArr2, r02, r72);
        this.bufOff += r72;
    }

    public void reset() {
        if (this.buf != null) {
            int r02 = 0;
            while (true) {
                byte[] bArr = this.buf;
                if (r02 >= bArr.length) {
                    break;
                }
                bArr[r02] = 0;
                r02++;
            }
        }
        this.bufOff = 0;
    }
}
