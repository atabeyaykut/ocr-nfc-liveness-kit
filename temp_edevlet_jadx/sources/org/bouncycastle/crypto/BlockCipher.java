package org.bouncycastle.crypto;

/* loaded from: classes2.dex */
public interface BlockCipher {
    String getAlgorithmName();

    int getBlockSize();

    void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException;

    int processBlock(byte[] bArr, int r22, byte[] bArr2, int r42) throws IllegalStateException, DataLengthException;

    void reset();
}
