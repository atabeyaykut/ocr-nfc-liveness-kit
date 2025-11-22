package org.bouncycastle.crypto.engines;

import ab.b;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.RC2Parameters;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.jmrtd.PassportService;
import org.jmrtd.lds.CVCAFile;

/* loaded from: classes2.dex */
public class RC2Engine implements BlockCipher {
    private static final int BLOCK_SIZE = 8;
    private static byte[] piTable = {-39, 120, -7, -60, 25, -35, -75, -19, 40, -23, -3, 121, 74, ISOFileInfo.A0, ISO7816.INS_LOAD_KEY_FILE, -99, -58, 126, 55, ISOFileInfo.FILE_IDENTIFIER, 43, 118, 83, ISOFileInfo.CHANNEL_SECURITY, ISOFileInfo.FCP_BYTE, 76, ISOFileInfo.FMD_BYTE, -120, ISO7816.INS_REHABILITATE_CHV, ISOFileInfo.SECURITY_ATTR_EXP, -5, -94, 23, -102, 89, -11, ISOFileInfo.FCI_EXT, ISO7816.INS_READ_RECORD2, 79, 19, 97, 69, 109, ISOFileInfo.ENV_TEMP_EF, 9, ISOFileInfo.DATA_BYTES2, 125, ISO7816.INS_INCREASE, -67, -113, 64, -21, -122, -73, 123, PassportService.SFI_DG11, -16, -107, 33, ISO7816.INS_MSE, 92, 107, 78, -126, 84, ISO7816.INS_UPDATE_BINARY, 101, -109, -50, 96, -78, 28, 115, 86, ISO7816.INS_GET_RESPONSE, 20, -89, ISOFileInfo.SECURITY_ATTR_COMPACT, -15, ISO7816.INS_UPDATE_RECORD, 18, 117, ISO7816.INS_GET_DATA, 31, 59, -66, ISO7816.INS_DELETE_FILE, -47, CVCAFile.CAR_TAG, 61, -44, ISO7816.INS_DECREASE, -93, 60, ISO7816.INS_READ_RECORD_STAMPED, 38, ISOFileInfo.FCI_BYTE, -65, 14, ISO7816.INS_PUT_DATA, 70, 105, 7, 87, 39, -14, 29, -101, PSSSigner.TRAILER_IMPLICIT, -108, 67, 3, -8, 17, -57, -10, -112, -17, 62, -25, 6, -61, -43, 47, -56, 102, PassportService.SFI_COM, -41, 8, -24, -22, -34, ISOFileInfo.DATA_BYTES1, 82, -18, -9, -124, -86, 114, -84, 53, 77, 106, ISO7816.INS_PSO, -106, 26, ISO7816.INS_WRITE_RECORD, 113, 90, 21, 73, 116, 75, -97, ISO7816.INS_WRITE_BINARY, 94, 4, 24, -92, -20, ISO7816.INS_ENVELOPE, ISO7816.INS_CREATE_FILE, 65, 110, PassportService.SFI_DG15, 81, -53, -52, ISO7816.INS_CHANGE_CHV, -111, -81, 80, ISOFileInfo.A1, -12, ISO7816.INS_MANAGE_CHANNEL, 57, -103, 124, 58, ISOFileInfo.PROP_INFO, 35, -72, ISO7816.INS_READ_BINARY_STAMPED, 122, -4, 2, 54, 91, 37, 85, -105, 49, 45, 93, -6, -104, -29, ISOFileInfo.LCS_BYTE, -110, -82, 5, -33, 41, 16, 103, 108, -70, -55, -45, 0, -26, -49, -31, -98, -88, ISO7816.INS_UNBLOCK_CHV, 99, 22, 1, 63, 88, ISO7816.INS_APPEND_RECORD, -119, -87, PassportService.SFI_DG13, 56, ISO7816.INS_DECREASE_STAMPED, 27, ISOFileInfo.AB, 51, -1, ISO7816.INS_READ_BINARY, -69, 72, PassportService.SFI_DG12, 95, -71, ISO7816.INS_READ_BINARY2, -51, 46, -59, -13, -37, 71, -27, ISOFileInfo.A5, -100, 119, 10, -90, ISO7816.INS_VERIFY, 104, -2, 127, -63, -83};
    private boolean encrypting;
    private int[] workingKey;

    private void decryptBlock(byte[] bArr, int r12, byte[] bArr2, int r14) {
        int r02 = ((bArr[r12 + 7] & 255) << 8) + (bArr[r12 + 6] & 255);
        int r13 = ((bArr[r12 + 5] & 255) << 8) + (bArr[r12 + 4] & 255);
        int r22 = ((bArr[r12 + 3] & 255) << 8) + (bArr[r12 + 2] & 255);
        int r32 = ((bArr[r12 + 1] & 255) << 8) + (bArr[r12 + 0] & 255);
        for (int r11 = 60; r11 >= 44; r11 -= 4) {
            r02 = rotateWordLeft(r02, 11) - ((((~r13) & r32) + (r22 & r13)) + this.workingKey[r11 + 3]);
            r13 = rotateWordLeft(r13, 13) - ((((~r22) & r02) + (r32 & r22)) + this.workingKey[r11 + 2]);
            r22 = rotateWordLeft(r22, 14) - ((((~r32) & r13) + (r02 & r32)) + this.workingKey[r11 + 1]);
            r32 = rotateWordLeft(r32, 15) - ((((~r02) & r22) + (r13 & r02)) + this.workingKey[r11]);
        }
        int[] r112 = this.workingKey;
        int r03 = r02 - r112[r13 & 63];
        int r15 = r13 - r112[r22 & 63];
        int r23 = r22 - r112[r32 & 63];
        int r33 = r32 - r112[r03 & 63];
        for (int r113 = 40; r113 >= 20; r113 -= 4) {
            r03 = rotateWordLeft(r03, 11) - ((((~r15) & r33) + (r23 & r15)) + this.workingKey[r113 + 3]);
            r15 = rotateWordLeft(r15, 13) - ((((~r23) & r03) + (r33 & r23)) + this.workingKey[r113 + 2]);
            r23 = rotateWordLeft(r23, 14) - ((((~r33) & r15) + (r03 & r33)) + this.workingKey[r113 + 1]);
            r33 = rotateWordLeft(r33, 15) - ((((~r03) & r23) + (r15 & r03)) + this.workingKey[r113]);
        }
        int[] r114 = this.workingKey;
        int r04 = r03 - r114[r15 & 63];
        int r16 = r15 - r114[r23 & 63];
        int r24 = r23 - r114[r33 & 63];
        int r34 = r33 - r114[r04 & 63];
        for (int r115 = 16; r115 >= 0; r115 -= 4) {
            r04 = rotateWordLeft(r04, 11) - ((((~r16) & r34) + (r24 & r16)) + this.workingKey[r115 + 3]);
            r16 = rotateWordLeft(r16, 13) - ((((~r24) & r04) + (r34 & r24)) + this.workingKey[r115 + 2]);
            r24 = rotateWordLeft(r24, 14) - ((((~r34) & r16) + (r04 & r34)) + this.workingKey[r115 + 1]);
            r34 = rotateWordLeft(r34, 15) - ((((~r04) & r24) + (r16 & r04)) + this.workingKey[r115]);
        }
        bArr2[r14 + 0] = (byte) r34;
        bArr2[r14 + 1] = (byte) (r34 >> 8);
        bArr2[r14 + 2] = (byte) r24;
        bArr2[r14 + 3] = (byte) (r24 >> 8);
        bArr2[r14 + 4] = (byte) r16;
        bArr2[r14 + 5] = (byte) (r16 >> 8);
        bArr2[r14 + 6] = (byte) r04;
        bArr2[r14 + 7] = (byte) (r04 >> 8);
    }

    private void encryptBlock(byte[] bArr, int r11, byte[] bArr2, int r13) {
        int r02 = ((bArr[r11 + 7] & 255) << 8) + (bArr[r11 + 6] & 255);
        int r12 = ((bArr[r11 + 5] & 255) << 8) + (bArr[r11 + 4] & 255);
        int r22 = ((bArr[r11 + 3] & 255) << 8) + (bArr[r11 + 2] & 255);
        int r32 = ((bArr[r11 + 1] & 255) << 8) + (bArr[r11 + 0] & 255);
        for (int r42 = 0; r42 <= 16; r42 += 4) {
            r32 = rotateWordLeft(r32 + ((~r02) & r22) + (r12 & r02) + this.workingKey[r42], 1);
            r22 = rotateWordLeft(r22 + ((~r32) & r12) + (r02 & r32) + this.workingKey[r42 + 1], 2);
            r12 = rotateWordLeft(r12 + ((~r22) & r02) + (r32 & r22) + this.workingKey[r42 + 2], 3);
            r02 = rotateWordLeft(r02 + ((~r12) & r32) + (r22 & r12) + this.workingKey[r42 + 3], 5);
        }
        int[] r10 = this.workingKey;
        int r33 = r32 + r10[r02 & 63];
        int r23 = r22 + r10[r33 & 63];
        int r14 = r12 + r10[r23 & 63];
        int r03 = r02 + r10[r14 & 63];
        for (int r102 = 20; r102 <= 40; r102 += 4) {
            r33 = rotateWordLeft(r33 + ((~r03) & r23) + (r14 & r03) + this.workingKey[r102], 1);
            r23 = rotateWordLeft(r23 + ((~r33) & r14) + (r03 & r33) + this.workingKey[r102 + 1], 2);
            r14 = rotateWordLeft(r14 + ((~r23) & r03) + (r33 & r23) + this.workingKey[r102 + 2], 3);
            r03 = rotateWordLeft(r03 + ((~r14) & r33) + (r23 & r14) + this.workingKey[r102 + 3], 5);
        }
        int[] r103 = this.workingKey;
        int r34 = r33 + r103[r03 & 63];
        int r24 = r23 + r103[r34 & 63];
        int r15 = r14 + r103[r24 & 63];
        int r04 = r03 + r103[r15 & 63];
        for (int r104 = 44; r104 < 64; r104 += 4) {
            r34 = rotateWordLeft(r34 + ((~r04) & r24) + (r15 & r04) + this.workingKey[r104], 1);
            r24 = rotateWordLeft(r24 + ((~r34) & r15) + (r04 & r34) + this.workingKey[r104 + 1], 2);
            r15 = rotateWordLeft(r15 + ((~r24) & r04) + (r34 & r24) + this.workingKey[r104 + 2], 3);
            r04 = rotateWordLeft(r04 + ((~r15) & r34) + (r24 & r15) + this.workingKey[r104 + 3], 5);
        }
        bArr2[r13 + 0] = (byte) r34;
        bArr2[r13 + 1] = (byte) (r34 >> 8);
        bArr2[r13 + 2] = (byte) r24;
        bArr2[r13 + 3] = (byte) (r24 >> 8);
        bArr2[r13 + 4] = (byte) r15;
        bArr2[r13 + 5] = (byte) (r15 >> 8);
        bArr2[r13 + 6] = (byte) r04;
        bArr2[r13 + 7] = (byte) (r04 >> 8);
    }

    private int[] generateWorkingKey(byte[] bArr, int r10) {
        int[] r12 = new int[128];
        for (int r32 = 0; r32 != bArr.length; r32++) {
            r12[r32] = bArr[r32] & 255;
        }
        int length = bArr.length;
        if (length < 128) {
            int r33 = r12[length - 1];
            int r42 = 0;
            while (true) {
                int r72 = r42 + 1;
                r33 = piTable[(r33 + r12[r42]) & 255] & 255;
                int r43 = length + 1;
                r12[length] = r33;
                if (r43 >= 128) {
                    break;
                }
                length = r43;
                r42 = r72;
            }
        }
        int r92 = (r10 + 7) >> 3;
        int r34 = 128 - r92;
        int r102 = piTable[(255 >> ((-r10) & 7)) & r12[r34]] & 255;
        r12[r34] = r102;
        for (int r35 = r34 - 1; r35 >= 0; r35--) {
            r102 = piTable[r102 ^ r12[r35 + r92]] & 255;
            r12[r35] = r102;
        }
        int[] r103 = new int[64];
        for (int r22 = 0; r22 != 64; r22++) {
            int r02 = r22 * 2;
            r103[r22] = r12[r02] + (r12[r02 + 1] << 8);
        }
        return r103;
    }

    private int rotateWordLeft(int r22, int r32) {
        int r23 = r22 & 65535;
        return (r23 >> (16 - r32)) | (r23 << r32);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "RC2";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        byte[] key;
        this.encrypting = z10;
        if (cipherParameters instanceof RC2Parameters) {
            RC2Parameters rC2Parameters = (RC2Parameters) cipherParameters;
            this.workingKey = generateWorkingKey(rC2Parameters.getKey(), rC2Parameters.getEffectiveKeyBits());
            key = rC2Parameters.getKey();
        } else {
            if (!(cipherParameters instanceof KeyParameter)) {
                throw new IllegalArgumentException(b.g(cipherParameters, "invalid parameter passed to RC2 init - "));
            }
            key = ((KeyParameter) cipherParameters).getKey();
            this.workingKey = generateWorkingKey(key, key.length * 8);
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), key.length * 8, cipherParameters, Utils.getPurpose(z10)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public final int processBlock(byte[] bArr, int r42, byte[] bArr2, int r6) {
        if (this.workingKey == null) {
            throw new IllegalStateException("RC2 engine not initialised");
        }
        if (r42 + 8 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r6 + 8 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.encrypting) {
            encryptBlock(bArr, r42, bArr2, r6);
            return 8;
        }
        decryptBlock(bArr, r42, bArr2, r6);
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
