package org.bouncycastle.crypto;

/* loaded from: classes2.dex */
public interface DerivationFunction {
    int generateBytes(byte[] bArr, int r22, int r32) throws DataLengthException, IllegalArgumentException;

    void init(DerivationParameters derivationParameters);
}
