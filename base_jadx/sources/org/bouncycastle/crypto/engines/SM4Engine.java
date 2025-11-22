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
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Pack;
import org.jmrtd.PassportService;
import org.jmrtd.lds.CVCAFile;

/* loaded from: classes2.dex */
public class SM4Engine implements BlockCipher {
    private static final int BLOCK_SIZE = 16;
    private final int[] X = new int[4];
    private int[] rk;
    private static final byte[] Sbox = {ISO7816.INS_UPDATE_BINARY, -112, -23, -2, -52, -31, 61, -73, 22, ISO7816.INS_READ_RECORD_STAMPED, 20, ISO7816.INS_ENVELOPE, 40, -5, ISO7816.INS_UNBLOCK_CHV, 5, 43, 103, -102, 118, ISO7816.INS_PSO, -66, 4, -61, -86, ISO7816.INS_REHABILITATE_CHV, 19, 38, 73, -122, 6, -103, -100, CVCAFile.CAR_TAG, 80, -12, -111, -17, -104, 122, 51, 84, PassportService.SFI_DG11, 67, -19, -49, -84, ISOFileInfo.FCP_BYTE, ISO7816.INS_DELETE_FILE, ISO7816.INS_READ_RECORD2, 28, -87, -55, 8, -24, -107, ISOFileInfo.DATA_BYTES1, -33, -108, -6, 117, -113, 63, -90, 71, 7, -89, -4, -13, 115, 23, -70, ISOFileInfo.FILE_IDENTIFIER, 89, 60, 25, -26, ISOFileInfo.PROP_INFO, 79, -88, 104, 107, ISOFileInfo.DATA_BYTES2, -78, 113, ISOFileInfo.FMD_BYTE, ISO7816.INS_PUT_DATA, ISOFileInfo.SECURITY_ATTR_EXP, -8, -21, PassportService.SFI_DG15, 75, ISO7816.INS_MANAGE_CHANNEL, 86, -99, 53, PassportService.SFI_COM, ISO7816.INS_CHANGE_CHV, 14, 94, 99, 88, -47, -94, 37, ISO7816.INS_MSE, 124, 59, 1, 33, 120, ISOFileInfo.FCI_EXT, -44, 0, 70, 87, -97, -45, 39, 82, 76, 54, 2, -25, ISOFileInfo.A0, -60, -56, -98, -22, -65, ISOFileInfo.LCS_BYTE, ISO7816.INS_WRITE_RECORD, 64, -57, 56, -75, -93, -9, -14, -50, -7, 97, 21, ISOFileInfo.A1, ISO7816.INS_CREATE_FILE, -82, 93, -92, -101, ISO7816.INS_DECREASE_STAMPED, 26, 85, -83, -109, ISO7816.INS_INCREASE, ISO7816.INS_DECREASE, -11, ISOFileInfo.SECURITY_ATTR_COMPACT, ISO7816.INS_READ_BINARY2, -29, 29, -10, ISO7816.INS_APPEND_RECORD, 46, -126, 102, ISO7816.INS_GET_DATA, 96, ISO7816.INS_GET_RESPONSE, 41, 35, ISOFileInfo.AB, PassportService.SFI_DG13, 83, 78, ISOFileInfo.FCI_BYTE, -43, -37, 55, 69, -34, -3, ISOFileInfo.CHANNEL_SECURITY, 47, 3, -1, 106, 114, 109, 108, 91, 81, ISOFileInfo.ENV_TEMP_EF, 27, -81, -110, -69, -35, PSSSigner.TRAILER_IMPLICIT, 127, 17, -39, 92, 65, 31, 16, 90, ISO7816.INS_LOAD_KEY_FILE, 10, -63, 49, -120, ISOFileInfo.A5, -51, 123, -67, 45, 116, ISO7816.INS_WRITE_BINARY, 18, -72, -27, ISO7816.INS_READ_BINARY_STAMPED, ISO7816.INS_READ_BINARY, -119, 105, -105, 74, PassportService.SFI_DG12, -106, 119, 126, 101, -71, -15, 9, -59, 110, -58, -124, 24, -16, 125, -20, 58, ISO7816.INS_UPDATE_RECORD, 77, ISO7816.INS_VERIFY, 121, -18, 95, 62, -41, -53, 57, 72};
    private static final int[] CK = {462357, 472066609, 943670861, 1415275113, 1886879365, -1936483679, -1464879427, -993275175, -521670923, -66909679, 404694573, 876298825, 1347903077, 1819507329, -2003855715, -1532251463, -1060647211, -589042959, -117504499, 337322537, 808926789, 1280531041, 1752135293, -2071227751, -1599623499, -1128019247, -656414995, -184876535, 269950501, 741554753, 1213159005, 1684763257};
    private static final int[] FK = {-1548633402, 1453994832, 1736282519, -1301273892};

    private int F0(int[] r42, int r52) {
        return T((r42[3] ^ (r42[1] ^ r42[2])) ^ r52) ^ r42[0];
    }

    private int F1(int[] r42, int r52) {
        return T((r42[0] ^ (r42[2] ^ r42[3])) ^ r52) ^ r42[1];
    }

    private int F2(int[] r42, int r52) {
        return T((r42[1] ^ (r42[3] ^ r42[0])) ^ r52) ^ r42[2];
    }

    private int F3(int[] r42, int r52) {
        return T((r42[2] ^ (r42[0] ^ r42[1])) ^ r52) ^ r42[3];
    }

    private int L(int r32) {
        return rotateLeft(r32, 24) ^ (((rotateLeft(r32, 2) ^ r32) ^ rotateLeft(r32, 10)) ^ rotateLeft(r32, 18));
    }

    private int L_ap(int r32) {
        return rotateLeft(r32, 23) ^ (rotateLeft(r32, 13) ^ r32);
    }

    private int T(int r12) {
        return L(tau(r12));
    }

    private int T_ap(int r12) {
        return L_ap(tau(r12));
    }

    private int[] expandKey(boolean z10, byte[] bArr) {
        int[] r12 = new int[32];
        int r15 = Pack.bigEndianToInt(bArr, 12);
        int[] r32 = {Pack.bigEndianToInt(bArr, 0), Pack.bigEndianToInt(bArr, 4), Pack.bigEndianToInt(bArr, 8), r15};
        int r92 = r32[0];
        int[] r10 = FK;
        int r93 = r92 ^ r10[0];
        int r11 = r32[1] ^ r10[1];
        int r33 = r32[2] ^ r10[2];
        int r152 = r15 ^ r10[3];
        int[] r82 = {r93, r11, r33, r152};
        if (z10) {
            int r14 = (r11 ^ r33) ^ r152;
            int[] r153 = CK;
            int r142 = T_ap(r14 ^ r153[0]) ^ r93;
            r12[0] = r142;
            int r143 = T_ap((r142 ^ (r82[2] ^ r82[3])) ^ r153[1]) ^ r82[1];
            r12[1] = r143;
            int r144 = T_ap((r143 ^ (r82[3] ^ r12[0])) ^ r153[2]) ^ r82[2];
            r12[2] = r144;
            r12[3] = T_ap((r144 ^ (r12[0] ^ r12[1])) ^ r153[3]) ^ r82[3];
            for (int r22 = 4; r22 < 32; r22++) {
                r12[r22] = r12[r22 - 4] ^ T_ap(((r12[r22 - 3] ^ r12[r22 - 2]) ^ r12[r22 - 1]) ^ CK[r22]);
            }
        } else {
            int r145 = (r11 ^ r33) ^ r152;
            int[] r154 = CK;
            int r146 = T_ap(r145 ^ r154[0]) ^ r93;
            r12[31] = r146;
            int r147 = T_ap((r146 ^ (r82[2] ^ r82[3])) ^ r154[1]) ^ r82[1];
            r12[30] = r147;
            int r148 = T_ap((r147 ^ (r82[3] ^ r12[31])) ^ r154[2]) ^ r82[2];
            r12[29] = r148;
            r12[28] = T_ap((r148 ^ (r12[31] ^ r12[30])) ^ r154[3]) ^ r82[3];
            for (int r149 = 27; r149 >= 0; r149--) {
                r12[r149] = r12[r149 + 4] ^ T_ap(((r12[r149 + 3] ^ r12[r149 + 2]) ^ r12[r149 + 1]) ^ CK[31 - r149]);
            }
        }
        return r12;
    }

    private int rotateLeft(int r22, int r32) {
        return (r22 >>> (-r32)) | (r22 << r32);
    }

    private int tau(int r52) {
        byte[] bArr = Sbox;
        return (bArr[r52 & 255] & 255) | ((bArr[(r52 >> 24) & 255] & 255) << 24) | ((bArr[(r52 >> 16) & 255] & 255) << 16) | ((bArr[(r52 >> 8) & 255] & 255) << 8);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "SM4";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException(b.g(cipherParameters, "invalid parameter passed to SM4 init - "));
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        if (key.length != 16) {
            throw new IllegalArgumentException("SM4 requires a 128 bit key");
        }
        this.rk = expandKey(z10, key);
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z10)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r82, byte[] bArr2, int r10) throws IllegalStateException, DataLengthException {
        if (this.rk == null) {
            throw new IllegalStateException("SM4 not initialised");
        }
        if (r82 + 16 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r10 + 16 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        this.X[0] = Pack.bigEndianToInt(bArr, r82);
        this.X[1] = Pack.bigEndianToInt(bArr, r82 + 4);
        this.X[2] = Pack.bigEndianToInt(bArr, r82 + 8);
        this.X[3] = Pack.bigEndianToInt(bArr, r82 + 12);
        for (int r72 = 0; r72 < 32; r72 += 4) {
            int[] r02 = this.X;
            r02[0] = F0(r02, this.rk[r72]);
            int[] r03 = this.X;
            r03[1] = F1(r03, this.rk[r72 + 1]);
            int[] r04 = this.X;
            r04[2] = F2(r04, this.rk[r72 + 2]);
            int[] r05 = this.X;
            r05[3] = F3(r05, this.rk[r72 + 3]);
        }
        Pack.intToBigEndian(this.X[3], bArr2, r10);
        Pack.intToBigEndian(this.X[2], bArr2, r10 + 4);
        Pack.intToBigEndian(this.X[1], bArr2, r10 + 8);
        Pack.intToBigEndian(this.X[0], bArr2, r10 + 12);
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
