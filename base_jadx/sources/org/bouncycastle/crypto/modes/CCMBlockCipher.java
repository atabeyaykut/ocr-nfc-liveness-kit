package org.bouncycastle.crypto.modes;

import ab.b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.macs.CBCBlockCipherMac;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class CCMBlockCipher implements CCMModeCipher {
    private int blockSize;
    private BlockCipher cipher;
    private boolean forEncryption;
    private byte[] initialAssociatedText;
    private CipherParameters keyParam;
    private byte[] macBlock;
    private int macSize;
    private byte[] nonce;
    private ExposedByteArrayOutputStream associatedText = new ExposedByteArrayOutputStream();
    private ExposedByteArrayOutputStream data = new ExposedByteArrayOutputStream();

    public static class ExposedByteArrayOutputStream extends ByteArrayOutputStream {
        public byte[] getBuffer() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    public CCMBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.macBlock = new byte[blockSize];
        if (blockSize != 16) {
            throw new IllegalArgumentException("cipher required with a block size of 16.");
        }
    }

    private int calculateMac(byte[] bArr, int r12, int r13, byte[] bArr2) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        CBCBlockCipherMac cBCBlockCipherMac = new CBCBlockCipherMac(this.cipher, this.macSize * 8);
        cBCBlockCipherMac.init(this.keyParam);
        byte[] bArr3 = new byte[16];
        if (hasAssociatedText()) {
            bArr3[0] = (byte) (bArr3[0] | 64);
        }
        int r6 = 2;
        byte macSize = (byte) (bArr3[0] | ((((cBCBlockCipherMac.getMacSize() - 2) / 2) & 7) << 3));
        bArr3[0] = macSize;
        byte[] bArr4 = this.nonce;
        bArr3[0] = (byte) (macSize | (((15 - bArr4.length) - 1) & 7));
        System.arraycopy(bArr4, 0, bArr3, 1, bArr4.length);
        int r32 = r13;
        int r52 = 1;
        while (r32 > 0) {
            bArr3[16 - r52] = (byte) (r32 & 255);
            r32 >>>= 8;
            r52++;
        }
        cBCBlockCipherMac.update(bArr3, 0, 16);
        if (hasAssociatedText()) {
            int associatedTextLength = getAssociatedTextLength();
            if (associatedTextLength < 65280) {
                cBCBlockCipherMac.update((byte) (associatedTextLength >> 8));
                cBCBlockCipherMac.update((byte) associatedTextLength);
            } else {
                cBCBlockCipherMac.update((byte) -1);
                cBCBlockCipherMac.update((byte) -2);
                cBCBlockCipherMac.update((byte) (associatedTextLength >> 24));
                cBCBlockCipherMac.update((byte) (associatedTextLength >> 16));
                cBCBlockCipherMac.update((byte) (associatedTextLength >> 8));
                cBCBlockCipherMac.update((byte) associatedTextLength);
                r6 = 6;
            }
            byte[] bArr5 = this.initialAssociatedText;
            if (bArr5 != null) {
                cBCBlockCipherMac.update(bArr5, 0, bArr5.length);
            }
            if (this.associatedText.size() > 0) {
                cBCBlockCipherMac.update(this.associatedText.getBuffer(), 0, this.associatedText.size());
            }
            int r62 = (r6 + associatedTextLength) % 16;
            if (r62 != 0) {
                while (r62 != 16) {
                    cBCBlockCipherMac.update((byte) 0);
                    r62++;
                }
            }
        }
        cBCBlockCipherMac.update(bArr, r12, r13);
        return cBCBlockCipherMac.doFinal(bArr2, 0);
    }

    private int getAssociatedTextLength() {
        int size = this.associatedText.size();
        byte[] bArr = this.initialAssociatedText;
        return size + (bArr == null ? 0 : bArr.length);
    }

    private int getMacSize(boolean z10, int r22) {
        if (!z10 || (r22 >= 32 && r22 <= 128 && (r22 & 15) == 0)) {
            return r22 >>> 3;
        }
        throw new IllegalArgumentException("tag length in octets must be one of {4,6,8,10,12,14,16}");
    }

    private boolean hasAssociatedText() {
        return getAssociatedTextLength() > 0;
    }

    public static CCMModeCipher newInstance(BlockCipher blockCipher) {
        return new CCMBlockCipher(blockCipher);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int r92) throws InvalidCipherTextException, IllegalStateException, DataLengthException, IllegalArgumentException {
        int r82 = processPacket(this.data.getBuffer(), 0, this.data.size(), bArr, r92);
        reset();
        return r82;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/CCM";
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
        return this.cipher;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int r12) {
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        CipherParameters parameters;
        this.forEncryption = z10;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            this.nonce = aEADParameters.getNonce();
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            this.macSize = getMacSize(z10, aEADParameters.getMacSize());
            parameters = aEADParameters.getKey();
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                throw new IllegalArgumentException(b.g(cipherParameters, "invalid parameters passed to CCM: "));
            }
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            this.nonce = parametersWithIV.getIV();
            this.initialAssociatedText = null;
            this.macSize = getMacSize(z10, 64);
            parameters = parametersWithIV.getParameters();
        }
        if (parameters != null) {
            this.keyParam = parameters;
        }
        byte[] bArr = this.nonce;
        if (bArr == null || bArr.length < 7 || bArr.length > 13) {
            throw new IllegalArgumentException("nonce must have length from 7 to 13 octets");
        }
        reset();
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
            throw new DataLengthException("Input buffer too short");
        }
        this.data.write(bArr, r22, r32);
        return 0;
    }

    public int processPacket(byte[] bArr, int r11, int r12, byte[] bArr2, int r14) throws InvalidCipherTextException, IllegalStateException, DataLengthException, IllegalArgumentException {
        int r52;
        if (this.keyParam == null) {
            throw new IllegalStateException("CCM cipher unitialized.");
        }
        byte[] bArr3 = this.nonce;
        int length = 15 - bArr3.length;
        if (length < 4) {
            if (r12 - (!this.forEncryption ? 16 : 0) >= (1 << (length * 8))) {
                throw new IllegalStateException("CCM packet too large for choice of q");
            }
        }
        byte[] bArr4 = new byte[this.blockSize];
        bArr4[0] = (byte) ((length - 1) & 7);
        System.arraycopy(bArr3, 0, bArr4, 1, bArr3.length);
        CTRModeCipher cTRModeCipherNewInstance = SICBlockCipher.newInstance(this.cipher);
        cTRModeCipherNewInstance.init(this.forEncryption, new ParametersWithIV(this.keyParam, bArr4));
        if (!this.forEncryption) {
            int r13 = this.macSize;
            if (r12 < r13) {
                throw new InvalidCipherTextException("data too short");
            }
            int r122 = r12 - r13;
            if (bArr2.length < r122 + r14) {
                throw new OutputLengthException("Output buffer too short.");
            }
            int r22 = r11 + r122;
            System.arraycopy(bArr, r22, this.macBlock, 0, r13);
            byte[] bArr5 = this.macBlock;
            cTRModeCipherNewInstance.processBlock(bArr5, 0, bArr5, 0);
            int r15 = this.macSize;
            while (true) {
                byte[] bArr6 = this.macBlock;
                if (r15 == bArr6.length) {
                    break;
                }
                bArr6[r15] = 0;
                r15++;
            }
            int r16 = r11;
            int r32 = r14;
            while (true) {
                r52 = this.blockSize;
                if (r16 >= r22 - r52) {
                    break;
                }
                cTRModeCipherNewInstance.processBlock(bArr, r16, bArr2, r32);
                int r53 = this.blockSize;
                r32 += r53;
                r16 += r53;
            }
            byte[] bArr7 = new byte[r52];
            int r112 = r122 - (r16 - r11);
            System.arraycopy(bArr, r16, bArr7, 0, r112);
            cTRModeCipherNewInstance.processBlock(bArr7, 0, bArr7, 0);
            System.arraycopy(bArr7, 0, bArr2, r32, r112);
            byte[] bArr8 = new byte[this.blockSize];
            calculateMac(bArr2, r14, r122, bArr8);
            if (Arrays.constantTimeAreEqual(this.macBlock, bArr8)) {
                return r122;
            }
            throw new InvalidCipherTextException("mac check in CCM failed");
        }
        int r17 = this.macSize + r12;
        if (bArr2.length < r17 + r14) {
            throw new OutputLengthException("Output buffer too short.");
        }
        calculateMac(bArr, r11, r12, this.macBlock);
        byte[] bArr9 = new byte[this.blockSize];
        cTRModeCipherNewInstance.processBlock(this.macBlock, 0, bArr9, 0);
        int r33 = r11;
        int r54 = r14;
        while (true) {
            int r6 = r11 + r12;
            int r72 = this.blockSize;
            if (r33 >= r6 - r72) {
                byte[] bArr10 = new byte[r72];
                int r62 = r6 - r33;
                System.arraycopy(bArr, r33, bArr10, 0, r62);
                cTRModeCipherNewInstance.processBlock(bArr10, 0, bArr10, 0);
                System.arraycopy(bArr10, 0, bArr2, r54, r62);
                System.arraycopy(bArr9, 0, bArr2, r14 + r12, this.macSize);
                return r17;
            }
            cTRModeCipherNewInstance.processBlock(bArr, r33, bArr2, r54);
            int r63 = this.blockSize;
            r54 += r63;
            r33 += r63;
        }
    }

    public byte[] processPacket(byte[] bArr, int r92, int r10) throws InvalidCipherTextException, IllegalStateException, DataLengthException, IllegalArgumentException {
        int r02;
        if (this.forEncryption) {
            r02 = this.macSize + r10;
        } else {
            int r03 = this.macSize;
            if (r10 < r03) {
                throw new InvalidCipherTextException("data too short");
            }
            r02 = r10 - r03;
        }
        byte[] bArr2 = new byte[r02];
        processPacket(bArr, r92, r10, bArr2, 0);
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        this.cipher.reset();
        this.associatedText.reset();
        this.data.reset();
    }
}
