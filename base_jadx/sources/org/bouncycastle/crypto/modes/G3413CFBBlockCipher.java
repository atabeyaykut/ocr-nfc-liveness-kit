package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.StreamBlockCipher;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class G3413CFBBlockCipher extends StreamBlockCipher {
    private byte[] R;
    private byte[] R_init;
    private int blockSize;
    private int byteCount;
    private BlockCipher cipher;
    private boolean forEncryption;
    private byte[] gamma;
    private byte[] inBuf;
    private boolean initialized;

    /* renamed from: m, reason: collision with root package name */
    private int f11586m;

    /* renamed from: s, reason: collision with root package name */
    private final int f11587s;

    public G3413CFBBlockCipher(BlockCipher blockCipher) {
        this(blockCipher, blockCipher.getBlockSize() * 8);
    }

    public G3413CFBBlockCipher(BlockCipher blockCipher, int r42) {
        super(blockCipher);
        this.initialized = false;
        if (r42 < 0 || r42 > blockCipher.getBlockSize() * 8) {
            throw new IllegalArgumentException("Parameter bitBlockSize must be in range 0 < bitBlockSize <= " + (blockCipher.getBlockSize() * 8));
        }
        this.blockSize = blockCipher.getBlockSize();
        this.cipher = blockCipher;
        this.f11587s = r42 / 8;
        this.inBuf = new byte[getBlockSize()];
    }

    private void initArrays() {
        int r02 = this.f11586m;
        this.R = new byte[r02];
        this.R_init = new byte[r02];
    }

    private void setupDefaultParams() {
        this.f11586m = this.blockSize * 2;
    }

    @Override // org.bouncycastle.crypto.StreamBlockCipher
    public byte calculateByte(byte b10) {
        if (this.byteCount == 0) {
            this.gamma = createGamma();
        }
        byte[] bArr = this.gamma;
        int r12 = this.byteCount;
        byte b11 = (byte) (bArr[r12] ^ b10);
        byte[] bArr2 = this.inBuf;
        int r32 = r12 + 1;
        this.byteCount = r32;
        if (this.forEncryption) {
            b10 = b11;
        }
        bArr2[r12] = b10;
        if (r32 == getBlockSize()) {
            this.byteCount = 0;
            generateR(this.inBuf);
        }
        return b11;
    }

    public byte[] createGamma() throws IllegalStateException, DataLengthException {
        byte[] bArrMSB = GOST3413CipherUtil.MSB(this.R, this.blockSize);
        byte[] bArr = new byte[bArrMSB.length];
        this.cipher.processBlock(bArrMSB, 0, bArr, 0);
        return GOST3413CipherUtil.MSB(bArr, this.f11587s);
    }

    public void generateR(byte[] bArr) {
        byte[] bArrLSB = GOST3413CipherUtil.LSB(this.R, this.f11586m - this.f11587s);
        System.arraycopy(bArrLSB, 0, this.R, 0, bArrLSB.length);
        System.arraycopy(bArr, 0, this.R, bArrLSB.length, this.f11586m - bArrLSB.length);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/CFB" + (this.blockSize * 8);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.f11587s;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        BlockCipher blockCipher;
        this.forEncryption = z10;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] bArr = parametersWithIV.getIV();
            if (bArr.length < this.blockSize) {
                throw new IllegalArgumentException("Parameter m must blockSize <= m");
            }
            this.f11586m = bArr.length;
            initArrays();
            byte[] bArrClone = Arrays.clone(bArr);
            this.R_init = bArrClone;
            System.arraycopy(bArrClone, 0, this.R, 0, bArrClone.length);
            if (parametersWithIV.getParameters() != null) {
                blockCipher = this.cipher;
                cipherParameters = parametersWithIV.getParameters();
                blockCipher.init(true, cipherParameters);
            }
        } else {
            setupDefaultParams();
            initArrays();
            byte[] bArr2 = this.R_init;
            System.arraycopy(bArr2, 0, this.R, 0, bArr2.length);
            if (cipherParameters != null) {
                blockCipher = this.cipher;
                blockCipher.init(true, cipherParameters);
            }
        }
        this.initialized = true;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r82, byte[] bArr2, int r10) throws IllegalStateException, DataLengthException {
        processBytes(bArr, r82, getBlockSize(), bArr2, r10);
        return getBlockSize();
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        this.byteCount = 0;
        Arrays.clear(this.inBuf);
        Arrays.clear(this.gamma);
        if (this.initialized) {
            byte[] bArr = this.R_init;
            System.arraycopy(bArr, 0, this.R, 0, bArr.length);
            this.cipher.reset();
        }
    }
}
