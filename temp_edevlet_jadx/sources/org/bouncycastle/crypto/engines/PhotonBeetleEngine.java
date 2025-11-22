package org.bouncycastle.crypto.engines;

import java.io.ByteArrayOutputStream;
import java.lang.reflect.Array;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.modes.AEADCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public class PhotonBeetleEngine implements AEADCipher {
    private byte[] A;
    private byte[] K;
    private final int LAST_THREE_BITS_OFFSET;
    private byte[] N;
    private final int RATE_INBYTES;
    private final int RATE_INBYTES_HALF;
    private final int STATE_INBYTES;
    private byte[] T;
    private boolean encrypted;
    private boolean forEncryption;
    private boolean initialised;
    private boolean input_empty;
    private byte[] state;
    private byte[][] state_2d;
    private final ByteArrayOutputStream aadData = new ByteArrayOutputStream();
    private final ByteArrayOutputStream message = new ByteArrayOutputStream();
    private final int CRYPTO_KEYBYTES = 16;
    private final int CRYPTO_NPUBBYTES = 16;
    private final int TAG_INBYTES = 16;
    private final int ROUND = 12;
    private final int D = 8;
    private final int Dq = 3;
    private final int Dr = 7;
    private final int DSquare = 64;
    private final int S = 4;
    private final int S_1 = 3;
    private final byte[][] RC = {new byte[]{1, 3, 7, 14, PassportService.SFI_DG13, PassportService.SFI_DG11, 6, PassportService.SFI_DG12, 9, 2, 5, 10}, new byte[]{0, 2, 6, PassportService.SFI_DG15, PassportService.SFI_DG12, 10, 7, PassportService.SFI_DG13, 8, 3, 4, PassportService.SFI_DG11}, new byte[]{2, 0, 4, PassportService.SFI_DG13, 14, 8, 5, PassportService.SFI_DG15, 10, 1, 6, 9}, new byte[]{6, 4, 0, 9, 10, PassportService.SFI_DG12, 1, PassportService.SFI_DG11, 14, 5, 2, PassportService.SFI_DG13}, new byte[]{14, PassportService.SFI_DG12, 8, 1, 2, 4, 9, 3, 6, PassportService.SFI_DG13, 10, 5}, new byte[]{PassportService.SFI_DG15, PassportService.SFI_DG13, 9, 0, 3, 5, 8, 2, 7, PassportService.SFI_DG12, PassportService.SFI_DG11, 4}, new byte[]{PassportService.SFI_DG13, PassportService.SFI_DG15, PassportService.SFI_DG11, 2, 1, 7, 10, 0, 5, 14, 9, 6}, new byte[]{9, PassportService.SFI_DG11, PassportService.SFI_DG15, 6, 5, 3, 14, 4, 1, 10, PassportService.SFI_DG13, 2}};
    private final byte[][] MixColMatrix = {new byte[]{2, 4, 2, PassportService.SFI_DG11, 2, 8, 5, 6}, new byte[]{PassportService.SFI_DG12, 9, 8, PassportService.SFI_DG13, 7, 7, 5, 2}, new byte[]{4, 4, PassportService.SFI_DG13, PassportService.SFI_DG13, 9, 4, PassportService.SFI_DG13, 9}, new byte[]{1, 6, 5, 1, PassportService.SFI_DG12, PassportService.SFI_DG13, PassportService.SFI_DG15, 14}, new byte[]{PassportService.SFI_DG15, PassportService.SFI_DG12, 9, PassportService.SFI_DG13, 14, 5, 14, PassportService.SFI_DG13}, new byte[]{9, 14, 5, PassportService.SFI_DG15, 4, PassportService.SFI_DG12, 9, 6}, new byte[]{PassportService.SFI_DG12, 2, 2, 10, 3, 1, 1, 14}, new byte[]{PassportService.SFI_DG15, 1, PassportService.SFI_DG13, 10, 5, 10, 2, 3}};
    private final byte[] sbox = {PassportService.SFI_DG12, 5, 6, PassportService.SFI_DG11, 9, 0, 10, PassportService.SFI_DG13, 3, 14, PassportService.SFI_DG15, 8, 4, 7, 1, 2};

    /* renamed from: org.bouncycastle.crypto.engines.PhotonBeetleEngine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$PhotonBeetleEngine$PhotonBeetleParameters;

        static {
            int[] r02 = new int[PhotonBeetleParameters.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$PhotonBeetleEngine$PhotonBeetleParameters = r02;
            try {
                r02[PhotonBeetleParameters.pb32.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$PhotonBeetleEngine$PhotonBeetleParameters[PhotonBeetleParameters.pb128.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum PhotonBeetleParameters {
        pb32,
        pb128
    }

    public PhotonBeetleEngine(PhotonBeetleParameters photonBeetleParameters) {
        int r14;
        int r02;
        int r142 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$PhotonBeetleEngine$PhotonBeetleParameters[photonBeetleParameters.ordinal()];
        if (r142 == 1) {
            r14 = 32;
            r02 = BERTags.FLAGS;
        } else if (r142 != 2) {
            r14 = 0;
            r02 = 0;
        } else {
            r14 = 128;
            r02 = 128;
        }
        int r12 = (r14 + 7) >>> 3;
        this.RATE_INBYTES = r12;
        this.RATE_INBYTES_HALF = r12 >>> 1;
        int r143 = r14 + r02;
        int r03 = (r143 + 7) >>> 3;
        this.STATE_INBYTES = r03;
        this.LAST_THREE_BITS_OFFSET = (r143 - ((r03 - 1) << 3)) - 3;
        this.initialised = false;
    }

    private void PHOTON_Permutation() {
        for (int r12 = 0; r12 < 64; r12++) {
            this.state_2d[r12 >>> 3][r12 & 7] = (byte) (((this.state[r12 >> 1] & 255) >>> ((r12 & 1) * 4)) & 15);
        }
        for (int r13 = 0; r13 < 12; r13++) {
            for (int r42 = 0; r42 < 8; r42++) {
                byte[] bArr = this.state_2d[r42];
                bArr[0] = (byte) (bArr[0] ^ this.RC[r42][r13]);
            }
            for (int r43 = 0; r43 < 8; r43++) {
                for (int r6 = 0; r6 < 8; r6++) {
                    byte[] bArr2 = this.state_2d[r43];
                    bArr2[r6] = this.sbox[bArr2[r6]];
                }
            }
            for (int r62 = 1; r62 < 8; r62++) {
                System.arraycopy(this.state_2d[r62], 0, this.state, 0, 8);
                int r92 = 8 - r62;
                System.arraycopy(this.state, r62, this.state_2d[r62], 0, r92);
                System.arraycopy(this.state, 0, this.state_2d[r62], r92, r62);
            }
            for (int r63 = 0; r63 < 8; r63++) {
                for (int r72 = 0; r72 < 8; r72++) {
                    byte b10 = 0;
                    for (int r82 = 0; r82 < 8; r82++) {
                        int r10 = this.MixColMatrix[r72][r82];
                        byte b11 = this.state_2d[r82][r63];
                        int r132 = 0;
                        for (int r122 = 0; r122 < 4; r122++) {
                            if (((b11 >>> r122) & 1) != 0) {
                                r132 ^= r10;
                            }
                            int r14 = (r10 >>> 3) & 1;
                            r10 <<= 1;
                            if (r14 != 0) {
                                r10 ^= 3;
                            }
                        }
                        b10 = (byte) (b10 ^ (r132 & 15));
                    }
                    this.state[r72] = b10;
                }
                for (int r73 = 0; r73 < 8; r73++) {
                    this.state_2d[r73][r63] = this.state[r73];
                }
            }
        }
        for (int r02 = 0; r02 < 64; r02 += 2) {
            byte[] bArr3 = this.state_2d[r02 >>> 3];
            this.state[r02 >>> 1] = (byte) (((bArr3[(r02 + 1) & 7] & PassportService.SFI_DG15) << 4) | (bArr3[r02 & 7] & PassportService.SFI_DG15));
        }
    }

    private void XOR(byte[] bArr, int r6, int r72) {
        int r02 = 0;
        while (r02 < r72) {
            byte[] bArr2 = this.state;
            bArr2[r02] = (byte) (bArr[r6] ^ bArr2[r02]);
            r02++;
            r6++;
        }
    }

    private void reset(boolean z10) {
        if (z10) {
            this.T = null;
        }
        this.input_empty = true;
        this.aadData.reset();
        this.message.reset();
        byte[] bArr = this.K;
        System.arraycopy(bArr, 0, this.state, 0, bArr.length);
        byte[] bArr2 = this.N;
        System.arraycopy(bArr2, 0, this.state, this.K.length, bArr2.length);
        this.encrypted = false;
    }

    private void rhoohr(byte[] bArr, int r92, byte[] bArr2, int r11, int r12) {
        int r42;
        int r13 = 0;
        byte[] bArr3 = this.state_2d[0];
        int r22 = Math.min(r12, this.RATE_INBYTES_HALF);
        int r32 = 0;
        while (true) {
            r42 = this.RATE_INBYTES_HALF;
            if (r32 >= r42 - 1) {
                break;
            }
            byte[] bArr4 = this.state;
            int r6 = r32 + 1;
            bArr3[r32] = (byte) (((bArr4[r6] & 1) << 7) | ((bArr4[r32] & 255) >>> 1));
            r32 = r6;
        }
        byte[] bArr5 = this.state;
        bArr3[r42 - 1] = (byte) (((bArr5[r32] & 255) >>> 1) | ((bArr5[0] & 1) << 7));
        while (r13 < r22) {
            bArr[r13 + r92] = (byte) (bArr2[r13 + r11] ^ this.state[this.RATE_INBYTES_HALF + r13]);
            r13++;
        }
        while (r13 < r12) {
            bArr[r13 + r92] = (byte) (bArr2[r13 + r11] ^ bArr3[r13 - this.RATE_INBYTES_HALF]);
            r13++;
        }
        if (this.forEncryption) {
            XOR(bArr2, r11, r12);
        } else {
            XOR(bArr, r11, r12);
        }
    }

    private byte select(boolean z10, boolean z11, byte b10, byte b11) {
        if (z10 && z11) {
            return (byte) 1;
        }
        if (z10) {
            return (byte) 2;
        }
        return z11 ? b10 : b11;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int r18) throws InvalidCipherTextException, IllegalStateException {
        if (!this.initialised) {
            throw new IllegalArgumentException("Need call init function before encryption/decryption");
        }
        int size = this.message.size();
        boolean z10 = this.forEncryption;
        int r10 = size - (z10 ? 0 : 16);
        if ((z10 && r10 + 16 + r18 > bArr.length) || (!z10 && r10 + r18 > bArr.length)) {
            throw new OutputLengthException("output buffer too short");
        }
        byte[] byteArray = this.message.toByteArray();
        byte[] byteArray2 = this.aadData.toByteArray();
        this.A = byteArray2;
        int length = byteArray2.length;
        if (length != 0 || r10 != 0) {
            this.input_empty = false;
        }
        byte bSelect = select(r10 != 0, length % this.RATE_INBYTES == 0, (byte) 3, (byte) 4);
        byte bSelect2 = select(length != 0, r10 % this.RATE_INBYTES == 0, (byte) 5, (byte) 6);
        if (length != 0) {
            int r22 = this.RATE_INBYTES;
            int r32 = ((length + r22) - 1) / r22;
            int r23 = 0;
            while (true) {
                int r42 = r32 - 1;
                PHOTON_Permutation();
                if (r23 >= r42) {
                    break;
                }
                byte[] bArr2 = this.A;
                int r52 = this.RATE_INBYTES;
                XOR(bArr2, r23 * r52, r52);
                r23++;
            }
            int r33 = this.RATE_INBYTES;
            int r02 = length - (r23 * r33);
            XOR(this.A, r23 * r33, r02);
            if (r02 < this.RATE_INBYTES) {
                byte[] bArr3 = this.state;
                bArr3[r02] = (byte) (bArr3[r02] ^ 1);
            }
            byte[] bArr4 = this.state;
            int r24 = this.STATE_INBYTES - 1;
            bArr4[r24] = (byte) ((bSelect << this.LAST_THREE_BITS_OFFSET) ^ bArr4[r24]);
        }
        if (r10 != 0) {
            int r03 = this.RATE_INBYTES;
            int r14 = ((r10 + r03) - 1) / r03;
            int r15 = 0;
            while (true) {
                int r04 = r14 - 1;
                PHOTON_Permutation();
                if (r15 >= r04) {
                    break;
                }
                int r53 = this.RATE_INBYTES;
                rhoohr(bArr, (r15 * r53) + r18, byteArray, (r15 * r53) + 0, r53);
                r15++;
            }
            int r05 = this.RATE_INBYTES;
            int r142 = r10 - (r15 * r05);
            rhoohr(bArr, (r15 * r05) + r18, byteArray, (r15 * r05) + 0, r142);
            if (r142 < this.RATE_INBYTES) {
                byte[] bArr5 = this.state;
                bArr5[r142] = (byte) (bArr5[r142] ^ 1);
            }
            byte[] bArr6 = this.state;
            int r12 = this.STATE_INBYTES - 1;
            bArr6[r12] = (byte) (bArr6[r12] ^ (bSelect2 << this.LAST_THREE_BITS_OFFSET));
        }
        int r06 = r18 + r10;
        if (this.input_empty) {
            byte[] bArr7 = this.state;
            int r25 = this.STATE_INBYTES - 1;
            bArr7[r25] = (byte) (bArr7[r25] ^ (1 << this.LAST_THREE_BITS_OFFSET));
        }
        PHOTON_Permutation();
        byte[] bArr8 = new byte[16];
        this.T = bArr8;
        System.arraycopy(this.state, 0, bArr8, 0, 16);
        if (this.forEncryption) {
            System.arraycopy(this.T, 0, bArr, r06, 16);
            r10 += 16;
        } else {
            for (int r07 = 0; r07 < 16; r07++) {
                if (this.T[r07] != byteArray[r10 + r07]) {
                    throw new IllegalArgumentException("Mac does not match");
                }
            }
        }
        reset(false);
        return r10;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return "Photon-Beetle AEAD";
    }

    public int getBlockSize() {
        return this.RATE_INBYTES;
    }

    public int getIVBytesSize() {
        return 16;
    }

    public int getKeyBytesSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return this.T;
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
            throw new IllegalArgumentException("Photon-Beetle AEAD init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] bArr = parametersWithIV.getIV();
        this.N = bArr;
        if (bArr == null || bArr.length != 16) {
            throw new IllegalArgumentException("Photon-Beetle AEAD requires exactly 16 bytes of IV");
        }
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            throw new IllegalArgumentException("Photon-Beetle AEAD init parameters must include a key");
        }
        byte[] key = ((KeyParameter) parametersWithIV.getParameters()).getKey();
        this.K = key;
        if (key.length != 16) {
            throw new IllegalArgumentException("Photon-Beetle AEAD key must be 128 bits long");
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z10)));
        this.state = new byte[this.STATE_INBYTES];
        this.state_2d = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 8, 8);
        this.T = new byte[16];
        this.initialised = true;
        reset(false);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b10) {
        this.aadData.write(b10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int r42, int r52) {
        if (r42 + r52 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        this.aadData.write(bArr, r42, r52);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b10, byte[] bArr, int r10) throws DataLengthException {
        return processBytes(new byte[]{b10}, 0, 1, bArr, r10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int r22, int r32, byte[] bArr2, int r52) throws DataLengthException {
        if (r22 + r32 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        this.message.write(bArr, r22, r32);
        return 0;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        if (!this.initialised) {
            throw new IllegalArgumentException("Need call init function before encryption/decryption");
        }
        reset(true);
    }
}
