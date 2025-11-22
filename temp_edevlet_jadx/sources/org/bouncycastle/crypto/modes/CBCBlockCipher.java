package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DefaultMultiBlockCipher;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class CBCBlockCipher extends DefaultMultiBlockCipher implements CBCModeCipher {
    private byte[] IV;
    private int blockSize;
    private byte[] cbcNextV;
    private byte[] cbcV;
    private BlockCipher cipher;
    private boolean encrypting;

    public CBCBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.IV = new byte[blockSize];
        this.cbcV = new byte[blockSize];
        this.cbcNextV = new byte[blockSize];
    }

    private int decryptBlock(byte[] bArr, int r52, byte[] bArr2, int r72) throws IllegalStateException, DataLengthException {
        int r02 = this.blockSize;
        if (r52 + r02 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        System.arraycopy(bArr, r52, this.cbcNextV, 0, r02);
        int r42 = this.cipher.processBlock(bArr, r52, bArr2, r72);
        for (int r22 = 0; r22 < this.blockSize; r22++) {
            int r53 = r72 + r22;
            bArr2[r53] = (byte) (bArr2[r53] ^ this.cbcV[r22]);
        }
        byte[] bArr3 = this.cbcV;
        this.cbcV = this.cbcNextV;
        this.cbcNextV = bArr3;
        return r42;
    }

    private int encryptBlock(byte[] bArr, int r72, byte[] bArr2, int r92) throws IllegalStateException, DataLengthException {
        if (this.blockSize + r72 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        for (int r12 = 0; r12 < this.blockSize; r12++) {
            byte[] bArr3 = this.cbcV;
            bArr3[r12] = (byte) (bArr3[r12] ^ bArr[r72 + r12]);
        }
        int r6 = this.cipher.processBlock(this.cbcV, 0, bArr2, r92);
        byte[] bArr4 = this.cbcV;
        System.arraycopy(bArr2, r92, bArr4, 0, bArr4.length);
        return r6;
    }

    public static CBCModeCipher newInstance(BlockCipher blockCipher) {
        return new CBCBlockCipher(blockCipher);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/CBC";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.cipher.getBlockSize();
    }

    @Override // org.bouncycastle.crypto.modes.CBCModeCipher
    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        boolean z11 = this.encrypting;
        this.encrypting = z10;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] bArr = parametersWithIV.getIV();
            if (bArr.length != this.blockSize) {
                throw new IllegalArgumentException("initialisation vector must be the same length as block size");
            }
            System.arraycopy(bArr, 0, this.IV, 0, bArr.length);
            cipherParameters = parametersWithIV.getParameters();
        } else {
            Arrays.fill(this.IV, (byte) 0);
        }
        reset();
        if (cipherParameters != null) {
            this.cipher.init(z10, cipherParameters);
        } else if (z11 != z10) {
            throw new IllegalArgumentException("cannot change encrypting state without providing key.");
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r32, byte[] bArr2, int r52) throws IllegalStateException, DataLengthException {
        return this.encrypting ? encryptBlock(bArr, r32, bArr2, r52) : decryptBlock(bArr, r32, bArr2, r52);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        byte[] bArr = this.IV;
        System.arraycopy(bArr, 0, this.cbcV, 0, bArr.length);
        Arrays.fill(this.cbcNextV, (byte) 0);
        this.cipher.reset();
    }
}
