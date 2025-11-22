package org.bouncycastle.crypto;

/* loaded from: classes2.dex */
public interface MultiBlockCipher extends BlockCipher {
    int getMultiBlockSize();

    int processBlocks(byte[] bArr, int r22, int r32, byte[] bArr2, int r52) throws IllegalStateException, DataLengthException;
}
