package org.bouncycastle.crypto.fpe;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.FPEParameters;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public abstract class FPEEngine {
    protected final BlockCipher baseCipher;
    protected boolean forEncryption;
    protected FPEParameters fpeParameters;

    public FPEEngine(BlockCipher blockCipher) {
        this.baseCipher = blockCipher;
    }

    public static byte[] toByteArray(short[] sArr) {
        byte[] bArr = new byte[sArr.length * 2];
        for (int r12 = 0; r12 != sArr.length; r12++) {
            Pack.shortToBigEndian(sArr[r12], bArr, r12 * 2);
        }
        return bArr;
    }

    public static short[] toShortArray(byte[] bArr) {
        if ((bArr.length & 1) != 0) {
            throw new IllegalArgumentException("data must be an even number of bytes for a wide radix");
        }
        int length = bArr.length / 2;
        short[] sArr = new short[length];
        for (int r22 = 0; r22 != length; r22++) {
            sArr[r22] = Pack.bigEndianToShort(bArr, r22 * 2);
        }
        return sArr;
    }

    public abstract int decryptBlock(byte[] bArr, int r22, int r32, byte[] bArr2, int r52);

    public abstract int encryptBlock(byte[] bArr, int r22, int r32, byte[] bArr2, int r52);

    public abstract String getAlgorithmName();

    public abstract void init(boolean z10, CipherParameters cipherParameters);

    public int processBlock(byte[] bArr, int r42, int r52, byte[] bArr2, int r72) {
        if (this.fpeParameters == null) {
            throw new IllegalStateException("FPE engine not initialized");
        }
        if (r52 < 0) {
            throw new IllegalArgumentException("input length cannot be negative");
        }
        if (bArr == null || bArr2 == null) {
            throw new NullPointerException("buffer value is null");
        }
        if (bArr.length < r42 + r52) {
            throw new DataLengthException("input buffer too short");
        }
        if (bArr2.length >= r72 + r52) {
            return this.forEncryption ? encryptBlock(bArr, r42, r52, bArr2, r72) : decryptBlock(bArr, r42, r52, bArr2, r72);
        }
        throw new OutputLengthException("output buffer too short");
    }
}
