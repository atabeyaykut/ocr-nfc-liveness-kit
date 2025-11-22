package org.bouncycastle.math.ec.rfc8032;

import androidx.core.view.PointerIconCompat;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat256;

/* loaded from: classes2.dex */
abstract class Scalar25519 {
    private static final int L0 = -50998291;
    private static final int L1 = 19280294;
    private static final int L2 = 127719000;
    private static final int L3 = -6428113;
    private static final int L4 = 5343;
    private static final long M08L = 255;
    private static final long M28L = 268435455;
    private static final long M32L = 4294967295L;
    private static final int SCALAR_BYTES = 32;
    static final int SIZE = 8;
    private static final int TARGET_LENGTH = 254;
    private static final int[] L = {1559614445, 1477600026, -1560830762, 350157278, 0, 0, 0, 268435456};
    private static final int[] LSq = {-1424848535, -487721339, 580428573, 1745064566, -770181698, 1036971123, 461123738, -1582065343, 1268693629, -889041821, -731974758, 43769659, 0, 0, 0, 16777216};

    public static boolean checkVar(byte[] bArr, int[] r12) {
        decode(bArr, r12);
        return !Nat256.gte(r12, L);
    }

    public static void decode(byte[] bArr, int[] r32) {
        Codec.decode32(bArr, 0, r32, 0, 8);
    }

    public static void getOrderWnafVar(int r12, byte[] bArr) {
        Wnaf.getSignedVar(L, r12, bArr);
    }

    public static void multiply128Var(int[] r42, int[] r52, int[] r6) {
        int[] r12 = new int[12];
        Nat256.mul128(r42, r52, r12);
        if (r52[3] < 0) {
            Nat256.addTo(L, 0, r12, 4, 0);
            Nat256.subFrom(r42, 0, r12, 4, 0);
        }
        byte[] bArr = new byte[48];
        Codec.encode32(r12, 0, 12, bArr, 0);
        decode(reduce384(bArr), r6);
    }

    public static byte[] reduce384(byte[] bArr) {
        long jDecode24 = (Codec.decode24(bArr, 32) << 4) & 4294967295L;
        long jDecode32 = Codec.decode32(bArr, 35) & 4294967295L;
        long jDecode242 = (Codec.decode24(bArr, 39) << 4) & 4294967295L;
        long jDecode322 = Codec.decode32(bArr, 42) & 4294967295L;
        long jDecode16 = ((Codec.decode16(bArr, 46) << 4) & 4294967295L) + (jDecode322 >> 28);
        long j10 = (jDecode322 & M28L) + (jDecode242 >> 28);
        long jDecode323 = ((Codec.decode32(bArr, 21) & 4294967295L) - (jDecode16 * 127719000)) - (j10 * (-6428113));
        long jDecode243 = (((Codec.decode24(bArr, 25) << 4) & 4294967295L) - (jDecode16 * (-6428113))) - (j10 * 5343);
        long j11 = (jDecode242 & M28L) + (jDecode32 >> 28);
        long jDecode244 = (((Codec.decode24(bArr, 11) << 4) & 4294967295L) - (j10 * (-50998291))) - (j11 * 19280294);
        long jDecode324 = (((Codec.decode32(bArr, 14) & 4294967295L) - (jDecode16 * (-50998291))) - (j10 * 19280294)) - (j11 * 127719000);
        long jDecode245 = ((((Codec.decode24(bArr, 18) << 4) & 4294967295L) - (jDecode16 * 19280294)) - (j10 * 127719000)) - (j11 * (-6428113));
        long j12 = (jDecode32 & M28L) + (jDecode24 >> 28);
        long j13 = jDecode24 & M28L;
        long jDecode246 = ((Codec.decode24(bArr, 4) << 4) & 4294967295L) - (j12 * (-50998291));
        long jDecode325 = ((Codec.decode32(bArr, 7) & 4294967295L) - (j11 * (-50998291))) - (j12 * 19280294);
        long j14 = jDecode244 - (j12 * 127719000);
        long j15 = jDecode324 - (j12 * (-6428113));
        long j16 = jDecode245 - (j12 * 5343);
        long jDecode326 = ((Codec.decode32(bArr, 28) & 4294967295L) - (jDecode16 * 5343)) + (jDecode243 >> 28);
        long j17 = jDecode243 & M28L;
        long j18 = j13 + (jDecode326 >> 28);
        long j19 = jDecode326 & M28L;
        long j20 = j19 >>> 27;
        long j21 = j18 + j20;
        long jDecode327 = (Codec.decode32(bArr, 0) & 4294967295L) - (j21 * (-50998291));
        long j22 = (jDecode246 - (j21 * 19280294)) + (jDecode327 >> 28);
        long j23 = jDecode327 & M28L;
        long j24 = (jDecode325 - (j21 * 127719000)) + (j22 >> 28);
        long j25 = j22 & M28L;
        long j26 = (j14 - (j21 * (-6428113))) + (j24 >> 28);
        long j27 = j24 & M28L;
        long j28 = (j15 - (j21 * 5343)) + (j26 >> 28);
        long j29 = j26 & M28L;
        long j30 = j16 + (j28 >> 28);
        long j31 = j28 & M28L;
        long j32 = (jDecode323 - (j11 * 5343)) + (j30 >> 28);
        long j33 = j30 & M28L;
        long j34 = j17 + (j32 >> 28);
        long j35 = j32 & M28L;
        long j36 = j19 + (j34 >> 28);
        long j37 = j34 & M28L;
        long j38 = j36 >> 28;
        long j39 = j36 & M28L;
        long j40 = j38 - j20;
        long j41 = j23 + (j40 & (-50998291));
        long j42 = j25 + (j40 & 19280294) + (j41 >> 28);
        long j43 = j41 & M28L;
        long j44 = j27 + (j40 & 127719000) + (j42 >> 28);
        long j45 = j42 & M28L;
        long j46 = j29 + (j40 & (-6428113)) + (j44 >> 28);
        long j47 = j44 & M28L;
        long j48 = j31 + (j40 & 5343) + (j46 >> 28);
        long j49 = j46 & M28L;
        long j50 = j33 + (j48 >> 28);
        long j51 = j48 & M28L;
        long j52 = j35 + (j50 >> 28);
        long j53 = j50 & M28L;
        long j54 = j37 + (j52 >> 28);
        long j55 = j52 & M28L;
        long j56 = j39 + (j54 >> 28);
        long j57 = j54 & M28L;
        byte[] bArr2 = new byte[64];
        Codec.encode56((j45 << 28) | j43, bArr2, 0);
        Codec.encode56(j47 | (j49 << 28), bArr2, 7);
        Codec.encode56((j53 << 28) | j51, bArr2, 14);
        Codec.encode56((j57 << 28) | j55, bArr2, 21);
        Codec.encode32((int) j56, bArr2, 28);
        return bArr2;
    }

    public static byte[] reduce512(byte[] bArr) {
        long jDecode32 = Codec.decode32(bArr, 49) & 4294967295L;
        long jDecode322 = Codec.decode32(bArr, 56) & 4294967295L;
        long j10 = bArr[63] & M08L;
        long jDecode24 = ((Codec.decode24(bArr, 60) << 4) & 4294967295L) + (jDecode322 >> 28);
        long j11 = jDecode322 & M28L;
        long jDecode323 = (Codec.decode32(bArr, 28) & 4294967295L) - (jDecode24 * (-50998291));
        long jDecode242 = (((Codec.decode24(bArr, 32) << 4) & 4294967295L) - (j10 * (-50998291))) - (jDecode24 * 19280294);
        long jDecode324 = ((Codec.decode32(bArr, 42) & 4294967295L) - (j10 * (-6428113))) - (jDecode24 * 5343);
        long jDecode243 = ((((Codec.decode24(bArr, 39) << 4) & 4294967295L) - (j10 * 127719000)) - (jDecode24 * (-6428113))) - (j11 * 5343);
        long jDecode244 = ((Codec.decode24(bArr, 53) << 4) & 4294967295L) + (jDecode32 >> 28);
        long j12 = jDecode32 & M28L;
        long jDecode325 = ((((Codec.decode32(bArr, 35) & 4294967295L) - (j10 * 19280294)) - (jDecode24 * 127719000)) - (j11 * (-6428113))) - (jDecode244 * 5343);
        long jDecode245 = ((((Codec.decode24(bArr, 25) << 4) & 4294967295L) - (j11 * (-50998291))) - (jDecode244 * 19280294)) - (j12 * 127719000);
        long j13 = ((jDecode242 - (j11 * 127719000)) - (jDecode244 * (-6428113))) - (j12 * 5343);
        long jDecode246 = (((Codec.decode24(bArr, 46) << 4) & 4294967295L) - (j10 * 5343)) + (jDecode324 >> 28);
        long j14 = (jDecode324 & M28L) + (jDecode243 >> 28);
        long jDecode247 = ((Codec.decode24(bArr, 11) << 4) & 4294967295L) - (j14 * (-50998291));
        long jDecode326 = ((Codec.decode32(bArr, 14) & 4294967295L) - (jDecode246 * (-50998291))) - (j14 * 19280294);
        long jDecode248 = ((((Codec.decode24(bArr, 18) << 4) & 4294967295L) - (j12 * (-50998291))) - (jDecode246 * 19280294)) - (j14 * 127719000);
        long jDecode327 = ((((Codec.decode32(bArr, 21) & 4294967295L) - (jDecode244 * (-50998291))) - (j12 * 19280294)) - (jDecode246 * 127719000)) - (j14 * (-6428113));
        long j15 = (jDecode245 - (jDecode246 * (-6428113))) - (j14 * 5343);
        long j16 = (jDecode243 & M28L) + (jDecode325 >> 28);
        long j17 = jDecode325 & M28L;
        long jDecode328 = (Codec.decode32(bArr, 7) & 4294967295L) - (j16 * (-50998291));
        long j18 = jDecode247 - (j16 * 19280294);
        long j19 = jDecode326 - (j16 * 127719000);
        long j20 = jDecode248 - (j16 * (-6428113));
        long j21 = jDecode327 - (j16 * 5343);
        long j22 = j17 + (j13 >> 28);
        long j23 = j13 & M28L;
        long jDecode249 = ((Codec.decode24(bArr, 4) << 4) & 4294967295L) - (j22 * (-50998291));
        long j24 = jDecode328 - (j22 * 19280294);
        long j25 = j18 - (j22 * 127719000);
        long j26 = j19 - (j22 * (-6428113));
        long j27 = j20 - (j22 * 5343);
        long j28 = ((((jDecode323 - (j11 * 19280294)) - (jDecode244 * 127719000)) - (j12 * (-6428113))) - (jDecode246 * 5343)) + (j15 >> 28);
        long j29 = j15 & M28L;
        long j30 = j28 & M28L;
        long j31 = j30 >>> 27;
        long j32 = j23 + (j28 >> 28) + j31;
        long jDecode329 = (Codec.decode32(bArr, 0) & 4294967295L) - (j32 * (-50998291));
        long j33 = (jDecode249 - (j32 * 19280294)) + (jDecode329 >> 28);
        long j34 = jDecode329 & M28L;
        long j35 = (j24 - (j32 * 127719000)) + (j33 >> 28);
        long j36 = j33 & M28L;
        long j37 = (j25 - (j32 * (-6428113))) + (j35 >> 28);
        long j38 = j35 & M28L;
        long j39 = (j26 - (j32 * 5343)) + (j37 >> 28);
        long j40 = j37 & M28L;
        long j41 = j27 + (j39 >> 28);
        long j42 = j39 & M28L;
        long j43 = j21 + (j41 >> 28);
        long j44 = j41 & M28L;
        long j45 = j29 + (j43 >> 28);
        long j46 = j43 & M28L;
        long j47 = j30 + (j45 >> 28);
        long j48 = j45 & M28L;
        long j49 = j47 >> 28;
        long j50 = j47 & M28L;
        long j51 = j49 - j31;
        long j52 = j34 + (j51 & (-50998291));
        long j53 = j36 + (j51 & 19280294) + (j52 >> 28);
        long j54 = j52 & M28L;
        long j55 = j38 + (j51 & 127719000) + (j53 >> 28);
        long j56 = j53 & M28L;
        long j57 = j40 + (j51 & (-6428113)) + (j55 >> 28);
        long j58 = j55 & M28L;
        long j59 = j42 + (j51 & 5343) + (j57 >> 28);
        long j60 = j57 & M28L;
        long j61 = j44 + (j59 >> 28);
        long j62 = j59 & M28L;
        long j63 = j46 + (j61 >> 28);
        long j64 = j61 & M28L;
        long j65 = j48 + (j63 >> 28);
        long j66 = j63 & M28L;
        long j67 = j50 + (j65 >> 28);
        long j68 = j65 & M28L;
        byte[] bArr2 = new byte[32];
        Codec.encode56(j54 | (j56 << 28), bArr2, 0);
        Codec.encode56((j60 << 28) | j58, bArr2, 7);
        Codec.encode56(j62 | (j64 << 28), bArr2, 14);
        Codec.encode56(j66 | (j68 << 28), bArr2, 21);
        Codec.encode32((int) j67, bArr2, 28);
        return bArr2;
    }

    public static boolean reduceBasisVar(int[] r26, int[] r27, int[] r28) {
        int r23;
        int r10;
        int[] r92;
        int[] r22 = new int[16];
        System.arraycopy(LSq, 0, r22, 0, 16);
        int[] r32 = new int[16];
        Nat256.square(r26, r32);
        r32[0] = r32[0] + 1;
        int[] r52 = new int[16];
        int[] r72 = L;
        Nat256.mul(r72, r26, r52);
        int[] r12 = new int[16];
        int[] r82 = new int[4];
        System.arraycopy(r72, 0, r82, 0, 4);
        int[] r93 = new int[4];
        System.arraycopy(r26, 0, r93, 0, 4);
        int[] r02 = new int[4];
        r02[0] = 1;
        int[] r20 = new int[4];
        int[] r21 = r82;
        int[] r15 = r93;
        int bitLengthPositive = ScalarUtil.getBitLengthPositive(15, r32);
        int r73 = PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW;
        int r14 = 15;
        while (bitLengthPositive > 254) {
            int r222 = r73 - 1;
            if (r222 < 0) {
                return false;
            }
            int bitLength = ScalarUtil.getBitLength(r14, r52) - bitLengthPositive;
            int r16 = bitLength & (~(bitLength >> 31));
            if (r52[r14] < 0) {
                r23 = bitLengthPositive;
                ScalarUtil.addShifted_NP(r14, r16, r22, r32, r52, r12);
                int[] r11 = r15;
                ScalarUtil.addShifted_UV(3, r16, r21, r20, r11, r02);
                r92 = r11;
                r10 = r14;
            } else {
                r23 = bitLengthPositive;
                ScalarUtil.subShifted_NP(r14, r16, r22, r32, r52, r12);
                r10 = r14;
                r92 = r15;
                ScalarUtil.subShifted_UV(3, r16, r21, r20, r92, r02);
            }
            if (ScalarUtil.lessThan(r10, r22, r32)) {
                int r74 = r23 >>> 5;
                r14 = r74;
                bitLengthPositive = ScalarUtil.getBitLengthPositive(r74, r22);
                r15 = r21;
                r21 = r92;
                int[] r24 = r20;
                r20 = r02;
                r02 = r24;
                int[] r25 = r32;
                r32 = r22;
                r22 = r25;
            } else {
                r15 = r92;
                r14 = r10;
                bitLengthPositive = r23;
            }
            r73 = r222;
        }
        System.arraycopy(r15, 0, r27, 0, 4);
        System.arraycopy(r02, 0, r28, 0, 4);
        return true;
    }

    public static void toSignedDigits(int r32, int[] r42) {
        Nat.caddTo(8, (~r42[0]) & 1, L, r42);
        Nat.shiftDownBit(8, r42, 1);
    }
}
