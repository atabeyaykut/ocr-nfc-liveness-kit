package org.bouncycastle.crypto;

/* loaded from: classes2.dex */
public interface AsymmetricBlockCipher {
    int getInputBlockSize();

    int getOutputBlockSize();

    void init(boolean z10, CipherParameters cipherParameters);

    byte[] processBlock(byte[] bArr, int r22, int r32) throws InvalidCipherTextException;
}
