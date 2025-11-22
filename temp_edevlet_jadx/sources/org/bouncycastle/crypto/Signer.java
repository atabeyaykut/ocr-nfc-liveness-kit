package org.bouncycastle.crypto;

/* loaded from: classes2.dex */
public interface Signer {
    byte[] generateSignature() throws DataLengthException, CryptoException;

    void init(boolean z10, CipherParameters cipherParameters);

    void reset();

    void update(byte b10);

    void update(byte[] bArr, int r22, int r32);

    boolean verifySignature(byte[] bArr);
}
