package org.bouncycastle.crypto.modes;

import androidx.browser.browseractions.a;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamBlockCipher;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SICBlockCipher extends StreamBlockCipher implements CTRModeCipher {
    private byte[] IV;
    private final int blockSize;
    private int byteCount;
    private final BlockCipher cipher;
    private byte[] counter;
    private byte[] counterOut;

    public SICBlockCipher(BlockCipher blockCipher) {
        super(blockCipher);
        this.cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.IV = new byte[blockSize];
        this.counter = new byte[blockSize];
        this.counterOut = new byte[blockSize];
        this.byteCount = 0;
    }

    private void adjustCounter(long j10) {
        int r12 = 5;
        if (j10 >= 0) {
            long j11 = (this.byteCount + j10) / this.blockSize;
            long j12 = j11;
            if (j11 > 255) {
                while (r12 >= 1) {
                    long j13 = 1 << (r12 * 8);
                    while (j12 >= j13) {
                        incrementCounterAt(r12);
                        j12 -= j13;
                    }
                    r12--;
                }
            }
            incrementCounter((int) j12);
            this.byteCount = (int) ((j10 + this.byteCount) - (this.blockSize * j11));
            return;
        }
        long j14 = ((-j10) - this.byteCount) / this.blockSize;
        long j15 = j14;
        if (j14 > 255) {
            while (r12 >= 1) {
                long j16 = 1 << (r12 * 8);
                while (j15 > j16) {
                    decrementCounterAt(r12);
                    j15 -= j16;
                }
                r12--;
            }
        }
        for (long j17 = 0; j17 != j15; j17++) {
            decrementCounterAt(0);
        }
        int r15 = (int) ((this.blockSize * j14) + this.byteCount + j10);
        if (r15 >= 0) {
            this.byteCount = 0;
        } else {
            decrementCounterAt(0);
            this.byteCount = this.blockSize + r15;
        }
    }

    private void checkCounter() {
        byte[] bArr = this.IV;
        if (bArr.length < this.blockSize) {
            for (int length = bArr.length - 1; length >= 0; length--) {
                if (this.counter[length] != this.IV[length]) {
                    throw new IllegalStateException("Counter in CTR/SIC mode out of range.");
                }
            }
        }
    }

    private void checkLastIncrement() {
        byte[] bArr = this.IV;
        if (bArr.length < this.blockSize && this.counter[bArr.length - 1] != bArr[bArr.length - 1]) {
            throw new IllegalStateException("Counter in CTR/SIC mode out of range.");
        }
    }

    private void decrementCounterAt(int r42) {
        byte b10;
        int length = this.counter.length - r42;
        do {
            length--;
            if (length < 0) {
                return;
            }
            b10 = (byte) (r1[length] - 1);
            this.counter[length] = b10;
        } while (b10 == -1);
    }

    private void incrementCounter() {
        byte b10;
        int length = this.counter.length;
        do {
            length--;
            if (length < 0) {
                return;
            }
            byte[] bArr = this.counter;
            b10 = (byte) (bArr[length] + 1);
            bArr[length] = b10;
        } while (b10 == 0);
    }

    private void incrementCounter(int r6) {
        byte[] bArr = this.counter;
        byte b10 = bArr[bArr.length - 1];
        int length = bArr.length - 1;
        bArr[length] = (byte) (bArr[length] + r6);
        if (b10 == 0 || bArr[bArr.length - 1] >= b10) {
            return;
        }
        incrementCounterAt(1);
    }

    private void incrementCounterAt(int r32) {
        byte b10;
        int length = this.counter.length - r32;
        do {
            length--;
            if (length < 0) {
                return;
            }
            byte[] bArr = this.counter;
            b10 = (byte) (bArr[length] + 1);
            bArr[length] = b10;
        } while (b10 == 0);
    }

    public static CTRModeCipher newInstance(BlockCipher blockCipher) {
        return new SICBlockCipher(blockCipher);
    }

    @Override // org.bouncycastle.crypto.StreamBlockCipher
    public byte calculateByte(byte b10) throws IllegalStateException, DataLengthException {
        int r02 = this.byteCount;
        if (r02 == 0) {
            checkLastIncrement();
            this.cipher.processBlock(this.counter, 0, this.counterOut, 0);
            byte[] bArr = this.counterOut;
            int r12 = this.byteCount;
            this.byteCount = r12 + 1;
            return (byte) (b10 ^ bArr[r12]);
        }
        byte[] bArr2 = this.counterOut;
        int r32 = r02 + 1;
        this.byteCount = r32;
        byte b11 = (byte) (b10 ^ bArr2[r02]);
        if (r32 == this.counter.length) {
            this.byteCount = 0;
            incrementCounter();
        }
        return b11;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/SIC";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.cipher.getBlockSize();
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long getPosition() {
        byte[] bArr = this.counter;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        int r02 = length - 1;
        while (r02 >= 1) {
            byte[] bArr3 = this.IV;
            int r52 = r02 < bArr3.length ? (bArr2[r02] & 255) - (bArr3[r02] & 255) : bArr2[r02] & 255;
            if (r52 < 0) {
                int r42 = r02 - 1;
                bArr2[r42] = (byte) (bArr2[r42] - 1);
                r52 += 256;
            }
            bArr2[r02] = (byte) r52;
            r02--;
        }
        return (Pack.bigEndianToLong(bArr2, length - 8) * this.blockSize) + this.byteCount;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("CTR/SIC mode requires ParametersWithIV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] bArrClone = Arrays.clone(parametersWithIV.getIV());
        this.IV = bArrClone;
        int r02 = this.blockSize;
        if (r02 < bArrClone.length) {
            throw new IllegalArgumentException(a.b(new StringBuilder("CTR/SIC mode requires IV no greater than: "), this.blockSize, " bytes."));
        }
        int r32 = 8 > r02 / 2 ? r02 / 2 : 8;
        if (r02 - bArrClone.length <= r32) {
            if (parametersWithIV.getParameters() != null) {
                this.cipher.init(true, parametersWithIV.getParameters());
            }
            reset();
        } else {
            throw new IllegalArgumentException("CTR/SIC mode requires IV of at least: " + (this.blockSize - r32) + " bytes.");
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r92, byte[] bArr2, int r11) throws IllegalStateException, DataLengthException {
        if (this.byteCount != 0) {
            processBytes(bArr, r92, this.blockSize, bArr2, r11);
        } else {
            int r02 = this.blockSize;
            if (r92 + r02 > bArr.length) {
                throw new DataLengthException("input buffer too small");
            }
            if (r02 + r11 > bArr2.length) {
                throw new OutputLengthException("output buffer too short");
            }
            this.cipher.processBlock(this.counter, 0, this.counterOut, 0);
            for (int r32 = 0; r32 < this.blockSize; r32++) {
                bArr2[r11 + r32] = (byte) (bArr[r92 + r32] ^ this.counterOut[r32]);
            }
            incrementCounter();
        }
        return this.blockSize;
    }

    @Override // org.bouncycastle.crypto.StreamBlockCipher, org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int r82, int r92, byte[] bArr2, int r11) throws IllegalStateException, DataLengthException {
        byte b10;
        if (r82 + r92 > bArr.length) {
            throw new DataLengthException("input buffer too small");
        }
        if (r11 + r92 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        for (int r12 = 0; r12 < r92; r12++) {
            int r22 = this.byteCount;
            if (r22 == 0) {
                checkLastIncrement();
                this.cipher.processBlock(this.counter, 0, this.counterOut, 0);
                byte b11 = bArr[r82 + r12];
                byte[] bArr3 = this.counterOut;
                int r42 = this.byteCount;
                this.byteCount = r42 + 1;
                b10 = (byte) (b11 ^ bArr3[r42]);
            } else {
                byte b12 = bArr[r82 + r12];
                byte[] bArr4 = this.counterOut;
                int r52 = r22 + 1;
                this.byteCount = r52;
                b10 = (byte) (bArr4[r22] ^ b12);
                if (r52 == this.counter.length) {
                    this.byteCount = 0;
                    incrementCounter();
                }
            }
            bArr2[r11 + r12] = b10;
        }
        return r92;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        Arrays.fill(this.counter, (byte) 0);
        byte[] bArr = this.IV;
        System.arraycopy(bArr, 0, this.counter, 0, bArr.length);
        this.cipher.reset();
        this.byteCount = 0;
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long seekTo(long j10) {
        reset();
        return skip(j10);
    }

    @Override // org.bouncycastle.crypto.SkippingCipher
    public long skip(long j10) throws IllegalStateException, DataLengthException {
        adjustCounter(j10);
        checkCounter();
        this.cipher.processBlock(this.counter, 0, this.counterOut, 0);
        return j10;
    }
}
