package net.sf.scuba.smartcards;

import java.math.BigInteger;
import net.sf.scuba.util.Hex;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
public class ISOFileInfo extends FileInfo {
    public static final byte A0 = -96;
    public static final byte A1 = -95;
    public static final byte A2 = -94;
    public static final byte A5 = -91;
    public static final byte AB = -85;
    public static final byte AC = -84;
    public static final byte CHANNEL_SECURITY = -114;
    public static final byte DATA_BYTES1 = -128;
    public static final byte DATA_BYTES2 = -127;
    public static final byte DF_NAME = -124;
    public static final byte ENV_TEMP_EF = -115;
    public static final byte FCI_BYTE = 111;
    public static final byte FCI_EXT = -121;
    public static final byte FCP_BYTE = 98;
    public static final byte FILE_DESCRIPTOR = -126;
    public static final byte FILE_IDENTIFIER = -125;
    public static final byte FMD_BYTE = 100;
    public static final byte LCS_BYTE = -118;
    public static final byte PROP_INFO = -123;
    public static final byte SECURITY_ATTR_COMPACT = -116;
    public static final byte SECURITY_ATTR_EXP = -117;
    public static final byte SECURITY_ATTR_PROP = -122;
    public static final byte SHORT_EF = -120;

    /* renamed from: a0, reason: collision with root package name */
    byte[] f10881a0;

    /* renamed from: a1, reason: collision with root package name */
    byte[] f10882a1;

    /* renamed from: a2, reason: collision with root package name */
    byte[] f10883a2;

    /* renamed from: a5, reason: collision with root package name */
    byte[] f10884a5;

    /* renamed from: ab, reason: collision with root package name */
    byte[] f10885ab;

    /* renamed from: ac, reason: collision with root package name */
    byte[] f10886ac;
    byte channelSecurity;
    byte dataCodingByte;
    byte descriptorByte;
    byte[] dfName;
    short envTempEF;
    short fciExt;
    short fid;
    int fileLength;
    int fileLengthFCI;
    byte lcsByte;
    byte mainTag;
    short maxRecordSize;
    short maxRecordsCount;
    byte[] propInfo;
    byte[] secAttrCompact;
    byte[] secAttrExp;
    byte[] secAttrProp;
    byte shortEF;

    public ISOFileInfo(byte[] bArr) throws CardServiceException {
        byte b10;
        int r52;
        byte[] bArr2;
        int r6;
        this.mainTag = (byte) -1;
        this.fileLength = -1;
        this.fileLengthFCI = -1;
        this.descriptorByte = (byte) -1;
        this.dataCodingByte = (byte) -1;
        this.maxRecordSize = (short) -1;
        this.maxRecordsCount = (short) -1;
        this.fid = (short) -1;
        this.dfName = null;
        this.propInfo = null;
        this.secAttrProp = null;
        this.secAttrExp = null;
        this.secAttrCompact = null;
        this.fciExt = (short) -1;
        this.envTempEF = (short) -1;
        this.shortEF = (byte) -1;
        this.lcsByte = (byte) -1;
        this.channelSecurity = (byte) -1;
        this.f10881a0 = null;
        this.f10882a1 = null;
        this.f10883a2 = null;
        this.f10884a5 = null;
        this.f10885ab = null;
        this.f10886ac = null;
        if (bArr.length == 0) {
            return;
        }
        byte b11 = bArr[0];
        if (b11 != 111 && b11 != 98 && b11 != 100) {
            throw new CardServiceException("Malformed FCI data");
        }
        this.mainTag = b11;
        int r22 = bArr[1];
        byte[] bArr3 = new byte[r22];
        System.arraycopy(bArr, 2, bArr3, 0, r22);
        int r12 = 0;
        while (r12 < r22) {
            int r53 = r12 + 1;
            try {
                b10 = bArr3[r12];
                int r62 = r53 + 1;
                r52 = bArr3[r53];
                bArr2 = new byte[r52];
                System.arraycopy(bArr3, r62, bArr2, 0, r52);
                r6 = r62 + r52;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new CardServiceException("Malformed FCI.");
            }
            if (b10 == -91) {
                byte[] bArr4 = new byte[r52];
                this.f10884a5 = bArr4;
                System.arraycopy(bArr2, 0, bArr4, 0, r52);
            } else if (b10 == -85) {
                byte[] bArr5 = new byte[r52];
                this.f10885ab = bArr5;
                System.arraycopy(bArr2, 0, bArr5, 0, r52);
            } else {
                if (b10 != -84) {
                    switch (b10) {
                        case -128:
                            this.fileLength = new BigInteger(bArr2).abs().intValue();
                            continue;
                        case -127:
                            checkLen(r52, 2);
                            this.fileLengthFCI = new BigInteger(bArr2).intValue();
                            continue;
                        case -126:
                            checkLen(r52, 1, 6);
                            this.descriptorByte = bArr2[0];
                            if (1 != r52) {
                                this.dataCodingByte = bArr2[1];
                                if (2 != r52) {
                                    int r122 = 3;
                                    if (r52 == 3) {
                                        this.maxRecordSize = bArr2[2];
                                    } else {
                                        this.maxRecordSize = new BigInteger(new byte[]{bArr2[2], bArr2[3]}).shortValue();
                                        r122 = 4;
                                    }
                                    if (r122 == r52) {
                                        break;
                                    } else if (r52 != 5) {
                                        this.maxRecordsCount = new BigInteger(new byte[]{bArr2[r122], bArr2[r122 + 1]}).shortValue();
                                        break;
                                    } else {
                                        this.maxRecordsCount = bArr2[r122];
                                        break;
                                    }
                                } else {
                                    break;
                                }
                            } else {
                                continue;
                            }
                        case -125:
                            checkLen(r52, 2);
                            this.fid = new BigInteger(bArr2).shortValue();
                            continue;
                        case -124:
                            checkLen(r52, 0, 16);
                            byte[] bArr6 = new byte[r52];
                            this.dfName = bArr6;
                            System.arraycopy(bArr2, 0, bArr6, 0, r52);
                            continue;
                        case -123:
                            byte[] bArr7 = new byte[r52];
                            this.propInfo = bArr7;
                            System.arraycopy(bArr2, 0, bArr7, 0, r52);
                            continue;
                        case -122:
                            byte[] bArr8 = new byte[r52];
                            this.secAttrProp = bArr8;
                            System.arraycopy(bArr2, 0, bArr8, 0, r52);
                            continue;
                        case -121:
                            checkLen(r52, 2);
                            this.fciExt = new BigInteger(bArr2).shortValue();
                            continue;
                        case -120:
                            checkLen(r52, 0, 1);
                            if (r52 != 0) {
                                this.shortEF = bArr2[0];
                                break;
                            } else {
                                this.shortEF = (byte) 0;
                                continue;
                            }
                        default:
                            switch (b10) {
                                case -118:
                                    checkLen(r52, 1);
                                    this.lcsByte = bArr2[0];
                                    continue;
                                case -117:
                                    byte[] bArr9 = new byte[r52];
                                    this.secAttrExp = bArr9;
                                    System.arraycopy(bArr2, 0, bArr9, 0, r52);
                                    continue;
                                case -116:
                                    byte[] bArr10 = new byte[r52];
                                    this.secAttrCompact = bArr10;
                                    System.arraycopy(bArr2, 0, bArr10, 0, r52);
                                    continue;
                                case -115:
                                    checkLen(r52, 2);
                                    this.envTempEF = new BigInteger(bArr2).shortValue();
                                    continue;
                                case -114:
                                    checkLen(r52, 1);
                                    this.channelSecurity = bArr2[0];
                                    continue;
                                default:
                                    switch (b10) {
                                        case -96:
                                            byte[] bArr11 = new byte[r52];
                                            this.f10881a0 = bArr11;
                                            System.arraycopy(bArr2, 0, bArr11, 0, r52);
                                            continue;
                                        case ISO781611.BIOMETRIC_HEADER_TEMPLATE_BASE_TAG /* -95 */:
                                            byte[] bArr12 = new byte[r52];
                                            this.f10882a1 = bArr12;
                                            System.arraycopy(bArr2, 0, bArr12, 0, r52);
                                            continue;
                                        case -94:
                                            byte[] bArr13 = new byte[r52];
                                            this.f10883a2 = bArr13;
                                            System.arraycopy(bArr2, 0, bArr13, 0, r52);
                                            continue;
                                            continue;
                                            continue;
                                        default:
                                            throw new CardServiceException("Malformed FCI: unrecognized tag.");
                                    }
                            }
                    }
                    throw new CardServiceException("Malformed FCI.");
                }
                byte[] bArr14 = new byte[r52];
                this.f10886ac = bArr14;
                System.arraycopy(bArr2, 0, bArr14, 0, r52);
            }
            r12 = r6;
        }
    }

    private static byte[] catArray(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    private static void checkLen(int r02, int r12) throws CardServiceException {
        if (r02 != r12) {
            throw new CardServiceException("Malformed FCI.");
        }
    }

    private static void checkLen(int r02, int r12, int r22) throws CardServiceException {
        if (r02 < r12 || r02 > r22) {
            throw new CardServiceException("Malformed FCI.");
        }
    }

    private static byte[] getArray(byte b10, byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length + 2];
        bArr2[0] = b10;
        bArr2[1] = (byte) bArr.length;
        System.arraycopy(bArr, 0, bArr2, 2, bArr.length);
        return bArr2;
    }

    @Override // net.sf.scuba.smartcards.FileInfo
    public short getFID() {
        return this.fid;
    }

    @Override // net.sf.scuba.smartcards.FileInfo
    public int getFileLength() {
        return this.fileLength;
    }

    public byte[] getFormatted() throws NumberFormatException {
        byte[] bArrCatArray = new byte[0];
        if (this.mainTag == -1) {
            return bArrCatArray;
        }
        int r22 = this.fileLength;
        if (r22 != -1) {
            bArrCatArray = catArray(bArrCatArray, getArray(DATA_BYTES1, Hex.hexStringToBytes(Hex.shortToHexString((short) r22))));
        }
        int r23 = this.fileLengthFCI;
        if (r23 != -1) {
            bArrCatArray = catArray(bArrCatArray, getArray(DATA_BYTES2, Hex.hexStringToBytes(Hex.shortToHexString((short) r23))));
        }
        byte b10 = this.descriptorByte;
        if (b10 != -1) {
            byte[] bArr = {b10};
            byte[] bArr2 = new byte[0];
            byte b11 = this.dataCodingByte;
            if (b11 != -1) {
                bArr2 = new byte[]{b11};
            }
            byte[] bArrHexStringToBytes = new byte[0];
            short s7 = this.maxRecordSize;
            if (s7 != -1) {
                bArrHexStringToBytes = Hex.hexStringToBytes((s7 > 256 || this.maxRecordsCount != -1) ? Hex.shortToHexString(s7) : Hex.byteToHexString((byte) s7));
            }
            byte[] bArrHexStringToBytes2 = new byte[0];
            short s10 = this.maxRecordsCount;
            if (s10 != -1) {
                bArrHexStringToBytes2 = Hex.hexStringToBytes(s10 <= 256 ? Hex.byteToHexString((byte) s10) : Hex.shortToHexString(s10));
            }
            bArrCatArray = catArray(bArrCatArray, getArray((byte) -126, catArray(catArray(catArray(bArr, bArr2), bArrHexStringToBytes), bArrHexStringToBytes2)));
        }
        short s11 = this.fid;
        if (s11 != -1) {
            bArrCatArray = catArray(bArrCatArray, getArray(FILE_IDENTIFIER, Hex.hexStringToBytes(Hex.shortToHexString(s11))));
        }
        byte[] bArr3 = this.dfName;
        if (bArr3 != null) {
            bArrCatArray = catArray(bArrCatArray, getArray((byte) -124, bArr3));
        }
        byte[] bArr4 = this.propInfo;
        if (bArr4 != null) {
            bArrCatArray = catArray(bArrCatArray, getArray(PROP_INFO, bArr4));
        }
        byte[] bArr5 = this.secAttrProp;
        if (bArr5 != null) {
            bArrCatArray = catArray(bArrCatArray, getArray((byte) -122, bArr5));
        }
        short s12 = this.fciExt;
        if (s12 != -1) {
            bArrCatArray = catArray(bArrCatArray, getArray(FCI_EXT, Hex.hexStringToBytes(Hex.shortToHexString(s12))));
        }
        byte b12 = this.shortEF;
        if (b12 != -1) {
            bArrCatArray = catArray(bArrCatArray, getArray((byte) -120, b12 == 0 ? new byte[0] : new byte[]{b12}));
        }
        byte b13 = this.lcsByte;
        if (b13 != -1) {
            bArrCatArray = catArray(bArrCatArray, getArray(LCS_BYTE, new byte[]{b13}));
        }
        byte[] bArr6 = this.secAttrExp;
        if (bArr6 != null) {
            bArrCatArray = catArray(bArrCatArray, getArray(SECURITY_ATTR_EXP, bArr6));
        }
        byte[] bArr7 = this.secAttrCompact;
        if (bArr7 != null) {
            bArrCatArray = catArray(bArrCatArray, getArray(SECURITY_ATTR_COMPACT, bArr7));
        }
        short s13 = this.envTempEF;
        if (s13 != -1) {
            bArrCatArray = catArray(bArrCatArray, getArray(ENV_TEMP_EF, Hex.hexStringToBytes(Hex.shortToHexString(s13))));
        }
        byte b14 = this.channelSecurity;
        if (b14 != -1) {
            bArrCatArray = catArray(bArrCatArray, getArray(CHANNEL_SECURITY, new byte[]{b14}));
        }
        byte[] bArr8 = this.f10881a0;
        if (bArr8 != null) {
            bArrCatArray = catArray(bArrCatArray, getArray(A0, bArr8));
        }
        byte[] bArr9 = this.f10882a1;
        if (bArr9 != null) {
            bArrCatArray = catArray(bArrCatArray, getArray(A1, bArr9));
        }
        byte[] bArr10 = this.f10883a2;
        if (bArr10 != null) {
            bArrCatArray = catArray(bArrCatArray, getArray((byte) -94, bArr10));
        }
        byte[] bArr11 = this.f10884a5;
        if (bArr11 != null) {
            bArrCatArray = catArray(bArrCatArray, getArray(A5, bArr11));
        }
        byte[] bArr12 = this.f10885ab;
        if (bArr12 != null) {
            bArrCatArray = catArray(bArrCatArray, getArray(AB, bArr12));
        }
        byte[] bArr13 = this.f10886ac;
        if (bArr13 != null) {
            bArrCatArray = catArray(bArrCatArray, getArray((byte) -84, bArr13));
        }
        return getArray(this.mainTag, bArrCatArray);
    }

    public String toString() {
        return "Length: " + this.fileLength + "\nLength FCI: " + this.fileLengthFCI + "\nDesc byte: " + ((int) this.descriptorByte) + "\nData byte: " + ((int) this.dataCodingByte) + "\nRecord size: " + ((int) this.maxRecordSize) + "\nRecord count: " + ((int) this.maxRecordsCount) + "\nFID: " + Hex.shortToHexString(this.fid) + "\nDF name: " + Hex.bytesToHexString(this.dfName) + "\npropInfo: " + Hex.bytesToHexString(this.propInfo) + "\nsecAttrProp: " + Hex.bytesToHexString(this.secAttrProp) + "\nsecAttrExp: " + Hex.bytesToHexString(this.secAttrExp) + "\nsecAttrComp: " + Hex.bytesToHexString(this.secAttrCompact) + "\nFCI ext: " + Hex.shortToHexString(this.fciExt) + "\nEF env temp: " + Hex.shortToHexString(this.envTempEF) + "\nShort EF: " + Hex.byteToHexString(this.shortEF) + "\nLCS byte: " + Hex.byteToHexString(this.lcsByte) + "\nChannel sec: " + Hex.byteToHexString(this.channelSecurity) + "\na0: " + Hex.bytesToHexString(this.f10881a0) + "\na1: " + Hex.bytesToHexString(this.f10882a1) + "\na2: " + Hex.bytesToHexString(this.f10883a2) + "\na5: " + Hex.bytesToHexString(this.f10884a5) + "\nab: " + Hex.bytesToHexString(this.f10885ab) + "\nac: " + Hex.bytesToHexString(this.f10886ac) + "\n";
    }
}
