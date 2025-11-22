package org.bouncycastle.crypto.engines;

import ab.b;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.RC5Parameters;

/* loaded from: classes2.dex */
public class RC532Engine implements BlockCipher {
    private static final int P32 = -1209970333;
    private static final int Q32 = -1640531527;
    private boolean forEncryption;
    private int _noRounds = 12;
    private int[] _S = null;

    private int bytesToWord(byte[] bArr, int r42) {
        return ((bArr[r42 + 3] & 255) << 24) | (bArr[r42] & 255) | ((bArr[r42 + 1] & 255) << 8) | ((bArr[r42 + 2] & 255) << 16);
    }

    private int decryptBlock(byte[] bArr, int r6, byte[] bArr2, int r82) {
        int r02 = bytesToWord(bArr, r6);
        int r52 = bytesToWord(bArr, r6 + 4);
        for (int r62 = this._noRounds; r62 >= 1; r62--) {
            int r22 = r62 * 2;
            r52 = rotateRight(r52 - this._S[r22 + 1], r02) ^ r02;
            r02 = rotateRight(r02 - this._S[r22], r52) ^ r52;
        }
        wordToBytes(r02 - this._S[0], bArr2, r82);
        wordToBytes(r52 - this._S[1], bArr2, r82 + 4);
        return 8;
    }

    private int encryptBlock(byte[] bArr, int r6, byte[] bArr2, int r82) {
        int r02 = bytesToWord(bArr, r6) + this._S[0];
        int r52 = bytesToWord(bArr, r6 + 4) + this._S[1];
        for (int r62 = 1; r62 <= this._noRounds; r62++) {
            int r32 = r62 * 2;
            r02 = rotateLeft(r02 ^ r52, r52) + this._S[r32];
            r52 = rotateLeft(r52 ^ r02, r02) + this._S[r32 + 1];
        }
        wordToBytes(r02, bArr2, r82);
        wordToBytes(r52, bArr2, r82 + 4);
        return 8;
    }

    private int rotateLeft(int r22, int r32) {
        int r33 = r32 & 31;
        return (r22 >>> (32 - r33)) | (r22 << r33);
    }

    private int rotateRight(int r22, int r32) {
        int r33 = r32 & 31;
        return (r22 << (32 - r33)) | (r22 >>> r33);
    }

    private void setKey(byte[] bArr) {
        int[] r52;
        int length = (bArr.length + 3) / 4;
        int[] r22 = new int[length];
        for (int r42 = 0; r42 != bArr.length; r42++) {
            int r53 = r42 / 4;
            r22[r53] = r22[r53] + ((bArr[r42] & 255) << ((r42 % 4) * 8));
        }
        int[] r12 = new int[(this._noRounds + 1) * 2];
        this._S = r12;
        r12[0] = P32;
        int r122 = 1;
        while (true) {
            r52 = this._S;
            if (r122 >= r52.length) {
                break;
            }
            r52[r122] = r52[r122 - 1] + Q32;
            r122++;
        }
        int length2 = length > r52.length ? length * 3 : r52.length * 3;
        int length3 = 0;
        int r6 = 0;
        int r72 = 0;
        int r82 = 0;
        for (int r32 = 0; r32 < length2; r32++) {
            int[] r92 = this._S;
            r6 = rotateLeft(r92[length3] + r6 + r72, 3);
            r92[length3] = r6;
            r72 = rotateLeft(r22[r82] + r6 + r72, r72 + r6);
            r22[r82] = r72;
            length3 = (length3 + 1) % this._S.length;
            r82 = (r82 + 1) % length;
        }
    }

    private void wordToBytes(int r32, byte[] bArr, int r52) {
        bArr[r52] = (byte) r32;
        bArr[r52 + 1] = (byte) (r32 >> 8);
        bArr[r52 + 2] = (byte) (r32 >> 16);
        bArr[r52 + 3] = (byte) (r32 >> 24);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "RC5-32";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        byte[] key;
        if (cipherParameters instanceof RC5Parameters) {
            RC5Parameters rC5Parameters = (RC5Parameters) cipherParameters;
            this._noRounds = rC5Parameters.getRounds();
            key = rC5Parameters.getKey();
            setKey(key);
        } else {
            if (!(cipherParameters instanceof KeyParameter)) {
                throw new IllegalArgumentException(b.g(cipherParameters, "invalid parameter passed to RC532 init - "));
            }
            key = ((KeyParameter) cipherParameters).getKey();
            setKey(key);
        }
        this.forEncryption = z10;
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), key.length * 8, cipherParameters, Utils.getPurpose(z10)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r32, byte[] bArr2, int r52) {
        return this.forEncryption ? encryptBlock(bArr, r32, bArr2, r52) : decryptBlock(bArr, r32, bArr2, r52);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
