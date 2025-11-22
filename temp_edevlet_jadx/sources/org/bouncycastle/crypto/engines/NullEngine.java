package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

/* loaded from: classes2.dex */
public class NullEngine implements BlockCipher {
    protected static final int DEFAULT_BLOCK_SIZE = 1;
    private final int blockSize;
    private boolean initialised;

    public NullEngine() {
        this(1);
    }

    public NullEngine(int r12) {
        this.blockSize = r12;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Null";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.blockSize;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.initialised = true;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r52, byte[] bArr2, int r72) throws IllegalStateException, DataLengthException {
        if (!this.initialised) {
            throw new IllegalStateException("Null engine not initialised");
        }
        int r02 = this.blockSize;
        if (r52 + r02 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r02 + r72 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        int r03 = 0;
        while (true) {
            int r12 = this.blockSize;
            if (r03 >= r12) {
                return r12;
            }
            bArr2[r72 + r03] = bArr[r52 + r03];
            r03++;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
