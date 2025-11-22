package org.bouncycastle.crypto.engines;

import ab.b;
import androidx.recyclerview.widget.ItemTouchHelper;
import java.lang.reflect.Array;
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
import org.bouncycastle.util.Pack;
import org.jmrtd.PassportService;
import org.jmrtd.lds.CVCAFile;

/* loaded from: classes2.dex */
public class AESLightEngine implements BlockCipher {
    private static final int BLOCK_SIZE = 16;

    /* renamed from: m1, reason: collision with root package name */
    private static final int f11494m1 = -2139062144;

    /* renamed from: m2, reason: collision with root package name */
    private static final int f11495m2 = 2139062143;

    /* renamed from: m3, reason: collision with root package name */
    private static final int f11496m3 = 27;

    /* renamed from: m4, reason: collision with root package name */
    private static final int f11497m4 = -1061109568;

    /* renamed from: m5, reason: collision with root package name */
    private static final int f11498m5 = 1061109567;
    private int ROUNDS;
    private int[][] WorkingKey = null;
    private boolean forEncryption;
    private static final byte[] S = {99, 124, 119, 123, -14, 107, ISOFileInfo.FCI_BYTE, -59, ISO7816.INS_DECREASE, 1, 103, 43, -2, -41, ISOFileInfo.AB, 118, ISO7816.INS_GET_DATA, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, ISO7816.INS_GET_RESPONSE, -73, -3, -109, 38, 54, 63, -9, -52, ISO7816.INS_DECREASE_STAMPED, ISOFileInfo.A5, -27, -15, 113, ISO7816.INS_LOAD_KEY_FILE, 49, 21, 4, -57, 35, -61, 24, -106, 5, -102, 7, 18, ISOFileInfo.DATA_BYTES1, ISO7816.INS_APPEND_RECORD, -21, 39, -78, 117, 9, ISOFileInfo.FILE_IDENTIFIER, ISO7816.INS_UNBLOCK_CHV, 26, 27, 110, 90, ISOFileInfo.A0, 82, 59, ISO7816.INS_UPDATE_BINARY, ISO7816.INS_READ_RECORD2, 41, -29, 47, -124, 83, -47, 0, -19, ISO7816.INS_VERIFY, -4, ISO7816.INS_READ_BINARY2, 91, 106, -53, -66, 57, 74, 76, 88, -49, ISO7816.INS_WRITE_BINARY, -17, -86, -5, 67, 77, 51, ISOFileInfo.PROP_INFO, 69, -7, 2, 127, 80, 60, -97, -88, 81, -93, 64, -113, -110, -99, 56, -11, PSSSigner.TRAILER_IMPLICIT, ISO7816.INS_READ_RECORD_STAMPED, ISO7816.INS_PUT_DATA, 33, 16, -1, -13, ISO7816.INS_WRITE_RECORD, -51, PassportService.SFI_DG12, 19, -20, 95, -105, ISO7816.INS_REHABILITATE_CHV, 23, -60, -89, 126, 61, ISOFileInfo.FMD_BYTE, 93, 25, 115, 96, ISOFileInfo.DATA_BYTES2, 79, ISO7816.INS_UPDATE_RECORD, ISO7816.INS_MSE, ISO7816.INS_PSO, -112, -120, 70, -18, -72, 20, -34, 94, PassportService.SFI_DG11, -37, ISO7816.INS_CREATE_FILE, ISO7816.INS_INCREASE, 58, 10, 73, 6, ISO7816.INS_CHANGE_CHV, 92, ISO7816.INS_ENVELOPE, -45, -84, ISOFileInfo.FCP_BYTE, -111, -107, ISO7816.INS_DELETE_FILE, 121, -25, -56, 55, 109, ISOFileInfo.ENV_TEMP_EF, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, 28, -90, ISO7816.INS_READ_BINARY_STAMPED, -58, -24, -35, 116, 31, 75, -67, ISOFileInfo.SECURITY_ATTR_EXP, ISOFileInfo.LCS_BYTE, ISO7816.INS_MANAGE_CHANNEL, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, -63, 29, -98, -31, -8, -104, 17, 105, -39, ISOFileInfo.CHANNEL_SECURITY, -108, -101, PassportService.SFI_COM, ISOFileInfo.FCI_EXT, -23, -50, 85, 40, -33, ISOFileInfo.SECURITY_ATTR_COMPACT, ISOFileInfo.A1, -119, PassportService.SFI_DG13, -65, -26, CVCAFile.CAR_TAG, 104, 65, -103, 45, PassportService.SFI_DG15, ISO7816.INS_READ_BINARY, 84, -69, 22};
    private static final byte[] Si = {82, 9, 106, -43, ISO7816.INS_DECREASE, 54, ISOFileInfo.A5, 56, -65, 64, -93, -98, ISOFileInfo.DATA_BYTES2, -13, -41, -5, 124, -29, 57, -126, -101, 47, -1, ISOFileInfo.FCI_EXT, ISO7816.INS_DECREASE_STAMPED, ISOFileInfo.CHANNEL_SECURITY, 67, ISO7816.INS_REHABILITATE_CHV, -60, -34, -23, -53, 84, 123, -108, ISO7816.INS_INCREASE, -90, ISO7816.INS_ENVELOPE, 35, 61, -18, 76, -107, PassportService.SFI_DG11, CVCAFile.CAR_TAG, -6, -61, 78, 8, 46, ISOFileInfo.A1, 102, 40, -39, ISO7816.INS_CHANGE_CHV, -78, 118, 91, -94, 73, 109, ISOFileInfo.SECURITY_ATTR_EXP, -47, 37, 114, -8, -10, ISOFileInfo.FMD_BYTE, -122, 104, -104, 22, -44, -92, 92, -52, 93, 101, ISO7816.INS_READ_RECORD_STAMPED, -110, 108, ISO7816.INS_MANAGE_CHANNEL, 72, 80, -3, -19, -71, ISO7816.INS_PUT_DATA, 94, 21, 70, 87, -89, ISOFileInfo.ENV_TEMP_EF, -99, -124, -112, ISO7816.INS_LOAD_KEY_FILE, ISOFileInfo.AB, 0, ISOFileInfo.SECURITY_ATTR_COMPACT, PSSSigner.TRAILER_IMPLICIT, -45, 10, -9, ISO7816.INS_DELETE_FILE, 88, 5, -72, ISO7816.INS_READ_RECORD2, 69, 6, ISO7816.INS_WRITE_BINARY, ISO7816.INS_UNBLOCK_CHV, PassportService.SFI_COM, -113, ISO7816.INS_GET_DATA, 63, PassportService.SFI_DG15, 2, -63, -81, -67, 3, 1, 19, ISOFileInfo.LCS_BYTE, 107, 58, -111, 17, 65, 79, 103, ISO7816.INS_UPDATE_RECORD, -22, -105, -14, -49, -50, -16, ISO7816.INS_READ_BINARY_STAMPED, -26, 115, -106, -84, 116, ISO7816.INS_MSE, -25, -83, 53, ISOFileInfo.PROP_INFO, ISO7816.INS_APPEND_RECORD, -7, 55, -24, 28, 117, -33, 110, 71, -15, 26, 113, 29, 41, -59, -119, ISOFileInfo.FCI_BYTE, -73, ISOFileInfo.FCP_BYTE, 14, -86, 24, -66, 27, -4, 86, 62, 75, -58, ISO7816.INS_WRITE_RECORD, 121, ISO7816.INS_VERIFY, -102, -37, ISO7816.INS_GET_RESPONSE, -2, 120, -51, 90, -12, 31, -35, -88, 51, -120, 7, -57, 49, ISO7816.INS_READ_BINARY2, 18, 16, 89, 39, ISOFileInfo.DATA_BYTES1, -20, 95, 96, 81, 127, -87, 25, -75, 74, PassportService.SFI_DG13, 45, -27, 122, -97, -109, -55, -100, -17, ISOFileInfo.A0, ISO7816.INS_CREATE_FILE, 59, 77, -82, ISO7816.INS_PSO, -11, ISO7816.INS_READ_BINARY, -56, -21, -69, 60, ISOFileInfo.FILE_IDENTIFIER, 83, -103, 97, 23, 43, 4, 126, -70, 119, ISO7816.INS_UPDATE_BINARY, 38, -31, 105, 20, 99, 85, 33, PassportService.SFI_DG12, 125};
    private static final int[] rcon = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, ISO7816.TAG_SM_EXPECTED_LENGTH, 53, 106, 212, 179, 125, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 239, 197, 145};

    public AESLightEngine() {
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), bitsOfSecurity()));
    }

    private static int FFmulX(int r22) {
        return (((r22 & f11494m1) >>> 7) * 27) ^ ((f11495m2 & r22) << 1);
    }

    private static int FFmulX2(int r22) {
        int r02 = (f11498m5 & r22) << 2;
        int r23 = r22 & f11497m4;
        int r24 = r23 ^ (r23 >>> 1);
        return (r24 >>> 5) ^ (r02 ^ (r24 >>> 2));
    }

    private int bitsOfSecurity() {
        if (this.WorkingKey == null) {
            return 256;
        }
        return (r0.length - 7) << 5;
    }

    private void decryptBlock(byte[] bArr, int r18, byte[] bArr2, int r20, int[][] r21) {
        int r22 = Pack.littleEndianToInt(bArr, r18 + 0);
        int r32 = Pack.littleEndianToInt(bArr, r18 + 4);
        int r42 = Pack.littleEndianToInt(bArr, r18 + 8);
        int r02 = Pack.littleEndianToInt(bArr, r18 + 12);
        int r6 = this.ROUNDS;
        int[] r72 = r21[r6];
        int r23 = r22 ^ r72[0];
        int r33 = r32 ^ r72[1];
        int r43 = r42 ^ r72[2];
        int r62 = r6 - 1;
        int r03 = r02 ^ r72[3];
        while (true) {
            byte[] bArr3 = Si;
            int r12 = r23 & 255;
            if (r62 <= 1) {
                int r122 = inv_mcol((((bArr3[r12] & 255) ^ ((bArr3[(r03 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r43 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r33 >> 24) & 255] << 24)) ^ r21[r62][0];
                int r13 = inv_mcol((((bArr3[r33 & 255] & 255) ^ ((bArr3[(r23 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r03 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r43 >> 24) & 255] << 24)) ^ r21[r62][1];
                int r14 = inv_mcol((((bArr3[r43 & 255] & 255) ^ ((bArr3[(r33 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r23 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r03 >> 24) & 255] << 24)) ^ r21[r62][2];
                int r04 = inv_mcol((((bArr3[r03 & 255] & 255) ^ ((bArr3[(r43 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r33 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r23 >> 24) & 255] << 24)) ^ r21[r62][3];
                int r24 = (((bArr3[r122 & 255] & 255) ^ ((bArr3[(r04 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r14 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r13 >> 24) & 255] << 24);
                int[] r34 = r21[0];
                int r25 = r24 ^ r34[0];
                int r44 = ((((bArr3[r13 & 255] & 255) ^ ((bArr3[(r122 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r04 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r14 >> 24) & 255] << 24)) ^ r34[1];
                int r63 = ((((bArr3[r14 & 255] & 255) ^ ((bArr3[(r13 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r122 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r04 >> 24) & 255] << 24)) ^ r34[2];
                int r05 = ((((bArr3[r04 & 255] & 255) ^ ((bArr3[(r14 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r13 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r122 >> 24) & 255] << 24)) ^ r34[3];
                Pack.intToLittleEndian(r25, bArr2, r20 + 0);
                Pack.intToLittleEndian(r44, bArr2, r20 + 4);
                Pack.intToLittleEndian(r63, bArr2, r20 + 8);
                Pack.intToLittleEndian(r05, bArr2, r20 + 12);
                return;
            }
            int r123 = inv_mcol((((bArr3[r12] & 255) ^ ((bArr3[(r03 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r43 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r33 >> 24) & 255] << 24)) ^ r21[r62][0];
            int r132 = inv_mcol((((bArr3[r33 & 255] & 255) ^ ((bArr3[(r23 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r03 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r43 >> 24) & 255] << 24)) ^ r21[r62][1];
            int r142 = inv_mcol((((bArr3[r43 & 255] & 255) ^ ((bArr3[(r33 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r23 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r03 >> 24) & 255] << 24)) ^ r21[r62][2];
            int r06 = inv_mcol((((bArr3[r03 & 255] & 255) ^ ((bArr3[(r43 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r33 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r23 >> 24) & 255] << 24));
            int r26 = r62 - 1;
            int r07 = r06 ^ r21[r62][3];
            int r35 = inv_mcol((((bArr3[r123 & 255] & 255) ^ ((bArr3[(r07 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r142 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r132 >> 24) & 255] << 24)) ^ r21[r26][0];
            int r45 = inv_mcol((((bArr3[r132 & 255] & 255) ^ ((bArr3[(r123 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r07 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r142 >> 24) & 255] << 24)) ^ r21[r26][1];
            int r64 = inv_mcol((((bArr3[r142 & 255] & 255) ^ ((bArr3[(r132 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r123 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r07 >> 24) & 255] << 24)) ^ r21[r26][2];
            int r08 = inv_mcol((((bArr3[r07 & 255] & 255) ^ ((bArr3[(r142 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r132 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r123 >> 24) & 255] << 24));
            int r73 = r26 - 1;
            r03 = r08 ^ r21[r26][3];
            r23 = r35;
            r33 = r45;
            r43 = r64;
            r62 = r73;
        }
    }

    private void encryptBlock(byte[] bArr, int r18, byte[] bArr2, int r20, int[][] r21) {
        int r22 = Pack.littleEndianToInt(bArr, r18 + 0);
        int r32 = Pack.littleEndianToInt(bArr, r18 + 4);
        int r42 = Pack.littleEndianToInt(bArr, r18 + 8);
        int r02 = Pack.littleEndianToInt(bArr, r18 + 12);
        int[] r6 = r21[0];
        int r23 = r22 ^ r6[0];
        int r33 = r32 ^ r6[1];
        int r43 = r42 ^ r6[2];
        int r03 = r02 ^ r6[3];
        int r10 = 1;
        while (r10 < this.ROUNDS - 1) {
            byte[] bArr3 = S;
            int r12 = mcol((((bArr3[r23 & 255] & 255) ^ ((bArr3[(r33 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r43 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r03 >> 24) & 255] << 24)) ^ r21[r10][0];
            int r13 = mcol((((bArr3[r33 & 255] & 255) ^ ((bArr3[(r43 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r03 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r23 >> 24) & 255] << 24)) ^ r21[r10][1];
            int r14 = mcol((((bArr3[r43 & 255] & 255) ^ ((bArr3[(r03 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r23 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r33 >> 24) & 255] << 24)) ^ r21[r10][2];
            int r04 = mcol((((bArr3[r03 & 255] & 255) ^ ((bArr3[(r23 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r33 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r43 >> 24) & 255] << 24));
            int r24 = r10 + 1;
            int r05 = r04 ^ r21[r10][3];
            int r34 = mcol((((bArr3[r12 & 255] & 255) ^ ((bArr3[(r13 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r14 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r05 >> 24) & 255] << 24)) ^ r21[r24][0];
            int r44 = mcol((((bArr3[r13 & 255] & 255) ^ ((bArr3[(r14 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r05 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r12 >> 24) & 255] << 24)) ^ r21[r24][1];
            int r102 = mcol((((bArr3[r14 & 255] & 255) ^ ((bArr3[(r05 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r12 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r13 >> 24) & 255] << 24)) ^ r21[r24][2];
            int r06 = mcol((((bArr3[r05 & 255] & 255) ^ ((bArr3[(r12 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r13 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r14 >> 24) & 255] << 24));
            int r11 = r24 + 1;
            r03 = r06 ^ r21[r24][3];
            r23 = r34;
            r33 = r44;
            r43 = r102;
            r10 = r11;
        }
        byte[] bArr4 = S;
        int r122 = mcol((((bArr4[r23 & 255] & 255) ^ ((bArr4[(r33 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(r43 >> 16) & 255] & 255) << 16)) ^ (bArr4[(r03 >> 24) & 255] << 24)) ^ r21[r10][0];
        int r132 = mcol((((bArr4[r33 & 255] & 255) ^ ((bArr4[(r43 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(r03 >> 16) & 255] & 255) << 16)) ^ (bArr4[(r23 >> 24) & 255] << 24)) ^ r21[r10][1];
        int r142 = mcol((((bArr4[r43 & 255] & 255) ^ ((bArr4[(r03 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(r23 >> 16) & 255] & 255) << 16)) ^ (bArr4[(r33 >> 24) & 255] << 24)) ^ r21[r10][2];
        int r07 = mcol((((bArr4[r03 & 255] & 255) ^ ((bArr4[(r23 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(r33 >> 16) & 255] & 255) << 16)) ^ (bArr4[(r43 >> 24) & 255] << 24)) ^ r21[r10][3];
        int r35 = (((bArr4[r122 & 255] & 255) ^ ((bArr4[(r132 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(r142 >> 16) & 255] & 255) << 16)) ^ (bArr4[(r07 >> 24) & 255] << 24);
        int[] r25 = r21[r10 + 1];
        int r36 = r35 ^ r25[0];
        int r45 = ((((bArr4[r132 & 255] & 255) ^ ((bArr4[(r142 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(r07 >> 16) & 255] & 255) << 16)) ^ (bArr4[(r122 >> 24) & 255] << 24)) ^ r25[1];
        int r52 = ((((bArr4[r142 & 255] & 255) ^ ((bArr4[(r07 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(r122 >> 16) & 255] & 255) << 16)) ^ (bArr4[(r132 >> 24) & 255] << 24)) ^ r25[2];
        int r08 = ((((bArr4[r07 & 255] & 255) ^ ((bArr4[(r122 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(r132 >> 16) & 255] & 255) << 16)) ^ (bArr4[(r142 >> 24) & 255] << 24)) ^ r25[3];
        Pack.intToLittleEndian(r36, bArr2, r20 + 0);
        Pack.intToLittleEndian(r45, bArr2, r20 + 4);
        Pack.intToLittleEndian(r52, bArr2, r20 + 8);
        Pack.intToLittleEndian(r08, bArr2, r20 + 12);
    }

    private int[][] generateWorkingKey(byte[] bArr, boolean z10) {
        int length = bArr.length;
        if (length < 16 || length > 32 || (length & 7) != 0) {
            throw new IllegalArgumentException("Key length not 128/192/256 bits.");
        }
        int r22 = length >>> 2;
        int r52 = r22 + 6;
        this.ROUNDS = r52;
        int[][] r53 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, r52 + 1, 4);
        int r10 = 8;
        char c10 = 3;
        if (r22 == 4) {
            int r23 = Pack.littleEndianToInt(bArr, 0);
            r53[0][0] = r23;
            int r82 = Pack.littleEndianToInt(bArr, 4);
            r53[0][1] = r82;
            int r102 = Pack.littleEndianToInt(bArr, 8);
            r53[0][2] = r102;
            int r12 = Pack.littleEndianToInt(bArr, 12);
            r53[0][3] = r12;
            for (int r72 = 1; r72 <= 10; r72++) {
                r23 ^= subWord(shift(r12, 8)) ^ rcon[r72 - 1];
                int[] r11 = r53[r72];
                r11[0] = r23;
                r82 ^= r23;
                r11[1] = r82;
                r102 ^= r82;
                r11[2] = r102;
                r12 ^= r102;
                r11[3] = r12;
            }
        } else if (r22 == 6) {
            int r24 = Pack.littleEndianToInt(bArr, 0);
            r53[0][0] = r24;
            int r103 = Pack.littleEndianToInt(bArr, 4);
            r53[0][1] = r103;
            int r112 = Pack.littleEndianToInt(bArr, 8);
            r53[0][2] = r112;
            int r73 = Pack.littleEndianToInt(bArr, 12);
            r53[0][3] = r73;
            int r32 = Pack.littleEndianToInt(bArr, 16);
            int r13 = Pack.littleEndianToInt(bArr, 20);
            int r83 = 1;
            int r122 = 1;
            while (true) {
                int[] r132 = r53[r83];
                r132[0] = r32;
                r132[1] = r13;
                int r133 = subWord(shift(r13, 8)) ^ r122;
                int r123 = r122 << 1;
                int r25 = r24 ^ r133;
                int[] r134 = r53[r83];
                r134[2] = r25;
                int r104 = r103 ^ r25;
                r134[3] = r104;
                int r113 = r112 ^ r104;
                int[] r135 = r53[r83 + 1];
                r135[0] = r113;
                int r74 = r73 ^ r113;
                r135[1] = r74;
                int r33 = r32 ^ r74;
                r135[2] = r33;
                int r14 = r13 ^ r33;
                r135[3] = r14;
                int r136 = subWord(shift(r14, 8)) ^ r123;
                r122 = r123 << 1;
                r24 = r25 ^ r136;
                int[] r137 = r53[r83 + 2];
                r137[0] = r24;
                r103 = r104 ^ r24;
                r137[1] = r103;
                r112 = r113 ^ r103;
                r137[2] = r112;
                r73 = r74 ^ r112;
                r137[3] = r73;
                r83 += 3;
                if (r83 >= 13) {
                    break;
                }
                r32 = r33 ^ r73;
                r13 = r14 ^ r32;
            }
        } else {
            if (r22 != 8) {
                throw new IllegalStateException("Should never get here");
            }
            int r26 = Pack.littleEndianToInt(bArr, 0);
            r53[0][0] = r26;
            int r138 = Pack.littleEndianToInt(bArr, 4);
            r53[0][1] = r138;
            int r142 = Pack.littleEndianToInt(bArr, 8);
            r53[0][2] = r142;
            int r75 = Pack.littleEndianToInt(bArr, 12);
            r53[0][3] = r75;
            int r34 = Pack.littleEndianToInt(bArr, 16);
            r53[1][0] = r34;
            int r124 = Pack.littleEndianToInt(bArr, 20);
            r53[1][1] = r124;
            int r15 = Pack.littleEndianToInt(bArr, 24);
            r53[1][2] = r15;
            int r16 = Pack.littleEndianToInt(bArr, 28);
            r53[1][3] = r16;
            int r84 = 1;
            int r17 = 2;
            while (true) {
                int r18 = subWord(shift(r16, r10)) ^ r84;
                r84 <<= 1;
                r26 ^= r18;
                int[] r182 = r53[r17];
                r182[0] = r26;
                r138 ^= r26;
                r182[1] = r138;
                r142 ^= r138;
                r182[2] = r142;
                r75 ^= r142;
                r182[c10] = r75;
                int r105 = r17 + 1;
                if (r105 >= 15) {
                    break;
                }
                r34 ^= subWord(r75);
                int[] r114 = r53[r105];
                r114[0] = r34;
                r124 ^= r34;
                r114[1] = r124;
                r15 ^= r124;
                r114[2] = r15;
                r16 ^= r15;
                r114[3] = r16;
                r17 = r105 + 1;
                r10 = 8;
                c10 = 3;
            }
        }
        if (!z10) {
            for (int r6 = 1; r6 < this.ROUNDS; r6++) {
                for (int r19 = 0; r19 < 4; r19++) {
                    int[] r35 = r53[r6];
                    r35[r19] = inv_mcol(r35[r19]);
                }
            }
        }
        return r53;
    }

    private static int inv_mcol(int r22) {
        int r02 = shift(r22, 8) ^ r22;
        int r23 = r22 ^ FFmulX(r02);
        int r03 = r02 ^ FFmulX2(r23);
        return r23 ^ (r03 ^ shift(r03, 16));
    }

    private static int mcol(int r22) {
        int r02 = shift(r22, 8);
        int r23 = r22 ^ r02;
        return FFmulX(r23) ^ (r02 ^ shift(r23, 16));
    }

    private static int shift(int r12, int r22) {
        return (r12 << (-r22)) | (r12 >>> r22);
    }

    private static int subWord(int r32) {
        byte[] bArr = S;
        return (bArr[(r32 >> 24) & 255] << 24) | (bArr[r32 & 255] & 255) | ((bArr[(r32 >> 8) & 255] & 255) << 8) | ((bArr[(r32 >> 16) & 255] & 255) << 16);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "AES";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException(b.g(cipherParameters, "invalid parameter passed to AES init - "));
        }
        this.WorkingKey = generateWorkingKey(((KeyParameter) cipherParameters).getKey(), z10);
        this.forEncryption = z10;
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), bitsOfSecurity(), cipherParameters, Utils.getPurpose(z10)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r92, byte[] bArr2, int r11) {
        int[][] r52 = this.WorkingKey;
        if (r52 == null) {
            throw new IllegalStateException("AES engine not initialised");
        }
        if (r92 > bArr.length - 16) {
            throw new DataLengthException("input buffer too short");
        }
        if (r11 > bArr2.length - 16) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.forEncryption) {
            encryptBlock(bArr, r92, bArr2, r11, r52);
        } else {
            decryptBlock(bArr, r92, bArr2, r11, r52);
        }
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
