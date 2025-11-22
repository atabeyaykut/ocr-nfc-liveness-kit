package org.bouncycastle.crypto;

/* loaded from: classes2.dex */
public abstract class DefaultMultiBlockCipher implements MultiBlockCipher {
    @Override // org.bouncycastle.crypto.MultiBlockCipher
    public int getMultiBlockSize() {
        return getBlockSize();
    }

    @Override // org.bouncycastle.crypto.MultiBlockCipher
    public int processBlocks(byte[] bArr, int r6, int r72, byte[] bArr2, int r92) throws IllegalStateException, DataLengthException {
        int multiBlockSize = getMultiBlockSize();
        int r22 = 0;
        for (int r12 = 0; r12 != r72; r12++) {
            r22 += processBlock(bArr, r6, bArr2, r92 + r22);
            r6 += multiBlockSize;
        }
        return r22;
    }
}
