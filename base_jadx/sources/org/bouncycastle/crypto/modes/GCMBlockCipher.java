package org.bouncycastle.crypto.modes;

import android.support.v4.media.a;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.modes.gcm.BasicGCMExponentiator;
import org.bouncycastle.crypto.modes.gcm.GCMExponentiator;
import org.bouncycastle.crypto.modes.gcm.GCMMultiplier;
import org.bouncycastle.crypto.modes.gcm.GCMUtil;
import org.bouncycastle.crypto.modes.gcm.Tables4kGCMMultiplier;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class GCMBlockCipher implements GCMModeCipher {
    private static final int BLOCK_SIZE = 16;
    private byte[] H;
    private byte[] J0;
    private byte[] S;
    private byte[] S_at;
    private byte[] S_atPre;
    private byte[] atBlock;
    private int atBlockPos;
    private long atLength;
    private long atLengthPre;
    private int blocksRemaining;
    private byte[] bufBlock;
    private int bufOff;
    private BlockCipher cipher;
    private byte[] counter;
    private GCMExponentiator exp;
    private boolean forEncryption;
    private byte[] initialAssociatedText;
    private boolean initialised;
    private byte[] lastKey;
    private byte[] macBlock;
    private int macSize;
    private GCMMultiplier multiplier;
    private byte[] nonce;
    private long totalLength;

    public GCMBlockCipher(BlockCipher blockCipher) {
        this(blockCipher, null);
    }

    public GCMBlockCipher(BlockCipher blockCipher, GCMMultiplier gCMMultiplier) {
        if (blockCipher.getBlockSize() != 16) {
            throw new IllegalArgumentException("cipher required with a block size of 16.");
        }
        gCMMultiplier = gCMMultiplier == null ? new Tables4kGCMMultiplier() : gCMMultiplier;
        this.cipher = blockCipher;
        this.multiplier = gCMMultiplier;
    }

    private void checkStatus() {
        if (this.initialised) {
            return;
        }
        if (!this.forEncryption) {
            throw new IllegalStateException("GCM cipher needs to be initialised");
        }
        throw new IllegalStateException("GCM cipher cannot be reused for encryption");
    }

    private void decryptBlock(byte[] bArr, int r10, byte[] bArr2, int r12) throws IllegalStateException, DataLengthException {
        if (bArr2.length - r12 < 16) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (this.totalLength == 0) {
            initCipher();
        }
        byte[] bArr3 = new byte[16];
        getNextCTRBlock(bArr3);
        gHASHBlock(this.S, bArr, r10);
        GCMUtil.xor(bArr3, 0, bArr, r10, bArr2, r12);
        this.totalLength += 16;
    }

    private void encryptBlock(byte[] bArr, int r82, byte[] bArr2, int r10) throws IllegalStateException, DataLengthException {
        if (bArr2.length - r10 < 16) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (this.totalLength == 0) {
            initCipher();
        }
        byte[] bArr3 = new byte[16];
        getNextCTRBlock(bArr3);
        GCMUtil.xor(bArr3, bArr, r82);
        gHASHBlock(this.S, bArr3);
        System.arraycopy(bArr3, 0, bArr2, r10, 16);
        this.totalLength += 16;
    }

    private void gHASH(byte[] bArr, byte[] bArr2, int r6) {
        for (int r02 = 0; r02 < r6; r02 += 16) {
            gHASHPartial(bArr, bArr2, r02, Math.min(r6 - r02, 16));
        }
    }

    private void gHASHBlock(byte[] bArr, byte[] bArr2) {
        GCMUtil.xor(bArr, bArr2);
        this.multiplier.multiplyH(bArr);
    }

    private void gHASHBlock(byte[] bArr, byte[] bArr2, int r32) {
        GCMUtil.xor(bArr, bArr2, r32);
        this.multiplier.multiplyH(bArr);
    }

    private void gHASHPartial(byte[] bArr, byte[] bArr2, int r32, int r42) {
        GCMUtil.xor(bArr, bArr2, r32, r42);
        this.multiplier.multiplyH(bArr);
    }

    private void getNextCTRBlock(byte[] bArr) throws IllegalStateException, DataLengthException {
        int r02 = this.blocksRemaining;
        if (r02 == 0) {
            throw new IllegalStateException("Attempt to process too many blocks");
        }
        this.blocksRemaining = r02 - 1;
        byte[] bArr2 = this.counter;
        int r22 = (bArr2[15] & 255) + 1;
        bArr2[15] = (byte) r22;
        int r12 = (r22 >>> 8) + (bArr2[14] & 255);
        bArr2[14] = (byte) r12;
        int r13 = (r12 >>> 8) + (bArr2[13] & 255);
        bArr2[13] = (byte) r13;
        bArr2[12] = (byte) ((r13 >>> 8) + (bArr2[12] & 255));
        this.cipher.processBlock(bArr2, 0, bArr, 0);
    }

    private void initCipher() {
        if (this.atLength > 0) {
            System.arraycopy(this.S_at, 0, this.S_atPre, 0, 16);
            this.atLengthPre = this.atLength;
        }
        int r02 = this.atBlockPos;
        if (r02 > 0) {
            gHASHPartial(this.S_atPre, this.atBlock, 0, r02);
            this.atLengthPre += this.atBlockPos;
        }
        if (this.atLengthPre > 0) {
            System.arraycopy(this.S_atPre, 0, this.S, 0, 16);
        }
    }

    public static GCMModeCipher newInstance(BlockCipher blockCipher) {
        return new GCMBlockCipher(blockCipher);
    }

    public static GCMModeCipher newInstance(BlockCipher blockCipher, GCMMultiplier gCMMultiplier) {
        return new GCMBlockCipher(blockCipher, gCMMultiplier);
    }

    private void processPartial(byte[] bArr, int r52, int r6, byte[] bArr2, int r82) throws IllegalStateException, DataLengthException {
        byte[] bArr3 = new byte[16];
        getNextCTRBlock(bArr3);
        if (this.forEncryption) {
            GCMUtil.xor(bArr, r52, bArr3, 0, r6);
            gHASHPartial(this.S, bArr, r52, r6);
        } else {
            gHASHPartial(this.S, bArr, r52, r6);
            GCMUtil.xor(bArr, r52, bArr3, 0, r6);
        }
        System.arraycopy(bArr, r52, bArr2, r82, r6);
        this.totalLength += r6;
    }

    private void reset(boolean z10) {
        this.cipher.reset();
        this.S = new byte[16];
        this.S_at = new byte[16];
        this.S_atPre = new byte[16];
        this.atBlock = new byte[16];
        this.atBlockPos = 0;
        this.atLength = 0L;
        this.atLengthPre = 0L;
        this.counter = Arrays.clone(this.J0);
        this.blocksRemaining = -2;
        this.bufOff = 0;
        this.totalLength = 0L;
        byte[] bArr = this.bufBlock;
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
        }
        if (z10) {
            this.macBlock = null;
        }
        if (this.forEncryption) {
            this.initialised = false;
            return;
        }
        byte[] bArr2 = this.initialAssociatedText;
        if (bArr2 != null) {
            processAADBytes(bArr2, 0, bArr2.length);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int r15) throws InvalidCipherTextException, IllegalStateException, DataLengthException {
        checkStatus();
        if (this.totalLength == 0) {
            initCipher();
        }
        int r02 = this.bufOff;
        if (!this.forEncryption) {
            int r12 = this.macSize;
            if (r02 < r12) {
                throw new InvalidCipherTextException("data too short");
            }
            r02 -= r12;
            if (bArr.length - r15 < r02) {
                throw new OutputLengthException("Output buffer too short");
            }
        } else if (bArr.length - r15 < this.macSize + r02) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (r02 > 0) {
            processPartial(this.bufBlock, 0, r02, bArr, r15);
        }
        long j10 = this.atLength;
        int r13 = this.atBlockPos;
        long j11 = j10 + r13;
        this.atLength = j11;
        if (j11 > this.atLengthPre) {
            if (r13 > 0) {
                gHASHPartial(this.S_at, this.atBlock, 0, r13);
            }
            if (this.atLengthPre > 0) {
                GCMUtil.xor(this.S_at, this.S_atPre);
            }
            long j12 = ((this.totalLength * 8) + 127) >>> 7;
            byte[] bArr2 = new byte[16];
            if (this.exp == null) {
                BasicGCMExponentiator basicGCMExponentiator = new BasicGCMExponentiator();
                this.exp = basicGCMExponentiator;
                basicGCMExponentiator.init(this.H);
            }
            this.exp.exponentiateX(j12, bArr2);
            GCMUtil.multiply(this.S_at, bArr2);
            GCMUtil.xor(this.S, this.S_at);
        }
        byte[] bArr3 = new byte[16];
        Pack.longToBigEndian(this.atLength * 8, bArr3, 0);
        Pack.longToBigEndian(this.totalLength * 8, bArr3, 8);
        gHASHBlock(this.S, bArr3);
        byte[] bArr4 = new byte[16];
        this.cipher.processBlock(this.J0, 0, bArr4, 0);
        GCMUtil.xor(bArr4, this.S);
        int r22 = this.macSize;
        byte[] bArr5 = new byte[r22];
        this.macBlock = bArr5;
        System.arraycopy(bArr4, 0, bArr5, 0, r22);
        if (this.forEncryption) {
            System.arraycopy(this.macBlock, 0, bArr, r15 + this.bufOff, this.macSize);
            r02 += this.macSize;
        } else {
            int r14 = this.macSize;
            byte[] bArr6 = new byte[r14];
            System.arraycopy(this.bufBlock, r02, bArr6, 0, r14);
            if (!Arrays.constantTimeAreEqual(this.macBlock, bArr6)) {
                throw new InvalidCipherTextException("mac check in GCM failed");
            }
        }
        reset(false);
        return r02;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/GCM";
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        byte[] bArr = this.macBlock;
        return bArr == null ? new byte[this.macSize] : Arrays.clone(bArr);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int r22) {
        int r23 = r22 + this.bufOff;
        if (this.forEncryption) {
            return r23 + this.macSize;
        }
        int r02 = this.macSize;
        if (r23 < r02) {
            return 0;
        }
        return r23 - r02;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int r22) {
        int r23 = r22 + this.bufOff;
        if (!this.forEncryption) {
            int r02 = this.macSize;
            if (r23 < r02) {
                return 0;
            }
            r23 -= r02;
        }
        return r23 - (r23 % 16);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        byte[] nonce;
        KeyParameter key;
        byte[] bArr;
        this.forEncryption = z10;
        this.macBlock = null;
        this.initialised = true;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            nonce = aEADParameters.getNonce();
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            int macSize = aEADParameters.getMacSize();
            if (macSize < 32 || macSize > 128 || macSize % 8 != 0) {
                throw new IllegalArgumentException(a.d("Invalid value for MAC size: ", macSize));
            }
            this.macSize = macSize / 8;
            key = aEADParameters.getKey();
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                throw new IllegalArgumentException("invalid parameters passed to GCM");
            }
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            nonce = parametersWithIV.getIV();
            this.initialAssociatedText = null;
            this.macSize = 16;
            key = (KeyParameter) parametersWithIV.getParameters();
        }
        this.bufBlock = new byte[z10 ? 16 : this.macSize + 16];
        if (nonce == null || nonce.length < 1) {
            throw new IllegalArgumentException("IV must be at least 1 byte");
        }
        if (z10 && (bArr = this.nonce) != null && Arrays.areEqual(bArr, nonce)) {
            if (key == null) {
                throw new IllegalArgumentException("cannot reuse nonce for GCM encryption");
            }
            byte[] bArr2 = this.lastKey;
            if (bArr2 != null && Arrays.areEqual(bArr2, key.getKey())) {
                throw new IllegalArgumentException("cannot reuse nonce for GCM encryption");
            }
        }
        this.nonce = nonce;
        if (key != null) {
            this.lastKey = key.getKey();
        }
        if (key != null) {
            this.cipher.init(true, key);
            byte[] bArr3 = new byte[16];
            this.H = bArr3;
            this.cipher.processBlock(bArr3, 0, bArr3, 0);
            this.multiplier.init(this.H);
            this.exp = null;
        } else if (this.H == null) {
            throw new IllegalArgumentException("Key must be specified in initial init");
        }
        byte[] bArr4 = new byte[16];
        this.J0 = bArr4;
        byte[] bArr5 = this.nonce;
        if (bArr5.length == 12) {
            System.arraycopy(bArr5, 0, bArr4, 0, bArr5.length);
            this.J0[15] = 1;
        } else {
            gHASH(bArr4, bArr5, bArr5.length);
            byte[] bArr6 = new byte[16];
            Pack.longToBigEndian(this.nonce.length * 8, bArr6, 8);
            gHASHBlock(this.J0, bArr6);
        }
        this.S = new byte[16];
        this.S_at = new byte[16];
        this.S_atPre = new byte[16];
        this.atBlock = new byte[16];
        this.atBlockPos = 0;
        this.atLength = 0L;
        this.atLengthPre = 0L;
        this.counter = Arrays.clone(this.J0);
        this.blocksRemaining = -2;
        this.bufOff = 0;
        this.totalLength = 0L;
        byte[] bArr7 = this.initialAssociatedText;
        if (bArr7 != null) {
            processAADBytes(bArr7, 0, bArr7.length);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b10) {
        checkStatus();
        byte[] bArr = this.atBlock;
        int r12 = this.atBlockPos;
        bArr[r12] = b10;
        int r13 = r12 + 1;
        this.atBlockPos = r13;
        if (r13 == 16) {
            gHASHBlock(this.S_at, bArr);
            this.atBlockPos = 0;
            this.atLength += 16;
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int r82, int r92) {
        checkStatus();
        int r02 = this.atBlockPos;
        if (r02 > 0) {
            int r32 = 16 - r02;
            if (r92 < r32) {
                System.arraycopy(bArr, r82, this.atBlock, r02, r92);
                this.atBlockPos += r92;
                return;
            } else {
                System.arraycopy(bArr, r82, this.atBlock, r02, r32);
                gHASHBlock(this.S_at, this.atBlock);
                this.atLength += 16;
                r82 += r32;
                r92 -= r32;
            }
        }
        int r93 = (r92 + r82) - 16;
        while (r82 <= r93) {
            gHASHBlock(this.S_at, bArr, r82);
            this.atLength += 16;
            r82 += 16;
        }
        int r94 = (r93 + 16) - r82;
        this.atBlockPos = r94;
        System.arraycopy(bArr, r82, this.atBlock, 0, r94);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b10, byte[] bArr, int r6) throws IllegalStateException, DataLengthException {
        checkStatus();
        byte[] bArr2 = this.bufBlock;
        int r12 = this.bufOff;
        bArr2[r12] = b10;
        int r13 = r12 + 1;
        this.bufOff = r13;
        if (r13 != bArr2.length) {
            return 0;
        }
        if (this.forEncryption) {
            encryptBlock(bArr2, 0, bArr, r6);
            this.bufOff = 0;
        } else {
            decryptBlock(bArr2, 0, bArr, r6);
            byte[] bArr3 = this.bufBlock;
            System.arraycopy(bArr3, 16, bArr3, 0, this.macSize);
            this.bufOff = this.macSize;
        }
        return 16;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int r82, int r92, byte[] bArr2, int r11) throws IllegalStateException, DataLengthException {
        int r02;
        int r03;
        checkStatus();
        if (bArr.length - r82 < r92) {
            throw new DataLengthException("Input buffer too short");
        }
        if (this.forEncryption) {
            int r04 = this.bufOff;
            if (r04 > 0) {
                int r32 = 16 - r04;
                if (r92 < r32) {
                    System.arraycopy(bArr, r82, this.bufBlock, r04, r92);
                    this.bufOff += r92;
                    return 0;
                }
                System.arraycopy(bArr, r82, this.bufBlock, r04, r32);
                encryptBlock(this.bufBlock, 0, bArr2, r11);
                r82 += r32;
                r92 -= r32;
                r03 = 16;
            } else {
                r03 = 0;
            }
            int r93 = (r92 + r82) - 16;
            while (r82 <= r93) {
                encryptBlock(bArr, r82, bArr2, r11 + r03);
                r82 += 16;
                r03 += 16;
            }
            int r94 = (r93 + 16) - r82;
            this.bufOff = r94;
            System.arraycopy(bArr, r82, this.bufBlock, 0, r94);
            return r03;
        }
        byte[] bArr3 = this.bufBlock;
        int length = bArr3.length;
        int r42 = this.bufOff;
        int r33 = length - r42;
        if (r92 < r33) {
            System.arraycopy(bArr, r82, bArr3, r42, r92);
            this.bufOff += r92;
            return 0;
        }
        if (r42 >= 16) {
            decryptBlock(bArr3, 0, bArr2, r11);
            byte[] bArr4 = this.bufBlock;
            int r43 = this.bufOff - 16;
            this.bufOff = r43;
            System.arraycopy(bArr4, 16, bArr4, 0, r43);
            if (r92 < r33 + 16) {
                System.arraycopy(bArr, r82, this.bufBlock, this.bufOff, r92);
                this.bufOff += r92;
                return 16;
            }
            r02 = 16;
        } else {
            r02 = 0;
        }
        byte[] bArr5 = this.bufBlock;
        int length2 = (r92 + r82) - bArr5.length;
        int r44 = this.bufOff;
        int r52 = 16 - r44;
        System.arraycopy(bArr, r82, bArr5, r44, r52);
        decryptBlock(this.bufBlock, 0, bArr2, r11 + r02);
        int r83 = r82 + r52;
        r03 = r02 + 16;
        while (r83 <= length2) {
            decryptBlock(bArr, r83, bArr2, r11 + r03);
            r83 += 16;
            r03 += 16;
        }
        byte[] bArr6 = this.bufBlock;
        int length3 = (bArr6.length + length2) - r83;
        this.bufOff = length3;
        System.arraycopy(bArr, r83, bArr6, 0, length3);
        return r03;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        reset(true);
    }
}
