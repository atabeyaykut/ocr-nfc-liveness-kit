package org.bouncycastle.crypto.engines;

import ab.b;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes2.dex */
public class TEAEngine implements BlockCipher {
    private static final int block_size = 8;
    private static final int d_sum = -957401312;
    private static final int delta = -1640531527;
    private static final int rounds = 32;
    private int _a;
    private int _b;
    private int _c;
    private int _d;
    private boolean _forEncryption;
    private boolean _initialised = false;

    private int bytesToInt(byte[] bArr, int r42) {
        int r02 = r42 + 1;
        int r12 = r02 + 1;
        int r43 = (bArr[r42] << 24) | ((bArr[r02] & 255) << 16);
        int r03 = r12 + 1;
        return (bArr[r03] & 255) | r43 | ((bArr[r12] & 255) << 8);
    }

    private int decryptBlock(byte[] bArr, int r72, byte[] bArr2, int r92) {
        int r02 = bytesToInt(bArr, r72);
        int r6 = bytesToInt(bArr, r72 + 4);
        int r73 = d_sum;
        for (int r12 = 0; r12 != 32; r12++) {
            r6 -= (((r02 << 4) + this._c) ^ (r02 + r73)) ^ ((r02 >>> 5) + this._d);
            r02 -= (((r6 << 4) + this._a) ^ (r6 + r73)) ^ ((r6 >>> 5) + this._b);
            r73 += 1640531527;
        }
        unpackInt(r02, bArr2, r92);
        unpackInt(r6, bArr2, r92 + 4);
        return 8;
    }

    private int encryptBlock(byte[] bArr, int r72, byte[] bArr2, int r92) {
        int r02 = bytesToInt(bArr, r72);
        int r6 = bytesToInt(bArr, r72 + 4);
        int r12 = r02;
        int r03 = 0;
        for (int r73 = 0; r73 != 32; r73++) {
            r03 -= 1640531527;
            r12 += (((r6 << 4) + this._a) ^ (r6 + r03)) ^ ((r6 >>> 5) + this._b);
            r6 += (((r12 << 4) + this._c) ^ (r12 + r03)) ^ ((r12 >>> 5) + this._d);
        }
        unpackInt(r12, bArr2, r92);
        unpackInt(r6, bArr2, r92 + 4);
        return 8;
    }

    private void setKey(byte[] bArr) {
        if (bArr.length != 16) {
            throw new IllegalArgumentException("Key size must be 128 bits.");
        }
        this._a = bytesToInt(bArr, 0);
        this._b = bytesToInt(bArr, 4);
        this._c = bytesToInt(bArr, 8);
        this._d = bytesToInt(bArr, 12);
    }

    private void unpackInt(int r32, byte[] bArr, int r52) {
        int r02 = r52 + 1;
        bArr[r52] = (byte) (r32 >>> 24);
        int r53 = r02 + 1;
        bArr[r02] = (byte) (r32 >>> 16);
        bArr[r53] = (byte) (r32 >>> 8);
        bArr[r53 + 1] = (byte) r32;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "TEA";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException(b.g(cipherParameters, "invalid parameter passed to TEA init - "));
        }
        this._forEncryption = z10;
        this._initialised = true;
        setKey(((KeyParameter) cipherParameters).getKey());
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z10)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r42, byte[] bArr2, int r6) {
        if (!this._initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (r42 + 8 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r6 + 8 <= bArr2.length) {
            return this._forEncryption ? encryptBlock(bArr, r42, bArr2, r6) : decryptBlock(bArr, r42, bArr2, r6);
        }
        throw new OutputLengthException("output buffer too short");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
