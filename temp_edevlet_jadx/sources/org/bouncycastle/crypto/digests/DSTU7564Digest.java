package org.bouncycastle.crypto.digests;

import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;
import org.jmrtd.PassportService;
import org.jmrtd.lds.CVCAFile;

/* loaded from: classes2.dex */
public class DSTU7564Digest implements ExtendedDigest, Memoable {
    private static final int NB_1024 = 16;
    private static final int NB_512 = 8;
    private static final int NR_1024 = 14;
    private static final int NR_512 = 10;
    private static final byte[] S0 = {-88, 67, 95, 6, 107, 117, 108, 89, 113, -33, ISOFileInfo.FCI_EXT, -107, 23, -16, ISO7816.INS_LOAD_KEY_FILE, 9, 109, -13, 29, -53, -55, 77, ISO7816.INS_UNBLOCK_CHV, -81, 121, ISO7816.INS_CREATE_FILE, -105, -3, ISOFileInfo.FCI_BYTE, 75, 69, 57, 62, -35, -93, 79, ISO7816.INS_READ_BINARY_STAMPED, ISO7816.INS_READ_RECORD_STAMPED, -102, 14, 31, -65, 21, -31, 73, ISO7816.INS_WRITE_RECORD, -109, -58, -110, 114, -98, 97, -47, 99, -6, -18, -12, 25, -43, -83, 88, -92, -69, ISOFileInfo.A1, ISO7816.INS_UPDATE_RECORD, -14, ISOFileInfo.FILE_IDENTIFIER, 55, CVCAFile.CAR_TAG, ISO7816.INS_DELETE_FILE, 122, ISO7816.INS_INCREASE, -100, -52, ISOFileInfo.AB, 74, -113, 110, 4, 39, 46, -25, ISO7816.INS_APPEND_RECORD, 90, -106, 22, 35, 43, ISO7816.INS_ENVELOPE, 101, 102, PassportService.SFI_DG15, PSSSigner.TRAILER_IMPLICIT, -87, 71, 65, ISO7816.INS_DECREASE_STAMPED, 72, -4, -73, 106, -120, ISOFileInfo.A5, 83, -122, -7, 91, -37, 56, 123, -61, PassportService.SFI_COM, ISO7816.INS_MSE, 51, ISO7816.INS_CHANGE_CHV, 40, 54, -57, -78, 59, ISOFileInfo.CHANNEL_SECURITY, 119, -70, -11, 20, -97, 8, 85, -101, 76, -2, 96, 92, ISO7816.INS_PUT_DATA, 24, 70, -51, 125, 33, ISO7816.INS_READ_BINARY, 63, 27, -119, -1, -21, -124, 105, 58, -99, -41, -45, ISO7816.INS_MANAGE_CHANNEL, 103, 64, -75, -34, 93, ISO7816.INS_DECREASE, -111, ISO7816.INS_READ_BINARY2, 120, 17, 1, -27, 0, 104, -104, ISOFileInfo.A0, -59, 2, -90, 116, 45, PassportService.SFI_DG11, -94, 118, ISO7816.INS_READ_RECORD2, -66, -50, -67, -82, -23, ISOFileInfo.LCS_BYTE, 49, 28, -20, -15, -103, -108, -86, -10, 38, 47, -17, -24, ISOFileInfo.SECURITY_ATTR_COMPACT, 53, 3, -44, 127, -5, 5, -63, 94, -112, ISO7816.INS_VERIFY, 61, -126, -9, -22, 10, PassportService.SFI_DG13, 126, -8, 80, 26, -60, 7, 87, -72, 60, ISOFileInfo.FCP_BYTE, -29, -56, -84, 82, ISOFileInfo.FMD_BYTE, 16, ISO7816.INS_WRITE_BINARY, -39, 19, PassportService.SFI_DG12, 18, 41, 81, -71, -49, ISO7816.INS_UPDATE_BINARY, 115, ISOFileInfo.ENV_TEMP_EF, ISOFileInfo.DATA_BYTES2, 84, ISO7816.INS_GET_RESPONSE, -19, 78, ISO7816.INS_REHABILITATE_CHV, -89, ISO7816.INS_PSO, ISOFileInfo.PROP_INFO, 37, -26, ISO7816.INS_GET_DATA, 124, ISOFileInfo.SECURITY_ATTR_EXP, 86, ISOFileInfo.DATA_BYTES1};
    private static final byte[] S1 = {-50, -69, -21, -110, -22, -53, 19, -63, -23, 58, ISO7816.INS_UPDATE_BINARY, -78, ISO7816.INS_WRITE_RECORD, -112, 23, -8, CVCAFile.CAR_TAG, 21, 86, ISO7816.INS_READ_BINARY_STAMPED, 101, 28, -120, 67, -59, 92, 54, -70, -11, 87, 103, ISOFileInfo.ENV_TEMP_EF, 49, -10, ISOFileInfo.FMD_BYTE, 88, -98, -12, ISO7816.INS_MSE, -86, 117, PassportService.SFI_DG15, 2, ISO7816.INS_READ_BINARY2, -33, 109, 115, 77, 124, 38, 46, -9, 8, 93, ISO7816.INS_REHABILITATE_CHV, 62, -97, 20, -56, -82, 84, 16, ISO7816.INS_LOAD_KEY_FILE, PSSSigner.TRAILER_IMPLICIT, 26, 107, 105, -13, -67, 51, ISOFileInfo.AB, -6, -47, -101, 104, 78, 22, -107, -111, -18, 76, 99, ISOFileInfo.CHANNEL_SECURITY, 91, -52, 60, 25, ISOFileInfo.A1, ISOFileInfo.DATA_BYTES2, 73, 123, -39, ISOFileInfo.FCI_BYTE, 55, 96, ISO7816.INS_GET_DATA, -25, 43, 72, -3, -106, 69, -4, 65, 18, PassportService.SFI_DG13, 121, -27, -119, ISOFileInfo.SECURITY_ATTR_COMPACT, -29, ISO7816.INS_VERIFY, ISO7816.INS_DECREASE, ISO7816.INS_UPDATE_RECORD, -73, 108, 74, -75, 63, -105, -44, ISOFileInfo.FCP_BYTE, 45, 6, -92, ISOFileInfo.A5, ISOFileInfo.FILE_IDENTIFIER, 95, ISO7816.INS_PSO, ISO7816.INS_PUT_DATA, -55, 0, 126, -94, 85, -65, 17, -43, -100, -49, 14, 10, 61, 81, 125, -109, 27, -2, -60, 71, 9, -122, PassportService.SFI_DG11, -113, -99, 106, 7, -71, ISO7816.INS_READ_BINARY, -104, 24, ISO7816.INS_INCREASE, 113, 75, -17, 59, ISO7816.INS_MANAGE_CHANNEL, ISOFileInfo.A0, ISO7816.INS_DELETE_FILE, 64, -1, -61, -87, -26, 120, -7, ISOFileInfo.SECURITY_ATTR_EXP, 70, ISOFileInfo.DATA_BYTES1, PassportService.SFI_COM, 56, -31, -72, -88, ISO7816.INS_CREATE_FILE, PassportService.SFI_DG12, 35, 118, 29, 37, ISO7816.INS_CHANGE_CHV, 5, -15, 110, -108, 40, -102, -124, -24, -93, 79, 119, -45, ISOFileInfo.PROP_INFO, ISO7816.INS_APPEND_RECORD, 82, -14, -126, 80, 122, 47, 116, 83, ISO7816.INS_READ_RECORD2, 97, -81, 57, 53, -34, -51, 31, -103, -84, -83, 114, ISO7816.INS_UNBLOCK_CHV, -35, ISO7816.INS_WRITE_BINARY, ISOFileInfo.FCI_EXT, -66, 94, -90, -20, 4, -58, 3, ISO7816.INS_DECREASE_STAMPED, -5, -37, 89, ISO7816.INS_READ_RECORD_STAMPED, ISO7816.INS_ENVELOPE, 1, -16, 90, -19, -89, 102, 33, 127, ISOFileInfo.LCS_BYTE, 39, -57, ISO7816.INS_GET_RESPONSE, 41, -41};
    private static final byte[] S2 = {-109, -39, -102, -75, -104, ISO7816.INS_MSE, 69, -4, -70, 106, -33, 2, -97, ISO7816.INS_UPDATE_RECORD, 81, 89, 74, 23, 43, ISO7816.INS_ENVELOPE, -108, -12, -69, -93, ISOFileInfo.FCP_BYTE, ISO7816.INS_DELETE_FILE, 113, -44, -51, ISO7816.INS_MANAGE_CHANNEL, 22, -31, 73, 60, ISO7816.INS_GET_RESPONSE, ISO7816.INS_LOAD_KEY_FILE, 92, -101, -83, ISOFileInfo.PROP_INFO, 83, ISOFileInfo.A1, 122, -56, 45, ISO7816.INS_CREATE_FILE, -47, 114, -90, ISO7816.INS_UNBLOCK_CHV, -60, -29, 118, 120, -73, ISO7816.INS_READ_BINARY_STAMPED, 9, 59, 14, 65, 76, -34, -78, -112, 37, ISOFileInfo.A5, -41, 3, 17, 0, -61, 46, -110, -17, 78, 18, -99, 125, -53, 53, 16, -43, 79, -98, 77, -87, 85, -58, ISO7816.INS_WRITE_BINARY, 123, 24, -105, -45, 54, -26, 72, 86, ISOFileInfo.DATA_BYTES2, -113, 119, -52, -100, -71, ISO7816.INS_APPEND_RECORD, -84, -72, 47, 21, -92, 124, ISO7816.INS_PUT_DATA, 56, PassportService.SFI_COM, PassportService.SFI_DG11, 5, ISO7816.INS_UPDATE_BINARY, 20, 110, 108, 126, 102, -3, ISO7816.INS_READ_BINARY2, -27, 96, -81, 94, 51, ISOFileInfo.FCI_EXT, -55, -16, 93, 109, 63, -120, ISOFileInfo.ENV_TEMP_EF, -57, -9, 29, -23, -20, -19, ISOFileInfo.DATA_BYTES1, 41, 39, -49, -103, -88, 80, PassportService.SFI_DG15, 55, ISO7816.INS_CHANGE_CHV, 40, ISO7816.INS_DECREASE, -107, ISO7816.INS_WRITE_RECORD, 62, 91, 64, ISOFileInfo.FILE_IDENTIFIER, ISO7816.INS_READ_RECORD2, 105, 87, 31, 7, 28, ISOFileInfo.LCS_BYTE, PSSSigner.TRAILER_IMPLICIT, ISO7816.INS_VERIFY, -21, -50, ISOFileInfo.CHANNEL_SECURITY, ISOFileInfo.AB, -18, 49, -94, 115, -7, ISO7816.INS_GET_DATA, 58, 26, -5, PassportService.SFI_DG13, -63, -2, -6, -14, ISOFileInfo.FCI_BYTE, -67, -106, -35, 67, 82, ISO7816.INS_READ_RECORD_STAMPED, 8, -13, -82, -66, 25, -119, ISO7816.INS_INCREASE, 38, ISO7816.INS_READ_BINARY, -22, 75, ISOFileInfo.FMD_BYTE, -124, -126, 107, -11, 121, -65, 1, 95, 117, 99, 27, 35, 61, 104, ISO7816.INS_PSO, 101, -24, -111, -10, -1, 19, 88, -15, 71, 10, 127, -59, -89, -25, 97, 90, 6, 70, ISO7816.INS_REHABILITATE_CHV, CVCAFile.CAR_TAG, 4, ISOFileInfo.A0, -37, 57, -122, 84, -86, ISOFileInfo.SECURITY_ATTR_COMPACT, ISO7816.INS_DECREASE_STAMPED, 33, ISOFileInfo.SECURITY_ATTR_EXP, -8, PassportService.SFI_DG12, 116, 103};
    private static final byte[] S3 = {104, ISOFileInfo.ENV_TEMP_EF, ISO7816.INS_GET_DATA, 77, 115, 75, 78, ISO7816.INS_PSO, -44, 82, 38, ISO7816.INS_READ_RECORD2, 84, PassportService.SFI_COM, 25, 31, ISO7816.INS_MSE, 3, 70, 61, 45, 74, 83, ISOFileInfo.FILE_IDENTIFIER, 19, ISOFileInfo.LCS_BYTE, -73, -43, 37, 121, -11, -67, 88, 47, PassportService.SFI_DG13, 2, -19, 81, -98, 17, -14, 62, 85, 94, -47, 22, 60, 102, ISO7816.INS_MANAGE_CHANNEL, 93, -13, 69, 64, -52, -24, -108, 86, 8, -50, 26, 58, ISO7816.INS_WRITE_RECORD, -31, -33, -75, 56, 110, 14, -27, -12, -7, -122, -23, 79, ISO7816.INS_UPDATE_BINARY, ISOFileInfo.PROP_INFO, 35, -49, ISO7816.INS_INCREASE, -103, 49, 20, -82, -18, -56, 72, -45, ISO7816.INS_DECREASE, ISOFileInfo.A1, -110, 65, ISO7816.INS_READ_BINARY2, 24, -60, ISO7816.INS_UNBLOCK_CHV, 113, 114, ISO7816.INS_REHABILITATE_CHV, 21, -3, 55, -66, 95, -86, -101, -120, ISO7816.INS_LOAD_KEY_FILE, ISOFileInfo.AB, -119, -100, -6, 96, -22, PSSSigner.TRAILER_IMPLICIT, ISOFileInfo.FCP_BYTE, PassportService.SFI_DG12, ISO7816.INS_CHANGE_CHV, -90, -88, -20, 103, ISO7816.INS_VERIFY, -37, 124, 40, -35, -84, 91, ISO7816.INS_DECREASE_STAMPED, 126, 16, -15, 123, -113, 99, ISOFileInfo.A0, 5, -102, 67, 119, 33, -65, 39, 9, -61, -97, ISO7816.INS_READ_RECORD_STAMPED, -41, 41, ISO7816.INS_ENVELOPE, -21, ISO7816.INS_GET_RESPONSE, -92, ISOFileInfo.SECURITY_ATTR_EXP, ISOFileInfo.SECURITY_ATTR_COMPACT, 29, -5, -1, -63, -78, -105, 46, -8, 101, -10, 117, 7, 4, 73, 51, ISO7816.INS_DELETE_FILE, -39, -71, ISO7816.INS_WRITE_BINARY, CVCAFile.CAR_TAG, -57, 108, -112, 0, ISOFileInfo.CHANNEL_SECURITY, ISOFileInfo.FCI_BYTE, 80, 1, -59, ISO7816.INS_PUT_DATA, 71, 63, -51, 105, -94, ISO7816.INS_APPEND_RECORD, 122, -89, -58, -109, PassportService.SFI_DG15, 10, 6, -26, 43, -106, -93, 28, -81, 106, 18, -124, 57, -25, ISO7816.INS_READ_BINARY, -126, -9, -2, -99, ISOFileInfo.FCI_EXT, 92, ISOFileInfo.DATA_BYTES2, 53, -34, ISO7816.INS_READ_BINARY_STAMPED, ISOFileInfo.A5, -4, ISOFileInfo.DATA_BYTES1, -17, -53, -69, 107, 118, -70, 90, 125, 120, PassportService.SFI_DG11, -107, -29, -83, 116, -104, 59, 54, ISOFileInfo.FMD_BYTE, 109, ISO7816.INS_UPDATE_RECORD, -16, 89, -87, 76, 23, 127, -111, -72, -55, 87, 27, ISO7816.INS_CREATE_FILE, 97};
    private int blockSize;
    private byte[] buf;
    private int bufOff;
    private int columns;
    private int hashSize;
    private long inputBlocks;
    private final CryptoServicePurpose purpose;
    private int rounds;
    private long[] state;
    private long[] tempState1;
    private long[] tempState2;

    public DSTU7564Digest(int r22) {
        this(r22, CryptoServicePurpose.ANY);
    }

    public DSTU7564Digest(int r52, CryptoServicePurpose cryptoServicePurpose) {
        int r53;
        this.purpose = cryptoServicePurpose;
        if (r52 != 256 && r52 != 384 && r52 != 512) {
            throw new IllegalArgumentException("Hash size is not recommended. Use 256/384/512 instead");
        }
        this.hashSize = r52 >>> 3;
        if (r52 > 256) {
            this.columns = 16;
            r53 = 14;
        } else {
            this.columns = 8;
            r53 = 10;
        }
        this.rounds = r53;
        int r54 = this.columns;
        int r6 = r54 << 3;
        this.blockSize = r6;
        long[] jArr = new long[r54];
        this.state = jArr;
        jArr[0] = r6;
        this.tempState1 = new long[r54];
        this.tempState2 = new long[r54];
        this.buf = new byte[r6];
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
    }

    public DSTU7564Digest(DSTU7564Digest dSTU7564Digest) {
        this.purpose = dSTU7564Digest.purpose;
        copyIn(dSTU7564Digest);
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
    }

    private void P(long[] jArr) {
        for (int r12 = 0; r12 < this.rounds; r12++) {
            long j10 = r12;
            for (int r42 = 0; r42 < this.columns; r42++) {
                jArr[r42] = jArr[r42] ^ j10;
                j10 += 16;
            }
            shiftRows(jArr);
            subBytes(jArr);
            mixColumns(jArr);
        }
    }

    private void Q(long[] jArr) {
        for (int r12 = 0; r12 < this.rounds; r12++) {
            long j10 = ((((this.columns - 1) << 4) ^ r12) << 56) | 67818912035696883L;
            for (int r42 = 0; r42 < this.columns; r42++) {
                jArr[r42] = jArr[r42] + j10;
                j10 -= 1152921504606846976L;
            }
            shiftRows(jArr);
            subBytes(jArr);
            mixColumns(jArr);
        }
    }

    private void copyIn(DSTU7564Digest dSTU7564Digest) {
        this.hashSize = dSTU7564Digest.hashSize;
        this.blockSize = dSTU7564Digest.blockSize;
        this.rounds = dSTU7564Digest.rounds;
        int r02 = this.columns;
        if (r02 <= 0 || r02 != dSTU7564Digest.columns) {
            this.columns = dSTU7564Digest.columns;
            this.state = Arrays.clone(dSTU7564Digest.state);
            int r03 = this.columns;
            this.tempState1 = new long[r03];
            this.tempState2 = new long[r03];
            this.buf = Arrays.clone(dSTU7564Digest.buf);
        } else {
            System.arraycopy(dSTU7564Digest.state, 0, this.state, 0, r02);
            System.arraycopy(dSTU7564Digest.buf, 0, this.buf, 0, this.blockSize);
        }
        this.inputBlocks = dSTU7564Digest.inputBlocks;
        this.bufOff = dSTU7564Digest.bufOff;
    }

    private static long mixColumn(long j10) {
        long j11 = ((9187201950435737471L & j10) << 1) ^ (((j10 & (-9187201950435737472L)) >>> 7) * 29);
        long jRotate = rotate(8, j10) ^ j10;
        long jRotate2 = (jRotate ^ rotate(16, jRotate)) ^ rotate(48, j10);
        long j12 = (j10 ^ jRotate2) ^ j11;
        return ((rotate(32, (((j12 & 4629771061636907072L) >>> 6) * 29) ^ (((((-9187201950435737472L) & j12) >>> 6) * 29) ^ ((4557430888798830399L & j12) << 2))) ^ jRotate2) ^ rotate(40, j11)) ^ rotate(48, j11);
    }

    private void mixColumns(long[] jArr) {
        for (int r02 = 0; r02 < this.columns; r02++) {
            jArr[r02] = mixColumn(jArr[r02]);
        }
    }

    private void processBlock(byte[] bArr, int r10) {
        for (int r12 = 0; r12 < this.columns; r12++) {
            long jLittleEndianToLong = Pack.littleEndianToLong(bArr, r10);
            r10 += 8;
            this.tempState1[r12] = this.state[r12] ^ jLittleEndianToLong;
            this.tempState2[r12] = jLittleEndianToLong;
        }
        P(this.tempState1);
        Q(this.tempState2);
        for (int r02 = 0; r02 < this.columns; r02++) {
            long[] jArr = this.state;
            jArr[r02] = jArr[r02] ^ (this.tempState1[r02] ^ this.tempState2[r02]);
        }
    }

    private static long rotate(int r22, long j10) {
        return (j10 << (-r22)) | (j10 >>> r22);
    }

    private void shiftRows(long[] jArr) {
        int r12 = this.columns;
        if (r12 == 8) {
            long j10 = jArr[0];
            long j11 = jArr[1];
            long j12 = jArr[2];
            long j13 = jArr[3];
            long j14 = jArr[4];
            long j15 = jArr[5];
            long j16 = jArr[6];
            long j17 = jArr[7];
            long j18 = (j10 ^ j14) & (-4294967296L);
            long j19 = j10 ^ j18;
            long j20 = j14 ^ j18;
            long j21 = (j11 ^ j15) & 72057594021150720L;
            long j22 = j11 ^ j21;
            long j23 = j15 ^ j21;
            long j24 = (j12 ^ j16) & 281474976645120L;
            long j25 = j12 ^ j24;
            long j26 = j16 ^ j24;
            long j27 = (j13 ^ j17) & 1099511627520L;
            long j28 = j13 ^ j27;
            long j29 = j17 ^ j27;
            long j30 = (j19 ^ j25) & (-281470681808896L);
            long j31 = j19 ^ j30;
            long j32 = j25 ^ j30;
            long j33 = (j22 ^ j28) & 72056494543077120L;
            long j34 = j22 ^ j33;
            long j35 = j28 ^ j33;
            long j36 = (j20 ^ j26) & (-281470681808896L);
            long j37 = j20 ^ j36;
            long j38 = j26 ^ j36;
            long j39 = (j23 ^ j29) & 72056494543077120L;
            long j40 = j23 ^ j39;
            long j41 = j29 ^ j39;
            long j42 = (j31 ^ j34) & (-71777214294589696L);
            long j43 = j31 ^ j42;
            long j44 = j34 ^ j42;
            long j45 = (j32 ^ j35) & (-71777214294589696L);
            long j46 = j32 ^ j45;
            long j47 = j35 ^ j45;
            long j48 = (j37 ^ j40) & (-71777214294589696L);
            long j49 = (j38 ^ j41) & (-71777214294589696L);
            jArr[0] = j43;
            jArr[1] = j44;
            jArr[2] = j46;
            jArr[3] = j47;
            jArr[4] = j37 ^ j48;
            jArr[5] = j40 ^ j48;
            jArr[6] = j38 ^ j49;
            jArr[7] = j41 ^ j49;
            return;
        }
        if (r12 != 16) {
            throw new IllegalStateException("unsupported state size: only 512/1024 are allowed");
        }
        long j50 = jArr[0];
        long j51 = jArr[1];
        long j52 = jArr[2];
        long j53 = jArr[3];
        long j54 = jArr[4];
        long j55 = jArr[5];
        long j56 = jArr[6];
        long j57 = jArr[7];
        long j58 = jArr[8];
        long j59 = jArr[9];
        long j60 = jArr[10];
        long j61 = jArr[11];
        long j62 = jArr[12];
        long j63 = jArr[13];
        long j64 = jArr[14];
        long j65 = jArr[15];
        long j66 = (j50 ^ j58) & (-72057594037927936L);
        long j67 = j50 ^ j66;
        long j68 = j58 ^ j66;
        long j69 = (j51 ^ j59) & (-72057594037927936L);
        long j70 = j51 ^ j69;
        long j71 = j59 ^ j69;
        long j72 = (j52 ^ j60) & (-281474976710656L);
        long j73 = j52 ^ j72;
        long j74 = j60 ^ j72;
        long j75 = (j53 ^ j61) & (-1099511627776L);
        long j76 = j53 ^ j75;
        long j77 = j61 ^ j75;
        long j78 = (j54 ^ j62) & (-4294967296L);
        long j79 = j54 ^ j78;
        long j80 = j62 ^ j78;
        long j81 = (j55 ^ j63) & 72057594021150720L;
        long j82 = j55 ^ j81;
        long j83 = j63 ^ j81;
        long j84 = (j56 ^ j64) & 72057594037862400L;
        long j85 = j56 ^ j84;
        long j86 = j64 ^ j84;
        long j87 = (j57 ^ j65) & 72057594037927680L;
        long j88 = j57 ^ j87;
        long j89 = j65 ^ j87;
        long j90 = (j67 ^ j79) & 72057589742960640L;
        long j91 = j67 ^ j90;
        long j92 = j79 ^ j90;
        long j93 = (j70 ^ j82) & (-16777216);
        long j94 = j70 ^ j93;
        long j95 = j82 ^ j93;
        long j96 = (j73 ^ j85) & (-71776119061282816L);
        long j97 = j73 ^ j96;
        long j98 = j85 ^ j96;
        long j99 = (j76 ^ j88) & (-72056494526300416L);
        long j100 = j76 ^ j99;
        long j101 = j88 ^ j99;
        long j102 = (j68 ^ j80) & 72057589742960640L;
        long j103 = j68 ^ j102;
        long j104 = j80 ^ j102;
        long j105 = (j71 ^ j83) & (-16777216);
        long j106 = j71 ^ j105;
        long j107 = j83 ^ j105;
        long j108 = (j74 ^ j86) & (-71776119061282816L);
        long j109 = j74 ^ j108;
        long j110 = j86 ^ j108;
        long j111 = (j77 ^ j89) & (-72056494526300416L);
        long j112 = j77 ^ j111;
        long j113 = j89 ^ j111;
        long j114 = (j91 ^ j97) & (-281470681808896L);
        long j115 = j91 ^ j114;
        long j116 = j97 ^ j114;
        long j117 = (j94 ^ j100) & 72056494543077120L;
        long j118 = j94 ^ j117;
        long j119 = j100 ^ j117;
        long j120 = (j92 ^ j98) & (-281470681808896L);
        long j121 = j92 ^ j120;
        long j122 = j98 ^ j120;
        long j123 = (j95 ^ j101) & 72056494543077120L;
        long j124 = j95 ^ j123;
        long j125 = j101 ^ j123;
        long j126 = (j103 ^ j109) & (-281470681808896L);
        long j127 = j103 ^ j126;
        long j128 = j109 ^ j126;
        long j129 = (j106 ^ j112) & 72056494543077120L;
        long j130 = j106 ^ j129;
        long j131 = j112 ^ j129;
        long j132 = (j104 ^ j110) & (-281470681808896L);
        long j133 = j104 ^ j132;
        long j134 = j110 ^ j132;
        long j135 = (j107 ^ j113) & 72056494543077120L;
        long j136 = j107 ^ j135;
        long j137 = j113 ^ j135;
        long j138 = (j115 ^ j118) & (-71777214294589696L);
        long j139 = j115 ^ j138;
        long j140 = j118 ^ j138;
        long j141 = (j116 ^ j119) & (-71777214294589696L);
        long j142 = j116 ^ j141;
        long j143 = j119 ^ j141;
        long j144 = (j121 ^ j124) & (-71777214294589696L);
        long j145 = j121 ^ j144;
        long j146 = j124 ^ j144;
        long j147 = (j122 ^ j125) & (-71777214294589696L);
        long j148 = j122 ^ j147;
        long j149 = j125 ^ j147;
        long j150 = (j127 ^ j130) & (-71777214294589696L);
        long j151 = j127 ^ j150;
        long j152 = j130 ^ j150;
        long j153 = (j128 ^ j131) & (-71777214294589696L);
        long j154 = j128 ^ j153;
        long j155 = j131 ^ j153;
        long j156 = (j133 ^ j136) & (-71777214294589696L);
        long j157 = (j134 ^ j137) & (-71777214294589696L);
        jArr[0] = j139;
        jArr[1] = j140;
        jArr[2] = j142;
        jArr[3] = j143;
        jArr[4] = j145;
        jArr[5] = j146;
        jArr[6] = j148;
        jArr[7] = j149;
        jArr[8] = j151;
        jArr[9] = j152;
        jArr[10] = j154;
        jArr[11] = j155;
        jArr[12] = j133 ^ j156;
        jArr[13] = j136 ^ j156;
        jArr[14] = j134 ^ j157;
        jArr[15] = j137 ^ j157;
    }

    private void subBytes(long[] jArr) {
        for (int r02 = 0; r02 < this.columns; r02++) {
            long j10 = jArr[r02];
            int r32 = (int) j10;
            int r22 = (int) (j10 >>> 32);
            byte b10 = S0[r32 & 255];
            byte b11 = S1[(r32 >>> 8) & 255];
            byte b12 = S2[(r32 >>> 16) & 255];
            byte[] bArr = S3;
            jArr[r02] = (((bArr[r32 >>> 24] << 24) | (b10 & 255) | ((b11 & 255) << 8) | ((b12 & 255) << 16)) & BodyPartID.bodyIdMax) | (((((r1[r22 & 255] & 255) | ((r6[(r22 >>> 8) & 255] & 255) << 8)) | ((r8[(r22 >>> 16) & 255] & 255) << 16)) | (bArr[r22 >>> 24] << 24)) << 32);
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new DSTU7564Digest(this);
    }

    public CryptoServiceProperties cryptoServiceProperties() {
        return Utils.getDefaultProperties(this, 256, this.purpose);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r12) {
        int r22;
        int r13;
        int r02 = this.bufOff;
        byte[] bArr2 = this.buf;
        int r23 = r02 + 1;
        this.bufOff = r23;
        bArr2[r02] = ISOFileInfo.DATA_BYTES1;
        int r14 = this.blockSize - 12;
        int r32 = 0;
        if (r23 > r14) {
            while (true) {
                int r24 = this.bufOff;
                if (r24 >= this.blockSize) {
                    break;
                }
                byte[] bArr3 = this.buf;
                this.bufOff = r24 + 1;
                bArr3[r24] = 0;
            }
            this.bufOff = 0;
            processBlock(this.buf, 0);
        }
        while (true) {
            r22 = this.bufOff;
            if (r22 >= r14) {
                break;
            }
            byte[] bArr4 = this.buf;
            this.bufOff = r22 + 1;
            bArr4[r22] = 0;
        }
        long j10 = (((this.inputBlocks & BodyPartID.bodyIdMax) * this.blockSize) + r02) << 3;
        Pack.intToLittleEndian((int) j10, this.buf, r22);
        int r15 = this.bufOff + 4;
        this.bufOff = r15;
        Pack.longToLittleEndian((j10 >>> 32) + (((this.inputBlocks >>> 32) * this.blockSize) << 3), this.buf, r15);
        processBlock(this.buf, 0);
        System.arraycopy(this.state, 0, this.tempState1, 0, this.columns);
        P(this.tempState1);
        while (true) {
            r13 = this.columns;
            if (r32 >= r13) {
                break;
            }
            long[] jArr = this.state;
            jArr[r32] = jArr[r32] ^ this.tempState1[r32];
            r32++;
        }
        for (int r16 = r13 - (this.hashSize >>> 3); r16 < this.columns; r16++) {
            Pack.longToLittleEndian(this.state[r16], bArr, r12);
            r12 += 8;
        }
        reset();
        return this.hashSize;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "DSTU7564";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return this.blockSize;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.hashSize;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        Arrays.fill(this.state, 0L);
        this.state[0] = this.blockSize;
        this.inputBlocks = 0L;
        this.bufOff = 0;
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        copyIn((DSTU7564Digest) memoable);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        byte[] bArr = this.buf;
        int r12 = this.bufOff;
        int r22 = r12 + 1;
        this.bufOff = r22;
        bArr[r12] = b10;
        if (r22 == this.blockSize) {
            processBlock(bArr, 0);
            this.bufOff = 0;
            this.inputBlocks++;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r6, int r72) {
        while (this.bufOff != 0 && r72 > 0) {
            update(bArr[r6]);
            r72--;
            r6++;
        }
        if (r72 > 0) {
            while (r72 >= this.blockSize) {
                processBlock(bArr, r6);
                int r02 = this.blockSize;
                r6 += r02;
                r72 -= r02;
                this.inputBlocks++;
            }
            while (r72 > 0) {
                update(bArr[r6]);
                r72--;
                r6++;
            }
        }
    }
}
