package org.bouncycastle.crypto;

/* loaded from: classes2.dex */
public interface StreamCipher {
    String getAlgorithmName();

    void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException;

    int processBytes(byte[] bArr, int r22, int r32, byte[] bArr2, int r52) throws DataLengthException;

    void reset();

    byte returnByte(byte b10);
}
