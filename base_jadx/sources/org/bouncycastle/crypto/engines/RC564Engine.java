package org.bouncycastle.crypto.engines;

import ab.b;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.RC5Parameters;

/* loaded from: classes2.dex */
public class RC564Engine implements BlockCipher {
    private static final long P64 = -5196783011329398165L;
    private static final long Q64 = -7046029254386353131L;
    private static final int bytesPerWord = 8;
    private static final int wordSize = 64;
    private boolean forEncryption;
    private int _noRounds = 12;
    private long[] _S = null;

    private long bytesToWord(byte[] bArr, int r72) {
        long j10 = 0;
        for (int r22 = 7; r22 >= 0; r22--) {
            j10 = (j10 << 8) + (bArr[r22 + r72] & 255);
        }
        return j10;
    }

    private int decryptBlock(byte[] bArr, int r92, byte[] bArr2, int r11) {
        long jBytesToWord = bytesToWord(bArr, r92);
        long jBytesToWord2 = bytesToWord(bArr, r92 + 8);
        for (int r22 = this._noRounds; r22 >= 1; r22--) {
            int r42 = r22 * 2;
            jBytesToWord2 = rotateRight(jBytesToWord2 - this._S[r42 + 1], jBytesToWord) ^ jBytesToWord;
            jBytesToWord = rotateRight(jBytesToWord - this._S[r42], jBytesToWord2) ^ jBytesToWord2;
        }
        wordToBytes(jBytesToWord - this._S[0], bArr2, r11);
        wordToBytes(jBytesToWord2 - this._S[1], bArr2, r11 + 8);
        return 16;
    }

    private int encryptBlock(byte[] bArr, int r10, byte[] bArr2, int r12) {
        long jBytesToWord = bytesToWord(bArr, r10) + this._S[0];
        long jBytesToWord2 = bytesToWord(bArr, r10 + 8) + this._S[1];
        for (int r22 = 1; r22 <= this._noRounds; r22++) {
            int r52 = r22 * 2;
            jBytesToWord = rotateLeft(jBytesToWord ^ jBytesToWord2, jBytesToWord2) + this._S[r52];
            jBytesToWord2 = rotateLeft(jBytesToWord2 ^ jBytesToWord, jBytesToWord) + this._S[r52 + 1];
        }
        wordToBytes(jBytesToWord, bArr2, r12);
        wordToBytes(jBytesToWord2, bArr2, r12 + 8);
        return 16;
    }

    private long rotateLeft(long j10, long j11) {
        long j12 = j11 & 63;
        return (j10 >>> ((int) (64 - j12))) | (j10 << ((int) j12));
    }

    private long rotateRight(long j10, long j11) {
        long j12 = j11 & 63;
        return (j10 << ((int) (64 - j12))) | (j10 >>> ((int) j12));
    }

    private void setKey(byte[] bArr) {
        long[] jArr;
        int length = (bArr.length + 7) / 8;
        long[] jArr2 = new long[length];
        for (int r32 = 0; r32 != bArr.length; r32++) {
            int r42 = r32 / 8;
            jArr2[r42] = jArr2[r42] + ((bArr[r32] & 255) << ((r32 % 8) * 8));
        }
        long[] jArr3 = new long[(this._noRounds + 1) * 2];
        this._S = jArr3;
        jArr3[0] = -5196783011329398165L;
        int r14 = 1;
        while (true) {
            jArr = this._S;
            if (r14 >= jArr.length) {
                break;
            }
            jArr[r14] = jArr[r14 - 1] + Q64;
            r14++;
        }
        int length2 = length > jArr.length ? length * 3 : jArr.length * 3;
        long jRotateLeft = 0;
        long jRotateLeft2 = 0;
        int length3 = 0;
        int r52 = 0;
        for (int r22 = 0; r22 < length2; r22++) {
            long[] jArr4 = this._S;
            jRotateLeft = rotateLeft(jArr4[length3] + jRotateLeft + jRotateLeft2, 3L);
            jArr4[length3] = jRotateLeft;
            jRotateLeft2 = rotateLeft(jArr2[r52] + jRotateLeft + jRotateLeft2, jRotateLeft2 + jRotateLeft);
            jArr2[r52] = jRotateLeft2;
            length3 = (length3 + 1) % this._S.length;
            r52 = (r52 + 1) % length;
        }
    }

    private void wordToBytes(long j10, byte[] bArr, int r82) {
        for (int r02 = 0; r02 < 8; r02++) {
            bArr[r02 + r82] = (byte) j10;
            j10 >>>= 8;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "RC5-64";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof RC5Parameters)) {
            throw new IllegalArgumentException(b.g(cipherParameters, "invalid parameter passed to RC564 init - "));
        }
        RC5Parameters rC5Parameters = (RC5Parameters) cipherParameters;
        this.forEncryption = z10;
        this._noRounds = rC5Parameters.getRounds();
        byte[] key = rC5Parameters.getKey();
        setKey(key);
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
