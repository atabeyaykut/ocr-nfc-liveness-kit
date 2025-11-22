package org.bouncycastle.crypto;

/* loaded from: classes2.dex */
public interface Wrapper {
    String getAlgorithmName();

    void init(boolean z10, CipherParameters cipherParameters);

    byte[] unwrap(byte[] bArr, int r22, int r32) throws InvalidCipherTextException;

    byte[] wrap(byte[] bArr, int r22, int r32);
}
