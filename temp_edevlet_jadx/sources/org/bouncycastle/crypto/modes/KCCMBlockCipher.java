package org.bouncycastle.crypto.modes;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class KCCMBlockCipher implements AEADBlockCipher {
    private static final int BITS_IN_BYTE = 8;
    private static final int BYTES_IN_INT = 4;
    private static final int MAX_MAC_BIT_LENGTH = 512;
    private static final int MIN_MAC_BIT_LENGTH = 64;
    private byte[] G1;
    private int Nb_;
    private ExposedByteArrayOutputStream associatedText;
    private byte[] buffer;
    private byte[] counter;
    private ExposedByteArrayOutputStream data;
    private BlockCipher engine;
    private boolean forEncryption;
    private byte[] initialAssociatedText;
    private byte[] mac;
    private byte[] macBlock;
    private int macSize;
    private byte[] nonce;

    /* renamed from: s, reason: collision with root package name */
    private byte[] f11590s;

    public static class ExposedByteArrayOutputStream extends ByteArrayOutputStream {
        public byte[] getBuffer() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    public KCCMBlockCipher(BlockCipher blockCipher) {
        this(blockCipher, 4);
    }

    public KCCMBlockCipher(BlockCipher blockCipher, int r32) {
        this.associatedText = new ExposedByteArrayOutputStream();
        this.data = new ExposedByteArrayOutputStream();
        this.Nb_ = 4;
        this.engine = blockCipher;
        this.macSize = blockCipher.getBlockSize();
        this.nonce = new byte[blockCipher.getBlockSize()];
        this.initialAssociatedText = new byte[blockCipher.getBlockSize()];
        this.mac = new byte[blockCipher.getBlockSize()];
        this.macBlock = new byte[blockCipher.getBlockSize()];
        this.G1 = new byte[blockCipher.getBlockSize()];
        this.buffer = new byte[blockCipher.getBlockSize()];
        this.f11590s = new byte[blockCipher.getBlockSize()];
        this.counter = new byte[blockCipher.getBlockSize()];
        setNb(r32);
    }

    private void CalculateMac(byte[] bArr, int r72, int r82) throws IllegalStateException, DataLengthException {
        while (r82 > 0) {
            for (int r12 = 0; r12 < this.engine.getBlockSize(); r12++) {
                byte[] bArr2 = this.macBlock;
                bArr2[r12] = (byte) (bArr2[r12] ^ bArr[r72 + r12]);
            }
            BlockCipher blockCipher = this.engine;
            byte[] bArr3 = this.macBlock;
            blockCipher.processBlock(bArr3, 0, bArr3, 0);
            r82 -= this.engine.getBlockSize();
            r72 += this.engine.getBlockSize();
        }
    }

    private void ProcessBlock(byte[] bArr, int r6, int r72, byte[] bArr2, int r92) throws IllegalStateException, DataLengthException {
        int r02 = 0;
        while (true) {
            byte[] bArr3 = this.counter;
            if (r02 >= bArr3.length) {
                break;
            }
            byte[] bArr4 = this.f11590s;
            bArr4[r02] = (byte) (bArr4[r02] + bArr3[r02]);
            r02++;
        }
        this.engine.processBlock(this.f11590s, 0, this.buffer, 0);
        for (int r73 = 0; r73 < this.engine.getBlockSize(); r73++) {
            bArr2[r92 + r73] = (byte) (this.buffer[r73] ^ bArr[r6 + r73]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0047 A[LOOP:0: B:24:0x0040->B:26:0x0047, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private byte getFlag(boolean r4, int r5) {
        /*
            r3 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            java.lang.String r1 = "0"
            if (r4 == 0) goto Lf
            java.lang.String r4 = "1"
            r0.append(r4)
            goto L12
        Lf:
            r0.append(r1)
        L12:
            r4 = 8
            if (r5 == r4) goto L33
            r4 = 16
            if (r5 == r4) goto L30
            r4 = 32
            if (r5 == r4) goto L2d
            r4 = 48
            if (r5 == r4) goto L2a
            r4 = 64
            if (r5 == r4) goto L27
            goto L38
        L27:
            java.lang.String r4 = "110"
            goto L35
        L2a:
            java.lang.String r4 = "101"
            goto L35
        L2d:
            java.lang.String r4 = "100"
            goto L35
        L30:
            java.lang.String r4 = "011"
            goto L35
        L33:
            java.lang.String r4 = "010"
        L35:
            r0.append(r4)
        L38:
            int r4 = r3.Nb_
            int r4 = r4 + (-1)
            java.lang.String r4 = java.lang.Integer.toBinaryString(r4)
        L40:
            int r5 = r4.length()
            r2 = 4
            if (r5 >= r2) goto L56
            java.lang.StringBuffer r5 = new java.lang.StringBuffer
            r5.<init>(r4)
            r4 = 0
            java.lang.StringBuffer r4 = r5.insert(r4, r1)
            java.lang.String r4 = r4.toString()
            goto L40
        L56:
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            r5 = 2
            int r4 = java.lang.Integer.parseInt(r4, r5)
            byte r4 = (byte) r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.modes.KCCMBlockCipher.getFlag(boolean, int):byte");
    }

    private void intToBytes(int r32, byte[] bArr, int r52) {
        bArr[r52 + 3] = (byte) (r32 >> 24);
        bArr[r52 + 2] = (byte) (r32 >> 16);
        bArr[r52 + 1] = (byte) (r32 >> 8);
        bArr[r52] = (byte) r32;
    }

    private void processAAD(byte[] bArr, int r72, int r82, int r92) throws IllegalStateException, DataLengthException {
        if (r82 - r72 < this.engine.getBlockSize()) {
            throw new IllegalArgumentException("authText buffer too short");
        }
        if (r82 % this.engine.getBlockSize() != 0) {
            throw new IllegalArgumentException("padding not supported");
        }
        byte[] bArr2 = this.nonce;
        System.arraycopy(bArr2, 0, this.G1, 0, (bArr2.length - this.Nb_) - 1);
        intToBytes(r92, this.buffer, 0);
        System.arraycopy(this.buffer, 0, this.G1, (this.nonce.length - this.Nb_) - 1, 4);
        byte[] bArr3 = this.G1;
        bArr3[bArr3.length - 1] = getFlag(true, this.macSize);
        this.engine.processBlock(this.G1, 0, this.macBlock, 0);
        intToBytes(r82, this.buffer, 0);
        if (r82 <= this.engine.getBlockSize() - this.Nb_) {
            for (int r93 = 0; r93 < r82; r93++) {
                byte[] bArr4 = this.buffer;
                int r12 = this.Nb_ + r93;
                bArr4[r12] = (byte) (bArr4[r12] ^ bArr[r72 + r93]);
            }
            for (int r6 = 0; r6 < this.engine.getBlockSize(); r6++) {
                byte[] bArr5 = this.macBlock;
                bArr5[r6] = (byte) (bArr5[r6] ^ this.buffer[r6]);
            }
            BlockCipher blockCipher = this.engine;
            byte[] bArr6 = this.macBlock;
            blockCipher.processBlock(bArr6, 0, bArr6, 0);
            return;
        }
        for (int r94 = 0; r94 < this.engine.getBlockSize(); r94++) {
            byte[] bArr7 = this.macBlock;
            bArr7[r94] = (byte) (bArr7[r94] ^ this.buffer[r94]);
        }
        BlockCipher blockCipher2 = this.engine;
        byte[] bArr8 = this.macBlock;
        blockCipher2.processBlock(bArr8, 0, bArr8, 0);
        while (r82 != 0) {
            for (int r95 = 0; r95 < this.engine.getBlockSize(); r95++) {
                byte[] bArr9 = this.macBlock;
                bArr9[r95] = (byte) (bArr9[r95] ^ bArr[r95 + r72]);
            }
            BlockCipher blockCipher3 = this.engine;
            byte[] bArr10 = this.macBlock;
            blockCipher3.processBlock(bArr10, 0, bArr10, 0);
            r72 += this.engine.getBlockSize();
            r82 -= this.engine.getBlockSize();
        }
    }

    private void setNb(int r22) {
        if (r22 != 4 && r22 != 6 && r22 != 8) {
            throw new IllegalArgumentException("Nb = 4 is recommended by DSTU7624 but can be changed to only 6 or 8 in this implementation");
        }
        this.Nb_ = r22;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int r92) throws InvalidCipherTextException, IllegalStateException, DataLengthException, IOException {
        int r82 = processPacket(this.data.getBuffer(), 0, this.data.size(), bArr, r92);
        reset();
        return r82;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.engine.getAlgorithmName() + "/KCCM";
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return Arrays.clone(this.mac);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int r22) {
        return r22 + this.macSize;
    }

    @Override // org.bouncycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.engine;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int r12) {
        return r12;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IOException, IllegalArgumentException {
        CipherParameters parameters;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            if (aEADParameters.getMacSize() > 512 || aEADParameters.getMacSize() < 64 || aEADParameters.getMacSize() % 8 != 0) {
                throw new IllegalArgumentException("Invalid mac size specified");
            }
            this.nonce = aEADParameters.getNonce();
            this.macSize = aEADParameters.getMacSize() / 8;
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            parameters = aEADParameters.getKey();
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                throw new IllegalArgumentException("Invalid parameters specified");
            }
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            this.nonce = parametersWithIV.getIV();
            this.macSize = this.engine.getBlockSize();
            this.initialAssociatedText = null;
            parameters = parametersWithIV.getParameters();
        }
        this.mac = new byte[this.macSize];
        this.forEncryption = z10;
        this.engine.init(true, parameters);
        this.counter[0] = 1;
        byte[] bArr = this.initialAssociatedText;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
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

    public int processPacket(byte[] bArr, int r12, int r13, byte[] bArr2, int r15) throws InvalidCipherTextException, IllegalStateException, DataLengthException, IOException {
        int r22;
        if (bArr.length - r12 < r13) {
            throw new DataLengthException("input buffer too short");
        }
        if (bArr2.length - r15 < r13) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.associatedText.size() > 0) {
            if (this.forEncryption) {
                processAAD(this.associatedText.getBuffer(), 0, this.associatedText.size(), this.data.size());
            } else {
                processAAD(this.associatedText.getBuffer(), 0, this.associatedText.size(), this.data.size() - this.macSize);
            }
        }
        if (!this.forEncryption) {
            if ((r13 - this.macSize) % this.engine.getBlockSize() != 0) {
                throw new DataLengthException("partial blocks not supported");
            }
            this.engine.processBlock(this.nonce, 0, this.f11590s, 0);
            int blockSize = r13 / this.engine.getBlockSize();
            for (int r82 = 0; r82 < blockSize; r82++) {
                ProcessBlock(bArr, r12, r13, bArr2, r15);
                r12 += this.engine.getBlockSize();
                r15 += this.engine.getBlockSize();
            }
            if (r13 > r12) {
                int r02 = 0;
                while (true) {
                    byte[] bArr3 = this.counter;
                    if (r02 >= bArr3.length) {
                        break;
                    }
                    byte[] bArr4 = this.f11590s;
                    bArr4[r02] = (byte) (bArr4[r02] + bArr3[r02]);
                    r02++;
                }
                this.engine.processBlock(this.f11590s, 0, this.buffer, 0);
                int r03 = 0;
                while (true) {
                    r22 = this.macSize;
                    if (r03 >= r22) {
                        break;
                    }
                    bArr2[r15 + r03] = (byte) (this.buffer[r03] ^ bArr[r12 + r03]);
                    r03++;
                }
                r15 += r22;
            }
            int r11 = 0;
            while (true) {
                byte[] bArr5 = this.counter;
                if (r11 >= bArr5.length) {
                    break;
                }
                byte[] bArr6 = this.f11590s;
                bArr6[r11] = (byte) (bArr6[r11] + bArr5[r11]);
                r11++;
            }
            this.engine.processBlock(this.f11590s, 0, this.buffer, 0);
            int r112 = this.macSize;
            System.arraycopy(bArr2, r15 - r112, this.buffer, 0, r112);
            CalculateMac(bArr2, 0, r15 - this.macSize);
            System.arraycopy(this.macBlock, 0, this.mac, 0, this.macSize);
            int r113 = this.macSize;
            byte[] bArr7 = new byte[r113];
            System.arraycopy(this.buffer, 0, bArr7, 0, r113);
            if (!Arrays.constantTimeAreEqual(this.mac, bArr7)) {
                throw new InvalidCipherTextException("mac check failed");
            }
            reset();
            return r13 - this.macSize;
        }
        if (r13 % this.engine.getBlockSize() != 0) {
            throw new DataLengthException("partial blocks not supported");
        }
        CalculateMac(bArr, r12, r13);
        this.engine.processBlock(this.nonce, 0, this.f11590s, 0);
        int blockSize2 = r13;
        while (blockSize2 > 0) {
            ProcessBlock(bArr, r12, r13, bArr2, r15);
            blockSize2 -= this.engine.getBlockSize();
            r12 += this.engine.getBlockSize();
            r15 += this.engine.getBlockSize();
        }
        int r114 = 0;
        while (true) {
            byte[] bArr8 = this.counter;
            if (r114 >= bArr8.length) {
                break;
            }
            byte[] bArr9 = this.f11590s;
            bArr9[r114] = (byte) (bArr9[r114] + bArr8[r114]);
            r114++;
        }
        this.engine.processBlock(this.f11590s, 0, this.buffer, 0);
        int r115 = 0;
        while (true) {
            int r122 = this.macSize;
            if (r115 >= r122) {
                System.arraycopy(this.macBlock, 0, this.mac, 0, r122);
                reset();
                return r13 + this.macSize;
            }
            bArr2[r15 + r115] = (byte) (this.buffer[r115] ^ this.macBlock[r115]);
            r115++;
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() throws IOException {
        Arrays.fill(this.G1, (byte) 0);
        Arrays.fill(this.buffer, (byte) 0);
        Arrays.fill(this.counter, (byte) 0);
        Arrays.fill(this.macBlock, (byte) 0);
        this.counter[0] = 1;
        this.data.reset();
        this.associatedText.reset();
        byte[] bArr = this.initialAssociatedText;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }
}
