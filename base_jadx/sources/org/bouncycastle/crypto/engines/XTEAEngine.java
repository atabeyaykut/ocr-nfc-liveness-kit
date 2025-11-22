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
public class XTEAEngine implements BlockCipher {
    private static final int block_size = 8;
    private static final int delta = -1640531527;
    private static final int rounds = 32;
    private boolean _forEncryption;
    private int[] _S = new int[4];
    private int[] _sum0 = new int[32];
    private int[] _sum1 = new int[32];
    private boolean _initialised = false;

    private int bytesToInt(byte[] bArr, int r42) {
        int r02 = r42 + 1;
        int r12 = r02 + 1;
        int r43 = (bArr[r42] << 24) | ((bArr[r02] & 255) << 16);
        int r03 = r12 + 1;
        return (bArr[r03] & 255) | r43 | ((bArr[r12] & 255) << 8);
    }

    private int decryptBlock(byte[] bArr, int r52, byte[] bArr2, int r72) {
        int r02 = bytesToInt(bArr, r52);
        int r42 = bytesToInt(bArr, r52 + 4);
        for (int r53 = 31; r53 >= 0; r53--) {
            r42 -= (((r02 << 4) ^ (r02 >>> 5)) + r02) ^ this._sum1[r53];
            r02 -= (((r42 << 4) ^ (r42 >>> 5)) + r42) ^ this._sum0[r53];
        }
        unpackInt(r02, bArr2, r72);
        unpackInt(r42, bArr2, r72 + 4);
        return 8;
    }

    private int encryptBlock(byte[] bArr, int r52, byte[] bArr2, int r72) {
        int r02 = bytesToInt(bArr, r52);
        int r42 = bytesToInt(bArr, r52 + 4);
        for (int r53 = 0; r53 < 32; r53++) {
            r02 += (((r42 << 4) ^ (r42 >>> 5)) + r42) ^ this._sum0[r53];
            r42 += (((r02 << 4) ^ (r02 >>> 5)) + r02) ^ this._sum1[r53];
        }
        unpackInt(r02, bArr2, r72);
        unpackInt(r42, bArr2, r72 + 4);
        return 8;
    }

    private void setKey(byte[] bArr) {
        if (bArr.length != 16) {
            throw new IllegalArgumentException("Key size must be 128 bits.");
        }
        int r12 = 0;
        int r22 = 0;
        while (r12 < 4) {
            this._S[r12] = bytesToInt(bArr, r22);
            r12++;
            r22 += 4;
        }
        int r72 = 0;
        for (int r02 = 0; r02 < 32; r02++) {
            int[] r13 = this._sum0;
            int[] r23 = this._S;
            r13[r02] = r23[r72 & 3] + r72;
            r72 -= 1640531527;
            this._sum1[r02] = r23[(r72 >>> 11) & 3] + r72;
        }
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
        return "XTEA";
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
