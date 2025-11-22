package org.bouncycastle.crypto;

/* loaded from: classes2.dex */
public interface Digest {
    int doFinal(byte[] bArr, int r22);

    String getAlgorithmName();

    int getDigestSize();

    void reset();

    void update(byte b10);

    void update(byte[] bArr, int r22, int r32);
}
