package org.bouncycastle.crypto.engines;

import ab.b;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Arrays;
import org.jmrtd.PassportService;
import org.jmrtd.lds.CVCAFile;

/* loaded from: classes2.dex */
public class GOST3412_2015Engine implements BlockCipher {
    protected static final int BLOCK_SIZE = 16;
    private static final byte[] PI = {-4, -18, -35, 17, -49, 110, 49, 22, -5, -60, -6, ISO7816.INS_PUT_DATA, 35, -59, 4, 77, -23, 119, -16, -37, -109, 46, -103, -70, 23, 54, -15, -69, 20, -51, 95, -63, -7, 24, 101, 90, ISO7816.INS_APPEND_RECORD, 92, -17, 33, ISOFileInfo.DATA_BYTES2, 28, 60, CVCAFile.CAR_TAG, ISOFileInfo.SECURITY_ATTR_EXP, 1, ISOFileInfo.CHANNEL_SECURITY, 79, 5, -124, 2, -82, -29, 106, -113, ISOFileInfo.A0, 6, PassportService.SFI_DG11, -19, -104, 127, -44, -45, 31, -21, ISO7816.INS_DECREASE_STAMPED, ISO7816.INS_UNBLOCK_CHV, 81, -22, -56, 72, ISOFileInfo.AB, -14, ISO7816.INS_PSO, 104, -94, -3, 58, -50, -52, -75, ISO7816.INS_MANAGE_CHANNEL, 14, 86, 8, PassportService.SFI_DG12, 118, 18, -65, 114, 19, 71, -100, -73, 93, ISOFileInfo.FCI_EXT, 21, ISOFileInfo.A1, -106, 41, 16, 123, -102, -57, -13, -111, 120, ISOFileInfo.FCI_BYTE, -99, -98, -78, ISO7816.INS_READ_BINARY2, ISO7816.INS_INCREASE, 117, 25, 61, -1, 53, ISOFileInfo.LCS_BYTE, 126, 109, 84, -58, ISOFileInfo.DATA_BYTES1, -61, -67, PassportService.SFI_DG13, 87, -33, -11, ISO7816.INS_CHANGE_CHV, -87, 62, -88, 67, -55, -41, 121, ISO7816.INS_UPDATE_BINARY, -10, 124, ISO7816.INS_MSE, -71, 3, ISO7816.INS_CREATE_FILE, PassportService.SFI_DG15, -20, -34, 122, -108, ISO7816.INS_READ_BINARY, PSSSigner.TRAILER_IMPLICIT, ISO7816.INS_UPDATE_RECORD, -24, 40, 80, 78, 51, 10, 74, -89, -105, 96, 115, PassportService.SFI_COM, 0, ISOFileInfo.FCP_BYTE, ISO7816.INS_REHABILITATE_CHV, 26, -72, 56, -126, ISOFileInfo.FMD_BYTE, -97, 38, 65, -83, 69, 70, -110, 39, 94, 85, 47, ISOFileInfo.SECURITY_ATTR_COMPACT, -93, ISOFileInfo.A5, 125, 105, -43, -107, 59, 7, 88, ISO7816.INS_READ_RECORD2, 64, -122, -84, 29, -9, ISO7816.INS_DECREASE, 55, 107, ISO7816.INS_DELETE_FILE, -120, -39, -25, -119, -31, 27, ISOFileInfo.FILE_IDENTIFIER, 73, 76, 63, -8, -2, ISOFileInfo.ENV_TEMP_EF, 83, -86, -112, ISO7816.INS_GET_DATA, ISO7816.INS_LOAD_KEY_FILE, ISOFileInfo.PROP_INFO, 97, ISO7816.INS_VERIFY, 113, 103, -92, 45, 43, 9, 91, -53, -101, 37, ISO7816.INS_WRITE_BINARY, -66, -27, 108, 82, 89, -90, 116, ISO7816.INS_WRITE_RECORD, -26, -12, ISO7816.INS_READ_BINARY_STAMPED, ISO7816.INS_GET_RESPONSE, -47, 102, -81, ISO7816.INS_ENVELOPE, 57, 75, 99, ISO7816.INS_READ_RECORD_STAMPED};
    private static final byte[] inversePI = {ISOFileInfo.A5, 45, ISO7816.INS_INCREASE, -113, 14, ISO7816.INS_DECREASE, 56, ISO7816.INS_GET_RESPONSE, 84, -26, -98, 57, 85, 126, 82, -111, ISOFileInfo.FMD_BYTE, 3, 87, 90, 28, 96, 7, 24, 33, 114, -88, -47, 41, -58, -92, 63, ISO7816.INS_CREATE_FILE, 39, ISOFileInfo.ENV_TEMP_EF, PassportService.SFI_DG12, -126, -22, -82, ISO7816.INS_READ_BINARY_STAMPED, -102, 99, 73, -27, CVCAFile.CAR_TAG, ISO7816.INS_DELETE_FILE, 21, -73, -56, 6, ISO7816.INS_MANAGE_CHANNEL, -99, 65, 117, 25, -55, -86, -4, 77, -65, ISO7816.INS_PSO, 115, -124, -43, -61, -81, 43, -122, -89, ISO7816.INS_READ_BINARY2, -78, 91, 70, -45, -97, -3, -44, PassportService.SFI_DG15, -100, 47, -101, 67, -17, -39, 121, ISO7816.INS_READ_RECORD_STAMPED, 83, 127, -63, -16, 35, -25, 37, 94, -75, PassportService.SFI_COM, -94, -33, -90, -2, -84, ISO7816.INS_MSE, -7, ISO7816.INS_APPEND_RECORD, 74, PSSSigner.TRAILER_IMPLICIT, 53, ISO7816.INS_GET_DATA, -18, 120, 5, 107, 81, -31, 89, -93, -14, 113, 86, 17, 106, -119, -108, 101, ISOFileInfo.SECURITY_ATTR_COMPACT, -69, 119, 60, 123, 40, ISOFileInfo.AB, ISO7816.INS_WRITE_RECORD, 49, -34, -60, 95, -52, -49, 118, ISO7816.INS_UNBLOCK_CHV, -72, ISO7816.INS_LOAD_KEY_FILE, 46, 54, -37, 105, ISO7816.INS_READ_RECORD2, 20, -107, -66, ISOFileInfo.FCP_BYTE, ISOFileInfo.A1, 59, 22, 102, -23, 92, 108, 109, -83, 55, 97, 75, -71, -29, -70, -15, ISOFileInfo.A0, ISOFileInfo.PROP_INFO, ISOFileInfo.FILE_IDENTIFIER, ISO7816.INS_PUT_DATA, 71, -59, ISO7816.INS_READ_BINARY, 51, -6, -106, ISOFileInfo.FCI_BYTE, 110, ISO7816.INS_ENVELOPE, -10, 80, -1, 93, -87, ISOFileInfo.CHANNEL_SECURITY, 23, 27, -105, 125, -20, 88, -9, 31, -5, 124, 9, PassportService.SFI_DG13, 122, 103, 69, ISOFileInfo.FCI_EXT, ISO7816.INS_UPDATE_RECORD, -24, 79, 29, 78, 4, -21, -8, -13, 62, 61, -67, ISOFileInfo.LCS_BYTE, -120, -35, -51, PassportService.SFI_DG11, 19, -104, 2, -109, ISOFileInfo.DATA_BYTES1, -112, ISO7816.INS_WRITE_BINARY, ISO7816.INS_CHANGE_CHV, ISO7816.INS_DECREASE_STAMPED, -53, -19, -12, -50, -103, 16, ISO7816.INS_REHABILITATE_CHV, 64, -110, 58, 1, 38, 18, 26, 72, 104, -11, ISOFileInfo.DATA_BYTES2, ISOFileInfo.SECURITY_ATTR_EXP, -57, ISO7816.INS_UPDATE_BINARY, ISO7816.INS_VERIFY, 10, 8, 0, 76, -41, 116};
    private boolean forEncryption;
    private final byte[] lFactors = {-108, ISO7816.INS_VERIFY, ISOFileInfo.PROP_INFO, 16, ISO7816.INS_ENVELOPE, ISO7816.INS_GET_RESPONSE, 1, -5, 1, ISO7816.INS_GET_RESPONSE, ISO7816.INS_ENVELOPE, 16, ISOFileInfo.PROP_INFO, ISO7816.INS_VERIFY, -108, 1};
    private int KEY_LENGTH = 32;
    private int SUB_LENGTH = 32 / 2;
    private byte[][] subKeys = null;
    private byte[][] _gf_mul = init_gf256_mul_table();

    private void C(byte[] bArr, int r32) {
        Arrays.clear(bArr);
        bArr[15] = (byte) r32;
        L(bArr);
    }

    private void F(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArrLSX = LSX(bArr, bArr2);
        X(bArrLSX, bArr3);
        System.arraycopy(bArr2, 0, bArr3, 0, this.SUB_LENGTH);
        System.arraycopy(bArrLSX, 0, bArr2, 0, this.SUB_LENGTH);
    }

    private void GOST3412_2015Func(byte[] bArr, int r6, byte[] bArr2, int r82) {
        byte[][] bArr3;
        byte[] bArrCopyOf = new byte[16];
        System.arraycopy(bArr, r6, bArrCopyOf, 0, 16);
        int r62 = 9;
        if (this.forEncryption) {
            for (int r52 = 0; r52 < 9; r52++) {
                bArrCopyOf = Arrays.copyOf(LSX(this.subKeys[r52], bArrCopyOf), 16);
            }
            X(bArrCopyOf, this.subKeys[9]);
        } else {
            while (true) {
                bArr3 = this.subKeys;
                if (r62 <= 0) {
                    break;
                }
                bArrCopyOf = Arrays.copyOf(XSL(bArr3[r62], bArrCopyOf), 16);
                r62--;
            }
            X(bArrCopyOf, bArr3[0]);
        }
        System.arraycopy(bArrCopyOf, 0, bArr2, r82, 16);
    }

    private void L(byte[] bArr) {
        for (int r02 = 0; r02 < 16; r02++) {
            R(bArr);
        }
    }

    private byte[] LSX(byte[] bArr, byte[] bArr2) {
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        X(bArrCopyOf, bArr2);
        S(bArrCopyOf);
        L(bArrCopyOf);
        return bArrCopyOf;
    }

    private void R(byte[] bArr) {
        byte bL = l(bArr);
        System.arraycopy(bArr, 0, bArr, 1, 15);
        bArr[0] = bL;
    }

    private void S(byte[] bArr) {
        for (int r02 = 0; r02 < bArr.length; r02++) {
            bArr[r02] = PI[unsignedByte(bArr[r02])];
        }
    }

    private void X(byte[] bArr, byte[] bArr2) {
        for (int r02 = 0; r02 < bArr.length; r02++) {
            bArr[r02] = (byte) (bArr[r02] ^ bArr2[r02]);
        }
    }

    private byte[] XSL(byte[] bArr, byte[] bArr2) {
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        X(bArrCopyOf, bArr2);
        inverseL(bArrCopyOf);
        inverseS(bArrCopyOf);
        return bArrCopyOf;
    }

    private void generateSubKeys(byte[] bArr) {
        int r42;
        if (bArr.length != this.KEY_LENGTH) {
            throw new IllegalArgumentException("Key length invalid. Key needs to be 32 byte - 256 bit!!!");
        }
        this.subKeys = new byte[10][];
        for (int r22 = 0; r22 < 10; r22++) {
            this.subKeys[r22] = new byte[this.SUB_LENGTH];
        }
        int r02 = this.SUB_LENGTH;
        byte[] bArr2 = new byte[r02];
        byte[] bArr3 = new byte[r02];
        int r32 = 0;
        while (true) {
            r42 = this.SUB_LENGTH;
            if (r32 >= r42) {
                break;
            }
            byte[][] bArr4 = this.subKeys;
            byte[] bArr5 = bArr4[0];
            byte b10 = bArr[r32];
            bArr2[r32] = b10;
            bArr5[r32] = b10;
            byte[] bArr6 = bArr4[1];
            byte b11 = bArr[r42 + r32];
            bArr3[r32] = b11;
            bArr6[r32] = b11;
            r32++;
        }
        byte[] bArr7 = new byte[r42];
        for (int r33 = 1; r33 < 5; r33++) {
            for (int r43 = 1; r43 <= 8; r43++) {
                C(bArr7, ((r33 - 1) * 8) + r43);
                F(bArr7, bArr2, bArr3);
            }
            int r6 = r33 * 2;
            System.arraycopy(bArr2, 0, this.subKeys[r6], 0, this.SUB_LENGTH);
            System.arraycopy(bArr3, 0, this.subKeys[r6 + 1], 0, this.SUB_LENGTH);
        }
    }

    private static byte[][] init_gf256_mul_table() {
        byte[][] bArr = new byte[256][];
        for (int r32 = 0; r32 < 256; r32++) {
            bArr[r32] = new byte[256];
            for (int r42 = 0; r42 < 256; r42++) {
                bArr[r32][r42] = kuz_mul_gf256_slow((byte) r32, (byte) r42);
            }
        }
        return bArr;
    }

    private void inverseL(byte[] bArr) {
        for (int r02 = 0; r02 < 16; r02++) {
            inverseR(bArr);
        }
    }

    private void inverseR(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        System.arraycopy(bArr, 1, bArr2, 0, 15);
        bArr2[15] = bArr[0];
        byte bL = l(bArr2);
        System.arraycopy(bArr, 1, bArr, 0, 15);
        bArr[15] = bL;
    }

    private void inverseS(byte[] bArr) {
        for (int r02 = 0; r02 < bArr.length; r02++) {
            bArr[r02] = inversePI[unsignedByte(bArr[r02])];
        }
    }

    private static byte kuz_mul_gf256_slow(byte b10, byte b11) {
        byte b12 = 0;
        for (byte b13 = 0; b13 < 8 && b10 != 0 && b11 != 0; b13 = (byte) (b13 + 1)) {
            if ((b11 & 1) != 0) {
                b12 = (byte) (b12 ^ b10);
            }
            byte b14 = (byte) (b10 & ISOFileInfo.DATA_BYTES1);
            b10 = (byte) (b10 << 1);
            if (b14 != 0) {
                b10 = (byte) (b10 ^ 195);
            }
            b11 = (byte) (b11 >> 1);
        }
        return b12;
    }

    private byte l(byte[] bArr) {
        byte b10 = bArr[15];
        for (int r12 = 14; r12 >= 0; r12--) {
            b10 = (byte) (b10 ^ this._gf_mul[unsignedByte(bArr[r12])][unsignedByte(this.lFactors[r12])]);
        }
        return b10;
    }

    private int unsignedByte(byte b10) {
        return b10 & 255;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "GOST3412_2015";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (cipherParameters instanceof KeyParameter) {
            this.forEncryption = z10;
            generateSubKeys(((KeyParameter) cipherParameters).getKey());
        } else if (cipherParameters != null) {
            throw new IllegalArgumentException(b.g(cipherParameters, "invalid parameter passed to GOST3412_2015 init - "));
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r42, byte[] bArr2, int r6) throws IllegalStateException, DataLengthException {
        if (this.subKeys == null) {
            throw new IllegalStateException("GOST3412_2015 engine not initialised");
        }
        if (r42 + 16 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r6 + 16 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        GOST3412_2015Func(bArr, r42, bArr2, r6);
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
