package org.bouncycastle.crypto.modes;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.StreamBlockCipher;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes2.dex */
public class GOFBBlockCipher extends StreamBlockCipher {
    static final int C1 = 16843012;
    static final int C2 = 16843009;
    private byte[] IV;
    int N3;
    int N4;
    private final int blockSize;
    private int byteCount;
    private final BlockCipher cipher;
    boolean firstStep;
    private byte[] ofbOutV;
    private byte[] ofbV;

    public GOFBBlockCipher(BlockCipher blockCipher) {
        super(blockCipher);
        this.firstStep = true;
        this.cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        if (blockSize != 8) {
            throw new IllegalArgumentException("GCTR only for 64 bit block ciphers");
        }
        this.IV = new byte[blockCipher.getBlockSize()];
        this.ofbV = new byte[blockCipher.getBlockSize()];
        this.ofbOutV = new byte[blockCipher.getBlockSize()];
    }

    private int bytesToint(byte[] bArr, int r52) {
        return ((bArr[r52 + 3] << 24) & ViewCompat.MEASURED_STATE_MASK) + ((bArr[r52 + 2] << 16) & 16711680) + ((bArr[r52 + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + (bArr[r52] & 255);
    }

    private void intTobytes(int r32, byte[] bArr, int r52) {
        bArr[r52 + 3] = (byte) (r32 >>> 24);
        bArr[r52 + 2] = (byte) (r32 >>> 16);
        bArr[r52 + 1] = (byte) (r32 >>> 8);
        bArr[r52] = (byte) r32;
    }

    @Override // org.bouncycastle.crypto.StreamBlockCipher
    public byte calculateByte(byte b10) throws IllegalStateException, DataLengthException {
        if (this.byteCount == 0) {
            if (this.firstStep) {
                this.firstStep = false;
                this.cipher.processBlock(this.ofbV, 0, this.ofbOutV, 0);
                this.N3 = bytesToint(this.ofbOutV, 0);
                this.N4 = bytesToint(this.ofbOutV, 4);
            }
            int r02 = this.N3 + 16843009;
            this.N3 = r02;
            int r32 = this.N4 + 16843012;
            this.N4 = r32;
            if (r32 < 16843012 && r32 > 0) {
                this.N4 = r32 + 1;
            }
            intTobytes(r02, this.ofbV, 0);
            intTobytes(this.N4, this.ofbV, 4);
            this.cipher.processBlock(this.ofbV, 0, this.ofbOutV, 0);
        }
        byte[] bArr = this.ofbOutV;
        int r22 = this.byteCount;
        int r33 = r22 + 1;
        this.byteCount = r33;
        byte b11 = (byte) (b10 ^ bArr[r22]);
        int r03 = this.blockSize;
        if (r33 == r03) {
            this.byteCount = 0;
            byte[] bArr2 = this.ofbV;
            System.arraycopy(bArr2, r03, bArr2, 0, bArr2.length - r03);
            byte[] bArr3 = this.ofbOutV;
            byte[] bArr4 = this.ofbV;
            int length = bArr4.length;
            int r42 = this.blockSize;
            System.arraycopy(bArr3, 0, bArr4, length - r42, r42);
        }
        return b11;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/GCTR";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.blockSize;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        this.firstStep = true;
        this.N3 = 0;
        this.N4 = 0;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] bArr = parametersWithIV.getIV();
            int length = bArr.length;
            byte[] bArr2 = this.IV;
            if (length < bArr2.length) {
                System.arraycopy(bArr, 0, bArr2, bArr2.length - bArr.length, bArr.length);
                int r22 = 0;
                while (true) {
                    byte[] bArr3 = this.IV;
                    if (r22 >= bArr3.length - bArr.length) {
                        break;
                    }
                    bArr3[r22] = 0;
                    r22++;
                }
            } else {
                System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
            }
            reset();
            if (parametersWithIV.getParameters() == null) {
                return;
            }
            blockCipher = this.cipher;
            cipherParameters = parametersWithIV.getParameters();
        } else {
            reset();
            if (cipherParameters == null) {
                return;
            } else {
                blockCipher = this.cipher;
            }
        }
        blockCipher.init(true, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r82, byte[] bArr2, int r10) throws IllegalStateException, DataLengthException {
        processBytes(bArr, r82, this.blockSize, bArr2, r10);
        return this.blockSize;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        this.firstStep = true;
        this.N3 = 0;
        this.N4 = 0;
        byte[] bArr = this.IV;
        System.arraycopy(bArr, 0, this.ofbV, 0, bArr.length);
        this.byteCount = 0;
        this.cipher.reset();
    }
}
