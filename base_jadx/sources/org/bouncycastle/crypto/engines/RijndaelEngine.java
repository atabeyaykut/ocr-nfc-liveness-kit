package org.bouncycastle.crypto.engines;

import ab.b;
import androidx.recyclerview.widget.ItemTouchHelper;
import java.lang.reflect.Array;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.asn1.cmc.BodyPartID;
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
public class RijndaelEngine implements BlockCipher {
    private static final int MAXKC = 64;
    private static final int MAXROUNDS = 14;
    private long A0;
    private long A1;
    private long A2;
    private long A3;
    private int BC;
    private long BC_MASK;
    private int ROUNDS;
    private int blockBits;
    private boolean forEncryption;
    private byte[] shifts0SC;
    private byte[] shifts1SC;
    private long[][] workingKey;
    private static final byte[] logtable = {0, 0, 25, 1, ISO7816.INS_INCREASE, 2, 26, -58, 75, -57, 27, 104, 51, -18, -33, 3, ISOFileInfo.FMD_BYTE, 4, ISO7816.INS_CREATE_FILE, 14, ISO7816.INS_DECREASE_STAMPED, ISOFileInfo.ENV_TEMP_EF, ISOFileInfo.DATA_BYTES2, -17, 76, 113, 8, -56, -8, 105, 28, -63, 125, ISO7816.INS_ENVELOPE, 29, -75, -7, -71, 39, 106, 77, ISO7816.INS_DELETE_FILE, -90, 114, -102, -55, 9, 120, 101, 47, ISOFileInfo.LCS_BYTE, 5, 33, PassportService.SFI_DG15, -31, ISO7816.INS_CHANGE_CHV, 18, -16, -126, 69, 53, -109, ISO7816.INS_PUT_DATA, ISOFileInfo.CHANNEL_SECURITY, -106, -113, -37, -67, 54, ISO7816.INS_WRITE_BINARY, -50, -108, 19, 92, ISO7816.INS_WRITE_RECORD, -15, 64, 70, ISOFileInfo.FILE_IDENTIFIER, 56, 102, -35, -3, ISO7816.INS_DECREASE, -65, 6, ISOFileInfo.SECURITY_ATTR_EXP, ISOFileInfo.FCP_BYTE, ISO7816.INS_READ_RECORD2, 37, ISO7816.INS_APPEND_RECORD, -104, ISO7816.INS_MSE, -120, -111, 16, 126, 110, 72, -61, -93, ISO7816.INS_READ_RECORD_STAMPED, PassportService.SFI_COM, CVCAFile.CAR_TAG, 58, 107, 40, 84, -6, ISOFileInfo.PROP_INFO, 61, -70, 43, 121, 10, 21, -101, -97, 94, ISO7816.INS_GET_DATA, 78, -44, -84, -27, -13, 115, -89, 87, -81, 88, -88, 80, -12, -22, ISO7816.INS_UPDATE_BINARY, 116, 79, -82, -23, -43, -25, -26, -83, -24, ISO7816.INS_UNBLOCK_CHV, -41, 117, 122, -21, 22, PassportService.SFI_DG11, -11, 89, -53, 95, ISO7816.INS_READ_BINARY, -100, -87, 81, ISOFileInfo.A0, 127, PassportService.SFI_DG12, -10, ISOFileInfo.FCI_BYTE, 23, -60, 73, -20, ISO7816.INS_LOAD_KEY_FILE, 67, 31, 45, -92, 118, 123, -73, -52, -69, 62, 90, -5, 96, ISO7816.INS_READ_BINARY2, -122, 59, 82, ISOFileInfo.A1, 108, -86, 85, 41, -99, -105, -78, ISOFileInfo.FCI_EXT, -112, 97, -66, ISO7816.INS_UPDATE_RECORD, -4, PSSSigner.TRAILER_IMPLICIT, -107, -49, -51, 55, 63, 91, -47, 83, 57, -124, 60, 65, -94, 109, 71, 20, ISO7816.INS_PSO, -98, 93, 86, -14, -45, ISOFileInfo.AB, ISO7816.INS_REHABILITATE_CHV, 17, -110, -39, 35, ISO7816.INS_VERIFY, 46, -119, ISO7816.INS_READ_BINARY_STAMPED, 124, -72, 38, 119, -103, -29, ISOFileInfo.A5, 103, 74, -19, -34, -59, 49, -2, 24, PassportService.SFI_DG13, 99, ISOFileInfo.SECURITY_ATTR_COMPACT, ISOFileInfo.DATA_BYTES1, ISO7816.INS_GET_RESPONSE, -9, ISO7816.INS_MANAGE_CHANNEL, 7};
    private static final byte[] aLogtable = {0, 3, 5, PassportService.SFI_DG15, 17, 51, 85, -1, 26, 46, 114, -106, ISOFileInfo.A1, -8, 19, 53, 95, -31, 56, 72, ISO7816.INS_LOAD_KEY_FILE, 115, -107, -92, -9, 2, 6, 10, PassportService.SFI_COM, ISO7816.INS_MSE, 102, -86, -27, ISO7816.INS_DECREASE_STAMPED, 92, ISO7816.INS_DELETE_FILE, 55, 89, -21, 38, 106, -66, -39, ISO7816.INS_MANAGE_CHANNEL, -112, ISOFileInfo.AB, -26, 49, 83, -11, 4, PassportService.SFI_DG12, 20, 60, ISO7816.INS_REHABILITATE_CHV, -52, 79, -47, 104, -72, -45, 110, -78, -51, 76, -44, 103, -87, ISO7816.INS_CREATE_FILE, 59, 77, -41, ISOFileInfo.FCP_BYTE, -90, -15, 8, 24, 40, 120, -120, ISOFileInfo.FILE_IDENTIFIER, -98, -71, ISO7816.INS_WRITE_BINARY, 107, -67, ISO7816.INS_UPDATE_RECORD, 127, ISOFileInfo.DATA_BYTES2, -104, ISO7816.INS_READ_RECORD2, -50, 73, -37, 118, -102, -75, -60, 87, -7, 16, ISO7816.INS_DECREASE, 80, -16, PassportService.SFI_DG11, 29, 39, 105, -69, ISO7816.INS_UPDATE_BINARY, 97, -93, -2, 25, 43, 125, ISOFileInfo.FCI_EXT, -110, -83, -20, 47, 113, -109, -82, -23, ISO7816.INS_VERIFY, 96, ISOFileInfo.A0, -5, 22, 58, 78, ISO7816.INS_WRITE_RECORD, 109, -73, ISO7816.INS_ENVELOPE, 93, -25, ISO7816.INS_INCREASE, 86, -6, 21, 63, 65, -61, 94, ISO7816.INS_APPEND_RECORD, 61, 71, -55, 64, ISO7816.INS_GET_RESPONSE, 91, -19, ISO7816.INS_UNBLOCK_CHV, 116, -100, -65, ISO7816.INS_PUT_DATA, 117, -97, -70, -43, ISOFileInfo.FMD_BYTE, -84, -17, ISO7816.INS_PSO, 126, -126, -99, PSSSigner.TRAILER_IMPLICIT, -33, 122, ISOFileInfo.CHANNEL_SECURITY, -119, ISOFileInfo.DATA_BYTES1, -101, ISO7816.INS_READ_RECORD_STAMPED, -63, 88, -24, 35, 101, -81, -22, 37, ISOFileInfo.FCI_BYTE, ISO7816.INS_READ_BINARY2, -56, 67, -59, 84, -4, 31, 33, 99, ISOFileInfo.A5, -12, 7, 9, 27, 45, 119, -103, ISO7816.INS_READ_BINARY, -53, 70, ISO7816.INS_GET_DATA, 69, -49, 74, -34, 121, ISOFileInfo.SECURITY_ATTR_EXP, -122, -111, -88, -29, 62, CVCAFile.CAR_TAG, -58, 81, -13, 14, 18, 54, 90, -18, 41, 123, ISOFileInfo.ENV_TEMP_EF, ISOFileInfo.SECURITY_ATTR_COMPACT, -113, ISOFileInfo.LCS_BYTE, ISOFileInfo.PROP_INFO, -108, -89, -14, PassportService.SFI_DG13, 23, 57, 75, -35, 124, -124, -105, -94, -3, 28, ISO7816.INS_CHANGE_CHV, 108, ISO7816.INS_READ_BINARY_STAMPED, -57, 82, -10, 1, 3, 5, PassportService.SFI_DG15, 17, 51, 85, -1, 26, 46, 114, -106, ISOFileInfo.A1, -8, 19, 53, 95, -31, 56, 72, ISO7816.INS_LOAD_KEY_FILE, 115, -107, -92, -9, 2, 6, 10, PassportService.SFI_COM, ISO7816.INS_MSE, 102, -86, -27, ISO7816.INS_DECREASE_STAMPED, 92, ISO7816.INS_DELETE_FILE, 55, 89, -21, 38, 106, -66, -39, ISO7816.INS_MANAGE_CHANNEL, -112, ISOFileInfo.AB, -26, 49, 83, -11, 4, PassportService.SFI_DG12, 20, 60, ISO7816.INS_REHABILITATE_CHV, -52, 79, -47, 104, -72, -45, 110, -78, -51, 76, -44, 103, -87, ISO7816.INS_CREATE_FILE, 59, 77, -41, ISOFileInfo.FCP_BYTE, -90, -15, 8, 24, 40, 120, -120, ISOFileInfo.FILE_IDENTIFIER, -98, -71, ISO7816.INS_WRITE_BINARY, 107, -67, ISO7816.INS_UPDATE_RECORD, 127, ISOFileInfo.DATA_BYTES2, -104, ISO7816.INS_READ_RECORD2, -50, 73, -37, 118, -102, -75, -60, 87, -7, 16, ISO7816.INS_DECREASE, 80, -16, PassportService.SFI_DG11, 29, 39, 105, -69, ISO7816.INS_UPDATE_BINARY, 97, -93, -2, 25, 43, 125, ISOFileInfo.FCI_EXT, -110, -83, -20, 47, 113, -109, -82, -23, ISO7816.INS_VERIFY, 96, ISOFileInfo.A0, -5, 22, 58, 78, ISO7816.INS_WRITE_RECORD, 109, -73, ISO7816.INS_ENVELOPE, 93, -25, ISO7816.INS_INCREASE, 86, -6, 21, 63, 65, -61, 94, ISO7816.INS_APPEND_RECORD, 61, 71, -55, 64, ISO7816.INS_GET_RESPONSE, 91, -19, ISO7816.INS_UNBLOCK_CHV, 116, -100, -65, ISO7816.INS_PUT_DATA, 117, -97, -70, -43, ISOFileInfo.FMD_BYTE, -84, -17, ISO7816.INS_PSO, 126, -126, -99, PSSSigner.TRAILER_IMPLICIT, -33, 122, ISOFileInfo.CHANNEL_SECURITY, -119, ISOFileInfo.DATA_BYTES1, -101, ISO7816.INS_READ_RECORD_STAMPED, -63, 88, -24, 35, 101, -81, -22, 37, ISOFileInfo.FCI_BYTE, ISO7816.INS_READ_BINARY2, -56, 67, -59, 84, -4, 31, 33, 99, ISOFileInfo.A5, -12, 7, 9, 27, 45, 119, -103, ISO7816.INS_READ_BINARY, -53, 70, ISO7816.INS_GET_DATA, 69, -49, 74, -34, 121, ISOFileInfo.SECURITY_ATTR_EXP, -122, -111, -88, -29, 62, CVCAFile.CAR_TAG, -58, 81, -13, 14, 18, 54, 90, -18, 41, 123, ISOFileInfo.ENV_TEMP_EF, ISOFileInfo.SECURITY_ATTR_COMPACT, -113, ISOFileInfo.LCS_BYTE, ISOFileInfo.PROP_INFO, -108, -89, -14, PassportService.SFI_DG13, 23, 57, 75, -35, 124, -124, -105, -94, -3, 28, ISO7816.INS_CHANGE_CHV, 108, ISO7816.INS_READ_BINARY_STAMPED, -57, 82, -10, 1};
    private static final byte[] S = {99, 124, 119, 123, -14, 107, ISOFileInfo.FCI_BYTE, -59, ISO7816.INS_DECREASE, 1, 103, 43, -2, -41, ISOFileInfo.AB, 118, ISO7816.INS_GET_DATA, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, ISO7816.INS_GET_RESPONSE, -73, -3, -109, 38, 54, 63, -9, -52, ISO7816.INS_DECREASE_STAMPED, ISOFileInfo.A5, -27, -15, 113, ISO7816.INS_LOAD_KEY_FILE, 49, 21, 4, -57, 35, -61, 24, -106, 5, -102, 7, 18, ISOFileInfo.DATA_BYTES1, ISO7816.INS_APPEND_RECORD, -21, 39, -78, 117, 9, ISOFileInfo.FILE_IDENTIFIER, ISO7816.INS_UNBLOCK_CHV, 26, 27, 110, 90, ISOFileInfo.A0, 82, 59, ISO7816.INS_UPDATE_BINARY, ISO7816.INS_READ_RECORD2, 41, -29, 47, -124, 83, -47, 0, -19, ISO7816.INS_VERIFY, -4, ISO7816.INS_READ_BINARY2, 91, 106, -53, -66, 57, 74, 76, 88, -49, ISO7816.INS_WRITE_BINARY, -17, -86, -5, 67, 77, 51, ISOFileInfo.PROP_INFO, 69, -7, 2, 127, 80, 60, -97, -88, 81, -93, 64, -113, -110, -99, 56, -11, PSSSigner.TRAILER_IMPLICIT, ISO7816.INS_READ_RECORD_STAMPED, ISO7816.INS_PUT_DATA, 33, 16, -1, -13, ISO7816.INS_WRITE_RECORD, -51, PassportService.SFI_DG12, 19, -20, 95, -105, ISO7816.INS_REHABILITATE_CHV, 23, -60, -89, 126, 61, ISOFileInfo.FMD_BYTE, 93, 25, 115, 96, ISOFileInfo.DATA_BYTES2, 79, ISO7816.INS_UPDATE_RECORD, ISO7816.INS_MSE, ISO7816.INS_PSO, -112, -120, 70, -18, -72, 20, -34, 94, PassportService.SFI_DG11, -37, ISO7816.INS_CREATE_FILE, ISO7816.INS_INCREASE, 58, 10, 73, 6, ISO7816.INS_CHANGE_CHV, 92, ISO7816.INS_ENVELOPE, -45, -84, ISOFileInfo.FCP_BYTE, -111, -107, ISO7816.INS_DELETE_FILE, 121, -25, -56, 55, 109, ISOFileInfo.ENV_TEMP_EF, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, 28, -90, ISO7816.INS_READ_BINARY_STAMPED, -58, -24, -35, 116, 31, 75, -67, ISOFileInfo.SECURITY_ATTR_EXP, ISOFileInfo.LCS_BYTE, ISO7816.INS_MANAGE_CHANNEL, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, -63, 29, -98, -31, -8, -104, 17, 105, -39, ISOFileInfo.CHANNEL_SECURITY, -108, -101, PassportService.SFI_COM, ISOFileInfo.FCI_EXT, -23, -50, 85, 40, -33, ISOFileInfo.SECURITY_ATTR_COMPACT, ISOFileInfo.A1, -119, PassportService.SFI_DG13, -65, -26, CVCAFile.CAR_TAG, 104, 65, -103, 45, PassportService.SFI_DG15, ISO7816.INS_READ_BINARY, 84, -69, 22};
    private static final byte[] Si = {82, 9, 106, -43, ISO7816.INS_DECREASE, 54, ISOFileInfo.A5, 56, -65, 64, -93, -98, ISOFileInfo.DATA_BYTES2, -13, -41, -5, 124, -29, 57, -126, -101, 47, -1, ISOFileInfo.FCI_EXT, ISO7816.INS_DECREASE_STAMPED, ISOFileInfo.CHANNEL_SECURITY, 67, ISO7816.INS_REHABILITATE_CHV, -60, -34, -23, -53, 84, 123, -108, ISO7816.INS_INCREASE, -90, ISO7816.INS_ENVELOPE, 35, 61, -18, 76, -107, PassportService.SFI_DG11, CVCAFile.CAR_TAG, -6, -61, 78, 8, 46, ISOFileInfo.A1, 102, 40, -39, ISO7816.INS_CHANGE_CHV, -78, 118, 91, -94, 73, 109, ISOFileInfo.SECURITY_ATTR_EXP, -47, 37, 114, -8, -10, ISOFileInfo.FMD_BYTE, -122, 104, -104, 22, -44, -92, 92, -52, 93, 101, ISO7816.INS_READ_RECORD_STAMPED, -110, 108, ISO7816.INS_MANAGE_CHANNEL, 72, 80, -3, -19, -71, ISO7816.INS_PUT_DATA, 94, 21, 70, 87, -89, ISOFileInfo.ENV_TEMP_EF, -99, -124, -112, ISO7816.INS_LOAD_KEY_FILE, ISOFileInfo.AB, 0, ISOFileInfo.SECURITY_ATTR_COMPACT, PSSSigner.TRAILER_IMPLICIT, -45, 10, -9, ISO7816.INS_DELETE_FILE, 88, 5, -72, ISO7816.INS_READ_RECORD2, 69, 6, ISO7816.INS_WRITE_BINARY, ISO7816.INS_UNBLOCK_CHV, PassportService.SFI_COM, -113, ISO7816.INS_GET_DATA, 63, PassportService.SFI_DG15, 2, -63, -81, -67, 3, 1, 19, ISOFileInfo.LCS_BYTE, 107, 58, -111, 17, 65, 79, 103, ISO7816.INS_UPDATE_RECORD, -22, -105, -14, -49, -50, -16, ISO7816.INS_READ_BINARY_STAMPED, -26, 115, -106, -84, 116, ISO7816.INS_MSE, -25, -83, 53, ISOFileInfo.PROP_INFO, ISO7816.INS_APPEND_RECORD, -7, 55, -24, 28, 117, -33, 110, 71, -15, 26, 113, 29, 41, -59, -119, ISOFileInfo.FCI_BYTE, -73, ISOFileInfo.FCP_BYTE, 14, -86, 24, -66, 27, -4, 86, 62, 75, -58, ISO7816.INS_WRITE_RECORD, 121, ISO7816.INS_VERIFY, -102, -37, ISO7816.INS_GET_RESPONSE, -2, 120, -51, 90, -12, 31, -35, -88, 51, -120, 7, -57, 49, ISO7816.INS_READ_BINARY2, 18, 16, 89, 39, ISOFileInfo.DATA_BYTES1, -20, 95, 96, 81, 127, -87, 25, -75, 74, PassportService.SFI_DG13, 45, -27, 122, -97, -109, -55, -100, -17, ISOFileInfo.A0, ISO7816.INS_CREATE_FILE, 59, 77, -82, ISO7816.INS_PSO, -11, ISO7816.INS_READ_BINARY, -56, -21, -69, 60, ISOFileInfo.FILE_IDENTIFIER, 83, -103, 97, 23, 43, 4, 126, -70, 119, ISO7816.INS_UPDATE_BINARY, 38, -31, 105, 20, 99, 85, 33, PassportService.SFI_DG12, 125};
    private static final int[] rcon = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, ISO7816.TAG_SM_EXPECTED_LENGTH, 53, 106, 212, 179, 125, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 239, 197, 145};
    static byte[][] shifts0 = {new byte[]{0, 8, 16, 24}, new byte[]{0, 8, 16, 24}, new byte[]{0, 8, 16, 24}, new byte[]{0, 8, 16, ISO7816.INS_VERIFY}, new byte[]{0, 8, 24, ISO7816.INS_VERIFY}};
    static byte[][] shifts1 = {new byte[]{0, 24, 16, 8}, new byte[]{0, ISO7816.INS_VERIFY, 24, 16}, new byte[]{0, 40, ISO7816.INS_VERIFY, 24}, new byte[]{0, ISO7816.INS_DECREASE, 40, 24}, new byte[]{0, 56, 40, ISO7816.INS_VERIFY}};

    public RijndaelEngine() {
        this(128);
    }

    public RijndaelEngine(int r32) {
        if (r32 == 128) {
            this.BC = 32;
            this.BC_MASK = BodyPartID.bodyIdMax;
            this.shifts0SC = shifts0[0];
            this.shifts1SC = shifts1[0];
        } else if (r32 == 160) {
            this.BC = 40;
            this.BC_MASK = 1099511627775L;
            this.shifts0SC = shifts0[1];
            this.shifts1SC = shifts1[1];
        } else if (r32 == 192) {
            this.BC = 48;
            this.BC_MASK = 281474976710655L;
            this.shifts0SC = shifts0[2];
            this.shifts1SC = shifts1[2];
        } else if (r32 == 224) {
            this.BC = 56;
            this.BC_MASK = 72057594037927935L;
            this.shifts0SC = shifts0[3];
            this.shifts1SC = shifts1[3];
        } else {
            if (r32 != 256) {
                throw new IllegalArgumentException("unknown blocksize to Rijndael");
            }
            this.BC = 64;
            this.BC_MASK = -1L;
            this.shifts0SC = shifts0[4];
            this.shifts1SC = shifts1[4];
        }
        this.blockBits = r32;
    }

    private void InvMixColumn() {
        long jMul0xe = 0;
        long jMul0xe2 = 0;
        long jMul0xe3 = 0;
        long jMul0xe4 = 0;
        for (int r92 = 0; r92 < this.BC; r92 += 8) {
            int r11 = (int) ((this.A0 >> r92) & 255);
            int r10 = (int) ((this.A1 >> r92) & 255);
            int r15 = (int) ((this.A2 >> r92) & 255);
            long j10 = jMul0xe4;
            int r82 = (int) ((this.A3 >> r92) & 255);
            int r72 = -1;
            int r112 = r11 != 0 ? logtable[r11 & 255] & 255 : -1;
            int r102 = r10 != 0 ? logtable[r10 & 255] & 255 : -1;
            int r12 = r15 != 0 ? logtable[r15 & 255] & 255 : -1;
            if (r82 != 0) {
                r72 = logtable[r82 & 255] & 255;
            }
            jMul0xe |= ((((mul0xe(r112) ^ mul0xb(r102)) ^ mul0xd(r12)) ^ mul0x9(r72)) & 255) << r92;
            jMul0xe2 |= ((((mul0xe(r102) ^ mul0xb(r12)) ^ mul0xd(r72)) ^ mul0x9(r112)) & 255) << r92;
            jMul0xe3 |= ((((mul0xe(r12) ^ mul0xb(r72)) ^ mul0xd(r112)) ^ mul0x9(r102)) & 255) << r92;
            jMul0xe4 = j10 | (((((mul0xe(r72) ^ mul0xb(r112)) ^ mul0xd(r102)) ^ mul0x9(r12)) & 255) << r92);
        }
        this.A0 = jMul0xe;
        this.A1 = jMul0xe2;
        this.A2 = jMul0xe3;
        this.A3 = jMul0xe4;
    }

    private void KeyAddition(long[] jArr) {
        this.A0 ^= jArr[0];
        this.A1 ^= jArr[1];
        this.A2 ^= jArr[2];
        this.A3 ^= jArr[3];
    }

    private void MixColumn() {
        long jMul0x2 = 0;
        long jMul0x22 = 0;
        long jMul0x23 = 0;
        long jMul0x24 = 0;
        for (int r92 = 0; r92 < this.BC; r92 += 8) {
            int r11 = (int) ((this.A0 >> r92) & 255);
            int r10 = (int) ((this.A1 >> r92) & 255);
            int r15 = (int) ((this.A2 >> r92) & 255);
            int r82 = (int) ((this.A3 >> r92) & 255);
            jMul0x2 |= ((((mul0x2(r11) ^ mul0x3(r10)) ^ r15) ^ r82) & 255) << r92;
            jMul0x22 |= ((((mul0x2(r10) ^ mul0x3(r15)) ^ r82) ^ r11) & 255) << r92;
            jMul0x23 |= ((((mul0x2(r15) ^ mul0x3(r82)) ^ r11) ^ r10) & 255) << r92;
            jMul0x24 |= ((((mul0x2(r82) ^ mul0x3(r11)) ^ r10) ^ r15) & 255) << r92;
        }
        this.A0 = jMul0x2;
        this.A1 = jMul0x22;
        this.A2 = jMul0x23;
        this.A3 = jMul0x24;
    }

    private void ShiftRow(byte[] bArr) {
        this.A1 = shift(this.A1, bArr[1]);
        this.A2 = shift(this.A2, bArr[2]);
        this.A3 = shift(this.A3, bArr[3]);
    }

    private void Substitution(byte[] bArr) {
        this.A0 = applyS(this.A0, bArr);
        this.A1 = applyS(this.A1, bArr);
        this.A2 = applyS(this.A2, bArr);
        this.A3 = applyS(this.A3, bArr);
    }

    private long applyS(long j10, byte[] bArr) {
        long j11 = 0;
        for (int r22 = 0; r22 < this.BC; r22 += 8) {
            j11 |= (bArr[(int) ((j10 >> r22) & 255)] & 255) << r22;
        }
        return j11;
    }

    private void decryptBlock(long[][] jArr) {
        KeyAddition(jArr[this.ROUNDS]);
        Substitution(Si);
        ShiftRow(this.shifts1SC);
        for (int r02 = this.ROUNDS - 1; r02 > 0; r02--) {
            KeyAddition(jArr[r02]);
            InvMixColumn();
            Substitution(Si);
            ShiftRow(this.shifts1SC);
        }
        KeyAddition(jArr[0]);
    }

    private void encryptBlock(long[][] jArr) {
        KeyAddition(jArr[0]);
        for (int r02 = 1; r02 < this.ROUNDS; r02++) {
            Substitution(S);
            ShiftRow(this.shifts0SC);
            MixColumn();
            KeyAddition(jArr[r02]);
        }
        Substitution(S);
        ShiftRow(this.shifts0SC);
        KeyAddition(jArr[this.ROUNDS]);
    }

    private long[][] generateWorkingKey(byte[] bArr) {
        int r6;
        int r82;
        int r32 = 8;
        int length = bArr.length * 8;
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 4, 64);
        long[][] jArr = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 15, 4);
        int r92 = 4;
        if (length == 128) {
            r6 = 4;
        } else if (length == 160) {
            r6 = 5;
        } else if (length == 192) {
            r6 = 6;
        } else if (length == 224) {
            r6 = 7;
        } else {
            if (length != 256) {
                throw new IllegalArgumentException("Key length not 128/160/192/224/256 bits.");
            }
            r6 = 8;
        }
        this.ROUNDS = length >= this.blockBits ? r6 + 6 : (this.BC / 8) + 6;
        char c10 = 0;
        int r10 = 0;
        int r11 = 0;
        while (r10 < bArr.length) {
            bArr2[r10 % 4][r10 / 4] = bArr[r11];
            r10++;
            r11++;
        }
        int r12 = 0;
        int r102 = 0;
        while (r12 < r6) {
            if (r102 >= (this.BC / 8) * (this.ROUNDS + 1)) {
                break;
            }
            int r112 = 0;
            while (r112 < r92) {
                int r122 = this.BC;
                long[] jArr2 = jArr[r102 / (r122 / 8)];
                jArr2[r112] = ((bArr2[r112][r12] & 255) << ((r102 * 8) % r122)) | jArr2[r112];
                r112++;
                r92 = 4;
            }
            r12++;
            r102++;
            r92 = 4;
        }
        int r13 = 0;
        while (r102 < (this.BC / r32) * (this.ROUNDS + 1)) {
            int r72 = 0;
            while (r72 < 4) {
                byte[] bArr3 = bArr2[r72];
                r72++;
                bArr3[c10] = (byte) (bArr3[c10] ^ S[bArr2[r72 % 4][r6 - 1] & 255]);
            }
            byte[] bArr4 = bArr2[c10];
            int r123 = r13 + 1;
            bArr4[c10] = (byte) (rcon[r13] ^ bArr4[c10]);
            int r73 = 1;
            if (r6 <= 6) {
                while (r73 < r6) {
                    for (int r83 = 0; r83 < 4; r83++) {
                        byte[] bArr5 = bArr2[r83];
                        bArr5[r73] = (byte) (bArr5[r73] ^ bArr5[r73 - 1]);
                    }
                    r73++;
                }
            } else {
                while (true) {
                    r82 = 4;
                    if (r73 >= 4) {
                        break;
                    }
                    int r93 = 0;
                    while (r93 < r82) {
                        byte[] bArr6 = bArr2[r93];
                        bArr6[r73] = (byte) (bArr6[r73] ^ bArr6[r73 - 1]);
                        r93++;
                        r82 = 4;
                    }
                    r73++;
                }
                for (int r74 = 0; r74 < 4; r74++) {
                    byte[] bArr7 = bArr2[r74];
                    bArr7[4] = (byte) (bArr7[4] ^ S[bArr7[3] & 255]);
                }
                int r75 = 5;
                while (r75 < r6) {
                    int r94 = 0;
                    while (r94 < r82) {
                        byte[] bArr8 = bArr2[r94];
                        bArr8[r75] = (byte) (bArr8[r75] ^ bArr8[r75 - 1]);
                        r94++;
                        r82 = 4;
                    }
                    r75++;
                    r82 = 4;
                }
            }
            int r76 = 0;
            while (r76 < r6) {
                if (r102 < (this.BC / r32) * (this.ROUNDS + 1)) {
                    for (int r84 = 0; r84 < 4; r84++) {
                        int r132 = this.BC;
                        long[] jArr3 = jArr[r102 / (r132 / 8)];
                        jArr3[r84] = ((bArr2[r84][r76] & 255) << ((r102 * 8) % r132)) | jArr3[r84];
                    }
                    r76++;
                    r102++;
                    r32 = 8;
                }
            }
            r13 = r123;
            c10 = 0;
            r32 = 8;
        }
        return jArr;
    }

    private byte mul0x2(int r32) {
        if (r32 != 0) {
            return aLogtable[(logtable[r32] & 255) + 25];
        }
        return (byte) 0;
    }

    private byte mul0x3(int r32) {
        if (r32 != 0) {
            return aLogtable[(logtable[r32] & 255) + 1];
        }
        return (byte) 0;
    }

    private byte mul0x9(int r22) {
        if (r22 >= 0) {
            return aLogtable[r22 + 199];
        }
        return (byte) 0;
    }

    private byte mul0xb(int r22) {
        if (r22 >= 0) {
            return aLogtable[r22 + 104];
        }
        return (byte) 0;
    }

    private byte mul0xd(int r22) {
        if (r22 >= 0) {
            return aLogtable[r22 + 238];
        }
        return (byte) 0;
    }

    private byte mul0xe(int r22) {
        if (r22 >= 0) {
            return aLogtable[r22 + PassportService.DEFAULT_MAX_BLOCKSIZE];
        }
        return (byte) 0;
    }

    private void packBlock(byte[] bArr, int r6) {
        for (int r02 = 0; r02 != this.BC; r02 += 8) {
            int r12 = r6 + 1;
            bArr[r6] = (byte) (this.A0 >> r02);
            int r62 = r12 + 1;
            bArr[r12] = (byte) (this.A1 >> r02);
            int r13 = r62 + 1;
            bArr[r62] = (byte) (this.A2 >> r02);
            r6 = r13 + 1;
            bArr[r13] = (byte) (this.A3 >> r02);
        }
    }

    private long shift(long j10, int r6) {
        return ((j10 << (this.BC - r6)) | (j10 >>> r6)) & this.BC_MASK;
    }

    private void unpackBlock(byte[] bArr, int r82) {
        this.A0 = bArr[r82] & 255;
        this.A1 = bArr[r0] & 255;
        this.A2 = bArr[r8] & 255;
        int r83 = r82 + 1 + 1 + 1 + 1;
        this.A3 = bArr[r0] & 255;
        for (int r02 = 8; r02 != this.BC; r02 += 8) {
            this.A0 |= (bArr[r83] & 255) << r02;
            this.A1 |= (bArr[r3] & 255) << r02;
            this.A2 |= (bArr[r8] & 255) << r02;
            r83 = r83 + 1 + 1 + 1 + 1;
            this.A3 |= (bArr[r3] & 255) << r02;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Rijndael";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.BC / 2;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException(b.g(cipherParameters, "invalid parameter passed to Rijndael init - "));
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        this.workingKey = generateWorkingKey(key);
        this.forEncryption = z10;
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), key.length * 8, cipherParameters, Utils.getPurpose(z10)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r52, byte[] bArr2, int r72) {
        if (this.workingKey == null) {
            throw new IllegalStateException("Rijndael engine not initialised");
        }
        int r02 = this.BC;
        if ((r02 / 2) + r52 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if ((r02 / 2) + r72 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        boolean z10 = this.forEncryption;
        unpackBlock(bArr, r52);
        long[][] jArr = this.workingKey;
        if (z10) {
            encryptBlock(jArr);
        } else {
            decryptBlock(jArr);
        }
        packBlock(bArr2, r72);
        return this.BC / 2;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
