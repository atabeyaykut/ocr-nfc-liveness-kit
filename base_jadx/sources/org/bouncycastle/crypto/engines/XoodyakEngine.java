package org.bouncycastle.crypto.engines;

import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.modes.AEADCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class XoodyakEngine implements AEADCipher {
    private byte[] K;
    private int Rabsorb;
    private boolean aadFinished;
    private boolean encrypted;
    private boolean forEncryption;
    private byte[] iv;
    private MODE mode;
    private int phase;
    private byte[] state;
    private byte[] tag;
    private final int f_bPrime = 48;
    private final int Rkout = 24;
    private final int PhaseDown = 1;
    private final int PhaseUp = 2;
    private final int NLANES = 12;
    private final int NROWS = 3;
    private final int NCOLUMS = 4;
    private final int MAXROUNDS = 12;
    private final int TAGLEN = 16;
    final int Rkin = 44;
    private final int[] RC = {88, 56, 960, 208, 288, 20, 96, 44, 896, 240, 416, 18};
    private boolean initialised = false;
    private final ByteArrayOutputStream aadData = new ByteArrayOutputStream();
    private final ByteArrayOutputStream message = new ByteArrayOutputStream();

    public enum MODE {
        ModeHash,
        ModeKeyed
    }

    private void AbsorbAny(byte[] bArr, int r52, int r6, int r72, int r82) {
        while (true) {
            if (this.phase != 2) {
                Up(null, 0, 0);
            }
            int r02 = Math.min(r6, r72);
            Down(bArr, r52, r02, r82);
            r52 += r02;
            r6 -= r02;
            if (r6 == 0) {
                return;
            } else {
                r82 = 0;
            }
        }
    }

    private int ROTL32(int r22, int r32) {
        return (r22 >>> ((32 - r32) & 31)) ^ (r22 << (r32 & 31));
    }

    private void Up(byte[] bArr, int r20, int r21) {
        int r13;
        if (this.mode != MODE.ModeHash) {
            byte[] bArr2 = this.state;
            bArr2[47] = (byte) (bArr2[47] ^ r21);
        }
        int r22 = 12;
        int[] r32 = new int[12];
        Pack.littleEndianToInt(this.state, 0, r32, 0, 12);
        int[] r42 = new int[12];
        int[] r72 = new int[4];
        int[] r82 = new int[4];
        for (int r92 = 0; r92 < r22; r92++) {
            for (int r11 = 0; r11 < 4; r11++) {
                r72[r11] = (r32[index(r11, 1)] ^ r32[index(r11, 0)]) ^ r32[index(r11, 2)];
            }
            int r112 = 0;
            while (true) {
                r13 = 3;
                if (r112 >= 4) {
                    break;
                }
                int r132 = r72[3 & (r112 + 3)];
                r82[r112] = ROTL32(r132, 14) ^ ROTL32(r132, 5);
                r112++;
            }
            for (int r113 = 0; r113 < 4; r113++) {
                for (int r14 = 0; r14 < 3; r14++) {
                    int r15 = index(r113, r14);
                    r32[r15] = r32[r15] ^ r82[r113];
                }
            }
            for (int r114 = 0; r114 < 4; r114++) {
                r42[index(r114, 0)] = r32[index(r114, 0)];
                r42[index(r114, 1)] = r32[index(r114 + 3, 1)];
                r42[index(r114, 2)] = ROTL32(r32[index(r114, 2)], 11);
            }
            r42[0] = r42[0] ^ this.RC[r92];
            int r23 = 0;
            while (r23 < 4) {
                int r115 = 0;
                while (r115 < r13) {
                    int r133 = r115 + 1;
                    r32[index(r23, r115)] = ((~r42[index(r23, r133)]) & r42[index(r23, r115 + 2)]) ^ r42[index(r23, r115)];
                    r115 = r133;
                    r13 = 3;
                }
                r23++;
                r13 = 3;
            }
            for (int r24 = 0; r24 < 4; r24++) {
                r42[index(r24, 0)] = r32[index(r24, 0)];
                r42[index(r24, 1)] = ROTL32(r32[index(r24, 1)], 1);
                r42[index(r24, 2)] = ROTL32(r32[index(r24 + 2, 2)], 8);
            }
            r22 = 12;
            System.arraycopy(r42, 0, r32, 0, 12);
        }
        Pack.intToLittleEndian(r32, 0, r22, this.state, 0);
        this.phase = 2;
        if (bArr != null) {
            System.arraycopy(this.state, 0, bArr, 0, r20);
        }
    }

    private int encrypt(byte[] bArr, int r11, int r12, byte[] bArr2, int r14) {
        byte[] bArr3 = new byte[24];
        int r22 = this.encrypted ? 0 : 128;
        int r42 = r12;
        while (true) {
            if (r42 == 0 && this.encrypted) {
                return r12;
            }
            int r52 = Math.min(r42, 24);
            if (this.forEncryption) {
                System.arraycopy(bArr, r11, bArr3, 0, r52);
            }
            Up(null, 0, r22);
            int r23 = 0;
            while (r23 < r52) {
                bArr2[r14 + r23] = (byte) (bArr[r11] ^ this.state[r23]);
                r23++;
                r11++;
            }
            if (this.forEncryption) {
                Down(bArr3, 0, r52, 0);
            } else {
                Down(bArr2, r14, r52, 0);
            }
            r14 += r52;
            r42 -= r52;
            this.encrypted = true;
            r22 = 0;
        }
    }

    private int index(int r12, int r22) {
        return (r12 % 4) + ((r22 % 3) * 4);
    }

    private void processAAD() {
        if (this.aadFinished) {
            return;
        }
        byte[] byteArray = this.aadData.toByteArray();
        AbsorbAny(byteArray, 0, byteArray.length, this.Rabsorb, 3);
        this.aadFinished = true;
    }

    private void reset(boolean z10) {
        if (z10) {
            this.tag = null;
        }
        Arrays.fill(this.state, (byte) 0);
        this.aadFinished = false;
        this.encrypted = false;
        this.phase = 2;
        this.message.reset();
        this.aadData.reset();
        byte[] bArr = this.K;
        int length = bArr.length;
        int length2 = this.iv.length;
        byte[] bArr2 = new byte[44];
        this.mode = MODE.ModeKeyed;
        this.Rabsorb = 44;
        System.arraycopy(bArr, 0, bArr2, 0, length);
        System.arraycopy(this.iv, 0, bArr2, length, length2);
        int r12 = length + length2;
        bArr2[r12] = (byte) length2;
        AbsorbAny(bArr2, 0, r12 + 1, this.Rabsorb, 2);
    }

    public void Down(byte[] bArr, int r6, int r72, int r82) {
        int r02 = 0;
        while (r02 < r72) {
            byte[] bArr2 = this.state;
            bArr2[r02] = (byte) (bArr[r6] ^ bArr2[r02]);
            r02++;
            r6++;
        }
        byte[] bArr3 = this.state;
        bArr3[r72] = (byte) (bArr3[r72] ^ 1);
        byte b10 = bArr3[47];
        if (this.mode == MODE.ModeHash) {
            r82 &= 1;
        }
        bArr3[47] = (byte) (b10 ^ r82);
        this.phase = 1;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int r13) throws InvalidCipherTextException, IllegalStateException {
        int r72;
        if (!this.initialised) {
            throw new IllegalArgumentException("Need call init function before encryption/decryption");
        }
        byte[] byteArray = this.message.toByteArray();
        int size = this.message.size();
        boolean z10 = this.forEncryption;
        if ((z10 && size + 16 + r13 > bArr.length) || (!z10 && (size - 16) + r13 > bArr.length)) {
            throw new OutputLengthException("output buffer too short");
        }
        processAAD();
        if (this.forEncryption) {
            encrypt(byteArray, 0, size, bArr, r13);
            byte[] bArr2 = new byte[16];
            this.tag = bArr2;
            Up(bArr2, 16, 64);
            System.arraycopy(this.tag, 0, bArr, r13 + size, 16);
            r72 = size + 16;
        } else {
            r72 = size - 16;
            encrypt(byteArray, 0, r72, bArr, r13);
            byte[] bArr3 = new byte[16];
            this.tag = bArr3;
            Up(bArr3, 16, 64);
            int r132 = r72;
            int r12 = 0;
            while (r12 < 16) {
                int r22 = r132 + 1;
                if (this.tag[r12] != byteArray[r132]) {
                    throw new IllegalArgumentException("Mac does not match");
                }
                r12++;
                r132 = r22;
            }
        }
        reset(false);
        return r72;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return "Xoodyak AEAD";
    }

    public int getBlockSize() {
        return 24;
    }

    public int getIVBytesSize() {
        return 16;
    }

    public int getKeyBytesSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return this.tag;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int r12) {
        return r12 + 16;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int r12) {
        return r12;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.forEncryption = z10;
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("Xoodyak init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] bArr = parametersWithIV.getIV();
        this.iv = bArr;
        if (bArr == null || bArr.length != 16) {
            throw new IllegalArgumentException("Xoodyak requires exactly 16 bytes of IV");
        }
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            throw new IllegalArgumentException("Xoodyak init parameters must include a key");
        }
        byte[] key = ((KeyParameter) parametersWithIV.getParameters()).getKey();
        this.K = key;
        if (key.length != 16) {
            throw new IllegalArgumentException("Xoodyak key must be 128 bits long");
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z10)));
        this.state = new byte[48];
        this.tag = new byte[16];
        this.initialised = true;
        reset();
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b10) {
        if (!this.aadFinished) {
            this.aadData.write(b10);
            return;
        }
        StringBuilder sb2 = new StringBuilder("AAD cannot be added after reading a full block(");
        sb2.append(getBlockSize());
        sb2.append(" bytes) of input for ");
        sb2.append(this.forEncryption ? "encryption" : "decryption");
        throw new IllegalArgumentException(sb2.toString());
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int r42, int r52) {
        if (!this.aadFinished) {
            if (r42 + r52 > bArr.length) {
                throw new DataLengthException("input buffer too short");
            }
            this.aadData.write(bArr, r42, r52);
        } else {
            StringBuilder sb2 = new StringBuilder("AAD cannot be added after reading a full block(");
            sb2.append(getBlockSize());
            sb2.append(" bytes) of input for ");
            sb2.append(this.forEncryption ? "encryption" : "decryption");
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b10, byte[] bArr, int r10) throws DataLengthException {
        return processBytes(new byte[]{b10}, 0, 1, bArr, r10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int r82, int r92, byte[] bArr2, int r11) throws DataLengthException {
        if (!this.initialised) {
            throw new IllegalArgumentException("Need call init function before encryption/decryption");
        }
        if (this.mode != MODE.ModeKeyed) {
            throw new IllegalArgumentException("Xoodyak has not been initialised");
        }
        if (r82 + r92 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        this.message.write(bArr, r82, r92);
        int size = this.message.size() - (this.forEncryption ? 0 : 16);
        if (size < getBlockSize()) {
            return 0;
        }
        byte[] byteArray = this.message.toByteArray();
        int blockSize = getBlockSize() * (size / getBlockSize());
        if (blockSize + r11 > bArr2.length) {
            throw new OutputLengthException("output buffer is too short");
        }
        processAAD();
        encrypt(byteArray, 0, blockSize, bArr2, r11);
        this.message.reset();
        this.message.write(byteArray, blockSize, byteArray.length - blockSize);
        return blockSize;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        if (!this.initialised) {
            throw new IllegalArgumentException("Need call init function before encryption/decryption");
        }
        reset(true);
    }
}
