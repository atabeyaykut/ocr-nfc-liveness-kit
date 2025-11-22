package org.bouncycastle.math.raw;

import androidx.core.view.MotionEventCompat;

/* loaded from: classes2.dex */
public class Interleave {
    private static final long M32 = 1431655765;
    private static final long M64 = 6148914691236517205L;
    private static final long M64R = -6148914691236517206L;

    public static int expand16to32(int r12) {
        int r13 = r12 & 65535;
        int r14 = (r13 | (r13 << 8)) & 16711935;
        int r15 = (r14 | (r14 << 4)) & 252645135;
        int r16 = (r15 | (r15 << 2)) & 858993459;
        return (r16 | (r16 << 1)) & 1431655765;
    }

    public static long expand32to64(int r6) {
        return (((r6 >>> 1) & M32) << 32) | (M32 & Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(r6, MotionEventCompat.ACTION_POINTER_INDEX_MASK, 8), 15728880, 4), 202116108, 2), 572662306, 1));
    }

    public static void expand64To128(long j10, long[] jArr, int r82) {
        long jBitPermuteStep = Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(j10, 4294901760L, 16), 280375465148160L, 8), 67555025218437360L, 4), 868082074056920076L, 2), 2459565876494606882L, 1);
        jArr[r82] = jBitPermuteStep & M64;
        jArr[r82 + 1] = (jBitPermuteStep >>> 1) & M64;
    }

    public static void expand64To128(long[] jArr, int r42, int r52, long[] jArr2, int r72) {
        for (int r02 = 0; r02 < r52; r02++) {
            expand64To128(jArr[r42 + r02], jArr2, r72);
            r72 += 2;
        }
    }

    public static void expand64To128Rev(long j10, long[] jArr, int r82) {
        long jBitPermuteStep = Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(j10, 4294901760L, 16), 280375465148160L, 8), 67555025218437360L, 4), 868082074056920076L, 2), 2459565876494606882L, 1);
        jArr[r82] = jBitPermuteStep & M64R;
        jArr[r82 + 1] = (jBitPermuteStep << 1) & M64R;
    }

    public static int expand8to16(int r12) {
        int r13 = r12 & 255;
        int r14 = (r13 | (r13 << 4)) & 3855;
        int r15 = (r14 | (r14 << 2)) & 13107;
        return (r15 | (r15 << 1)) & 21845;
    }

    public static int shuffle(int r22) {
        return Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(r22, MotionEventCompat.ACTION_POINTER_INDEX_MASK, 8), 15728880, 4), 202116108, 2), 572662306, 1);
    }

    public static long shuffle(long j10) {
        return Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(j10, 4294901760L, 16), 280375465148160L, 8), 67555025218437360L, 4), 868082074056920076L, 2), 2459565876494606882L, 1);
    }

    public static int shuffle2(int r22) {
        return Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(r22, 11141290, 7), 52428, 14), 15728880, 4), MotionEventCompat.ACTION_POINTER_INDEX_MASK, 8);
    }

    public static long shuffle2(long j10) {
        return Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(j10, 4278255360L, 24), 57421771435671756L, 6), 264913582878960L, 12), 723401728380766730L, 3);
    }

    public static long shuffle3(long j10) {
        return Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(j10, 47851476196393130L, 7), 225176545447116L, 14), 4042322160L, 28);
    }

    public static int unshuffle(int r22) {
        return Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(r22, 572662306, 1), 202116108, 2), 15728880, 4), MotionEventCompat.ACTION_POINTER_INDEX_MASK, 8);
    }

    public static long unshuffle(long j10) {
        return Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(j10, 2459565876494606882L, 1), 868082074056920076L, 2), 67555025218437360L, 4), 280375465148160L, 8), 4294901760L, 16);
    }

    public static int unshuffle2(int r22) {
        return Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(r22, MotionEventCompat.ACTION_POINTER_INDEX_MASK, 8), 15728880, 4), 52428, 14), 11141290, 7);
    }

    public static long unshuffle2(long j10) {
        return Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(j10, 723401728380766730L, 3), 264913582878960L, 12), 57421771435671756L, 6), 4278255360L, 24);
    }

    public static long unshuffle3(long j10) {
        return shuffle3(j10);
    }
}
