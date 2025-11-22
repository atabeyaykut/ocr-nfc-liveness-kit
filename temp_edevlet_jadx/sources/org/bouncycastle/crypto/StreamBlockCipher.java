package org.bouncycastle.crypto;

/* loaded from: classes2.dex */
public abstract class StreamBlockCipher extends DefaultMultiBlockCipher implements StreamCipher {
    private final BlockCipher cipher;

    public StreamBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
    }

    public abstract byte calculateByte(byte b10);

    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int r52, int r6, byte[] bArr2, int r82) throws DataLengthException {
        int r02 = r52 + r6;
        if (r02 > bArr.length) {
            throw new DataLengthException("input buffer too small");
        }
        if (r82 + r6 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        while (r52 < r02) {
            bArr2[r82] = calculateByte(bArr[r52]);
            r82++;
            r52++;
        }
        return r6;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public final byte returnByte(byte b10) {
        return calculateByte(b10);
    }
}
