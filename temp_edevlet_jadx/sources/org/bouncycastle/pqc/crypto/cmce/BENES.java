package org.bouncycastle.pqc.crypto.cmce;

import org.bouncycastle.asn1.cmc.BodyPartID;

/* loaded from: classes2.dex */
abstract class BENES {
    private static final long[] TRANSPOSE_MASKS = {6148914691236517205L, 3689348814741910323L, 1085102592571150095L, 71777214294589695L, 281470681808895L, BodyPartID.bodyIdMax};
    protected final int GFBITS;
    protected final int SYS_N;
    protected final int SYS_T;

    public BENES(int r12, int r22, int r32) {
        this.SYS_N = r12;
        this.SYS_T = r22;
        this.GFBITS = r32;
    }

    public static void transpose_64x64(long[] jArr, long[] jArr2) {
        transpose_64x64(jArr, jArr2, 0);
    }

    public static void transpose_64x64(long[] jArr, long[] jArr2, int r45) {
        int r82;
        System.arraycopy(jArr2, r45, jArr, r45, 64);
        int r22 = 5;
        do {
            long j10 = TRANSPOSE_MASKS[r22];
            int r6 = 1 << r22;
            int r72 = r45;
            while (true) {
                r82 = r45 + 64;
                if (r72 >= r82) {
                    break;
                }
                for (int r83 = r72; r83 < r72 + r6; r83 += 4) {
                    int r92 = r83 + 0;
                    long j11 = jArr[r92];
                    int r12 = r83 + 1;
                    long j12 = jArr[r12];
                    int r15 = r83 + 2;
                    long j13 = jArr[r15];
                    int r18 = r83 + 3;
                    long j14 = jArr[r18];
                    int r21 = r83 + r6;
                    int r222 = r21 + 0;
                    long j15 = jArr[r222];
                    int r25 = r21 + 1;
                    long j16 = jArr[r25];
                    int r28 = r21 + 2;
                    long j17 = jArr[r28];
                    int r212 = r21 + 3;
                    long j18 = jArr[r212];
                    long j19 = ((j11 >>> r6) ^ j15) & j10;
                    long j20 = ((j12 >>> r6) ^ j16) & j10;
                    long j21 = ((j13 >>> r6) ^ j17) & j10;
                    long j22 = ((j14 >>> r6) ^ j18) & j10;
                    jArr[r92] = j11 ^ (j19 << r6);
                    jArr[r12] = (j20 << r6) ^ j12;
                    jArr[r15] = j13 ^ (j21 << r6);
                    jArr[r18] = j14 ^ (j22 << r6);
                    jArr[r222] = j15 ^ j19;
                    jArr[r25] = j16 ^ j20;
                    jArr[r28] = j17 ^ j21;
                    jArr[r212] = j18 ^ j22;
                }
                r72 += r6 * 2;
            }
            r22--;
        } while (r22 >= 2);
        do {
            long j23 = TRANSPOSE_MASKS[r22];
            int r42 = 1 << r22;
            for (int r73 = r45; r73 < r82; r73 += r42 * 2) {
                for (int r93 = r73; r93 < r73 + r42; r93++) {
                    int r10 = r93 + 0;
                    long j24 = jArr[r10];
                    int r13 = r93 + r42;
                    long j25 = jArr[r13];
                    long j26 = ((j24 >>> r42) ^ j25) & j23;
                    jArr[r10] = j24 ^ (j26 << r42);
                    jArr[r13] = j25 ^ j26;
                }
            }
            r22--;
        } while (r22 >= 0);
    }

    public abstract void support_gen(short[] sArr, byte[] bArr);
}
