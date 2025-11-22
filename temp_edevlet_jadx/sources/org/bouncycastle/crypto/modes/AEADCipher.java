package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;

/* loaded from: classes2.dex */
public interface AEADCipher {
    int doFinal(byte[] bArr, int r22) throws InvalidCipherTextException, IllegalStateException;

    String getAlgorithmName();

    byte[] getMac();

    int getOutputSize(int r12);

    int getUpdateOutputSize(int r12);

    void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException;

    void processAADByte(byte b10);

    void processAADBytes(byte[] bArr, int r22, int r32);

    int processByte(byte b10, byte[] bArr, int r32) throws DataLengthException;

    int processBytes(byte[] bArr, int r22, int r32, byte[] bArr2, int r52) throws DataLengthException;

    void reset();
}
