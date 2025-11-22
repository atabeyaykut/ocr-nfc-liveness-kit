package org.bouncycastle.util.encoders;

/* loaded from: classes2.dex */
public interface Translator {
    int decode(byte[] bArr, int r22, int r32, byte[] bArr2, int r52);

    int encode(byte[] bArr, int r22, int r32, byte[] bArr2, int r52);

    int getDecodedBlockSize();

    int getEncodedBlockSize();
}
