package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.macs.CMac;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class EAXBlockCipher implements AEADBlockCipher {
    private static final byte cTAG = 2;
    private static final byte hTAG = 1;
    private static final byte nTAG = 0;
    private byte[] associatedTextMac;
    private int blockSize;
    private byte[] bufBlock;
    private int bufOff;
    private CTRModeCipher cipher;
    private boolean cipherInitialized;
    private boolean forEncryption;
    private byte[] initialAssociatedText;
    private Mac mac;
    private byte[] macBlock;
    private int macSize;
    private byte[] nonceMac;

    public EAXBlockCipher(BlockCipher blockCipher) {
        this.blockSize = blockCipher.getBlockSize();
        CMac cMac = new CMac(blockCipher);
        this.mac = cMac;
        this.macBlock = new byte[this.blockSize];
        this.associatedTextMac = new byte[cMac.getMacSize()];
        this.nonceMac = new byte[this.mac.getMacSize()];
        this.cipher = SICBlockCipher.newInstance(blockCipher);
    }

    private void calculateMac() throws IllegalStateException, DataLengthException {
        byte[] bArr = new byte[this.blockSize];
        int r22 = 0;
        this.mac.doFinal(bArr, 0);
        while (true) {
            byte[] bArr2 = this.macBlock;
            if (r22 >= bArr2.length) {
                return;
            }
            bArr2[r22] = (byte) ((this.nonceMac[r22] ^ this.associatedTextMac[r22]) ^ bArr[r22]);
            r22++;
        }
    }

    private void initCipher() throws IllegalStateException, DataLengthException {
        if (this.cipherInitialized) {
            return;
        }
        this.cipherInitialized = true;
        this.mac.doFinal(this.associatedTextMac, 0);
        int r02 = this.blockSize;
        byte[] bArr = new byte[r02];
        bArr[r02 - 1] = 2;
        this.mac.update(bArr, 0, r02);
    }

    private int process(byte b10, byte[] bArr, int r72) throws IllegalStateException, DataLengthException {
        int r52;
        byte[] bArr2 = this.bufBlock;
        int r12 = this.bufOff;
        int r22 = r12 + 1;
        this.bufOff = r22;
        bArr2[r12] = b10;
        if (r22 != bArr2.length) {
            return 0;
        }
        int length = bArr.length;
        int r23 = this.blockSize;
        if (length < r72 + r23) {
            throw new OutputLengthException("Output buffer is too short");
        }
        if (this.forEncryption) {
            r52 = this.cipher.processBlock(bArr2, 0, bArr, r72);
            this.mac.update(bArr, r72, this.blockSize);
        } else {
            this.mac.update(bArr2, 0, r23);
            r52 = this.cipher.processBlock(this.bufBlock, 0, bArr, r72);
        }
        this.bufOff = 0;
        if (!this.forEncryption) {
            byte[] bArr3 = this.bufBlock;
            System.arraycopy(bArr3, this.blockSize, bArr3, 0, this.macSize);
            this.bufOff = this.macSize;
        }
        return r52;
    }

    private void reset(boolean z10) throws IllegalStateException, DataLengthException {
        this.cipher.reset();
        this.mac.reset();
        this.bufOff = 0;
        Arrays.fill(this.bufBlock, (byte) 0);
        if (z10) {
            Arrays.fill(this.macBlock, (byte) 0);
        }
        int r52 = this.blockSize;
        byte[] bArr = new byte[r52];
        bArr[r52 - 1] = 1;
        this.mac.update(bArr, 0, r52);
        this.cipherInitialized = false;
        byte[] bArr2 = this.initialAssociatedText;
        if (bArr2 != null) {
            processAADBytes(bArr2, 0, bArr2.length);
        }
    }

    private boolean verifyMac(byte[] bArr, int r72) {
        int r22 = 0;
        for (int r12 = 0; r12 < this.macSize; r12++) {
            r22 |= this.macBlock[r12] ^ bArr[r72 + r12];
        }
        return r22 == 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int r10) throws InvalidCipherTextException, IllegalStateException, DataLengthException {
        initCipher();
        int r02 = this.bufOff;
        byte[] bArr2 = this.bufBlock;
        byte[] bArr3 = new byte[bArr2.length];
        this.bufOff = 0;
        if (this.forEncryption) {
            int r6 = r10 + r02;
            if (bArr.length < this.macSize + r6) {
                throw new OutputLengthException("Output buffer too short");
            }
            this.cipher.processBlock(bArr2, 0, bArr3, 0);
            System.arraycopy(bArr3, 0, bArr, r10, r02);
            this.mac.update(bArr3, 0, r02);
            calculateMac();
            System.arraycopy(this.macBlock, 0, bArr, r6, this.macSize);
            reset(false);
            return r02 + this.macSize;
        }
        int r42 = this.macSize;
        if (r02 < r42) {
            throw new InvalidCipherTextException("data too short");
        }
        if (bArr.length < (r10 + r02) - r42) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (r02 > r42) {
            this.mac.update(bArr2, 0, r02 - r42);
            this.cipher.processBlock(this.bufBlock, 0, bArr3, 0);
            System.arraycopy(bArr3, 0, bArr, r10, r02 - this.macSize);
        }
        calculateMac();
        if (!verifyMac(this.bufBlock, r02 - this.macSize)) {
            throw new InvalidCipherTextException("mac check in EAX failed");
        }
        reset(false);
        return r02 - this.macSize;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.cipher.getUnderlyingCipher().getAlgorithmName() + "/EAX";
    }

    public int getBlockSize() {
        return this.cipher.getBlockSize();
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
        return this.cipher.getUnderlyingCipher();
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
        return r23 - (r23 % this.blockSize);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        byte[] nonce;
        CipherParameters parameters;
        this.forEncryption = z10;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            nonce = aEADParameters.getNonce();
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            this.macSize = aEADParameters.getMacSize() / 8;
            parameters = aEADParameters.getKey();
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                throw new IllegalArgumentException("invalid parameters passed to EAX");
            }
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            nonce = parametersWithIV.getIV();
            this.initialAssociatedText = null;
            this.macSize = this.mac.getMacSize() / 2;
            parameters = parametersWithIV.getParameters();
        }
        this.bufBlock = new byte[z10 ? this.blockSize : this.blockSize + this.macSize];
        byte[] bArr = new byte[this.blockSize];
        this.mac.init(parameters);
        int r12 = this.blockSize;
        bArr[r12 - 1] = 0;
        this.mac.update(bArr, 0, r12);
        this.mac.update(nonce, 0, nonce.length);
        this.mac.doFinal(this.nonceMac, 0);
        this.cipher.init(true, new ParametersWithIV(parameters, this.nonceMac));
        reset();
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b10) throws IllegalStateException {
        if (this.cipherInitialized) {
            throw new IllegalStateException("AAD data cannot be added after encryption/decryption processing has begun.");
        }
        this.mac.update(b10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int r32, int r42) throws IllegalStateException, DataLengthException {
        if (this.cipherInitialized) {
            throw new IllegalStateException("AAD data cannot be added after encryption/decryption processing has begun.");
        }
        this.mac.update(bArr, r32, r42);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b10, byte[] bArr, int r32) throws IllegalStateException, DataLengthException {
        initCipher();
        return process(b10, bArr, r32);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int r6, int r72, byte[] bArr2, int r92) throws IllegalStateException, DataLengthException {
        initCipher();
        if (bArr.length < r6 + r72) {
            throw new DataLengthException("Input buffer too short");
        }
        int r12 = 0;
        for (int r02 = 0; r02 != r72; r02++) {
            r12 += process(bArr[r6 + r02], bArr2, r92 + r12);
        }
        return r12;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() throws IllegalStateException, DataLengthException {
        reset(true);
    }
}
