package org.bouncycastle.crypto.engines;

import ab.b;
import androidx.core.view.InputDeviceCompat;
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
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;
import org.jmrtd.PassportService;
import org.jmrtd.lds.CVCAFile;

/* loaded from: classes2.dex */
public final class TwofishEngine implements BlockCipher {
    private static final int BLOCK_SIZE = 16;
    private static final int GF256_FDBK = 361;
    private static final int GF256_FDBK_2 = 180;
    private static final int GF256_FDBK_4 = 90;
    private static final int INPUT_WHITEN = 0;
    private static final int MAX_KEY_BITS = 256;
    private static final int MAX_ROUNDS = 16;
    private static final int OUTPUT_WHITEN = 4;
    private static final byte[][] P = {new byte[]{-87, 103, ISO7816.INS_READ_RECORD2, -24, 4, -3, -93, 118, -102, -110, ISOFileInfo.DATA_BYTES1, 120, ISO7816.INS_DELETE_FILE, -35, -47, 56, PassportService.SFI_DG13, -58, 53, -104, 24, -9, -20, 108, 67, 117, 55, 38, -6, 19, -108, 72, -14, ISO7816.INS_WRITE_BINARY, ISOFileInfo.SECURITY_ATTR_EXP, ISO7816.INS_DECREASE, -124, 84, -33, 35, 25, 91, 61, 89, -13, -82, -94, -126, 99, 1, ISOFileInfo.FILE_IDENTIFIER, 46, -39, 81, -101, 124, -90, -21, ISOFileInfo.A5, -66, 22, PassportService.SFI_DG12, -29, 97, ISO7816.INS_GET_RESPONSE, ISOFileInfo.SECURITY_ATTR_COMPACT, 58, -11, 115, ISO7816.INS_UNBLOCK_CHV, 37, PassportService.SFI_DG11, -69, 78, -119, 107, 83, 106, ISO7816.INS_READ_BINARY_STAMPED, -15, -31, -26, -67, 69, ISO7816.INS_APPEND_RECORD, -12, ISO7816.INS_READ_RECORD_STAMPED, 102, -52, -107, 3, 86, -44, 28, PassportService.SFI_COM, -41, -5, -61, ISOFileInfo.CHANNEL_SECURITY, -75, -23, -49, -65, -70, -22, 119, 57, -81, 51, -55, ISOFileInfo.FCP_BYTE, 113, ISOFileInfo.DATA_BYTES2, 121, 9, -83, ISO7816.INS_CHANGE_CHV, -51, -7, ISO7816.INS_LOAD_KEY_FILE, -27, -59, -71, 77, ISO7816.INS_REHABILITATE_CHV, 8, -122, -25, ISOFileInfo.A1, 29, -86, -19, 6, ISO7816.INS_MANAGE_CHANNEL, -78, ISO7816.INS_WRITE_RECORD, 65, 123, ISOFileInfo.A0, 17, 49, ISO7816.INS_ENVELOPE, 39, -112, ISO7816.INS_VERIFY, -10, 96, -1, -106, 92, ISO7816.INS_READ_BINARY2, ISOFileInfo.AB, -98, -100, 82, 27, 95, -109, 10, -17, -111, ISOFileInfo.PROP_INFO, 73, -18, 45, 79, -113, 59, 71, ISOFileInfo.FCI_EXT, 109, 70, ISO7816.INS_UPDATE_BINARY, 62, 105, ISOFileInfo.FMD_BYTE, ISO7816.INS_PSO, -50, -53, 47, -4, -105, 5, 122, -84, 127, -43, 26, 75, 14, -89, 90, 40, 20, 63, 41, -120, 60, 76, 2, -72, ISO7816.INS_PUT_DATA, ISO7816.INS_READ_BINARY, 23, 85, 31, ISOFileInfo.LCS_BYTE, 125, 87, -57, ISOFileInfo.ENV_TEMP_EF, 116, -73, -60, -97, 114, 126, 21, ISO7816.INS_MSE, 18, 88, 7, -103, ISO7816.INS_DECREASE_STAMPED, 110, 80, -34, 104, 101, PSSSigner.TRAILER_IMPLICIT, -37, -8, -56, -88, 43, 64, ISO7816.INS_UPDATE_RECORD, -2, ISO7816.INS_INCREASE, -92, ISO7816.INS_GET_DATA, 16, 33, -16, -45, 93, PassportService.SFI_DG15, 0, ISOFileInfo.FCI_BYTE, -99, 54, CVCAFile.CAR_TAG, 74, 94, -63, ISO7816.INS_CREATE_FILE}, new byte[]{117, -13, -58, -12, -37, 123, -5, -56, 74, -45, -26, 107, 69, 125, -24, 75, ISO7816.INS_UPDATE_BINARY, ISO7816.INS_INCREASE, ISO7816.INS_LOAD_KEY_FILE, -3, 55, 113, -15, -31, ISO7816.INS_DECREASE, PassportService.SFI_DG15, -8, 27, ISOFileInfo.FCI_EXT, -6, 6, 63, 94, -70, -82, 91, ISOFileInfo.LCS_BYTE, 0, PSSSigner.TRAILER_IMPLICIT, -99, 109, -63, ISO7816.INS_READ_BINARY2, 14, ISOFileInfo.DATA_BYTES1, 93, ISO7816.INS_WRITE_RECORD, -43, ISOFileInfo.A0, -124, 7, 20, -75, -112, ISO7816.INS_UNBLOCK_CHV, -93, -78, 115, 76, 84, -110, 116, 54, 81, 56, ISO7816.INS_READ_BINARY, -67, 90, -4, 96, ISOFileInfo.FCP_BYTE, -106, 108, CVCAFile.CAR_TAG, -9, 16, 124, 40, 39, ISOFileInfo.SECURITY_ATTR_COMPACT, 19, -107, -100, -57, ISO7816.INS_CHANGE_CHV, 70, 59, ISO7816.INS_MANAGE_CHANNEL, ISO7816.INS_GET_DATA, -29, ISOFileInfo.PROP_INFO, -53, 17, ISO7816.INS_WRITE_BINARY, -109, -72, -90, ISOFileInfo.FILE_IDENTIFIER, ISO7816.INS_VERIFY, -1, -97, 119, -61, -52, 3, ISOFileInfo.FCI_BYTE, 8, -65, 64, -25, 43, ISO7816.INS_APPEND_RECORD, 121, PassportService.SFI_DG12, -86, -126, 65, 58, -22, -71, ISO7816.INS_DELETE_FILE, -102, -92, -105, 126, ISO7816.INS_PUT_DATA, 122, 23, 102, -108, ISOFileInfo.A1, 29, 61, -16, -34, ISO7816.INS_READ_RECORD2, PassportService.SFI_DG11, 114, -89, 28, -17, -47, 83, 62, -113, 51, 38, 95, -20, 118, ISO7816.INS_PSO, 73, ISOFileInfo.DATA_BYTES2, -120, -18, 33, -60, 26, -21, -39, -59, 57, -103, -51, -83, 49, ISOFileInfo.SECURITY_ATTR_EXP, 1, 24, 35, -35, 31, 78, 45, -7, 72, 79, -14, 101, ISOFileInfo.CHANNEL_SECURITY, 120, 92, 88, 25, ISOFileInfo.ENV_TEMP_EF, -27, -104, 87, 103, 127, 5, ISOFileInfo.FMD_BYTE, -81, 99, ISO7816.INS_READ_RECORD_STAMPED, -2, -11, -73, 60, ISOFileInfo.A5, -50, -23, 104, ISO7816.INS_REHABILITATE_CHV, ISO7816.INS_CREATE_FILE, 77, 67, 105, 41, 46, -84, 21, 89, -88, 10, -98, 110, 71, -33, ISO7816.INS_DECREASE_STAMPED, 53, 106, -49, ISO7816.INS_UPDATE_RECORD, ISO7816.INS_MSE, -55, ISO7816.INS_GET_RESPONSE, -101, -119, -44, -19, ISOFileInfo.AB, 18, -94, PassportService.SFI_DG13, 82, -69, 2, 47, -87, -41, 97, PassportService.SFI_COM, ISO7816.INS_READ_BINARY_STAMPED, 80, 4, -10, ISO7816.INS_ENVELOPE, 22, 37, -122, 86, 85, 9, -66, -111}};
    private static final int P_00 = 1;
    private static final int P_01 = 0;
    private static final int P_02 = 0;
    private static final int P_03 = 1;
    private static final int P_04 = 1;
    private static final int P_10 = 0;
    private static final int P_11 = 0;
    private static final int P_12 = 1;
    private static final int P_13 = 1;
    private static final int P_14 = 0;
    private static final int P_20 = 1;
    private static final int P_21 = 1;
    private static final int P_22 = 0;
    private static final int P_23 = 0;
    private static final int P_24 = 0;
    private static final int P_30 = 0;
    private static final int P_31 = 1;
    private static final int P_32 = 1;
    private static final int P_33 = 0;
    private static final int P_34 = 1;
    private static final int ROUNDS = 16;
    private static final int ROUND_SUBKEYS = 8;
    private static final int RS_GF_FDBK = 333;
    private static final int SK_BUMP = 16843009;
    private static final int SK_ROTL = 9;
    private static final int SK_STEP = 33686018;
    private static final int TOTAL_SUBKEYS = 40;
    private int[] gSBox;
    private int[] gSubKeys;
    private boolean encrypting = false;
    private int[] gMDS0 = new int[256];
    private int[] gMDS1 = new int[256];
    private int[] gMDS2 = new int[256];
    private int[] gMDS3 = new int[256];
    private int k64Cnt = 0;
    private byte[] workingKey = null;

    public TwofishEngine() {
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 256));
        int[] r32 = new int[2];
        int[] r42 = new int[2];
        int[] r22 = new int[2];
        for (int r52 = 0; r52 < 256; r52++) {
            byte[][] bArr = P;
            int r72 = bArr[0][r52] & 255;
            r32[0] = r72;
            r42[0] = Mx_X(r72) & 255;
            r22[0] = Mx_Y(r72) & 255;
            int r6 = bArr[1][r52] & 255;
            r32[1] = r6;
            r42[1] = Mx_X(r6) & 255;
            int r62 = Mx_Y(r6) & 255;
            r22[1] = r62;
            this.gMDS0[r52] = (r62 << 24) | r32[1] | (r42[1] << 8) | (r62 << 16);
            int[] r63 = this.gMDS1;
            int r82 = r22[0];
            r63[r52] = r82 | (r82 << 8) | (r42[0] << 16) | (r32[0] << 24);
            int[] r64 = this.gMDS2;
            int r83 = r42[1];
            int r92 = r22[1];
            r64[r52] = (r32[1] << 16) | r83 | (r92 << 8) | (r92 << 24);
            int[] r65 = this.gMDS3;
            int r73 = r42[0];
            r65[r52] = (r73 << 24) | (r32[0] << 8) | r73 | (r22[0] << 16);
        }
    }

    private int F32(int r12, int[] r13) {
        int r132;
        int r122;
        int r02 = b0(r12);
        int r14 = b1(r12);
        int r22 = b2(r12);
        int r123 = b3(r12);
        int r42 = r13[0];
        int r6 = r13[1];
        int r82 = r13[2];
        int r133 = r13[3];
        int r10 = this.k64Cnt & 3;
        if (r10 != 0) {
            if (r10 == 1) {
                int[] r134 = this.gMDS0;
                byte[][] bArr = P;
                r132 = (r134[(bArr[0][r02] & 255) ^ b0(r42)] ^ this.gMDS1[(bArr[0][r14] & 255) ^ b1(r42)]) ^ this.gMDS2[(bArr[1][r22] & 255) ^ b2(r42)];
                r122 = this.gMDS3[(bArr[1][r123] & 255) ^ b3(r42)];
                return r132 ^ r122;
            }
            if (r10 != 2) {
                if (r10 != 3) {
                    return 0;
                }
            }
            int[] r135 = this.gMDS0;
            byte[][] bArr2 = P;
            byte[] bArr3 = bArr2[0];
            r132 = (r135[(bArr3[(bArr3[r02] & 255) ^ b0(r6)] & 255) ^ b0(r42)] ^ this.gMDS1[(bArr2[0][(bArr2[1][r14] & 255) ^ b1(r6)] & 255) ^ b1(r42)]) ^ this.gMDS2[(bArr2[1][(bArr2[0][r22] & 255) ^ b2(r6)] & 255) ^ b2(r42)];
            int[] r03 = this.gMDS3;
            byte[] bArr4 = bArr2[1];
            r122 = r03[(bArr4[(bArr4[r123] & 255) ^ b3(r6)] & 255) ^ b3(r42)];
            return r132 ^ r122;
        }
        byte[][] bArr5 = P;
        r02 = (bArr5[1][r02] & 255) ^ b0(r133);
        r14 = (bArr5[0][r14] & 255) ^ b1(r133);
        r22 = (bArr5[0][r22] & 255) ^ b2(r133);
        r123 = (bArr5[1][r123] & 255) ^ b3(r133);
        byte[][] bArr6 = P;
        r02 = (bArr6[1][r02] & 255) ^ b0(r82);
        r14 = (bArr6[1][r14] & 255) ^ b1(r82);
        r22 = (bArr6[0][r22] & 255) ^ b2(r82);
        r123 = (bArr6[0][r123] & 255) ^ b3(r82);
        int[] r1352 = this.gMDS0;
        byte[][] bArr22 = P;
        byte[] bArr32 = bArr22[0];
        r132 = (r1352[(bArr32[(bArr32[r02] & 255) ^ b0(r6)] & 255) ^ b0(r42)] ^ this.gMDS1[(bArr22[0][(bArr22[1][r14] & 255) ^ b1(r6)] & 255) ^ b1(r42)]) ^ this.gMDS2[(bArr22[1][(bArr22[0][r22] & 255) ^ b2(r6)] & 255) ^ b2(r42)];
        int[] r032 = this.gMDS3;
        byte[] bArr42 = bArr22[1];
        r122 = r032[(bArr42[(bArr42[r123] & 255) ^ b3(r6)] & 255) ^ b3(r42)];
        return r132 ^ r122;
    }

    private int Fe32_0(int r42) {
        int[] r02 = this.gSBox;
        return r02[(((r42 >>> 24) & 255) * 2) + InputDeviceCompat.SOURCE_DPAD] ^ ((r02[((r42 & 255) * 2) + 0] ^ r02[(((r42 >>> 8) & 255) * 2) + 1]) ^ r02[(((r42 >>> 16) & 255) * 2) + 512]);
    }

    private int Fe32_3(int r42) {
        int[] r02 = this.gSBox;
        return r02[(((r42 >>> 16) & 255) * 2) + InputDeviceCompat.SOURCE_DPAD] ^ ((r02[(((r42 >>> 24) & 255) * 2) + 0] ^ r02[((r42 & 255) * 2) + 1]) ^ r02[(((r42 >>> 8) & 255) * 2) + 512]);
    }

    private int LFSR1(int r22) {
        return ((r22 & 1) != 0 ? GF256_FDBK_2 : 0) ^ (r22 >> 1);
    }

    private int LFSR2(int r42) {
        return ((r42 >> 2) ^ ((r42 & 2) != 0 ? GF256_FDBK_2 : 0)) ^ ((r42 & 1) != 0 ? 90 : 0);
    }

    private int Mx_X(int r22) {
        return r22 ^ LFSR2(r22);
    }

    private int Mx_Y(int r22) {
        return LFSR2(r22) ^ (LFSR1(r22) ^ r22);
    }

    private int RS_MDS_Encode(int r42, int r52) {
        for (int r12 = 0; r12 < 4; r12++) {
            r52 = RS_rem(r52);
        }
        int r43 = r42 ^ r52;
        for (int r02 = 0; r02 < 4; r02++) {
            r43 = RS_rem(r43);
        }
        return r43;
    }

    private int RS_rem(int r6) {
        int r02 = (r6 >>> 24) & 255;
        int r12 = ((r02 << 1) ^ ((r02 & 128) != 0 ? RS_GF_FDBK : 0)) & 255;
        int r22 = ((r02 >>> 1) ^ ((r02 & 1) != 0 ? 166 : 0)) ^ r12;
        return ((((r6 << 8) ^ (r22 << 24)) ^ (r12 << 16)) ^ (r22 << 8)) ^ r02;
    }

    private int b0(int r12) {
        return r12 & 255;
    }

    private int b1(int r12) {
        return (r12 >>> 8) & 255;
    }

    private int b2(int r12) {
        return (r12 >>> 16) & 255;
    }

    private int b3(int r12) {
        return (r12 >>> 24) & 255;
    }

    private void decryptBlock(byte[] bArr, int r13, byte[] bArr2, int r15) {
        int r02 = Pack.littleEndianToInt(bArr, r13) ^ this.gSubKeys[4];
        int r12 = Pack.littleEndianToInt(bArr, r13 + 4) ^ this.gSubKeys[5];
        int r22 = Pack.littleEndianToInt(bArr, r13 + 8) ^ this.gSubKeys[6];
        int r122 = Pack.littleEndianToInt(bArr, r13 + 12) ^ this.gSubKeys[7];
        int r132 = 39;
        int r42 = 0;
        while (r42 < 16) {
            int r52 = Fe32_0(r02);
            int r72 = Fe32_3(r12);
            int r10 = r132 - 1;
            int r123 = r122 ^ (((r72 * 2) + r52) + this.gSubKeys[r132]);
            int r53 = r52 + r72;
            int r73 = r10 - 1;
            r22 = Integers.rotateLeft(r22, 1) ^ (r53 + this.gSubKeys[r10]);
            r122 = Integers.rotateRight(r123, 1);
            int r133 = Fe32_0(r22);
            int r54 = Fe32_3(r122);
            int r102 = r73 - 1;
            int r14 = r12 ^ (((r54 * 2) + r133) + this.gSubKeys[r73]);
            r02 = Integers.rotateLeft(r02, 1) ^ ((r133 + r54) + this.gSubKeys[r102]);
            r12 = Integers.rotateRight(r14, 1);
            r42 += 2;
            r132 = r102 - 1;
        }
        Pack.intToLittleEndian(this.gSubKeys[0] ^ r22, bArr2, r15);
        Pack.intToLittleEndian(r122 ^ this.gSubKeys[1], bArr2, r15 + 4);
        Pack.intToLittleEndian(this.gSubKeys[2] ^ r02, bArr2, r15 + 8);
        Pack.intToLittleEndian(this.gSubKeys[3] ^ r12, bArr2, r15 + 12);
    }

    private void encryptBlock(byte[] bArr, int r13, byte[] bArr2, int r15) {
        int r22 = 0;
        int r02 = Pack.littleEndianToInt(bArr, r13) ^ this.gSubKeys[0];
        int r12 = Pack.littleEndianToInt(bArr, r13 + 4) ^ this.gSubKeys[1];
        int r32 = Pack.littleEndianToInt(bArr, r13 + 8) ^ this.gSubKeys[2];
        int r122 = Pack.littleEndianToInt(bArr, r13 + 12) ^ this.gSubKeys[3];
        int r132 = 8;
        while (r22 < 16) {
            int r52 = Fe32_0(r02);
            int r72 = Fe32_3(r12);
            int r10 = r132 + 1;
            r32 = Integers.rotateRight(r32 ^ ((r52 + r72) + this.gSubKeys[r132]), 1);
            int r73 = (r72 * 2) + r52;
            int r53 = r10 + 1;
            r122 = Integers.rotateLeft(r122, 1) ^ (r73 + this.gSubKeys[r10]);
            int r133 = Fe32_0(r32);
            int r74 = Fe32_3(r122);
            int r102 = r53 + 1;
            r02 = Integers.rotateRight(r02 ^ ((r133 + r74) + this.gSubKeys[r53]), 1);
            r12 = Integers.rotateLeft(r12, 1) ^ (((r74 * 2) + r133) + this.gSubKeys[r102]);
            r22 += 2;
            r132 = r102 + 1;
        }
        Pack.intToLittleEndian(this.gSubKeys[4] ^ r32, bArr2, r15);
        Pack.intToLittleEndian(r122 ^ this.gSubKeys[5], bArr2, r15 + 4);
        Pack.intToLittleEndian(this.gSubKeys[6] ^ r02, bArr2, r15 + 8);
        Pack.intToLittleEndian(this.gSubKeys[7] ^ r12, bArr2, r15 + 12);
    }

    private void setKey(byte[] bArr) {
        int r11;
        int r12;
        int r13;
        int r10;
        int r132;
        int r122;
        int r112;
        int r102;
        int[] r32 = new int[4];
        int[] r42 = new int[4];
        int[] r52 = new int[4];
        this.gSubKeys = new int[40];
        for (int r72 = 0; r72 < this.k64Cnt; r72++) {
            int r82 = r72 * 8;
            r32[r72] = Pack.littleEndianToInt(bArr, r82);
            int r83 = Pack.littleEndianToInt(bArr, r82 + 4);
            r42[r72] = r83;
            r52[(this.k64Cnt - 1) - r72] = RS_MDS_Encode(r32[r72], r83);
        }
        for (int r14 = 0; r14 < 20; r14++) {
            int r22 = SK_STEP * r14;
            int r73 = F32(r22, r32);
            int r23 = Integers.rotateLeft(F32(r22 + 16843009, r42), 8);
            int r74 = r73 + r23;
            int[] r84 = this.gSubKeys;
            int r103 = r14 * 2;
            r84[r103] = r74;
            int r75 = r74 + r23;
            r84[r103 + 1] = (r75 << 9) | (r75 >>> 23);
        }
        int r15 = r52[0];
        int r24 = r52[1];
        int r33 = 2;
        int r43 = r52[2];
        int r53 = r52[3];
        this.gSBox = new int[1024];
        int r85 = 0;
        while (r85 < 256) {
            int r104 = this.k64Cnt & 3;
            if (r104 != 0) {
                if (r104 == 1) {
                    int[] r105 = this.gSBox;
                    int r113 = r85 * 2;
                    int[] r123 = this.gMDS0;
                    byte[][] bArr2 = P;
                    r105[r113] = r123[(bArr2[0][r85] & 255) ^ b0(r15)];
                    this.gSBox[r113 + 1] = this.gMDS1[(bArr2[0][r85] & 255) ^ b1(r15)];
                    this.gSBox[r113 + 512] = this.gMDS2[(bArr2[1][r85] & 255) ^ b2(r15)];
                    this.gSBox[r113 + InputDeviceCompat.SOURCE_DPAD] = this.gMDS3[(bArr2[1][r85] & 255) ^ b3(r15)];
                } else if (r104 == r33) {
                    r102 = r85;
                    r112 = r102;
                    r122 = r112;
                    r132 = r122;
                    int[] r142 = this.gSBox;
                    int r152 = r85 * 2;
                    int[] r34 = this.gMDS0;
                    byte[][] bArr3 = P;
                    byte[] bArr4 = bArr3[0];
                    r142[r152] = r34[(bArr4[(bArr4[r112] & 255) ^ b0(r24)] & 255) ^ b0(r15)];
                    this.gSBox[r152 + 1] = this.gMDS1[(bArr3[0][(bArr3[1][r122] & 255) ^ b1(r24)] & 255) ^ b1(r15)];
                    this.gSBox[r152 + 512] = this.gMDS2[(bArr3[1][(bArr3[0][r132] & 255) ^ b2(r24)] & 255) ^ b2(r15)];
                    int[] r35 = this.gSBox;
                    int r153 = r152 + InputDeviceCompat.SOURCE_DPAD;
                    int[] r114 = this.gMDS3;
                    byte[] bArr5 = bArr3[1];
                    r35[r153] = r114[(bArr5[(bArr5[r102] & 255) ^ b3(r24)] & 255) ^ b3(r15)];
                } else if (r104 == 3) {
                    r10 = r85;
                    r11 = r10;
                    r12 = r11;
                    r13 = r12;
                }
                r85++;
                r33 = 2;
            } else {
                byte[][] bArr6 = P;
                r11 = (bArr6[1][r85] & 255) ^ b0(r53);
                r12 = (bArr6[0][r85] & 255) ^ b1(r53);
                r13 = (bArr6[0][r85] & 255) ^ b2(r53);
                r10 = (bArr6[1][r85] & 255) ^ b3(r53);
            }
            byte[][] bArr7 = P;
            r112 = (bArr7[1][r11] & 255) ^ b0(r43);
            r122 = (bArr7[1][r12] & 255) ^ b1(r43);
            r132 = (bArr7[0][r13] & 255) ^ b2(r43);
            r102 = (bArr7[0][r10] & 255) ^ b3(r43);
            int[] r1422 = this.gSBox;
            int r1522 = r85 * 2;
            int[] r342 = this.gMDS0;
            byte[][] bArr32 = P;
            byte[] bArr42 = bArr32[0];
            r1422[r1522] = r342[(bArr42[(bArr42[r112] & 255) ^ b0(r24)] & 255) ^ b0(r15)];
            this.gSBox[r1522 + 1] = this.gMDS1[(bArr32[0][(bArr32[1][r122] & 255) ^ b1(r24)] & 255) ^ b1(r15)];
            this.gSBox[r1522 + 512] = this.gMDS2[(bArr32[1][(bArr32[0][r132] & 255) ^ b2(r24)] & 255) ^ b2(r15)];
            int[] r352 = this.gSBox;
            int r1532 = r1522 + InputDeviceCompat.SOURCE_DPAD;
            int[] r1142 = this.gMDS3;
            byte[] bArr52 = bArr32[1];
            r352[r1532] = r1142[(bArr52[(bArr52[r102] & 255) ^ b3(r24)] & 255) ^ b3(r15)];
            r85++;
            r33 = 2;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Twofish";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException(b.g(cipherParameters, "invalid parameter passed to Twofish init - "));
        }
        this.encrypting = z10;
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        this.workingKey = key;
        int length = key.length * 8;
        if (length != 128 && length != 192 && length != 256) {
            throw new IllegalArgumentException("Key length not 128/192/256 bits.");
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), length, cipherParameters, Utils.getPurpose(z10)));
        byte[] bArr = this.workingKey;
        this.k64Cnt = bArr.length / 8;
        setKey(bArr);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r42, byte[] bArr2, int r6) {
        if (this.workingKey == null) {
            throw new IllegalStateException("Twofish not initialised");
        }
        if (r42 + 16 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r6 + 16 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.encrypting) {
            encryptBlock(bArr, r42, bArr2, r6);
            return 16;
        }
        decryptBlock(bArr, r42, bArr2, r6);
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
        byte[] bArr = this.workingKey;
        if (bArr != null) {
            setKey(bArr);
        }
    }
}
