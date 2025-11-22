package org.bouncycastle.pqc.legacy.math.linearalgebra;

import androidx.browser.browseractions.a;
import androidx.core.app.FrameMetricsAggregator;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import java.math.BigInteger;
import java.util.Random;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.util.Arrays;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public class GF2Polynomial {
    private int blocks;
    private int len;
    private int[] value;
    private static Random rand = new Random();
    private static final boolean[] parity = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    private static final short[] squaringTable = {0, 1, 4, 5, 16, 17, 20, 21, 64, 65, 68, 69, 80, 81, 84, 85, 256, PassportService.EF_DG1, PassportService.EF_DG4, PassportService.EF_DG5, PassportService.EF_DG16, 273, 276, 277, 320, 321, 324, 325, 336, 337, 340, 341, 1024, 1025, 1028, 1029, 1040, 1041, 1044, 1045, 1088, 1089, 1092, 1093, 1104, 1105, 1108, 1109, 1280, 1281, 1284, 1285, 1296, 1297, 1300, 1301, 1344, 1345, 1348, 1349, 1360, 1361, 1364, 1365, 4096, 4097, 4100, 4101, 4112, 4113, 4116, 4117, 4160, 4161, 4164, 4165, 4176, 4177, 4180, 4181, 4352, 4353, 4356, 4357, 4368, 4369, 4372, 4373, 4416, 4417, 4420, 4421, 4432, 4433, 4436, 4437, 5120, 5121, 5124, 5125, 5136, 5137, 5140, 5141, 5184, 5185, 5188, 5189, 5200, 5201, 5204, 5205, 5376, 5377, 5380, 5381, 5392, 5393, 5396, 5397, 5440, 5441, 5444, 5445, 5456, 5457, 5460, 5461, 16384, 16385, 16388, 16389, 16400, 16401, 16404, 16405, 16448, 16449, 16452, 16453, 16464, 16465, 16468, 16469, 16640, 16641, 16644, 16645, 16656, 16657, 16660, 16661, 16704, 16705, 16708, 16709, 16720, 16721, 16724, 16725, 17408, 17409, 17412, 17413, 17424, 17425, 17428, 17429, 17472, 17473, 17476, 17477, 17488, 17489, 17492, 17493, 17664, 17665, 17668, 17669, 17680, 17681, 17684, 17685, 17728, 17729, 17732, 17733, 17744, 17745, 17748, 17749, 20480, 20481, 20484, 20485, 20496, 20497, 20500, 20501, 20544, 20545, 20548, 20549, 20560, 20561, 20564, 20565, 20736, 20737, 20740, 20741, 20752, 20753, 20756, 20757, 20800, 20801, 20804, 20805, 20816, 20817, 20820, 20821, 21504, 21505, 21508, 21509, 21520, 21521, 21524, 21525, 21568, 21569, 21572, 21573, 21584, 21585, 21588, 21589, 21760, 21761, 21764, 21765, 21776, 21777, 21780, 21781, 21824, 21825, 21828, 21829, 21840, 21841, 21844, 21845};
    private static final int[] bitMask = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, PKIFailureInfo.duplicateCertReq, 1073741824, Integer.MIN_VALUE, 0};
    private static final int[] reverseRightMask = {0, 1, 3, 7, 15, 31, 63, CertificateBody.profileType, 255, FrameMetricsAggregator.EVERY_DURATION, 1023, 2047, 4095, 8191, 16383, 32767, 65535, 131071, 262143, 524287, 1048575, 2097151, 4194303, 8388607, ViewCompat.MEASURED_SIZE_MASK, 33554431, 67108863, 134217727, 268435455, 536870911, 1073741823, Integer.MAX_VALUE, -1};

    public GF2Polynomial(int r32) {
        r32 = r32 < 1 ? 1 : r32;
        int r12 = ((r32 - 1) >> 5) + 1;
        this.blocks = r12;
        this.value = new int[r12];
        this.len = r32;
    }

    public GF2Polynomial(int r32, String str) {
        r32 = r32 < 1 ? 1 : r32;
        int r12 = ((r32 - 1) >> 5) + 1;
        this.blocks = r12;
        this.value = new int[r12];
        this.len = r32;
        if (str.equalsIgnoreCase("ZERO")) {
            assignZero();
            return;
        }
        if (str.equalsIgnoreCase("ONE")) {
            assignOne();
            return;
        }
        if (str.equalsIgnoreCase("RANDOM")) {
            randomize();
        } else if (str.equalsIgnoreCase("X")) {
            assignX();
        } else {
            if (!str.equalsIgnoreCase("ALL")) {
                throw new IllegalArgumentException(a.a("Error: GF2Polynomial was called using ", str, " as value!"));
            }
            assignAll();
        }
    }

    public GF2Polynomial(int r10, BigInteger bigInteger) {
        r10 = r10 < 1 ? 1 : r10;
        int r12 = ((r10 - 1) >> 5) + 1;
        this.blocks = r12;
        this.value = new int[r12];
        this.len = r10;
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] == 0) {
            int length = byteArray.length - 1;
            byte[] bArr = new byte[length];
            System.arraycopy(byteArray, 1, bArr, 0, length);
            byteArray = bArr;
        }
        int length2 = byteArray.length & 3;
        int length3 = ((byteArray.length - 1) >> 2) + 1;
        for (int r32 = 0; r32 < length2; r32++) {
            int[] r42 = this.value;
            int r52 = length3 - 1;
            r42[r52] = r42[r52] | ((byteArray[r32] & 255) << (((length2 - 1) - r32) << 3));
        }
        for (int r11 = 0; r11 <= ((byteArray.length - 4) >> 2); r11++) {
            int length4 = (byteArray.length - 1) - (r11 << 2);
            int[] r22 = this.value;
            int r33 = byteArray[length4] & 255;
            r22[r11] = r33;
            int r34 = r33 | ((byteArray[length4 - 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
            r22[r11] = r34;
            int r35 = r34 | ((byteArray[length4 - 2] << 16) & 16711680);
            r22[r11] = r35;
            r22[r11] = ((byteArray[length4 - 3] << 24) & ViewCompat.MEASURED_STATE_MASK) | r35;
        }
        int r102 = this.len;
        if ((r102 & 31) != 0) {
            int[] r112 = this.value;
            int r13 = this.blocks - 1;
            r112[r13] = reverseRightMask[r102 & 31] & r112[r13];
        }
        reduceN();
    }

    public GF2Polynomial(int r32, Random random) {
        r32 = r32 < 1 ? 1 : r32;
        int r12 = ((r32 - 1) >> 5) + 1;
        this.blocks = r12;
        this.value = new int[r12];
        this.len = r32;
        randomize(random);
    }

    public GF2Polynomial(int r11, byte[] bArr) {
        int r32;
        r11 = r11 < 1 ? 1 : r11;
        int r12 = ((r11 - 1) >> 5) + 1;
        this.blocks = r12;
        this.value = new int[r12];
        this.len = r11;
        int r112 = Math.min(((bArr.length - 1) >> 2) + 1, r12);
        int r13 = 0;
        while (true) {
            r32 = r112 - 1;
            if (r13 >= r32) {
                break;
            }
            int length = (bArr.length - (r13 << 2)) - 1;
            int[] r72 = this.value;
            int r82 = bArr[length] & 255;
            r72[r13] = r82;
            int r6 = (65280 & (bArr[length - 1] << 8)) | r82;
            r72[r13] = r6;
            int r52 = (16711680 & (bArr[length - 2] << 16)) | r6;
            r72[r13] = r52;
            r72[r13] = ((bArr[length - 3] << 24) & ViewCompat.MEASURED_STATE_MASK) | r52;
            r13++;
        }
        int length2 = (bArr.length - (r32 << 2)) - 1;
        int[] r14 = this.value;
        int r73 = bArr[length2] & 255;
        r14[r32] = r73;
        if (length2 > 0) {
            r14[r32] = (65280 & (bArr[length2 - 1] << 8)) | r73;
        }
        if (length2 > 1) {
            r14[r32] = r14[r32] | (16711680 & (bArr[length2 - 2] << 16));
        }
        if (length2 > 2) {
            r14[r32] = ((bArr[length2 - 3] << 24) & ViewCompat.MEASURED_STATE_MASK) | r14[r32];
        }
        zeroUnusedBits();
        reduceN();
    }

    public GF2Polynomial(int r32, int[] r42) {
        r32 = r32 < 1 ? 1 : r32;
        int r12 = ((r32 - 1) >> 5) + 1;
        this.blocks = r12;
        this.value = new int[r12];
        this.len = r32;
        System.arraycopy(r42, 0, this.value, 0, Math.min(r12, r42.length));
        zeroUnusedBits();
    }

    public GF2Polynomial(GF2Polynomial gF2Polynomial) {
        this.len = gF2Polynomial.len;
        this.blocks = gF2Polynomial.blocks;
        this.value = IntUtils.clone(gF2Polynomial.value);
    }

    private void doShiftBlocksLeft(int r52) {
        int r02 = this.blocks;
        int[] r12 = this.value;
        if (r02 > r12.length) {
            int[] r22 = new int[r02];
            System.arraycopy(r12, 0, r22, r52, r02 - r52);
            this.value = r22;
            return;
        }
        for (int r03 = r02 - 1; r03 >= r52; r03--) {
            int[] r13 = this.value;
            r13[r03] = r13[r03 - r52];
        }
        for (int r04 = 0; r04 < r52; r04++) {
            this.value[r04] = 0;
        }
    }

    private GF2Polynomial karaMult(GF2Polynomial gF2Polynomial) {
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this.len << 1);
        int r12 = this.len;
        if (r12 <= 32) {
            gF2Polynomial2.value = mult32(this.value[0], gF2Polynomial.value[0]);
            return gF2Polynomial2;
        }
        if (r12 <= 64) {
            gF2Polynomial2.value = mult64(this.value, gF2Polynomial.value);
            return gF2Polynomial2;
        }
        if (r12 <= 128) {
            gF2Polynomial2.value = mult128(this.value, gF2Polynomial.value);
            return gF2Polynomial2;
        }
        if (r12 <= 256) {
            gF2Polynomial2.value = mult256(this.value, gF2Polynomial.value);
            return gF2Polynomial2;
        }
        if (r12 <= 512) {
            gF2Polynomial2.value = mult512(this.value, gF2Polynomial.value);
            return gF2Polynomial2;
        }
        int r13 = bitMask[IntegerFunctions.floorLog(r12 - 1)];
        int r22 = ((r13 - 1) >> 5) + 1;
        GF2Polynomial gF2PolynomialLower = lower(r22);
        GF2Polynomial gF2PolynomialUpper = upper(r22);
        GF2Polynomial gF2PolynomialLower2 = gF2Polynomial.lower(r22);
        GF2Polynomial gF2PolynomialUpper2 = gF2Polynomial.upper(r22);
        GF2Polynomial gF2PolynomialKaraMult = gF2PolynomialUpper.karaMult(gF2PolynomialUpper2);
        GF2Polynomial gF2PolynomialKaraMult2 = gF2PolynomialLower.karaMult(gF2PolynomialLower2);
        gF2PolynomialLower.addToThis(gF2PolynomialUpper);
        gF2PolynomialLower2.addToThis(gF2PolynomialUpper2);
        GF2Polynomial gF2PolynomialKaraMult3 = gF2PolynomialLower.karaMult(gF2PolynomialLower2);
        gF2Polynomial2.shiftLeftAddThis(gF2PolynomialKaraMult, r13 << 1);
        gF2Polynomial2.shiftLeftAddThis(gF2PolynomialKaraMult, r13);
        gF2Polynomial2.shiftLeftAddThis(gF2PolynomialKaraMult3, r13);
        gF2Polynomial2.shiftLeftAddThis(gF2PolynomialKaraMult2, r13);
        gF2Polynomial2.addToThis(gF2PolynomialKaraMult2);
        return gF2Polynomial2;
    }

    private GF2Polynomial lower(int r52) {
        GF2Polynomial gF2Polynomial = new GF2Polynomial(r52 << 5);
        System.arraycopy(this.value, 0, gF2Polynomial.value, 0, Math.min(r52, this.blocks));
        return gF2Polynomial;
    }

    private static int[] mult128(int[] r14, int[] r15) {
        int[] r02 = new int[8];
        int[] r22 = new int[2];
        System.arraycopy(r14, 0, r22, 0, Math.min(2, r14.length));
        int[] r32 = new int[2];
        if (r14.length > 2) {
            System.arraycopy(r14, 2, r32, 0, Math.min(2, r14.length - 2));
        }
        int[] r142 = new int[2];
        System.arraycopy(r15, 0, r142, 0, Math.min(2, r15.length));
        int[] r52 = new int[2];
        if (r15.length > 2) {
            System.arraycopy(r15, 2, r52, 0, Math.min(2, r15.length - 2));
        }
        if (r32[1] == 0 && r52[1] == 0) {
            int r6 = r32[0];
            if (r6 != 0 || r52[0] != 0) {
                int[] r62 = mult32(r6, r52[0]);
                int r10 = r02[5];
                int r11 = r62[1];
                r02[5] = r10 ^ r11;
                int r102 = r02[4];
                int r63 = r62[0];
                r02[4] = r102 ^ r63;
                r02[3] = r02[3] ^ r11;
                r02[2] = r63 ^ r02[2];
            }
        } else {
            int[] r64 = mult64(r32, r52);
            int r112 = r02[7];
            int r12 = r64[3];
            r02[7] = r112 ^ r12;
            int r113 = r02[6];
            int r13 = r64[2];
            r02[6] = r113 ^ r13;
            int r103 = r02[5];
            int r114 = r64[1];
            r02[5] = r103 ^ (r12 ^ r114);
            int r104 = r02[4];
            int r65 = r64[0];
            r02[4] = r104 ^ (r65 ^ r13);
            r02[3] = r02[3] ^ r114;
            r02[2] = r65 ^ r02[2];
        }
        r32[0] = r32[0] ^ r22[0];
        r32[1] = r32[1] ^ r22[1];
        int r66 = r52[0] ^ r142[0];
        r52[0] = r66;
        int r105 = r52[1] ^ r142[1];
        r52[1] = r105;
        if (r32[1] == 0 && r105 == 0) {
            int[] r33 = mult32(r32[0], r66);
            r02[3] = r02[3] ^ r33[1];
            r02[2] = r33[0] ^ r02[2];
        } else {
            int[] r34 = mult64(r32, r52);
            r02[5] = r02[5] ^ r34[3];
            r02[4] = r02[4] ^ r34[2];
            r02[3] = r02[3] ^ r34[1];
            r02[2] = r34[0] ^ r02[2];
        }
        if (r22[1] == 0 && r142[1] == 0) {
            int[] r143 = mult32(r22[0], r142[0]);
            int r23 = r02[3];
            int r35 = r143[1];
            r02[3] = r23 ^ r35;
            int r24 = r02[2];
            int r144 = r143[0];
            r02[2] = r24 ^ r144;
            r02[1] = r02[1] ^ r35;
            r02[0] = r144 ^ r02[0];
        } else {
            int[] r145 = mult64(r22, r142);
            int r25 = r02[5];
            int r36 = r145[3];
            r02[5] = r25 ^ r36;
            int r26 = r02[4];
            int r53 = r145[2];
            r02[4] = r26 ^ r53;
            int r27 = r02[3];
            int r67 = r145[1];
            r02[3] = r27 ^ (r36 ^ r67);
            int r28 = r02[2];
            int r146 = r145[0];
            r02[2] = r28 ^ (r146 ^ r53);
            r02[1] = r02[1] ^ r67;
            r02[0] = r146 ^ r02[0];
        }
        return r02;
    }

    private static int[] mult256(int[] r23, int[] r24) {
        int[] r22 = new int[16];
        int[] r42 = new int[4];
        System.arraycopy(r23, 0, r42, 0, Math.min(4, r23.length));
        int[] r52 = new int[4];
        if (r23.length > 4) {
            System.arraycopy(r23, 4, r52, 0, Math.min(4, r23.length - 4));
        }
        int[] r02 = new int[4];
        System.arraycopy(r24, 0, r02, 0, Math.min(4, r24.length));
        int[] r72 = new int[4];
        if (r24.length > 4) {
            System.arraycopy(r24, 4, r72, 0, Math.min(4, r24.length - 4));
        }
        if (r52[3] != 0 || r52[2] != 0 || r72[3] != 0 || r72[2] != 0) {
            int[] r82 = mult128(r52, r72);
            int r18 = r22[15];
            int r19 = r82[7];
            r22[15] = r18 ^ r19;
            int r182 = r22[14];
            int r21 = r82[6];
            r22[14] = r182 ^ r21;
            int r183 = r22[13];
            int r20 = r82[5];
            r22[13] = r183 ^ r20;
            int r184 = r22[12];
            int r222 = r82[4];
            r22[12] = r184 ^ r222;
            int r13 = r22[11];
            int r185 = r82[3];
            r22[11] = r13 ^ (r185 ^ r19);
            int r132 = r22[10];
            int r192 = r82[2];
            r22[10] = r132 ^ (r192 ^ r21);
            int r133 = r22[9];
            int r212 = r82[1];
            r22[9] = r133 ^ (r212 ^ r20);
            int r134 = r22[8];
            int r83 = r82[0];
            r22[8] = r134 ^ (r83 ^ r222);
            r22[7] = r22[7] ^ r185;
            r22[6] = r22[6] ^ r192;
            r22[5] = r22[5] ^ r212;
            r22[4] = r83 ^ r22[4];
        } else if (r52[1] == 0 && r72[1] == 0) {
            int r84 = r52[0];
            if (r84 != 0 || r72[0] != 0) {
                int[] r85 = mult32(r84, r72[0]);
                int r135 = r22[9];
                int r186 = r85[1];
                r22[9] = r135 ^ r186;
                int r136 = r22[8];
                int r86 = r85[0];
                r22[8] = r136 ^ r86;
                r22[5] = r22[5] ^ r186;
                r22[4] = r86 ^ r22[4];
            }
        } else {
            int[] r87 = mult64(r52, r72);
            int r137 = r22[11];
            int r187 = r87[3];
            r22[11] = r137 ^ r187;
            int r138 = r22[10];
            int r193 = r87[2];
            r22[10] = r138 ^ r193;
            int r139 = r22[9];
            int r202 = r87[1];
            r22[9] = r139 ^ r202;
            int r1310 = r22[8];
            int r88 = r87[0];
            r22[8] = r1310 ^ r88;
            r22[7] = r22[7] ^ r187;
            r22[6] = r22[6] ^ r193;
            r22[5] = r22[5] ^ r202;
            r22[4] = r88 ^ r22[4];
        }
        r52[0] = r52[0] ^ r42[0];
        r52[1] = r52[1] ^ r42[1];
        r52[2] = r52[2] ^ r42[2];
        r52[3] = r52[3] ^ r42[3];
        r72[0] = r72[0] ^ r02[0];
        r72[1] = r72[1] ^ r02[1];
        r72[2] = r72[2] ^ r02[2];
        r72[3] = r72[3] ^ r02[3];
        int[] r53 = mult128(r52, r72);
        r22[11] = r22[11] ^ r53[7];
        r22[10] = r22[10] ^ r53[6];
        r22[9] = r22[9] ^ r53[5];
        r22[8] = r22[8] ^ r53[4];
        r22[7] = r22[7] ^ r53[3];
        r22[6] = r22[6] ^ r53[2];
        r22[5] = r22[5] ^ r53[1];
        r22[4] = r53[0] ^ r22[4];
        int[] r03 = mult128(r42, r02);
        int r43 = r22[11];
        int r54 = r03[7];
        r22[11] = r43 ^ r54;
        int r44 = r22[10];
        int r89 = r03[6];
        r22[10] = r44 ^ r89;
        int r45 = r22[9];
        int r73 = r03[5];
        r22[9] = r45 ^ r73;
        int r46 = r22[8];
        int r92 = r03[4];
        r22[8] = r46 ^ r92;
        int r47 = r22[7];
        int r10 = r03[3];
        r22[7] = r47 ^ (r54 ^ r10);
        int r55 = r22[6];
        int r11 = r03[2];
        r22[6] = r55 ^ (r89 ^ r11);
        int r48 = r22[5];
        int r56 = r03[1];
        r22[5] = r48 ^ (r73 ^ r56);
        int r49 = r22[4];
        int r04 = r03[0];
        r22[4] = r49 ^ (r04 ^ r92);
        r22[3] = r22[3] ^ r10;
        r22[2] = r22[2] ^ r11;
        r22[1] = r22[1] ^ r56;
        r22[0] = r04 ^ r22[0];
        return r22;
    }

    private static int[] mult32(int r10, int r11) {
        int[] r02 = new int[2];
        if (r10 != 0 && r11 != 0) {
            long j10 = r11 & BodyPartID.bodyIdMax;
            long j11 = 0;
            for (int r72 = 1; r72 <= 32; r72++) {
                if ((bitMask[r72 - 1] & r10) != 0) {
                    j11 ^= j10;
                }
                j10 <<= 1;
            }
            r02[1] = (int) (j11 >>> 32);
            r02[0] = (int) (j11 & BodyPartID.bodyIdMax);
        }
        return r02;
    }

    private static int[] mult512(int[] r39, int[] r40) {
        int[] r22 = new int[32];
        int[] r42 = new int[8];
        System.arraycopy(r39, 0, r42, 0, Math.min(8, r39.length));
        int[] r52 = new int[8];
        if (r39.length > 8) {
            System.arraycopy(r39, 8, r52, 0, Math.min(8, r39.length - 8));
        }
        int[] r02 = new int[8];
        System.arraycopy(r40, 0, r02, 0, Math.min(8, r40.length));
        int[] r72 = new int[8];
        if (r40.length > 8) {
            System.arraycopy(r40, 8, r72, 0, Math.min(8, r40.length - 8));
        }
        int[] r12 = mult256(r52, r72);
        int r92 = r22[31];
        int r11 = r12[15];
        r22[31] = r92 ^ r11;
        int r93 = r22[30];
        int r13 = r12[14];
        r22[30] = r93 ^ r13;
        int r94 = r22[29];
        int r15 = r12[13];
        r22[29] = r94 ^ r15;
        int r95 = r22[28];
        int r17 = r12[12];
        r22[28] = r95 ^ r17;
        int r96 = r22[27];
        int r19 = r12[11];
        r22[27] = r96 ^ r19;
        int r97 = r22[26];
        int r21 = r12[10];
        r22[26] = r97 ^ r21;
        int r98 = r22[25];
        int r23 = r12[9];
        r22[25] = r98 ^ r23;
        int r99 = r22[24];
        int r24 = r12[8];
        r22[24] = r99 ^ r24;
        int r910 = r22[23];
        int r26 = r12[7];
        r22[23] = r910 ^ (r26 ^ r11);
        int r112 = r22[22];
        int r28 = r12[6];
        r22[22] = r112 ^ (r28 ^ r13);
        int r132 = r22[21];
        int r30 = r12[5];
        r22[21] = r132 ^ (r30 ^ r15);
        int r152 = r22[20];
        int r32 = r12[4];
        r22[20] = r152 ^ (r32 ^ r17);
        int r172 = r22[19];
        int r34 = r12[3];
        r22[19] = r172 ^ (r34 ^ r19);
        int r192 = r22[18];
        int r36 = r12[2];
        r22[18] = r192 ^ (r36 ^ r21);
        int r212 = r22[17];
        int r38 = r12[1];
        r22[17] = r212 ^ (r38 ^ r23);
        int r213 = r22[16];
        int r14 = r12[0];
        r22[16] = r213 ^ (r14 ^ r24);
        r22[15] = r22[15] ^ r26;
        r22[14] = r22[14] ^ r28;
        r22[13] = r22[13] ^ r30;
        r22[12] = r22[12] ^ r32;
        r22[11] = r22[11] ^ r34;
        r22[10] = r22[10] ^ r36;
        r22[9] = r22[9] ^ r38;
        r22[8] = r22[8] ^ r14;
        r52[0] = r52[0] ^ r42[0];
        r52[1] = r52[1] ^ r42[1];
        r52[2] = r52[2] ^ r42[2];
        r52[3] = r52[3] ^ r42[3];
        r52[4] = r52[4] ^ r42[4];
        r52[5] = r52[5] ^ r42[5];
        r52[6] = r52[6] ^ r42[6];
        r52[7] = r52[7] ^ r42[7];
        r72[0] = r72[0] ^ r02[0];
        r72[1] = r72[1] ^ r02[1];
        r72[2] = r72[2] ^ r02[2];
        r72[3] = r72[3] ^ r02[3];
        r72[4] = r72[4] ^ r02[4];
        r72[5] = r72[5] ^ r02[5];
        r72[6] = r72[6] ^ r02[6];
        r72[7] = r72[7] ^ r02[7];
        int[] r16 = mult256(r52, r72);
        r22[23] = r22[23] ^ r16[15];
        r22[22] = r22[22] ^ r16[14];
        r22[21] = r22[21] ^ r16[13];
        r22[20] = r22[20] ^ r16[12];
        r22[19] = r22[19] ^ r16[11];
        r22[18] = r22[18] ^ r16[10];
        r22[17] = r22[17] ^ r16[9];
        r22[16] = r22[16] ^ r16[8];
        r22[15] = r22[15] ^ r16[7];
        r22[14] = r22[14] ^ r16[6];
        r22[13] = r22[13] ^ r16[5];
        r22[12] = r22[12] ^ r16[4];
        r22[11] = r22[11] ^ r16[3];
        r22[10] = r22[10] ^ r16[2];
        r22[9] = r22[9] ^ r16[1];
        r22[8] = r16[0] ^ r22[8];
        int[] r03 = mult256(r42, r02);
        int r18 = r22[23];
        int r43 = r03[15];
        r22[23] = r18 ^ r43;
        int r110 = r22[22];
        int r53 = r03[14];
        r22[22] = r110 ^ r53;
        int r111 = r22[21];
        int r73 = r03[13];
        r22[21] = r111 ^ r73;
        int r113 = r22[20];
        int r82 = r03[12];
        r22[20] = r113 ^ r82;
        int r114 = r22[19];
        int r911 = r03[11];
        r22[19] = r114 ^ r911;
        int r115 = r22[18];
        int r116 = r03[10];
        r22[18] = r115 ^ r116;
        int r133 = r22[17];
        int r153 = r03[9];
        r22[17] = r133 ^ r153;
        int r134 = r22[16];
        int r173 = r03[8];
        r22[16] = r134 ^ r173;
        int r117 = r22[15];
        int r135 = r03[7];
        r22[15] = r117 ^ (r43 ^ r135);
        int r118 = r22[14];
        int r44 = r03[6];
        r22[14] = r118 ^ (r53 ^ r44);
        int r119 = r22[13];
        int r54 = r03[5];
        r22[13] = r119 ^ (r73 ^ r54);
        int r120 = r22[12];
        int r74 = r03[4];
        r22[12] = r120 ^ (r82 ^ r74);
        int r121 = r22[11];
        int r83 = r03[3];
        r22[11] = r121 ^ (r911 ^ r83);
        int r122 = r22[10];
        int r912 = r03[2];
        r22[10] = r122 ^ (r912 ^ r116);
        int r123 = r22[9];
        int r10 = r03[1];
        r22[9] = r123 ^ (r10 ^ r153);
        int r124 = r22[8];
        int r04 = r03[0];
        r22[8] = r124 ^ (r04 ^ r173);
        r22[7] = r22[7] ^ r135;
        r22[6] = r22[6] ^ r44;
        r22[5] = r22[5] ^ r54;
        r22[4] = r22[4] ^ r74;
        r22[3] = r22[3] ^ r83;
        r22[2] = r22[2] ^ r912;
        r22[1] = r22[1] ^ r10;
        r22[0] = r04 ^ r22[0];
        return r22;
    }

    private static int[] mult64(int[] r10, int[] r11) {
        int[] r02 = new int[4];
        int r22 = r10[0];
        int r102 = r10.length > 1 ? r10[1] : 0;
        int r32 = r11[0];
        int r112 = r11.length > 1 ? r11[1] : 0;
        if (r102 != 0 || r112 != 0) {
            int[] r6 = mult32(r102, r112);
            int r82 = r02[3];
            int r92 = r6[1];
            r02[3] = r82 ^ r92;
            int r72 = r02[2];
            int r62 = r6[0];
            r02[2] = r72 ^ (r62 ^ r92);
            r02[1] = r62 ^ r02[1];
        }
        int[] r103 = mult32(r102 ^ r22, r112 ^ r32);
        r02[2] = r02[2] ^ r103[1];
        r02[1] = r103[0] ^ r02[1];
        int[] r104 = mult32(r22, r32);
        int r113 = r02[2];
        int r23 = r104[1];
        r02[2] = r113 ^ r23;
        int r114 = r02[1];
        int r105 = r104[0];
        r02[1] = r114 ^ (r23 ^ r105);
        r02[0] = r105 ^ r02[0];
        return r02;
    }

    private GF2Polynomial upper(int r6) {
        int r02 = Math.min(r6, this.blocks - r6);
        GF2Polynomial gF2Polynomial = new GF2Polynomial(r02 << 5);
        if (this.blocks >= r6) {
            System.arraycopy(this.value, r6, gF2Polynomial.value, 0, r02);
        }
        return gF2Polynomial;
    }

    private void zeroUnusedBits() {
        int r02 = this.len;
        if ((r02 & 31) != 0) {
            int[] r12 = this.value;
            int r22 = this.blocks - 1;
            r12[r22] = reverseRightMask[r02 & 31] & r12[r22];
        }
    }

    public GF2Polynomial add(GF2Polynomial gF2Polynomial) {
        return xor(gF2Polynomial);
    }

    public void addToThis(GF2Polynomial gF2Polynomial) {
        expandN(gF2Polynomial.len);
        xorThisBy(gF2Polynomial);
    }

    public void assignAll() {
        for (int r02 = 0; r02 < this.blocks; r02++) {
            this.value[r02] = -1;
        }
        zeroUnusedBits();
    }

    public void assignOne() {
        for (int r12 = 1; r12 < this.blocks; r12++) {
            this.value[r12] = 0;
        }
        this.value[0] = 1;
    }

    public void assignX() {
        for (int r02 = 1; r02 < this.blocks; r02++) {
            this.value[r02] = 0;
        }
        this.value[0] = 2;
    }

    public void assignZero() {
        for (int r12 = 0; r12 < this.blocks; r12++) {
            this.value[r12] = 0;
        }
    }

    public Object clone() {
        return new GF2Polynomial(this);
    }

    public GF2Polynomial[] divide(GF2Polynomial gF2Polynomial) throws RuntimeException {
        GF2Polynomial[] gF2PolynomialArr = new GF2Polynomial[2];
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this.len);
        GF2Polynomial gF2Polynomial3 = new GF2Polynomial(this);
        GF2Polynomial gF2Polynomial4 = new GF2Polynomial(gF2Polynomial);
        if (gF2Polynomial4.isZero()) {
            throw new RuntimeException();
        }
        gF2Polynomial3.reduceN();
        gF2Polynomial4.reduceN();
        int r82 = gF2Polynomial3.len;
        int r42 = gF2Polynomial4.len;
        if (r82 < r42) {
            gF2PolynomialArr[0] = new GF2Polynomial(0);
            gF2PolynomialArr[1] = gF2Polynomial3;
            return gF2PolynomialArr;
        }
        int r83 = r82 - r42;
        gF2Polynomial2.expandN(r83 + 1);
        while (r83 >= 0) {
            gF2Polynomial3.subtractFromThis(gF2Polynomial4.shiftLeft(r83));
            gF2Polynomial3.reduceN();
            gF2Polynomial2.xorBit(r83);
            r83 = gF2Polynomial3.len - gF2Polynomial4.len;
        }
        gF2PolynomialArr[0] = gF2Polynomial2;
        gF2PolynomialArr[1] = gF2Polynomial3;
        return gF2PolynomialArr;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof GF2Polynomial)) {
            return false;
        }
        GF2Polynomial gF2Polynomial = (GF2Polynomial) obj;
        if (this.len != gF2Polynomial.len) {
            return false;
        }
        for (int r12 = 0; r12 < this.blocks; r12++) {
            if (this.value[r12] != gF2Polynomial.value[r12]) {
                return false;
            }
        }
        return true;
    }

    public void expandN(int r52) {
        if (this.len >= r52) {
            return;
        }
        this.len = r52;
        int r53 = ((r52 - 1) >>> 5) + 1;
        int r02 = this.blocks;
        if (r02 >= r53) {
            return;
        }
        int[] r12 = this.value;
        if (r12.length >= r53) {
            while (r02 < r53) {
                this.value[r02] = 0;
                r02++;
            }
            this.blocks = r53;
            return;
        }
        int[] r22 = new int[r53];
        System.arraycopy(r12, 0, r22, 0, r02);
        this.blocks = r53;
        this.value = r22;
    }

    public GF2Polynomial gcd(GF2Polynomial gF2Polynomial) throws RuntimeException {
        if (isZero() && gF2Polynomial.isZero()) {
            throw new ArithmeticException("Both operands of gcd equal zero.");
        }
        if (isZero()) {
            return new GF2Polynomial(gF2Polynomial);
        }
        if (gF2Polynomial.isZero()) {
            return new GF2Polynomial(this);
        }
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this);
        GF2Polynomial gF2Polynomial3 = new GF2Polynomial(gF2Polynomial);
        GF2Polynomial gF2Polynomial4 = gF2Polynomial2;
        GF2Polynomial gF2PolynomialRemainder = gF2Polynomial3;
        while (!gF2PolynomialRemainder.isZero()) {
            GF2Polynomial gF2Polynomial5 = gF2PolynomialRemainder;
            gF2PolynomialRemainder = gF2Polynomial4.remainder(gF2PolynomialRemainder);
            gF2Polynomial4 = gF2Polynomial5;
        }
        return gF2Polynomial4;
    }

    public int getBit(int r52) {
        if (r52 < 0) {
            throw new RuntimeException();
        }
        if (r52 > this.len - 1) {
            return 0;
        }
        return (bitMask[r52 & 31] & this.value[r52 >>> 5]) != 0 ? 1 : 0;
    }

    public int getLength() {
        return this.len;
    }

    public int hashCode() {
        return Arrays.hashCode(this.value) + this.len;
    }

    public GF2Polynomial increase() throws RuntimeException {
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this);
        gF2Polynomial.increaseThis();
        return gF2Polynomial;
    }

    public void increaseThis() throws RuntimeException {
        xorBit(0);
    }

    public boolean isIrreducible() throws RuntimeException {
        if (isZero()) {
            return false;
        }
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this);
        gF2Polynomial.reduceN();
        int r22 = gF2Polynomial.len;
        int r32 = r22 - 1;
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(r22, "X");
        for (int r6 = 1; r6 <= (r32 >> 1); r6++) {
            gF2Polynomial2.squareThisPreCalc();
            gF2Polynomial2 = gF2Polynomial2.remainder(gF2Polynomial);
            GF2Polynomial gF2PolynomialAdd = gF2Polynomial2.add(new GF2Polynomial(32, "X"));
            if (gF2PolynomialAdd.isZero() || !gF2Polynomial.gcd(gF2PolynomialAdd).isOne()) {
                return false;
            }
        }
        return true;
    }

    public boolean isOne() {
        for (int r12 = 1; r12 < this.blocks; r12++) {
            if (this.value[r12] != 0) {
                return false;
            }
        }
        return this.value[0] == 1;
    }

    public boolean isZero() {
        if (this.len == 0) {
            return true;
        }
        for (int r22 = 0; r22 < this.blocks; r22++) {
            if (this.value[r22] != 0) {
                return false;
            }
        }
        return true;
    }

    public GF2Polynomial multiply(GF2Polynomial gF2Polynomial) {
        int r02 = Math.max(this.len, gF2Polynomial.len);
        expandN(r02);
        gF2Polynomial.expandN(r02);
        return karaMult(gF2Polynomial);
    }

    public GF2Polynomial multiplyClassic(GF2Polynomial gF2Polynomial) {
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(Math.max(this.len, gF2Polynomial.len) << 1);
        GF2Polynomial[] gF2PolynomialArr = new GF2Polynomial[32];
        gF2PolynomialArr[0] = new GF2Polynomial(this);
        for (int r22 = 1; r22 <= 31; r22++) {
            gF2PolynomialArr[r22] = gF2PolynomialArr[r22 - 1].shiftLeft();
        }
        for (int r23 = 0; r23 < gF2Polynomial.blocks; r23++) {
            for (int r52 = 0; r52 <= 31; r52++) {
                if ((gF2Polynomial.value[r23] & bitMask[r52]) != 0) {
                    gF2Polynomial2.xorThisBy(gF2PolynomialArr[r52]);
                }
            }
            for (int r53 = 0; r53 <= 31; r53++) {
                gF2PolynomialArr[r53].shiftBlocksLeft();
            }
        }
        return gF2Polynomial2;
    }

    public GF2Polynomial quotient(GF2Polynomial gF2Polynomial) throws RuntimeException {
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this.len);
        GF2Polynomial gF2Polynomial3 = new GF2Polynomial(this);
        GF2Polynomial gF2Polynomial4 = new GF2Polynomial(gF2Polynomial);
        if (gF2Polynomial4.isZero()) {
            throw new RuntimeException();
        }
        gF2Polynomial3.reduceN();
        gF2Polynomial4.reduceN();
        int r52 = gF2Polynomial3.len;
        int r32 = gF2Polynomial4.len;
        if (r52 < r32) {
            return new GF2Polynomial(0);
        }
        int r53 = r52 - r32;
        gF2Polynomial2.expandN(r53 + 1);
        while (r53 >= 0) {
            gF2Polynomial3.subtractFromThis(gF2Polynomial4.shiftLeft(r53));
            gF2Polynomial3.reduceN();
            gF2Polynomial2.xorBit(r53);
            r53 = gF2Polynomial3.len - gF2Polynomial4.len;
        }
        return gF2Polynomial2;
    }

    public void randomize() {
        for (int r02 = 0; r02 < this.blocks; r02++) {
            this.value[r02] = rand.nextInt();
        }
        zeroUnusedBits();
    }

    public void randomize(Random random) {
        for (int r02 = 0; r02 < this.blocks; r02++) {
            this.value[r02] = random.nextInt();
        }
        zeroUnusedBits();
    }

    public void reduceN() {
        int r12;
        int r02 = this.blocks;
        do {
            r02--;
            r12 = this.value[r02];
            if (r12 != 0) {
                break;
            }
        } while (r02 > 0);
        int r22 = 0;
        while (r12 != 0) {
            r12 >>>= 1;
            r22++;
        }
        this.len = (r02 << 5) + r22;
        this.blocks = r02 + 1;
    }

    public void reducePentanomial(int r21, int[] r22) {
        GF2Polynomial gF2Polynomial = this;
        int r23 = r21 >>> 5;
        int r32 = r21 & 31;
        int r42 = 32 - r32;
        int r6 = r22[0];
        int r72 = (r21 - r6) >>> 5;
        int r62 = 32 - ((r21 - r6) & 31);
        int r92 = r22[1];
        int r10 = (r21 - r92) >>> 5;
        int r93 = 32 - ((r21 - r92) & 31);
        int r12 = r22[2];
        int r13 = (r21 - r12) >>> 5;
        int r122 = 32 - ((r21 - r12) & 31);
        int r11 = ((r21 << 1) - 2) >>> 5;
        while (r11 > r23) {
            int[] r82 = gF2Polynomial.value;
            long j10 = r82[r11] & BodyPartID.bodyIdMax;
            int r52 = r11 - r23;
            int r14 = r52 - 1;
            int r16 = r23;
            int r17 = r32;
            r82[r14] = r82[r14] ^ ((int) (j10 << r42));
            r82[r52] = (int) (r82[r52] ^ (j10 >>> (32 - r42)));
            int r24 = r11 - r72;
            int r33 = r24 - 1;
            r82[r33] = r82[r33] ^ ((int) (j10 << r62));
            r82[r24] = (int) (r82[r24] ^ (j10 >>> (32 - r62)));
            int r25 = r11 - r10;
            int r34 = r25 - 1;
            r82[r34] = r82[r34] ^ ((int) (j10 << r93));
            r82[r25] = (int) (r82[r25] ^ (j10 >>> (32 - r93)));
            int r26 = r11 - r13;
            int r35 = r26 - 1;
            r82[r35] = r82[r35] ^ ((int) (j10 << r122));
            r82[r26] = (int) ((j10 >>> (32 - r122)) ^ r82[r26]);
            r82[r11] = 0;
            r11--;
            gF2Polynomial = this;
            r23 = r16;
            r32 = r17;
        }
        int r162 = r23;
        int r172 = r32;
        int[] r27 = gF2Polynomial.value;
        long j11 = r27[r162] & BodyPartID.bodyIdMax & (BodyPartID.bodyIdMax << r172);
        r27[0] = (int) ((j11 >>> (32 - r42)) ^ r27[0]);
        int r36 = r162 - r72;
        int r43 = r36 - 1;
        if (r43 >= 0) {
            r27[r43] = r27[r43] ^ ((int) (j11 << r62));
        }
        r27[r36] = (int) (r27[r36] ^ (j11 >>> (32 - r62)));
        int r37 = r162 - r10;
        int r44 = r37 - 1;
        if (r44 >= 0) {
            r27[r44] = r27[r44] ^ ((int) (j11 << r93));
        }
        r27[r37] = (int) (r27[r37] ^ (j11 >>> (32 - r93)));
        int r38 = r162 - r13;
        int r45 = r38 - 1;
        if (r45 >= 0) {
            r27[r45] = r27[r45] ^ ((int) (j11 << r122));
        }
        r27[r38] = (int) ((j11 >>> (32 - r122)) ^ r27[r38]);
        r27[r162] = r27[r162] & reverseRightMask[r172];
        this.blocks = ((r21 - 1) >>> 5) + 1;
        this.len = r21;
    }

    public void reduceTrinomial(int r17, int r18) {
        int r22 = r17 >>> 5;
        int r32 = r17 & 31;
        int r42 = 32 - r32;
        int r52 = r17 - r18;
        int r6 = r52 >>> 5;
        int r53 = 32 - (r52 & 31);
        int r72 = ((r17 << 1) - 2) >>> 5;
        while (r72 > r22) {
            int[] r11 = this.value;
            long j10 = BodyPartID.bodyIdMax & r11[r72];
            int r12 = r72 - r22;
            int r13 = r12 - 1;
            int r15 = r22;
            r11[r13] = r11[r13] ^ ((int) (j10 << r42));
            r11[r12] = (int) (r11[r12] ^ (j10 >>> (32 - r42)));
            int r14 = r72 - r6;
            int r23 = r14 - 1;
            r11[r23] = r11[r23] ^ ((int) (j10 << r53));
            r11[r14] = (int) ((j10 >>> (32 - r53)) ^ r11[r14]);
            r11[r72] = 0;
            r72--;
            r22 = r15;
        }
        int r152 = r22;
        int[] r16 = this.value;
        long j11 = (BodyPartID.bodyIdMax << r32) & r16[r152] & BodyPartID.bodyIdMax;
        r16[0] = (int) (r16[0] ^ (j11 >>> (32 - r42)));
        int r24 = r152 - r6;
        int r43 = r24 - 1;
        if (r43 >= 0) {
            r16[r43] = r16[r43] ^ ((int) (j11 << r53));
        }
        r16[r24] = (int) ((j11 >>> (32 - r53)) ^ r16[r24]);
        r16[r152] = r16[r152] & reverseRightMask[r32];
        this.blocks = ((r17 - 1) >>> 5) + 1;
        this.len = r17;
    }

    public GF2Polynomial remainder(GF2Polynomial gF2Polynomial) throws RuntimeException {
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this);
        GF2Polynomial gF2Polynomial3 = new GF2Polynomial(gF2Polynomial);
        if (gF2Polynomial3.isZero()) {
            throw new RuntimeException();
        }
        gF2Polynomial2.reduceN();
        gF2Polynomial3.reduceN();
        int r42 = gF2Polynomial2.len;
        int r22 = gF2Polynomial3.len;
        if (r42 < r22) {
            return gF2Polynomial2;
        }
        while (true) {
            int r43 = r42 - r22;
            if (r43 < 0) {
                return gF2Polynomial2;
            }
            gF2Polynomial2.subtractFromThis(gF2Polynomial3.shiftLeft(r43));
            gF2Polynomial2.reduceN();
            r42 = gF2Polynomial2.len;
            r22 = gF2Polynomial3.len;
        }
    }

    public void resetBit(int r52) throws RuntimeException {
        if (r52 < 0) {
            throw new RuntimeException();
        }
        if (r52 > this.len - 1) {
            return;
        }
        int[] r02 = this.value;
        int r12 = r52 >>> 5;
        r02[r12] = (~bitMask[r52 & 31]) & r02[r12];
    }

    public void setBit(int r52) throws RuntimeException {
        if (r52 < 0 || r52 > this.len - 1) {
            throw new RuntimeException();
        }
        int[] r02 = this.value;
        int r12 = r52 >>> 5;
        r02[r12] = bitMask[r52 & 31] | r02[r12];
    }

    public void shiftBlocksLeft() {
        int r02 = this.blocks + 1;
        this.blocks = r02;
        this.len += 32;
        int[] r22 = this.value;
        if (r02 > r22.length) {
            int[] r32 = new int[r02];
            System.arraycopy(r22, 0, r32, 1, r02 - 1);
            this.value = r32;
        } else {
            for (int r03 = r02 - 1; r03 >= 1; r03--) {
                int[] r23 = this.value;
                r23[r03] = r23[r03 - 1];
            }
            this.value[0] = 0;
        }
    }

    public GF2Polynomial shiftLeft() {
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this.len + 1, this.value);
        for (int r12 = gF2Polynomial.blocks - 1; r12 >= 1; r12--) {
            int[] r32 = gF2Polynomial.value;
            int r42 = r32[r12] << 1;
            r32[r12] = r42;
            r32[r12] = r42 | (r32[r12 - 1] >>> 31);
        }
        int[] r13 = gF2Polynomial.value;
        r13[0] = r13[0] << 1;
        return gF2Polynomial;
    }

    public GF2Polynomial shiftLeft(int r82) {
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this.len + r82, this.value);
        if (r82 >= 32) {
            gF2Polynomial.doShiftBlocksLeft(r82 >>> 5);
        }
        int r83 = r82 & 31;
        if (r83 != 0) {
            for (int r12 = gF2Polynomial.blocks - 1; r12 >= 1; r12--) {
                int[] r32 = gF2Polynomial.value;
                int r42 = r32[r12] << r83;
                r32[r12] = r42;
                r32[r12] = r42 | (r32[r12 - 1] >>> (32 - r83));
            }
            int[] r13 = gF2Polynomial.value;
            r13[0] = r13[0] << r83;
        }
        return gF2Polynomial;
    }

    public void shiftLeftAddThis(GF2Polynomial gF2Polynomial, int r10) {
        int r42;
        if (r10 == 0) {
            addToThis(gF2Polynomial);
            return;
        }
        expandN(gF2Polynomial.len + r10);
        int r02 = r10 >>> 5;
        for (int r12 = gF2Polynomial.blocks - 1; r12 >= 0; r12--) {
            int r22 = r12 + r02;
            int r32 = r22 + 1;
            if (r32 < this.blocks && (r42 = r10 & 31) != 0) {
                int[] r52 = this.value;
                r52[r32] = (gF2Polynomial.value[r12] >>> (32 - r42)) ^ r52[r32];
            }
            int[] r33 = this.value;
            r33[r22] = r33[r22] ^ (gF2Polynomial.value[r12] << (r10 & 31));
        }
    }

    public void shiftLeftThis() {
        int r02 = this.len;
        int r12 = r02 & 31;
        this.len = r02 + 1;
        int r03 = this.blocks;
        if (r12 != 0) {
            for (int r04 = r03 - 1; r04 >= 1; r04--) {
                int[] r13 = this.value;
                int r42 = r13[r04] << 1;
                r13[r04] = r42;
                r13[r04] = r42 | (r13[r04 - 1] >>> 31);
            }
            int[] r05 = this.value;
            r05[0] = r05[0] << 1;
            return;
        }
        int r06 = r03 + 1;
        this.blocks = r06;
        int[] r14 = this.value;
        if (r06 > r14.length) {
            int[] r07 = new int[r06];
            System.arraycopy(r14, 0, r07, 0, r14.length);
            this.value = r07;
        }
        for (int r08 = this.blocks - 1; r08 >= 1; r08--) {
            int[] r15 = this.value;
            int r43 = r08 - 1;
            r15[r08] = r15[r08] | (r15[r43] >>> 31);
            r15[r43] = r15[r43] << 1;
        }
    }

    public GF2Polynomial shiftRight() {
        int r12;
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this.len - 1);
        int r42 = 0;
        System.arraycopy(this.value, 0, gF2Polynomial.value, 0, gF2Polynomial.blocks);
        while (true) {
            r12 = gF2Polynomial.blocks;
            if (r42 > r12 - 2) {
                break;
            }
            int[] r13 = gF2Polynomial.value;
            int r22 = r13[r42] >>> 1;
            r13[r42] = r22;
            int r32 = r42 + 1;
            r13[r42] = r22 | (r13[r32] << 31);
            r42 = r32;
        }
        int[] r23 = gF2Polynomial.value;
        int r33 = r12 - 1;
        r23[r33] = r23[r33] >>> 1;
        if (r12 < this.blocks) {
            int r34 = r12 - 1;
            r23[r34] = (this.value[r12] << 31) | r23[r34];
        }
        return gF2Polynomial;
    }

    public void shiftRightThis() {
        int r12;
        int r02 = this.len - 1;
        this.len = r02;
        this.blocks = ((r02 - 1) >>> 5) + 1;
        int r03 = 0;
        while (true) {
            r12 = this.blocks;
            if (r03 > r12 - 2) {
                break;
            }
            int[] r13 = this.value;
            int r22 = r13[r03] >>> 1;
            r13[r03] = r22;
            int r32 = r03 + 1;
            r13[r03] = r22 | (r13[r32] << 31);
            r03 = r32;
        }
        int[] r04 = this.value;
        int r23 = r12 - 1;
        r04[r23] = r04[r23] >>> 1;
        if ((this.len & 31) == 0) {
            int r24 = r12 - 1;
            r04[r24] = (r04[r12] << 31) | r04[r24];
        }
    }

    public void squareThisBitwise() {
        if (isZero()) {
            return;
        }
        int r02 = this.blocks;
        int r12 = r02 << 1;
        int[] r22 = new int[r12];
        for (int r03 = r02 - 1; r03 >= 0; r03--) {
            int r42 = this.value[r03];
            int r6 = 1;
            for (int r52 = 0; r52 < 16; r52++) {
                if ((r42 & 1) != 0) {
                    int r72 = r03 << 1;
                    r22[r72] = r22[r72] | r6;
                }
                if ((65536 & r42) != 0) {
                    int r73 = (r03 << 1) + 1;
                    r22[r73] = r22[r73] | r6;
                }
                r6 <<= 2;
                r42 >>>= 1;
            }
        }
        this.value = r22;
        this.blocks = r12;
        this.len = (this.len << 1) - 1;
    }

    public void squareThisPreCalc() {
        int r22;
        int r02;
        if (isZero()) {
            return;
        }
        int length = this.value.length;
        int r12 = this.blocks;
        if (length >= (r12 << 1)) {
            for (int r13 = r12 - 1; r13 >= 0; r13--) {
                int[] r03 = this.value;
                int r23 = r13 << 1;
                short[] sArr = squaringTable;
                int r82 = r03[r13];
                r03[r23 + 1] = (sArr[(r82 & ViewCompat.MEASURED_STATE_MASK) >>> 24] << 16) | sArr[(r82 & 16711680) >>> 16];
                int r6 = r03[r13];
                r03[r23] = (sArr[(r6 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >>> 8] << 16) | sArr[r6 & 255];
            }
            r02 = this.blocks << 1;
        } else {
            int[] r04 = new int[r12 << 1];
            int r14 = 0;
            while (true) {
                r22 = this.blocks;
                if (r14 >= r22) {
                    break;
                }
                int r24 = r14 << 1;
                short[] sArr2 = squaringTable;
                int[] r72 = this.value;
                int r83 = r72[r14];
                r04[r24] = (sArr2[(r83 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >>> 8] << 16) | sArr2[r83 & 255];
                int r73 = r72[r14];
                r04[r24 + 1] = (sArr2[(r73 & ViewCompat.MEASURED_STATE_MASK) >>> 24] << 16) | sArr2[(r73 & 16711680) >>> 16];
                r14++;
            }
            this.value = r04;
            r02 = r22 << 1;
        }
        this.blocks = r02;
        this.len = (this.len << 1) - 1;
    }

    public GF2Polynomial subtract(GF2Polynomial gF2Polynomial) {
        return xor(gF2Polynomial);
    }

    public void subtractFromThis(GF2Polynomial gF2Polynomial) {
        expandN(gF2Polynomial.len);
        xorThisBy(gF2Polynomial);
    }

    public boolean testBit(int r52) {
        if (r52 < 0) {
            throw new RuntimeException();
        }
        if (r52 > this.len - 1) {
            return false;
        }
        return (bitMask[r52 & 31] & this.value[r52 >>> 5]) != 0;
    }

    public byte[] toByteArray() {
        int r02 = ((this.len - 1) >> 3) + 1;
        int r12 = r02 & 3;
        byte[] bArr = new byte[r02];
        for (int r42 = 0; r42 < (r02 >> 2); r42++) {
            int r52 = (r02 - (r42 << 2)) - 1;
            int r6 = this.value[r42];
            bArr[r52] = (byte) (r6 & 255);
            bArr[r52 - 1] = (byte) ((65280 & r6) >>> 8);
            bArr[r52 - 2] = (byte) ((16711680 & r6) >>> 16);
            bArr[r52 - 3] = (byte) ((r6 & ViewCompat.MEASURED_STATE_MASK) >>> 24);
        }
        for (int r32 = 0; r32 < r12; r32++) {
            int r03 = ((r12 - r32) - 1) << 3;
            bArr[r32] = (byte) ((this.value[this.blocks - 1] & (255 << r03)) >>> r03);
        }
        return bArr;
    }

    public BigInteger toFlexiBigInt() {
        return (this.len == 0 || isZero()) ? new BigInteger(0, new byte[0]) : new BigInteger(1, toByteArray());
    }

    public int[] toIntegerArray() {
        int r02 = this.blocks;
        int[] r12 = new int[r02];
        System.arraycopy(this.value, 0, r12, 0, r02);
        return r12;
    }

    public String toString(int r20) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        String[] strArr = {"0000", "0001", "0010", "0011", "0100", "0101", "0110", "0111", "1000", "1001", "1010", "1011", "1100", "1101", "1110", "1111"};
        String str = new String();
        if (r20 != 16) {
            int r22 = this.blocks;
            while (true) {
                r22--;
                if (r22 < 0) {
                    break;
                }
                StringBuilder sbE = androidx.constraintlayout.core.a.e(str);
                sbE.append(strArr[(this.value[r22] >>> 28) & 15]);
                StringBuilder sbE2 = androidx.constraintlayout.core.a.e(sbE.toString());
                sbE2.append(strArr[(this.value[r22] >>> 24) & 15]);
                StringBuilder sbE3 = androidx.constraintlayout.core.a.e(sbE2.toString());
                sbE3.append(strArr[(this.value[r22] >>> 20) & 15]);
                StringBuilder sbE4 = androidx.constraintlayout.core.a.e(sbE3.toString());
                sbE4.append(strArr[(this.value[r22] >>> 16) & 15]);
                StringBuilder sbE5 = androidx.constraintlayout.core.a.e(sbE4.toString());
                sbE5.append(strArr[(this.value[r22] >>> 12) & 15]);
                StringBuilder sbE6 = androidx.constraintlayout.core.a.e(sbE5.toString());
                sbE6.append(strArr[(this.value[r22] >>> 8) & 15]);
                StringBuilder sbE7 = androidx.constraintlayout.core.a.e(sbE6.toString());
                sbE7.append(strArr[(this.value[r22] >>> 4) & 15]);
                StringBuilder sbE8 = androidx.constraintlayout.core.a.e(sbE7.toString());
                sbE8.append(strArr[this.value[r22] & 15]);
                str = android.support.v4.media.a.f(sbE8.toString(), " ");
            }
        } else {
            int r32 = this.blocks;
            while (true) {
                r32--;
                if (r32 < 0) {
                    break;
                }
                StringBuilder sbE9 = androidx.constraintlayout.core.a.e(str);
                sbE9.append(cArr[(this.value[r32] >>> 28) & 15]);
                StringBuilder sbE10 = androidx.constraintlayout.core.a.e(sbE9.toString());
                sbE10.append(cArr[(this.value[r32] >>> 24) & 15]);
                StringBuilder sbE11 = androidx.constraintlayout.core.a.e(sbE10.toString());
                sbE11.append(cArr[(this.value[r32] >>> 20) & 15]);
                StringBuilder sbE12 = androidx.constraintlayout.core.a.e(sbE11.toString());
                sbE12.append(cArr[(this.value[r32] >>> 16) & 15]);
                StringBuilder sbE13 = androidx.constraintlayout.core.a.e(sbE12.toString());
                sbE13.append(cArr[(this.value[r32] >>> 12) & 15]);
                StringBuilder sbE14 = androidx.constraintlayout.core.a.e(sbE13.toString());
                sbE14.append(cArr[(this.value[r32] >>> 8) & 15]);
                StringBuilder sbE15 = androidx.constraintlayout.core.a.e(sbE14.toString());
                sbE15.append(cArr[(this.value[r32] >>> 4) & 15]);
                StringBuilder sbE16 = androidx.constraintlayout.core.a.e(sbE15.toString());
                sbE16.append(cArr[this.value[r32] & 15]);
                str = android.support.v4.media.a.f(sbE16.toString(), " ");
            }
        }
        return str;
    }

    public boolean vectorMult(GF2Polynomial gF2Polynomial) throws RuntimeException {
        if (this.len != gF2Polynomial.len) {
            throw new RuntimeException();
        }
        boolean z10 = false;
        for (int r02 = 0; r02 < this.blocks; r02++) {
            int r22 = this.value[r02] & gF2Polynomial.value[r02];
            boolean[] zArr = parity;
            z10 = (((z10 ^ zArr[r22 & 255]) ^ zArr[(r22 >>> 8) & 255]) ^ zArr[(r22 >>> 16) & 255]) ^ zArr[(r22 >>> 24) & 255];
        }
        return z10;
    }

    public GF2Polynomial xor(GF2Polynomial gF2Polynomial) {
        GF2Polynomial gF2Polynomial2;
        int r02 = Math.min(this.blocks, gF2Polynomial.blocks);
        int r32 = 0;
        if (this.len >= gF2Polynomial.len) {
            gF2Polynomial2 = new GF2Polynomial(this);
            while (r32 < r02) {
                int[] r22 = gF2Polynomial2.value;
                r22[r32] = r22[r32] ^ gF2Polynomial.value[r32];
                r32++;
            }
        } else {
            gF2Polynomial2 = new GF2Polynomial(gF2Polynomial);
            while (r32 < r02) {
                int[] r72 = gF2Polynomial2.value;
                r72[r32] = r72[r32] ^ this.value[r32];
                r32++;
            }
        }
        gF2Polynomial2.zeroUnusedBits();
        return gF2Polynomial2;
    }

    public void xorBit(int r52) throws RuntimeException {
        if (r52 < 0 || r52 > this.len - 1) {
            throw new RuntimeException();
        }
        int[] r02 = this.value;
        int r12 = r52 >>> 5;
        r02[r12] = bitMask[r52 & 31] ^ r02[r12];
    }

    public void xorThisBy(GF2Polynomial gF2Polynomial) {
        for (int r02 = 0; r02 < Math.min(this.blocks, gF2Polynomial.blocks); r02++) {
            int[] r12 = this.value;
            r12[r02] = r12[r02] ^ gF2Polynomial.value[r02];
        }
        zeroUnusedBits();
    }
}
