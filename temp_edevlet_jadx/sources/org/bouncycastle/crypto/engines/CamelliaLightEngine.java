package org.bouncycastle.crypto.engines;

import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.jmrtd.PassportService;
import org.jmrtd.lds.CVCAFile;

/* loaded from: classes2.dex */
public class CamelliaLightEngine implements BlockCipher {
    private static final int BLOCK_SIZE = 16;
    private static final int MASK8 = 255;
    private int _keySize;
    private boolean forEncryption;
    private static final int[] SIGMA = {-1600231809, 1003262091, -1233459112, 1286239154, -957401297, -380665154, 1426019237, -237801700, 283453434, -563598051, -1336506174, -1276722691};
    private static final byte[] SBOX1 = {ISO7816.INS_MANAGE_CHANNEL, -126, ISO7816.INS_UNBLOCK_CHV, -20, ISO7816.INS_READ_RECORD2, 39, ISO7816.INS_GET_RESPONSE, -27, ISO7816.INS_DELETE_FILE, ISOFileInfo.PROP_INFO, 87, 53, -22, PassportService.SFI_DG12, -82, 65, 35, -17, 107, -109, 69, 25, ISOFileInfo.A5, 33, -19, 14, 79, 78, 29, 101, -110, -67, -122, -72, -81, -113, 124, -21, 31, -50, 62, ISO7816.INS_DECREASE, ISO7816.INS_UPDATE_RECORD, 95, 94, -59, PassportService.SFI_DG11, 26, -90, -31, 57, ISO7816.INS_GET_DATA, -43, 71, 93, 61, -39, 1, 90, ISO7816.INS_UPDATE_BINARY, 81, 86, 108, 77, ISOFileInfo.SECURITY_ATTR_EXP, PassportService.SFI_DG13, -102, 102, -5, -52, ISO7816.INS_READ_BINARY, 45, 116, 18, 43, ISO7816.INS_VERIFY, -16, ISO7816.INS_READ_BINARY2, -124, -103, -33, 76, -53, ISO7816.INS_ENVELOPE, ISO7816.INS_DECREASE_STAMPED, 126, 118, 5, 109, -73, -87, 49, -47, 23, 4, -41, 20, 88, 58, 97, -34, 27, 17, 28, ISO7816.INS_INCREASE, PassportService.SFI_DG15, -100, 22, 83, 24, -14, ISO7816.INS_MSE, -2, ISO7816.INS_REHABILITATE_CHV, -49, -78, -61, -75, 122, -111, ISO7816.INS_CHANGE_CHV, 8, -24, -88, 96, -4, 105, 80, -86, ISO7816.INS_WRITE_BINARY, ISOFileInfo.A0, 125, ISOFileInfo.A1, -119, ISOFileInfo.FCP_BYTE, -105, 84, 91, PassportService.SFI_COM, -107, ISO7816.INS_CREATE_FILE, -1, ISOFileInfo.FMD_BYTE, ISO7816.INS_WRITE_RECORD, 16, -60, 0, 72, -93, -9, 117, -37, ISOFileInfo.LCS_BYTE, 3, -26, ISO7816.INS_PUT_DATA, 9, 63, -35, -108, ISOFileInfo.FCI_EXT, 92, ISOFileInfo.FILE_IDENTIFIER, 2, -51, 74, -112, 51, 115, 103, -10, -13, -99, 127, -65, ISO7816.INS_APPEND_RECORD, 82, -101, ISO7816.INS_LOAD_KEY_FILE, 38, -56, 55, -58, 59, ISOFileInfo.DATA_BYTES2, -106, ISOFileInfo.FCI_BYTE, 75, 19, -66, 99, 46, -23, 121, -89, ISOFileInfo.SECURITY_ATTR_COMPACT, -97, 110, PSSSigner.TRAILER_IMPLICIT, ISOFileInfo.CHANNEL_SECURITY, 41, -11, -7, ISO7816.INS_READ_RECORD_STAMPED, 47, -3, ISO7816.INS_READ_BINARY_STAMPED, 89, 120, -104, 6, 106, -25, 70, 113, -70, -44, 37, ISOFileInfo.AB, CVCAFile.CAR_TAG, -120, -94, ISOFileInfo.ENV_TEMP_EF, -6, 114, 7, -71, 85, -8, -18, -84, 10, 54, 73, ISO7816.INS_PSO, 104, 60, 56, -15, -92, 64, 40, -45, 123, -69, -55, 67, -63, 21, -29, -83, -12, 119, -57, ISOFileInfo.DATA_BYTES1, -98};
    private boolean initialized = false;
    private int[] subkey = new int[96];
    private int[] kw = new int[8];

    /* renamed from: ke, reason: collision with root package name */
    private int[] f11505ke = new int[12];

    public CamelliaLightEngine() {
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), bitsOfSecurity()));
    }

    private int bitsOfSecurity() {
        return this._keySize * 8;
    }

    private int bytes2int(byte[] bArr, int r52) {
        int r12 = 0;
        for (int r02 = 0; r02 < 4; r02++) {
            r12 = (r12 << 8) + (bArr[r02 + r52] & 255);
        }
        return r12;
    }

    private void camelliaF2(int[] r10, int[] r11, int r12) {
        int r13 = r10[0] ^ r11[r12 + 0];
        int r22 = sbox4(r13 & 255) | (sbox3((r13 >>> 8) & 255) << 8) | (sbox2((r13 >>> 16) & 255) << 16);
        byte[] bArr = SBOX1;
        int r14 = ((bArr[(r13 >>> 24) & 255] & 255) << 24) | r22;
        int r6 = r10[1] ^ r11[r12 + 1];
        int r62 = leftRotate((sbox2((r6 >>> 24) & 255) << 24) | (bArr[r6 & 255] & 255) | (sbox4((r6 >>> 8) & 255) << 8) | (sbox3((r6 >>> 16) & 255) << 16), 8);
        int r15 = r14 ^ r62;
        int r63 = leftRotate(r62, 8) ^ r15;
        int r16 = rightRotate(r15, 8) ^ r63;
        r10[2] = (leftRotate(r63, 16) ^ r16) ^ r10[2];
        r10[3] = leftRotate(r16, 8) ^ r10[3];
        int r17 = r10[2] ^ r11[r12 + 2];
        int r18 = ((bArr[(r17 >>> 24) & 255] & 255) << 24) | sbox4(r17 & 255) | (sbox3((r17 >>> 8) & 255) << 8) | (sbox2((r17 >>> 16) & 255) << 16);
        int r112 = r11[r12 + 3] ^ r10[3];
        int r113 = leftRotate((sbox2((r112 >>> 24) & 255) << 24) | (bArr[r112 & 255] & 255) | (sbox4((r112 >>> 8) & 255) << 8) | (sbox3((r112 >>> 16) & 255) << 16), 8);
        int r122 = r18 ^ r113;
        int r114 = leftRotate(r113, 8) ^ r122;
        int r123 = rightRotate(r122, 8) ^ r114;
        r10[0] = (leftRotate(r114, 16) ^ r123) ^ r10[0];
        r10[1] = r10[1] ^ leftRotate(r123, 8);
    }

    private void camelliaFLs(int[] r72, int[] r82, int r92) {
        int r12 = r72[1] ^ leftRotate(r72[0] & r82[r92 + 0], 1);
        r72[1] = r12;
        r72[0] = (r12 | r82[r92 + 1]) ^ r72[0];
        int r22 = r72[2];
        int r32 = r82[r92 + 3];
        int r52 = r72[3];
        int r23 = r22 ^ (r32 | r52);
        r72[2] = r23;
        r72[3] = leftRotate(r82[r92 + 2] & r23, 1) ^ r52;
    }

    private static void decroldq(int r92, int[] r10, int r11, int[] r12, int r13) {
        int r02 = r13 + 2;
        int r14 = r11 + 0;
        int r32 = r11 + 1;
        int r52 = 32 - r92;
        r12[r02] = (r10[r14] << r92) | (r10[r32] >>> r52);
        int r22 = r13 + 3;
        int r6 = r11 + 2;
        r12[r22] = (r10[r32] << r92) | (r10[r6] >>> r52);
        int r42 = r13 + 0;
        int r112 = r11 + 3;
        r12[r42] = (r10[r6] << r92) | (r10[r112] >>> r52);
        int r132 = r13 + 1;
        r12[r132] = (r10[r112] << r92) | (r10[r14] >>> r52);
        r10[r14] = r12[r02];
        r10[r32] = r12[r22];
        r10[r6] = r12[r42];
        r10[r112] = r12[r132];
    }

    private static void decroldqo32(int r92, int[] r10, int r11, int[] r12, int r13) {
        int r02 = r13 + 2;
        int r14 = r11 + 1;
        int r32 = r92 - 32;
        int r42 = r11 + 2;
        int r93 = 64 - r92;
        r12[r02] = (r10[r14] << r32) | (r10[r42] >>> r93);
        int r22 = r13 + 3;
        int r6 = r11 + 3;
        r12[r22] = (r10[r42] << r32) | (r10[r6] >>> r93);
        int r52 = r13 + 0;
        int r112 = r11 + 0;
        r12[r52] = (r10[r6] << r32) | (r10[r112] >>> r93);
        int r132 = r13 + 1;
        r12[r132] = (r10[r14] >>> r93) | (r10[r112] << r32);
        r10[r112] = r12[r02];
        r10[r14] = r12[r22];
        r10[r42] = r12[r52];
        r10[r6] = r12[r132];
    }

    private void int2bytes(int r42, byte[] bArr, int r6) {
        for (int r02 = 0; r02 < 4; r02++) {
            bArr[(3 - r02) + r6] = (byte) r42;
            r42 >>>= 8;
        }
    }

    private byte lRot8(byte b10, int r32) {
        return (byte) (((b10 & 255) >>> (8 - r32)) | (b10 << r32));
    }

    private static int leftRotate(int r12, int r22) {
        return (r12 << r22) + (r12 >>> (32 - r22));
    }

    private int processBlock128(byte[] bArr, int r10, byte[] bArr2, int r12) {
        int[] r13 = new int[4];
        for (int r32 = 0; r32 < 4; r32++) {
            r13[r32] = bytes2int(bArr, (r32 * 4) + r10) ^ this.kw[r32];
        }
        camelliaF2(r13, this.subkey, 0);
        camelliaF2(r13, this.subkey, 4);
        camelliaF2(r13, this.subkey, 8);
        camelliaFLs(r13, this.f11505ke, 0);
        camelliaF2(r13, this.subkey, 12);
        camelliaF2(r13, this.subkey, 16);
        camelliaF2(r13, this.subkey, 20);
        camelliaFLs(r13, this.f11505ke, 4);
        camelliaF2(r13, this.subkey, 24);
        camelliaF2(r13, this.subkey, 28);
        camelliaF2(r13, this.subkey, 32);
        int r42 = r13[2];
        int[] r52 = this.kw;
        int r02 = r52[4] ^ r42;
        r13[2] = r02;
        r13[3] = r13[3] ^ r52[5];
        r13[0] = r13[0] ^ r52[6];
        r13[1] = r52[7] ^ r13[1];
        int2bytes(r02, bArr2, r12);
        int2bytes(r13[3], bArr2, r12 + 4);
        int2bytes(r13[0], bArr2, r12 + 8);
        int2bytes(r13[1], bArr2, r12 + 12);
        return 16;
    }

    private int processBlock192or256(byte[] bArr, int r10, byte[] bArr2, int r12) {
        int[] r13 = new int[4];
        for (int r32 = 0; r32 < 4; r32++) {
            r13[r32] = bytes2int(bArr, (r32 * 4) + r10) ^ this.kw[r32];
        }
        camelliaF2(r13, this.subkey, 0);
        camelliaF2(r13, this.subkey, 4);
        camelliaF2(r13, this.subkey, 8);
        camelliaFLs(r13, this.f11505ke, 0);
        camelliaF2(r13, this.subkey, 12);
        camelliaF2(r13, this.subkey, 16);
        camelliaF2(r13, this.subkey, 20);
        camelliaFLs(r13, this.f11505ke, 4);
        camelliaF2(r13, this.subkey, 24);
        camelliaF2(r13, this.subkey, 28);
        camelliaF2(r13, this.subkey, 32);
        camelliaFLs(r13, this.f11505ke, 8);
        camelliaF2(r13, this.subkey, 36);
        camelliaF2(r13, this.subkey, 40);
        camelliaF2(r13, this.subkey, 44);
        int r102 = r13[2];
        int[] r52 = this.kw;
        int r103 = r102 ^ r52[4];
        r13[2] = r103;
        r13[3] = r13[3] ^ r52[5];
        r13[0] = r13[0] ^ r52[6];
        r13[1] = r52[7] ^ r13[1];
        int2bytes(r103, bArr2, r12);
        int2bytes(r13[3], bArr2, r12 + 4);
        int2bytes(r13[0], bArr2, r12 + 8);
        int2bytes(r13[1], bArr2, r12 + 12);
        return 16;
    }

    private static int rightRotate(int r12, int r22) {
        return (r12 >>> r22) + (r12 << (32 - r22));
    }

    private static void roldq(int r92, int[] r10, int r11, int[] r12, int r13) {
        int r02 = r13 + 0;
        int r14 = r11 + 0;
        int r32 = r11 + 1;
        int r52 = 32 - r92;
        r12[r02] = (r10[r14] << r92) | (r10[r32] >>> r52);
        int r22 = r13 + 1;
        int r6 = r11 + 2;
        r12[r22] = (r10[r32] << r92) | (r10[r6] >>> r52);
        int r42 = r13 + 2;
        int r112 = r11 + 3;
        r12[r42] = (r10[r6] << r92) | (r10[r112] >>> r52);
        int r132 = r13 + 3;
        r12[r132] = (r10[r112] << r92) | (r10[r14] >>> r52);
        r10[r14] = r12[r02];
        r10[r32] = r12[r22];
        r10[r6] = r12[r42];
        r10[r112] = r12[r132];
    }

    private static void roldqo32(int r92, int[] r10, int r11, int[] r12, int r13) {
        int r02 = r13 + 0;
        int r14 = r11 + 1;
        int r32 = r92 - 32;
        int r42 = r11 + 2;
        int r93 = 64 - r92;
        r12[r02] = (r10[r14] << r32) | (r10[r42] >>> r93);
        int r22 = r13 + 1;
        int r6 = r11 + 3;
        r12[r22] = (r10[r42] << r32) | (r10[r6] >>> r93);
        int r52 = r13 + 2;
        int r112 = r11 + 0;
        r12[r52] = (r10[r6] << r32) | (r10[r112] >>> r93);
        int r132 = r13 + 3;
        r12[r132] = (r10[r14] >>> r93) | (r10[r112] << r32);
        r10[r112] = r12[r02];
        r10[r14] = r12[r22];
        r10[r42] = r12[r52];
        r10[r6] = r12[r132];
    }

    private int sbox2(int r22) {
        return lRot8(SBOX1[r22], 1) & 255;
    }

    private int sbox3(int r22) {
        return lRot8(SBOX1[r22], 7) & 255;
    }

    private int sbox4(int r32) {
        return SBOX1[lRot8((byte) r32, 1) & 255] & 255;
    }

    private void setKey(boolean z10, byte[] bArr) {
        this.forEncryption = z10;
        int[] r42 = new int[8];
        int[] r6 = new int[4];
        int[] r72 = new int[4];
        int[] r82 = new int[4];
        this._keySize = bArr.length;
        int length = bArr.length;
        if (length == 16) {
            r42[0] = bytes2int(bArr, 0);
            r42[1] = bytes2int(bArr, 4);
            r42[2] = bytes2int(bArr, 8);
            r42[3] = bytes2int(bArr, 12);
            r42[7] = 0;
            r42[6] = 0;
            r42[5] = 0;
            r42[4] = 0;
        } else if (length == 24) {
            r42[0] = bytes2int(bArr, 0);
            r42[1] = bytes2int(bArr, 4);
            r42[2] = bytes2int(bArr, 8);
            r42[3] = bytes2int(bArr, 12);
            r42[4] = bytes2int(bArr, 16);
            int r22 = bytes2int(bArr, 20);
            r42[5] = r22;
            r42[6] = ~r42[4];
            r42[7] = ~r22;
        } else {
            if (length != 32) {
                throw new IllegalArgumentException("key sizes are only 16/24/32 bytes.");
            }
            r42[0] = bytes2int(bArr, 0);
            r42[1] = bytes2int(bArr, 4);
            r42[2] = bytes2int(bArr, 8);
            r42[3] = bytes2int(bArr, 12);
            r42[4] = bytes2int(bArr, 16);
            r42[5] = bytes2int(bArr, 20);
            r42[6] = bytes2int(bArr, 24);
            r42[7] = bytes2int(bArr, 28);
        }
        for (int r23 = 0; r23 < 4; r23++) {
            r6[r23] = r42[r23] ^ r42[r23 + 4];
        }
        camelliaF2(r6, SIGMA, 0);
        for (int r24 = 0; r24 < 4; r24++) {
            r6[r24] = r6[r24] ^ r42[r24];
        }
        camelliaF2(r6, SIGMA, 4);
        if (this._keySize == 16) {
            if (z10) {
                int[] r12 = this.kw;
                r12[0] = r42[0];
                r12[1] = r42[1];
                r12[2] = r42[2];
                r12[3] = r42[3];
                roldq(15, r42, 0, this.subkey, 4);
                roldq(30, r42, 0, this.subkey, 12);
                roldq(15, r42, 0, r82, 0);
                int[] r13 = this.subkey;
                r13[18] = r82[2];
                r13[19] = r82[3];
                roldq(17, r42, 0, this.f11505ke, 4);
                roldq(17, r42, 0, this.subkey, 24);
                roldq(17, r42, 0, this.subkey, 32);
                int[] r14 = this.subkey;
                r14[0] = r6[0];
                r14[1] = r6[1];
                r14[2] = r6[2];
                r14[3] = r6[3];
                roldq(15, r6, 0, r14, 8);
                roldq(15, r6, 0, this.f11505ke, 0);
                roldq(15, r6, 0, r82, 0);
                int[] r15 = this.subkey;
                r15[16] = r82[0];
                r15[17] = r82[1];
                roldq(15, r6, 0, r15, 20);
                roldqo32(34, r6, 0, this.subkey, 28);
                roldq(17, r6, 0, this.kw, 4);
                return;
            }
            int[] r16 = this.kw;
            r16[4] = r42[0];
            r16[5] = r42[1];
            r16[6] = r42[2];
            r16[7] = r42[3];
            decroldq(15, r42, 0, this.subkey, 28);
            decroldq(30, r42, 0, this.subkey, 20);
            decroldq(15, r42, 0, r82, 0);
            int[] r17 = this.subkey;
            r17[16] = r82[0];
            r17[17] = r82[1];
            decroldq(17, r42, 0, this.f11505ke, 0);
            decroldq(17, r42, 0, this.subkey, 8);
            decroldq(17, r42, 0, this.subkey, 0);
            int[] r18 = this.subkey;
            r18[34] = r6[0];
            r18[35] = r6[1];
            r18[32] = r6[2];
            r18[33] = r6[3];
            decroldq(15, r6, 0, r18, 24);
            decroldq(15, r6, 0, this.f11505ke, 4);
            decroldq(15, r6, 0, r82, 0);
            int[] r19 = this.subkey;
            r19[18] = r82[2];
            r19[19] = r82[3];
            decroldq(15, r6, 0, r19, 12);
            decroldqo32(34, r6, 0, this.subkey, 4);
            roldq(17, r6, 0, this.kw, 0);
            return;
        }
        for (int r25 = 0; r25 < 4; r25++) {
            r72[r25] = r6[r25] ^ r42[r25 + 4];
        }
        camelliaF2(r72, SIGMA, 8);
        if (z10) {
            int[] r110 = this.kw;
            r110[0] = r42[0];
            r110[1] = r42[1];
            r110[2] = r42[2];
            r110[3] = r42[3];
            roldqo32(45, r42, 0, this.subkey, 16);
            roldq(15, r42, 0, this.f11505ke, 4);
            roldq(17, r42, 0, this.subkey, 32);
            roldqo32(34, r42, 0, this.subkey, 44);
            roldq(15, r42, 4, this.subkey, 4);
            roldq(15, r42, 4, this.f11505ke, 0);
            roldq(30, r42, 4, this.subkey, 24);
            roldqo32(34, r42, 4, this.subkey, 36);
            roldq(15, r6, 0, this.subkey, 8);
            roldq(30, r6, 0, this.subkey, 20);
            int[] r111 = this.f11505ke;
            r111[8] = r6[1];
            r111[9] = r6[2];
            r111[10] = r6[3];
            r111[11] = r6[0];
            roldqo32(49, r6, 0, this.subkey, 40);
            int[] r112 = this.subkey;
            r112[0] = r72[0];
            r112[1] = r72[1];
            r112[2] = r72[2];
            r112[3] = r72[3];
            roldq(30, r72, 0, r112, 12);
            roldq(30, r72, 0, this.subkey, 28);
            roldqo32(51, r72, 0, this.kw, 4);
            return;
        }
        int[] r113 = this.kw;
        r113[4] = r42[0];
        r113[5] = r42[1];
        r113[6] = r42[2];
        r113[7] = r42[3];
        decroldqo32(45, r42, 0, this.subkey, 28);
        decroldq(15, r42, 0, this.f11505ke, 4);
        decroldq(17, r42, 0, this.subkey, 12);
        decroldqo32(34, r42, 0, this.subkey, 0);
        decroldq(15, r42, 4, this.subkey, 40);
        decroldq(15, r42, 4, this.f11505ke, 8);
        decroldq(30, r42, 4, this.subkey, 20);
        decroldqo32(34, r42, 4, this.subkey, 8);
        decroldq(15, r6, 0, this.subkey, 36);
        decroldq(30, r6, 0, this.subkey, 24);
        int[] r114 = this.f11505ke;
        r114[2] = r6[1];
        r114[3] = r6[2];
        r114[0] = r6[3];
        r114[1] = r6[0];
        decroldqo32(49, r6, 0, this.subkey, 4);
        int[] r115 = this.subkey;
        r115[46] = r72[0];
        r115[47] = r72[1];
        r115[44] = r72[2];
        r115[45] = r72[3];
        decroldq(30, r72, 0, r115, 32);
        decroldq(30, r72, 0, this.subkey, 16);
        roldqo32(51, r72, 0, this.kw, 0);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Camellia";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("only simple KeyParameter expected.");
        }
        setKey(z10, ((KeyParameter) cipherParameters).getKey());
        this.initialized = true;
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), bitsOfSecurity(), cipherParameters, Utils.getPurpose(z10)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r42, byte[] bArr2, int r6) throws IllegalStateException {
        if (!this.initialized) {
            throw new IllegalStateException("Camellia is not initialized");
        }
        if (r42 + 16 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r6 + 16 <= bArr2.length) {
            return this._keySize == 16 ? processBlock128(bArr, r42, bArr2, r6) : processBlock192or256(bArr, r42, bArr2, r6);
        }
        throw new OutputLengthException("output buffer too short");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
