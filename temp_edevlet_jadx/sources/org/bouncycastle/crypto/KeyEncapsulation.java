package org.bouncycastle.crypto;

/* loaded from: classes2.dex */
public interface KeyEncapsulation {
    CipherParameters decrypt(byte[] bArr, int r22, int r32, int r42);

    CipherParameters encrypt(byte[] bArr, int r22, int r32);

    void init(CipherParameters cipherParameters);
}
