package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DefaultBufferedBlockCipher;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class KXTSBlockCipher extends DefaultBufferedBlockCipher {
    private static final long RED_POLY_128 = 135;
    private static final long RED_POLY_256 = 1061;
    private static final long RED_POLY_512 = 293;
    private final int blockSize;
    private int counter;
    private final long reductionPolynomial;
    private final long[] tw_current;
    private final long[] tw_init;

    public KXTSBlockCipher(BlockCipher blockCipher) {
        ((DefaultBufferedBlockCipher) this).cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.reductionPolynomial = getReductionPolynomial(blockSize);
        this.tw_init = new long[blockSize >>> 3];
        this.tw_current = new long[blockSize >>> 3];
        this.counter = -1;
    }

    private static void GF_double(long j10, long[] jArr) {
        long j11 = 0;
        int r32 = 0;
        while (r32 < jArr.length) {
            long j12 = jArr[r32];
            jArr[r32] = j11 ^ (j12 << 1);
            r32++;
            j11 = j12 >>> 63;
        }
        jArr[0] = (j10 & (-j11)) ^ jArr[0];
    }

    public static long getReductionPolynomial(int r22) {
        if (r22 == 16) {
            return RED_POLY_128;
        }
        if (r22 == 32) {
            return RED_POLY_256;
        }
        if (r22 == 64) {
            return RED_POLY_512;
        }
        throw new IllegalArgumentException("Only 128, 256, and 512 -bit block sizes supported");
    }

    private void processBlocks(byte[] bArr, int r82, byte[] bArr2, int r10) throws IllegalStateException, DataLengthException {
        int r02 = this.counter;
        if (r02 == -1) {
            throw new IllegalStateException("Attempt to process too many blocks");
        }
        this.counter = r02 + 1;
        GF_double(this.reductionPolynomial, this.tw_current);
        byte[] bArr3 = new byte[this.blockSize];
        Pack.longToLittleEndian(this.tw_current, bArr3, 0);
        int r12 = this.blockSize;
        byte[] bArr4 = new byte[r12];
        System.arraycopy(bArr3, 0, bArr4, 0, r12);
        for (int r13 = 0; r13 < this.blockSize; r13++) {
            bArr4[r13] = (byte) (bArr4[r13] ^ bArr[r82 + r13]);
        }
        ((DefaultBufferedBlockCipher) this).cipher.processBlock(bArr4, 0, bArr4, 0);
        for (int r22 = 0; r22 < this.blockSize; r22++) {
            bArr2[r10 + r22] = (byte) (bArr4[r22] ^ bArr3[r22]);
        }
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int doFinal(byte[] bArr, int r22) {
        reset();
        return 0;
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int getOutputSize(int r12) {
        return r12;
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int getUpdateOutputSize(int r12) {
        return r12;
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("Invalid parameters passed");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        CipherParameters parameters = parametersWithIV.getParameters();
        byte[] bArr = parametersWithIV.getIV();
        int length = bArr.length;
        int r22 = this.blockSize;
        if (length != r22) {
            throw new IllegalArgumentException("Currently only support IVs of exactly one block");
        }
        byte[] bArr2 = new byte[r22];
        System.arraycopy(bArr, 0, bArr2, 0, r22);
        ((DefaultBufferedBlockCipher) this).cipher.init(true, parameters);
        ((DefaultBufferedBlockCipher) this).cipher.processBlock(bArr2, 0, bArr2, 0);
        ((DefaultBufferedBlockCipher) this).cipher.init(z10, parameters);
        Pack.littleEndianToLong(bArr2, 0, this.tw_init);
        long[] jArr = this.tw_init;
        System.arraycopy(jArr, 0, this.tw_current, 0, jArr.length);
        this.counter = 0;
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int processByte(byte b10, byte[] bArr, int r32) {
        throw new IllegalStateException("unsupported operation");
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public int processBytes(byte[] bArr, int r52, int r6, byte[] bArr2, int r82) throws IllegalStateException, DataLengthException {
        if (bArr.length - r52 < r6) {
            throw new DataLengthException("Input buffer too short");
        }
        if (bArr2.length - r52 < r6) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (r6 % this.blockSize != 0) {
            throw new IllegalArgumentException("Partial blocks not supported");
        }
        int r02 = 0;
        while (r02 < r6) {
            processBlocks(bArr, r52 + r02, bArr2, r82 + r02);
            r02 += this.blockSize;
        }
        return r6;
    }

    @Override // org.bouncycastle.crypto.DefaultBufferedBlockCipher, org.bouncycastle.crypto.BufferedBlockCipher
    public void reset() {
        ((DefaultBufferedBlockCipher) this).cipher.reset();
        long[] jArr = this.tw_init;
        System.arraycopy(jArr, 0, this.tw_current, 0, jArr.length);
        this.counter = 0;
    }
}
