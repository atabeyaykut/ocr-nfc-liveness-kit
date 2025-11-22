package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamBlockCipher;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class KCTRBlockCipher extends StreamBlockCipher {
    private int byteCount;
    private BlockCipher engine;
    private boolean initialised;
    private byte[] iv;
    private byte[] ofbOutV;
    private byte[] ofbV;

    public KCTRBlockCipher(BlockCipher blockCipher) {
        super(blockCipher);
        this.engine = blockCipher;
        this.iv = new byte[blockCipher.getBlockSize()];
        this.ofbV = new byte[blockCipher.getBlockSize()];
        this.ofbOutV = new byte[blockCipher.getBlockSize()];
    }

    private void checkCounter() {
    }

    private void incrementCounterAt(int r42) {
        while (true) {
            byte[] bArr = this.ofbV;
            if (r42 >= bArr.length) {
                return;
            }
            int r12 = r42 + 1;
            byte b10 = (byte) (bArr[r42] + 1);
            bArr[r42] = b10;
            if (b10 != 0) {
                return;
            } else {
                r42 = r12;
            }
        }
    }

    @Override // org.bouncycastle.crypto.StreamBlockCipher
    public byte calculateByte(byte b10) throws IllegalStateException, DataLengthException {
        int r02 = this.byteCount;
        if (r02 == 0) {
            incrementCounterAt(0);
            checkCounter();
            this.engine.processBlock(this.ofbV, 0, this.ofbOutV, 0);
            byte[] bArr = this.ofbOutV;
            int r12 = this.byteCount;
            this.byteCount = r12 + 1;
            return (byte) (b10 ^ bArr[r12]);
        }
        byte[] bArr2 = this.ofbOutV;
        int r32 = r02 + 1;
        this.byteCount = r32;
        byte b11 = (byte) (b10 ^ bArr2[r02]);
        if (r32 == this.ofbV.length) {
            this.byteCount = 0;
        }
        return b11;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.engine.getAlgorithmName() + "/KCTR";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.engine.getBlockSize();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        this.initialised = true;
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("invalid parameter passed");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] bArr = parametersWithIV.getIV();
        byte[] bArr2 = this.iv;
        int length = bArr2.length - bArr.length;
        Arrays.fill(bArr2, (byte) 0);
        System.arraycopy(bArr, 0, this.iv, length, bArr.length);
        CipherParameters parameters = parametersWithIV.getParameters();
        if (parameters != null) {
            this.engine.init(true, parameters);
        }
        reset();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r10, byte[] bArr2, int r12) throws IllegalStateException, DataLengthException {
        if (bArr.length - r10 < getBlockSize()) {
            throw new DataLengthException("input buffer too short");
        }
        if (bArr2.length - r12 < getBlockSize()) {
            throw new OutputLengthException("output buffer too short");
        }
        processBytes(bArr, r10, getBlockSize(), bArr2, r12);
        return getBlockSize();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() throws IllegalStateException, DataLengthException {
        if (this.initialised) {
            this.engine.processBlock(this.iv, 0, this.ofbV, 0);
        }
        this.engine.reset();
        this.byteCount = 0;
    }
}
