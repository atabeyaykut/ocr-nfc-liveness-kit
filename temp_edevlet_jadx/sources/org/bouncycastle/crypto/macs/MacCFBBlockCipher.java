package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes2.dex */
class MacCFBBlockCipher {
    private byte[] IV;
    private int blockSize;
    private byte[] cfbOutV;
    private byte[] cfbV;
    private BlockCipher cipher;

    public MacCFBBlockCipher(BlockCipher blockCipher, int r22) {
        this.cipher = blockCipher;
        this.blockSize = r22 / 8;
        this.IV = new byte[blockCipher.getBlockSize()];
        this.cfbV = new byte[blockCipher.getBlockSize()];
        this.cfbOutV = new byte[blockCipher.getBlockSize()];
    }

    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/CFB" + (this.blockSize * 8);
    }

    public int getBlockSize() {
        return this.blockSize;
    }

    public void getMacBlock(byte[] bArr) throws IllegalStateException, DataLengthException {
        this.cipher.processBlock(this.cfbV, 0, bArr, 0);
    }

    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] bArr = parametersWithIV.getIV();
            int length = bArr.length;
            byte[] bArr2 = this.IV;
            if (length < bArr2.length) {
                System.arraycopy(bArr, 0, bArr2, bArr2.length - bArr.length, bArr.length);
            } else {
                System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
            }
            reset();
            blockCipher = this.cipher;
            cipherParameters = parametersWithIV.getParameters();
        } else {
            reset();
            blockCipher = this.cipher;
        }
        blockCipher.init(true, cipherParameters);
    }

    public int processBlock(byte[] bArr, int r72, byte[] bArr2, int r92) throws IllegalStateException, DataLengthException {
        int r02 = this.blockSize;
        if (r72 + r02 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r02 + r92 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        this.cipher.processBlock(this.cfbV, 0, this.cfbOutV, 0);
        int r03 = 0;
        while (true) {
            int r12 = this.blockSize;
            if (r03 >= r12) {
                byte[] bArr3 = this.cfbV;
                System.arraycopy(bArr3, r12, bArr3, 0, bArr3.length - r12);
                byte[] bArr4 = this.cfbV;
                int length = bArr4.length;
                int r04 = this.blockSize;
                System.arraycopy(bArr2, r92, bArr4, length - r04, r04);
                return this.blockSize;
            }
            bArr2[r92 + r03] = (byte) (this.cfbOutV[r03] ^ bArr[r72 + r03]);
            r03++;
        }
    }

    public void reset() {
        byte[] bArr = this.IV;
        System.arraycopy(bArr, 0, this.cfbV, 0, bArr.length);
        this.cipher.reset();
    }
}
