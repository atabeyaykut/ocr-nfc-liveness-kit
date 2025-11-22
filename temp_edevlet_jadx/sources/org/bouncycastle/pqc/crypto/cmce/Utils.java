package org.bouncycastle.pqc.crypto.cmce;

import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
class Utils {
    public static short bitrev(short s7, int r32) {
        short s10 = (short) (((s7 & 65280) >> 8) | ((s7 & 255) << 8));
        short s11 = (short) (((s10 & 61680) >> 4) | ((s10 & 3855) << 4));
        short s12 = (short) (((s11 & 52428) >> 2) | ((s11 & 13107) << 2));
        short s13 = (short) (((s12 & 43690) >> 1) | ((s12 & 21845) << 1));
        return (short) (r32 == 12 ? s13 >> 4 : s13 >> 3);
    }

    public static int load4(byte[] bArr, int r12) {
        return Pack.littleEndianToInt(bArr, r12);
    }

    public static long load8(byte[] bArr, int r12) {
        return Pack.littleEndianToLong(bArr, r12);
    }

    public static short load_gf(byte[] bArr, int r12, int r22) {
        return (short) (Pack.littleEndianToShort(bArr, r12) & r22);
    }

    public static void store8(byte[] bArr, int r6, long j10) {
        bArr[r6 + 0] = (byte) ((j10 >> 0) & 255);
        bArr[r6 + 1] = (byte) ((j10 >> 8) & 255);
        bArr[r6 + 2] = (byte) ((j10 >> 16) & 255);
        bArr[r6 + 3] = (byte) ((j10 >> 24) & 255);
        bArr[r6 + 4] = (byte) ((j10 >> 32) & 255);
        bArr[r6 + 5] = (byte) ((j10 >> 40) & 255);
        bArr[r6 + 6] = (byte) ((j10 >> 48) & 255);
        bArr[r6 + 7] = (byte) ((j10 >> 56) & 255);
    }

    public static void store_gf(byte[] bArr, int r32, short s7) {
        bArr[r32 + 0] = (byte) (s7 & 255);
        bArr[r32 + 1] = (byte) (s7 >> 8);
    }
}
