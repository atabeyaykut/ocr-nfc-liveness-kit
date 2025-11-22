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
public class RC6Engine implements BlockCipher {
    private static final int LGW = 5;
    private static final int P32 = -1209970333;
    private static final int Q32 = -1640531527;
    private static final int _noRounds = 20;
    private static final int bytesPerWord = 4;
    private static final int wordSize = 32;
    private int[] _S = null;
    private boolean forEncryption;

    private int bytesToWord(byte[] bArr, int r52) {
        int r02 = 0;
        for (int r12 = 3; r12 >= 0; r12--) {
            r02 = (r02 << 8) + (bArr[r12 + r52] & 255);
        }
        return r02;
    }

    private int decryptBlock(byte[] bArr, int r11, byte[] bArr2, int r13) {
        int r02 = bytesToWord(bArr, r11);
        int r12 = bytesToWord(bArr, r11 + 4);
        int r22 = bytesToWord(bArr, r11 + 8);
        int r10 = bytesToWord(bArr, r11 + 12);
        int[] r112 = this._S;
        int r23 = r22 - r112[43];
        int r03 = r02 - r112[42];
        int r113 = 20;
        while (r113 >= 1) {
            int r42 = rotateLeft(((r03 * 2) + 1) * r03, 5);
            int r32 = rotateLeft(((r23 * 2) + 1) * r23, 5);
            int r6 = r113 * 2;
            int r14 = rotateRight(r12 - this._S[r6 + 1], r42) ^ r32;
            r113--;
            int r82 = r03;
            r03 = rotateRight(r10 - this._S[r6], r32) ^ r42;
            r10 = r23;
            r23 = r14;
            r12 = r82;
        }
        int[] r114 = this._S;
        int r102 = r10 - r114[1];
        int r15 = r12 - r114[0];
        wordToBytes(r03, bArr2, r13);
        wordToBytes(r15, bArr2, r13 + 4);
        wordToBytes(r23, bArr2, r13 + 8);
        wordToBytes(r102, bArr2, r13 + 12);
        return 16;
    }

    private int encryptBlock(byte[] bArr, int r11, byte[] bArr2, int r13) {
        int r02 = bytesToWord(bArr, r11);
        int r12 = bytesToWord(bArr, r11 + 4);
        int r22 = bytesToWord(bArr, r11 + 8);
        int r10 = bytesToWord(bArr, r11 + 12);
        int[] r112 = this._S;
        int r14 = r12 + r112[0];
        int r102 = r10 + r112[1];
        int r113 = 1;
        while (r113 <= 20) {
            int r42 = rotateLeft(((r14 * 2) + 1) * r14, 5);
            int r52 = rotateLeft(((r102 * 2) + 1) * r102, 5);
            int r72 = r113 * 2;
            int r03 = rotateLeft(r02 ^ r42, r52) + this._S[r72];
            int r23 = rotateLeft(r22 ^ r52, r42) + this._S[r72 + 1];
            r113++;
            r22 = r102;
            r102 = r03;
            r02 = r14;
            r14 = r23;
        }
        int[] r114 = this._S;
        int r04 = r02 + r114[42];
        int r24 = r22 + r114[43];
        wordToBytes(r04, bArr2, r13);
        wordToBytes(r14, bArr2, r13 + 4);
        wordToBytes(r24, bArr2, r13 + 8);
        wordToBytes(r102, bArr2, r13 + 12);
        return 16;
    }

    private int rotateLeft(int r22, int r32) {
        return (r22 >>> (-r32)) | (r22 << r32);
    }

    private int rotateRight(int r22, int r32) {
        return (r22 << (-r32)) | (r22 >>> r32);
    }

    private void setKey(byte[] bArr) {
        int[] r32;
        int length = (bArr.length + 3) / 4;
        int length2 = ((bArr.length + 4) - 1) / 4;
        int[] r22 = new int[length2];
        for (int length3 = bArr.length - 1; length3 >= 0; length3--) {
            int r42 = length3 / 4;
            r22[r42] = (r22[r42] << 8) + (bArr[length3] & 255);
        }
        int[] r11 = new int[44];
        this._S = r11;
        r11[0] = P32;
        int r112 = 1;
        while (true) {
            r32 = this._S;
            if (r112 >= r32.length) {
                break;
            }
            r32[r112] = r32[r112 - 1] + Q32;
            r112++;
        }
        int length4 = length2 > r32.length ? length2 * 3 : r32.length * 3;
        int length5 = 0;
        int r52 = 0;
        int r6 = 0;
        int r72 = 0;
        for (int r43 = 0; r43 < length4; r43++) {
            int[] r82 = this._S;
            r52 = rotateLeft(r82[length5] + r52 + r6, 3);
            r82[length5] = r52;
            r6 = rotateLeft(r22[r72] + r52 + r6, r6 + r52);
            r22[r72] = r6;
            length5 = (length5 + 1) % this._S.length;
            r72 = (r72 + 1) % length2;
        }
    }

    private void wordToBytes(int r42, byte[] bArr, int r6) {
        for (int r02 = 0; r02 < 4; r02++) {
            bArr[r02 + r6] = (byte) r42;
            r42 >>>= 8;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "RC6";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException(b.g(cipherParameters, "invalid parameter passed to RC6 init - "));
        }
        this.forEncryption = z10;
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        setKey(key);
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), key.length * 8, cipherParameters, Utils.getPurpose(z10)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r52, byte[] bArr2, int r72) {
        int blockSize = getBlockSize();
        if (this._S == null) {
            throw new IllegalStateException("RC6 engine not initialised");
        }
        if (r52 + blockSize > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (blockSize + r72 <= bArr2.length) {
            return this.forEncryption ? encryptBlock(bArr, r52, bArr2, r72) : decryptBlock(bArr, r52, bArr2, r72);
        }
        throw new OutputLengthException("output buffer too short");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
