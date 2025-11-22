package org.bouncycastle.crypto.modes;

import android.support.v4.media.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier;
import org.bouncycastle.crypto.modes.kgcm.Tables16kKGCMMultiplier_512;
import org.bouncycastle.crypto.modes.kgcm.Tables4kKGCMMultiplier_128;
import org.bouncycastle.crypto.modes.kgcm.Tables8kKGCMMultiplier_256;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class KGCMBlockCipher implements AEADBlockCipher {
    private static final int MIN_MAC_BITS = 64;

    /* renamed from: b, reason: collision with root package name */
    private long[] f11591b;
    private final int blockSize;
    private BufferedBlockCipher ctrEngine;
    private BlockCipher engine;
    private boolean forEncryption;
    private byte[] initialAssociatedText;
    private byte[] iv;
    private byte[] macBlock;
    private KGCMMultiplier multiplier;
    private ExposedByteArrayOutputStream associatedText = new ExposedByteArrayOutputStream();
    private ExposedByteArrayOutputStream data = new ExposedByteArrayOutputStream();
    private int macSize = -1;

    public static class ExposedByteArrayOutputStream extends ByteArrayOutputStream {
        public byte[] getBuffer() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    public KGCMBlockCipher(BlockCipher blockCipher) {
        this.engine = blockCipher;
        this.ctrEngine = new BufferedBlockCipher(new KCTRBlockCipher(blockCipher));
        int blockSize = this.engine.getBlockSize();
        this.blockSize = blockSize;
        this.initialAssociatedText = new byte[blockSize];
        this.iv = new byte[blockSize];
        this.multiplier = createDefaultMultiplier(blockSize);
        this.f11591b = new long[blockSize >>> 3];
        this.macBlock = null;
    }

    private void calculateMac(byte[] bArr, int r6, int r72, int r82) throws IllegalStateException, DataLengthException {
        int r02 = r6 + r72;
        while (r6 < r02) {
            xorWithInput(this.f11591b, bArr, r6);
            this.multiplier.multiplyH(this.f11591b);
            r6 += this.blockSize;
        }
        long j10 = (r82 & BodyPartID.bodyIdMax) << 3;
        long j11 = (BodyPartID.bodyIdMax & r72) << 3;
        long[] jArr = this.f11591b;
        jArr[0] = j10 ^ jArr[0];
        int r52 = this.blockSize >>> 4;
        jArr[r52] = jArr[r52] ^ j11;
        byte[] bArrLongToLittleEndian = Pack.longToLittleEndian(jArr);
        this.macBlock = bArrLongToLittleEndian;
        this.engine.processBlock(bArrLongToLittleEndian, 0, bArrLongToLittleEndian, 0);
    }

    private static KGCMMultiplier createDefaultMultiplier(int r12) {
        if (r12 == 16) {
            return new Tables4kKGCMMultiplier_128();
        }
        if (r12 == 32) {
            return new Tables8kKGCMMultiplier_256();
        }
        if (r12 == 64) {
            return new Tables16kKGCMMultiplier_512();
        }
        throw new IllegalArgumentException("Only 128, 256, and 512 -bit block sizes supported");
    }

    private void processAAD(byte[] bArr, int r42, int r52) {
        int r53 = r52 + r42;
        while (r42 < r53) {
            xorWithInput(this.f11591b, bArr, r42);
            this.multiplier.multiplyH(this.f11591b);
            r42 += this.blockSize;
        }
    }

    private static void xorWithInput(long[] jArr, byte[] bArr, int r72) {
        for (int r02 = 0; r02 < jArr.length; r02++) {
            jArr[r02] = jArr[r02] ^ Pack.littleEndianToLong(bArr, r72);
            r72 += 8;
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int r11) throws InvalidCipherTextException, IllegalStateException, DataLengthException, IOException {
        int r12;
        int size = this.data.size();
        if (!this.forEncryption && size < this.macSize) {
            throw new InvalidCipherTextException("data too short");
        }
        byte[] bArr2 = new byte[this.blockSize];
        this.engine.processBlock(bArr2, 0, bArr2, 0);
        long[] jArr = new long[this.blockSize >>> 3];
        Pack.littleEndianToLong(bArr2, 0, jArr);
        this.multiplier.init(jArr);
        Arrays.fill(bArr2, (byte) 0);
        Arrays.fill(jArr, 0L);
        int size2 = this.associatedText.size();
        if (size2 > 0) {
            processAAD(this.associatedText.getBuffer(), 0, size2);
        }
        if (!this.forEncryption) {
            int r32 = size - this.macSize;
            if (bArr.length - r11 < r32) {
                throw new OutputLengthException("Output buffer too short");
            }
            calculateMac(this.data.getBuffer(), 0, r32, size2);
            int r02 = this.ctrEngine.processBytes(this.data.getBuffer(), 0, r32, bArr, r11);
            r12 = this.ctrEngine.doFinal(bArr, r11 + r02) + r02;
        } else {
            if ((bArr.length - r11) - this.macSize < size) {
                throw new OutputLengthException("Output buffer too short");
            }
            int r03 = this.ctrEngine.processBytes(this.data.getBuffer(), 0, size, bArr, r11);
            r12 = this.ctrEngine.doFinal(bArr, r11 + r03) + r03;
            calculateMac(bArr, r11, size, size2);
        }
        byte[] bArr3 = this.macBlock;
        if (bArr3 == null) {
            throw new IllegalStateException("mac is not calculated");
        }
        if (this.forEncryption) {
            System.arraycopy(bArr3, 0, bArr, r11 + r12, this.macSize);
            reset();
            return r12 + this.macSize;
        }
        byte[] bArr4 = new byte[this.macSize];
        byte[] buffer = this.data.getBuffer();
        int r33 = this.macSize;
        System.arraycopy(buffer, size - r33, bArr4, 0, r33);
        int r22 = this.macSize;
        byte[] bArr5 = new byte[r22];
        System.arraycopy(this.macBlock, 0, bArr5, 0, r22);
        if (!Arrays.constantTimeAreEqual(bArr4, bArr5)) {
            throw new InvalidCipherTextException("mac verification failed");
        }
        reset();
        return r12;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.engine.getAlgorithmName() + "/KGCM";
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        int r02 = this.macSize;
        byte[] bArr = new byte[r02];
        System.arraycopy(this.macBlock, 0, bArr, 0, r02);
        return bArr;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int r22) {
        int size = this.data.size() + r22;
        if (this.forEncryption) {
            return size + this.macSize;
        }
        int r23 = this.macSize;
        if (size < r23) {
            return 0;
        }
        return size - r23;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.engine;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int r12) {
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IOException, IllegalArgumentException {
        KeyParameter key;
        this.forEncryption = z10;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            byte[] nonce = aEADParameters.getNonce();
            byte[] bArr = this.iv;
            int length = bArr.length - nonce.length;
            Arrays.fill(bArr, (byte) 0);
            System.arraycopy(nonce, 0, this.iv, length, nonce.length);
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            int macSize = aEADParameters.getMacSize();
            if (macSize < 64 || macSize > (this.blockSize << 3) || (macSize & 7) != 0) {
                throw new IllegalArgumentException(a.d("Invalid value for MAC size: ", macSize));
            }
            this.macSize = macSize >>> 3;
            key = aEADParameters.getKey();
            byte[] bArr2 = this.initialAssociatedText;
            if (bArr2 != null) {
                processAADBytes(bArr2, 0, bArr2.length);
            }
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                throw new IllegalArgumentException("Invalid parameter passed");
            }
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] bArr3 = parametersWithIV.getIV();
            byte[] bArr4 = this.iv;
            int length2 = bArr4.length - bArr3.length;
            Arrays.fill(bArr4, (byte) 0);
            System.arraycopy(bArr3, 0, this.iv, length2, bArr3.length);
            this.initialAssociatedText = null;
            this.macSize = this.blockSize;
            key = (KeyParameter) parametersWithIV.getParameters();
        }
        this.macBlock = new byte[this.blockSize];
        this.ctrEngine.init(true, new ParametersWithIV(key, this.iv));
        this.engine.init(true, key);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b10) throws IOException {
        this.associatedText.write(b10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int r32, int r42) throws IOException {
        this.associatedText.write(bArr, r32, r42);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b10, byte[] bArr, int r32) throws IllegalStateException, DataLengthException, IOException {
        this.data.write(b10);
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int r22, int r32, byte[] bArr2, int r52) throws IllegalStateException, DataLengthException, IOException {
        if (bArr.length < r22 + r32) {
            throw new DataLengthException("input buffer too short");
        }
        this.data.write(bArr, r22, r32);
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() throws IOException {
        Arrays.fill(this.f11591b, 0L);
        this.engine.reset();
        this.data.reset();
        this.associatedText.reset();
        byte[] bArr = this.initialAssociatedText;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }
}
