package org.bouncycastle.crypto;

/* loaded from: classes2.dex */
public interface Mac {
    int doFinal(byte[] bArr, int r22) throws IllegalStateException, DataLengthException;

    String getAlgorithmName();

    int getMacSize();

    void init(CipherParameters cipherParameters) throws IllegalArgumentException;

    void reset();

    void update(byte b10) throws IllegalStateException;

    void update(byte[] bArr, int r22, int r32) throws IllegalStateException, DataLengthException;
}
