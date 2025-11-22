package org.bouncycastle.crypto.engines;

import ab.b;
import androidx.recyclerview.widget.ItemTouchHelper;
import java.lang.reflect.Array;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DefaultMultiBlockCipher;
import org.bouncycastle.crypto.MultiBlockCipher;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;
import org.jmrtd.PassportService;
import org.jmrtd.lds.CVCAFile;

/* loaded from: classes2.dex */
public class AESEngine extends DefaultMultiBlockCipher {
    private static final int BLOCK_SIZE = 16;

    /* renamed from: m1, reason: collision with root package name */
    private static final int f11483m1 = -2139062144;

    /* renamed from: m2, reason: collision with root package name */
    private static final int f11484m2 = 2139062143;

    /* renamed from: m3, reason: collision with root package name */
    private static final int f11485m3 = 27;

    /* renamed from: m4, reason: collision with root package name */
    private static final int f11486m4 = -1061109568;

    /* renamed from: m5, reason: collision with root package name */
    private static final int f11487m5 = 1061109567;
    private int ROUNDS;
    private int[][] WorkingKey = null;
    private boolean forEncryption;

    /* renamed from: s, reason: collision with root package name */
    private byte[] f11488s;
    private static final byte[] S = {99, 124, 119, 123, -14, 107, ISOFileInfo.FCI_BYTE, -59, ISO7816.INS_DECREASE, 1, 103, 43, -2, -41, ISOFileInfo.AB, 118, ISO7816.INS_GET_DATA, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, ISO7816.INS_GET_RESPONSE, -73, -3, -109, 38, 54, 63, -9, -52, ISO7816.INS_DECREASE_STAMPED, ISOFileInfo.A5, -27, -15, 113, ISO7816.INS_LOAD_KEY_FILE, 49, 21, 4, -57, 35, -61, 24, -106, 5, -102, 7, 18, ISOFileInfo.DATA_BYTES1, ISO7816.INS_APPEND_RECORD, -21, 39, -78, 117, 9, ISOFileInfo.FILE_IDENTIFIER, ISO7816.INS_UNBLOCK_CHV, 26, 27, 110, 90, ISOFileInfo.A0, 82, 59, ISO7816.INS_UPDATE_BINARY, ISO7816.INS_READ_RECORD2, 41, -29, 47, -124, 83, -47, 0, -19, ISO7816.INS_VERIFY, -4, ISO7816.INS_READ_BINARY2, 91, 106, -53, -66, 57, 74, 76, 88, -49, ISO7816.INS_WRITE_BINARY, -17, -86, -5, 67, 77, 51, ISOFileInfo.PROP_INFO, 69, -7, 2, 127, 80, 60, -97, -88, 81, -93, 64, -113, -110, -99, 56, -11, PSSSigner.TRAILER_IMPLICIT, ISO7816.INS_READ_RECORD_STAMPED, ISO7816.INS_PUT_DATA, 33, 16, -1, -13, ISO7816.INS_WRITE_RECORD, -51, PassportService.SFI_DG12, 19, -20, 95, -105, ISO7816.INS_REHABILITATE_CHV, 23, -60, -89, 126, 61, ISOFileInfo.FMD_BYTE, 93, 25, 115, 96, ISOFileInfo.DATA_BYTES2, 79, ISO7816.INS_UPDATE_RECORD, ISO7816.INS_MSE, ISO7816.INS_PSO, -112, -120, 70, -18, -72, 20, -34, 94, PassportService.SFI_DG11, -37, ISO7816.INS_CREATE_FILE, ISO7816.INS_INCREASE, 58, 10, 73, 6, ISO7816.INS_CHANGE_CHV, 92, ISO7816.INS_ENVELOPE, -45, -84, ISOFileInfo.FCP_BYTE, -111, -107, ISO7816.INS_DELETE_FILE, 121, -25, -56, 55, 109, ISOFileInfo.ENV_TEMP_EF, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, 28, -90, ISO7816.INS_READ_BINARY_STAMPED, -58, -24, -35, 116, 31, 75, -67, ISOFileInfo.SECURITY_ATTR_EXP, ISOFileInfo.LCS_BYTE, ISO7816.INS_MANAGE_CHANNEL, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, -63, 29, -98, -31, -8, -104, 17, 105, -39, ISOFileInfo.CHANNEL_SECURITY, -108, -101, PassportService.SFI_COM, ISOFileInfo.FCI_EXT, -23, -50, 85, 40, -33, ISOFileInfo.SECURITY_ATTR_COMPACT, ISOFileInfo.A1, -119, PassportService.SFI_DG13, -65, -26, CVCAFile.CAR_TAG, 104, 65, -103, 45, PassportService.SFI_DG15, ISO7816.INS_READ_BINARY, 84, -69, 22};
    private static final byte[] Si = {82, 9, 106, -43, ISO7816.INS_DECREASE, 54, ISOFileInfo.A5, 56, -65, 64, -93, -98, ISOFileInfo.DATA_BYTES2, -13, -41, -5, 124, -29, 57, -126, -101, 47, -1, ISOFileInfo.FCI_EXT, ISO7816.INS_DECREASE_STAMPED, ISOFileInfo.CHANNEL_SECURITY, 67, ISO7816.INS_REHABILITATE_CHV, -60, -34, -23, -53, 84, 123, -108, ISO7816.INS_INCREASE, -90, ISO7816.INS_ENVELOPE, 35, 61, -18, 76, -107, PassportService.SFI_DG11, CVCAFile.CAR_TAG, -6, -61, 78, 8, 46, ISOFileInfo.A1, 102, 40, -39, ISO7816.INS_CHANGE_CHV, -78, 118, 91, -94, 73, 109, ISOFileInfo.SECURITY_ATTR_EXP, -47, 37, 114, -8, -10, ISOFileInfo.FMD_BYTE, -122, 104, -104, 22, -44, -92, 92, -52, 93, 101, ISO7816.INS_READ_RECORD_STAMPED, -110, 108, ISO7816.INS_MANAGE_CHANNEL, 72, 80, -3, -19, -71, ISO7816.INS_PUT_DATA, 94, 21, 70, 87, -89, ISOFileInfo.ENV_TEMP_EF, -99, -124, -112, ISO7816.INS_LOAD_KEY_FILE, ISOFileInfo.AB, 0, ISOFileInfo.SECURITY_ATTR_COMPACT, PSSSigner.TRAILER_IMPLICIT, -45, 10, -9, ISO7816.INS_DELETE_FILE, 88, 5, -72, ISO7816.INS_READ_RECORD2, 69, 6, ISO7816.INS_WRITE_BINARY, ISO7816.INS_UNBLOCK_CHV, PassportService.SFI_COM, -113, ISO7816.INS_GET_DATA, 63, PassportService.SFI_DG15, 2, -63, -81, -67, 3, 1, 19, ISOFileInfo.LCS_BYTE, 107, 58, -111, 17, 65, 79, 103, ISO7816.INS_UPDATE_RECORD, -22, -105, -14, -49, -50, -16, ISO7816.INS_READ_BINARY_STAMPED, -26, 115, -106, -84, 116, ISO7816.INS_MSE, -25, -83, 53, ISOFileInfo.PROP_INFO, ISO7816.INS_APPEND_RECORD, -7, 55, -24, 28, 117, -33, 110, 71, -15, 26, 113, 29, 41, -59, -119, ISOFileInfo.FCI_BYTE, -73, ISOFileInfo.FCP_BYTE, 14, -86, 24, -66, 27, -4, 86, 62, 75, -58, ISO7816.INS_WRITE_RECORD, 121, ISO7816.INS_VERIFY, -102, -37, ISO7816.INS_GET_RESPONSE, -2, 120, -51, 90, -12, 31, -35, -88, 51, -120, 7, -57, 49, ISO7816.INS_READ_BINARY2, 18, 16, 89, 39, ISOFileInfo.DATA_BYTES1, -20, 95, 96, 81, 127, -87, 25, -75, 74, PassportService.SFI_DG13, 45, -27, 122, -97, -109, -55, -100, -17, ISOFileInfo.A0, ISO7816.INS_CREATE_FILE, 59, 77, -82, ISO7816.INS_PSO, -11, ISO7816.INS_READ_BINARY, -56, -21, -69, 60, ISOFileInfo.FILE_IDENTIFIER, 83, -103, 97, 23, 43, 4, 126, -70, 119, ISO7816.INS_UPDATE_BINARY, 38, -31, 105, 20, 99, 85, 33, PassportService.SFI_DG12, 125};
    private static final int[] rcon = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, ISO7816.TAG_SM_EXPECTED_LENGTH, 53, 106, 212, 179, 125, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 239, 197, 145};
    private static final int[] T0 = {-1520213050, -2072216328, -1720223762, -1921287178, 234025727, -1117033514, -1318096930, 1422247313, 1345335392, 50397442, -1452841010, 2099981142, 436141799, 1658312629, -424957107, -1703512340, 1170918031, -1652391393, 1086966153, -2021818886, 368769775, -346465870, -918075506, 200339707, -324162239, 1742001331, -39673249, -357585083, -1080255453, -140204973, -1770884380, 1539358875, -1028147339, 486407649, -1366060227, 1780885068, 1513502316, 1094664062, 49805301, 1338821763, 1546925160, -190470831, 887481809, 150073849, -1821281822, 1943591083, 1395732834, 1058346282, 201589768, 1388824469, 1696801606, 1589887901, 672667696, -1583966665, 251987210, -1248159185, 151455502, 907153956, -1686077413, 1038279391, 652995533, 1764173646, -843926913, -1619692054, 453576978, -1635548387, 1949051992, 773462580, 756751158, -1301385508, -296068428, -73359269, -162377052, 1295727478, 1641469623, -827083907, 2066295122, 1055122397, 1898917726, -1752923117, -179088474, 1758581177, 0, 753790401, 1612718144, 536673507, -927878791, -312779850, -1100322092, 1187761037, -641810841, 1262041458, -565556588, -733197160, -396863312, 1255133061, 1808847035, 720367557, -441800113, 385612781, -985447546, -682799718, 1429418854, -1803188975, -817543798, 284817897, 100794884, -2122350594, -263171936, 1144798328, -1163944155, -475486133, -212774494, -22830243, -1069531008, -1970303227, -1382903233, -1130521311, 1211644016, 83228145, -541279133, -1044990345, 1977277103, 1663115586, 806359072, 452984805, 250868733, 1842533055, 1288555905, 336333848, 890442534, 804056259, -513843266, -1567123659, -867941240, 957814574, 1472513171, -223893675, -2105639172, 1195195770, -1402706744, -413311558, 723065138, -1787595802, -1604296512, -1736343271, -783331426, 2145180835, 1713513028, 2116692564, -1416589253, -2088204277, -901364084, 703524551, -742868885, 1007948840, 2044649127, -497131844, 487262998, 1994120109, 1004593371, 1446130276, 1312438900, 503974420, -615954030, 168166924, 1814307912, -463709000, 1573044895, 1859376061, -273896381, -1503501628, -1466855111, -1533700815, 937747667, -1954973198, 854058965, 1137232011, 1496790894, -1217565222, -1936880383, 1691735473, -766620004, -525751991, -1267962664, -95005012, 133494003, 636152527, -1352309302, -1904575756, -374428089, 403179536, -709182865, -2005370640, 1864705354, 1915629148, 605822008, -240736681, -944458637, 1371981463, 602466507, 2094914977, -1670089496, 555687742, -582268010, -591544991, -2037675251, -2054518257, -1871679264, 1111375484, -994724495, -1436129588, -666351472, 84083462, 32962295, 302911004, -1553899070, 1597322602, -111716434, -793134743, -1853454825, 1489093017, 656219450, -1180787161, 954327513, 335083755, -1281845205, 856756514, -1150719534, 1893325225, -1987146233, -1483434957, -1231316179, 572399164, -1836611819, 552200649, 1238290055, -11184726, 2015897680, 2061492133, -1886614525, -123625127, -2138470135, 386731290, -624967835, 837215959, -968736124, -1201116976, -1019133566, -1332111063, 1999449434, 286199582, -877612933, -61582168, -692339859, 974525996};
    private static final int[] Tinv0 = {1353184337, 1399144830, -1012656358, -1772214470, -882136261, -247096033, -1420232020, -1828461749, 1442459680, -160598355, -1854485368, 625738485, -52959921, -674551099, -2143013594, -1885117771, 1230680542, 1729870373, -1743852987, -507445667, 41234371, 317738113, -1550367091, -956705941, -413167869, -1784901099, -344298049, -631680363, 763608788, -752782248, 694804553, 1154009486, 1787413109, 2021232372, 1799248025, -579749593, -1236278850, 397248752, 1722556617, -1271214467, 407560035, -2110711067, 1613975959, 1165972322, -529046351, -2068943941, 480281086, -1809118983, 1483229296, 436028815, -2022908268, -1208452270, 601060267, -503166094, 1468997603, 715871590, 120122290, 63092015, -1703164538, -1526188077, -226023376, -1297760477, -1167457534, 1552029421, 723308426, -1833666137, -252573709, -1578997426, -839591323, -708967162, 526529745, -1963022652, -1655493068, -1604979806, 853641733, 1978398372, 971801355, -1427152832, 111112542, 1360031421, -108388034, 1023860118, -1375387939, 1186850381, -1249028975, 90031217, 1876166148, -15380384, 620468249, -1746289194, -868007799, 2006899047, -1119688528, -2004121337, 945494503, -605108103, 1191869601, -384875908, -920746760, 0, -2088337399, 1223502642, -1401941730, 1316117100, -67170563, 1446544655, 517320253, 658058550, 1691946762, 564550760, -783000677, 976107044, -1318647284, 266819475, -761860428, -1634624741, 1338359936, -1574904735, 1766553434, 370807324, 179999714, -450191168, 1138762300, 488053522, 185403662, -1379431438, -1180125651, -928440812, -2061897385, 1275557295, -1143105042, -44007517, -1624899081, -1124765092, -985962940, 880737115, 1982415755, -590994485, 1761406390, 1676797112, -891538985, 277177154, 1076008723, 538035844, 2099530373, -130171950, 288553390, 1839278535, 1261411869, -214912292, -330136051, -790380169, 1813426987, -1715900247, -95906799, 577038663, -997393240, 440397984, -668172970, -275762398, -951170681, -1043253031, -22885748, 906744984, -813566554, 685669029, 646887386, -1530942145, -459458004, 227702864, -1681105046, 1648787028, -1038905866, -390539120, 1593260334, -173030526, -1098883681, 2090061929, -1456614033, -1290656305, 999926984, -1484974064, 1852021992, 2075868123, 158869197, -199730834, 28809964, -1466282109, 1701746150, 2129067946, 147831841, -420997649, -644094022, -835293366, -737566742, -696471511, -1347247055, 824393514, 815048134, -1067015627, 935087732, -1496677636, -1328508704, 366520115, 1251476721, -136647615, 240176511, 804688151, -1915335306, 1303441219, 1414376140, -553347356, -474623586, 461924940, -1205916479, 2136040774, 82468509, 1563790337, 1937016826, 776014843, 1511876531, 1389550482, 861278441, 323475053, -1939744870, 2047648055, -1911228327, -1992551445, -299390514, 902390199, -303751967, 1018251130, 1507840668, 1064563285, 2043548696, -1086863501, -355600557, 1537932639, 342834655, -2032450440, -2114736182, 1053059257, 741614648, 1598071746, 1925389590, 203809468, -1958134744, 1100287487, 1895934009, -558691320, -1662733096, -1866377628, 1636092795, 1890988757, 1952214088, 1113045200};

    public AESEngine() {
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 256));
    }

    private static int FFmulX(int r22) {
        return (((r22 & f11483m1) >>> 7) * 27) ^ ((f11484m2 & r22) << 1);
    }

    private static int FFmulX2(int r22) {
        int r02 = (f11487m5 & r22) << 2;
        int r23 = r22 & f11486m4;
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
        int r32 = Pack.littleEndianToInt(bArr, r18 + 0);
        int r42 = Pack.littleEndianToInt(bArr, r18 + 4);
        int r52 = Pack.littleEndianToInt(bArr, r18 + 8);
        int r12 = Pack.littleEndianToInt(bArr, r18 + 12);
        int r6 = this.ROUNDS;
        int[] r72 = r21[r6];
        char c10 = 0;
        int r33 = r32 ^ r72[0];
        int r43 = r42 ^ r72[1];
        int r53 = r52 ^ r72[2];
        int r62 = r6 - 1;
        int r13 = r12 ^ r72[3];
        for (int r92 = 1; r62 > r92; r92 = 1) {
            int[] r14 = Tinv0;
            int r11 = (((shift(r14[(r13 >> 8) & 255], 24) ^ r14[r33 & 255]) ^ shift(r14[(r53 >> 16) & 255], 16)) ^ shift(r14[(r43 >> 24) & 255], 8)) ^ r21[r62][c10];
            int r82 = (((shift(r14[(r33 >> 8) & 255], 24) ^ r14[r43 & 255]) ^ shift(r14[(r13 >> 16) & 255], 16)) ^ shift(r14[(r53 >> 24) & 255], 8)) ^ r21[r62][r92];
            int r93 = (((shift(r14[(r43 >> 8) & 255], 24) ^ r14[r53 & 255]) ^ shift(r14[(r33 >> 16) & 255], 16)) ^ shift(r14[(r13 >> 24) & 255], 8)) ^ r21[r62][2];
            int r15 = ((r14[r13 & 255] ^ shift(r14[(r53 >> 8) & 255], 24)) ^ shift(r14[(r43 >> 16) & 255], 16)) ^ shift(r14[(r33 >> 24) & 255], 8);
            int r34 = r62 - 1;
            int r16 = r15 ^ r21[r62][3];
            int r44 = (((r14[r11 & 255] ^ shift(r14[(r16 >> 8) & 255], 24)) ^ shift(r14[(r93 >> 16) & 255], 16)) ^ shift(r14[(r82 >> 24) & 255], 8)) ^ r21[r34][0];
            int r54 = (((r14[r82 & 255] ^ shift(r14[(r11 >> 8) & 255], 24)) ^ shift(r14[(r16 >> 16) & 255], 16)) ^ shift(r14[(r93 >> 24) & 255], 8)) ^ r21[r34][1];
            int r63 = (((r14[r93 & 255] ^ shift(r14[(r82 >> 8) & 255], 24)) ^ shift(r14[(r11 >> 16) & 255], 16)) ^ shift(r14[(r16 >> 24) & 255], 8)) ^ r21[r34][2];
            int r73 = r34 - 1;
            r13 = (((r14[r16 & 255] ^ shift(r14[(r93 >> 8) & 255], 24)) ^ shift(r14[(r82 >> 16) & 255], 16)) ^ shift(r14[(r11 >> 24) & 255], 8)) ^ r21[r34][3];
            r33 = r44;
            r43 = r54;
            r53 = r63;
            r62 = r73;
            c10 = 0;
        }
        int[] r83 = Tinv0;
        int r94 = (((r83[r33 & 255] ^ shift(r83[(r13 >> 8) & 255], 24)) ^ shift(r83[(r53 >> 16) & 255], 16)) ^ shift(r83[(r43 >> 24) & 255], 8)) ^ r21[r62][0];
        int r112 = (((r83[r43 & 255] ^ shift(r83[(r33 >> 8) & 255], 24)) ^ shift(r83[(r13 >> 16) & 255], 16)) ^ shift(r83[(r53 >> 24) & 255], 8)) ^ r21[r62][1];
        int r142 = (((r83[r53 & 255] ^ shift(r83[(r43 >> 8) & 255], 24)) ^ shift(r83[(r33 >> 16) & 255], 16)) ^ shift(r83[(r13 >> 24) & 255], 8)) ^ r21[r62][2];
        int r17 = (((r83[r13 & 255] ^ shift(r83[(r53 >> 8) & 255], 24)) ^ shift(r83[(r43 >> 16) & 255], 16)) ^ shift(r83[(r33 >> 24) & 255], 8)) ^ r21[r62][3];
        byte[] bArr3 = Si;
        int r45 = bArr3[r94 & 255] & 255;
        byte[] bArr4 = this.f11488s;
        int r46 = ((r45 ^ ((bArr4[(r17 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(r142 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r112 >> 24) & 255] << 24);
        int[] r84 = r21[0];
        int r47 = r46 ^ r84[0];
        int r64 = ((((bArr4[r112 & 255] & 255) ^ ((bArr4[(r94 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r17 >> 16) & 255] & 255) << 16)) ^ (bArr4[(r142 >> 24) & 255] << 24)) ^ r84[1];
        int r10 = (((((bArr3[(r112 >> 8) & 255] & 255) << 8) ^ (bArr4[r142 & 255] & 255)) ^ ((bArr3[(r94 >> 16) & 255] & 255) << 16)) ^ (bArr4[(r17 >> 24) & 255] << 24)) ^ r84[2];
        int r19 = ((((bArr3[r17 & 255] & 255) ^ ((bArr4[(r142 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(r112 >> 16) & 255] & 255) << 16)) ^ (bArr4[(r94 >> 24) & 255] << 24)) ^ r84[3];
        Pack.intToLittleEndian(r47, bArr2, r20 + 0);
        Pack.intToLittleEndian(r64, bArr2, r20 + 4);
        Pack.intToLittleEndian(r10, bArr2, r20 + 8);
        Pack.intToLittleEndian(r19, bArr2, r20 + 12);
    }

    private void encryptBlock(byte[] bArr, int r18, byte[] bArr2, int r20, int[][] r21) {
        int r32 = Pack.littleEndianToInt(bArr, r18 + 0);
        int r42 = Pack.littleEndianToInt(bArr, r18 + 4);
        int r52 = Pack.littleEndianToInt(bArr, r18 + 8);
        int r12 = Pack.littleEndianToInt(bArr, r18 + 12);
        char c10 = 0;
        int[] r72 = r21[0];
        int r33 = r32 ^ r72[0];
        int r82 = 1;
        int r43 = r42 ^ r72[1];
        int r53 = r52 ^ r72[2];
        int r13 = r12 ^ r72[3];
        int r73 = 1;
        while (r73 < this.ROUNDS - r82) {
            int[] r11 = T0;
            int r10 = (((shift(r11[(r43 >> 8) & 255], 24) ^ r11[r33 & 255]) ^ shift(r11[(r53 >> 16) & 255], 16)) ^ shift(r11[(r13 >> 24) & 255], 8)) ^ r21[r73][c10];
            int r6 = (((shift(r11[(r53 >> 8) & 255], 24) ^ r11[r43 & 255]) ^ shift(r11[(r13 >> 16) & 255], 16)) ^ shift(r11[(r33 >> 24) & 255], 8)) ^ r21[r73][r82];
            int r83 = (((shift(r11[(r13 >> 8) & 255], 24) ^ r11[r53 & 255]) ^ shift(r11[(r33 >> 16) & 255], 16)) ^ shift(r11[(r43 >> 24) & 255], 8)) ^ r21[r73][2];
            int r14 = ((r11[r13 & 255] ^ shift(r11[(r33 >> 8) & 255], 24)) ^ shift(r11[(r43 >> 16) & 255], 16)) ^ shift(r11[(r53 >> 24) & 255], 8);
            int r34 = r73 + 1;
            int r15 = r14 ^ r21[r73][3];
            int r44 = (((r11[r10 & 255] ^ shift(r11[(r6 >> 8) & 255], 24)) ^ shift(r11[(r83 >> 16) & 255], 16)) ^ shift(r11[(r15 >> 24) & 255], 8)) ^ r21[r34][0];
            int r54 = (((r11[r6 & 255] ^ shift(r11[(r83 >> 8) & 255], 24)) ^ shift(r11[(r15 >> 16) & 255], 16)) ^ shift(r11[(r10 >> 24) & 255], 8)) ^ r21[r34][1];
            int r74 = (((r11[r83 & 255] ^ shift(r11[(r15 >> 8) & 255], 24)) ^ shift(r11[(r10 >> 16) & 255], 16)) ^ shift(r11[(r6 >> 24) & 255], 8)) ^ r21[r34][2];
            int r16 = ((r11[r15 & 255] ^ shift(r11[(r10 >> 8) & 255], 24)) ^ shift(r11[(r6 >> 16) & 255], 16)) ^ shift(r11[(r83 >> 24) & 255], 8);
            int r62 = r34 + 1;
            r13 = r16 ^ r21[r34][3];
            r33 = r44;
            r43 = r54;
            r53 = r74;
            r82 = 1;
            r73 = r62;
            c10 = 0;
        }
        int[] r63 = T0;
        int r84 = (((r63[r33 & 255] ^ shift(r63[(r43 >> 8) & 255], 24)) ^ shift(r63[(r53 >> 16) & 255], 16)) ^ shift(r63[(r13 >> 24) & 255], 8)) ^ r21[r73][0];
        int r102 = (((r63[r43 & 255] ^ shift(r63[(r53 >> 8) & 255], 24)) ^ shift(r63[(r13 >> 16) & 255], 16)) ^ shift(r63[(r33 >> 24) & 255], 8)) ^ r21[r73][1];
        int r112 = (((r63[r53 & 255] ^ shift(r63[(r13 >> 8) & 255], 24)) ^ shift(r63[(r33 >> 16) & 255], 16)) ^ shift(r63[(r43 >> 24) & 255], 8)) ^ r21[r73][2];
        int r17 = ((r63[r13 & 255] ^ shift(r63[(r33 >> 8) & 255], 24)) ^ shift(r63[(r43 >> 16) & 255], 16)) ^ shift(r63[(r53 >> 24) & 255], 8);
        int r19 = r17 ^ r21[r73][3];
        byte[] bArr3 = S;
        int r55 = (bArr3[r84 & 255] & 255) ^ ((bArr3[(r102 >> 8) & 255] & 255) << 8);
        byte[] bArr4 = this.f11488s;
        int r56 = (r55 ^ ((bArr4[(r112 >> 16) & 255] & 255) << 16)) ^ (bArr4[(r19 >> 24) & 255] << 24);
        int[] r35 = r21[r73 + 1];
        int r57 = r56 ^ r35[0];
        int r75 = ((((bArr4[r102 & 255] & 255) ^ ((bArr3[(r112 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(r19 >> 16) & 255] & 255) << 16)) ^ (bArr4[(r84 >> 24) & 255] << 24)) ^ r35[1];
        int r92 = (((((bArr3[(r19 >> 8) & 255] & 255) << 8) ^ (bArr4[r112 & 255] & 255)) ^ ((bArr3[(r84 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r102 >> 24) & 255] << 24)) ^ r35[2];
        int r110 = ((((bArr4[r19 & 255] & 255) ^ ((bArr4[(r84 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(r102 >> 16) & 255] & 255) << 16)) ^ (bArr3[(r112 >> 24) & 255] << 24)) ^ r35[3];
        Pack.intToLittleEndian(r57, bArr2, r20 + 0);
        Pack.intToLittleEndian(r75, bArr2, r20 + 4);
        Pack.intToLittleEndian(r92, bArr2, r20 + 8);
        Pack.intToLittleEndian(r110, bArr2, r20 + 12);
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

    public static MultiBlockCipher newInstance() {
        return new AESEngine();
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
        if (z10) {
            this.f11488s = Arrays.clone(S);
        } else {
            this.f11488s = Arrays.clone(Si);
        }
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
