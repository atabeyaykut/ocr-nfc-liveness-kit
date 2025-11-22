package org.bouncycastle.pqc.crypto.cmce;

import androidx.camera.core.impl.a;
import java.lang.reflect.Array;

/* loaded from: classes2.dex */
class BENES13 extends BENES {
    public BENES13(int r12, int r22, int r32) {
        super(r12, r22, r32);
    }

    public static void layer_ex(long[] jArr, long[] jArr2, int r14) {
        int r142 = 1 << r14;
        int r12 = 0;
        for (int r02 = 0; r02 < 128; r02 += r142 * 2) {
            int r22 = r02;
            while (r22 < r02 + r142) {
                int r32 = r22 + 0;
                long j10 = jArr[r32];
                int r6 = r22 + r142;
                long j11 = (jArr[r6] ^ j10) & jArr2[r12];
                jArr[r32] = j10 ^ j11;
                jArr[r6] = jArr[r6] ^ j11;
                r22++;
                r12++;
            }
        }
    }

    public static void layer_in(long[] jArr, long[] jArr2, int r14) {
        int r142 = 1 << r14;
        int r12 = 0;
        for (int r02 = 0; r02 < 64; r02 += r142 * 2) {
            int r22 = r02;
            while (r22 < r02 + r142) {
                int r32 = r22 + 0;
                long j10 = jArr[r32];
                int r6 = r22 + r142;
                int r92 = r12 + 1;
                long j11 = (jArr[r6] ^ j10) & jArr2[r12];
                jArr[r32] = j10 ^ j11;
                jArr[r6] = jArr[r6] ^ j11;
                int r13 = r22 + 64;
                int r33 = r13 + 0;
                long j12 = jArr[r33];
                int r15 = r13 + r142;
                long j13 = (jArr[r15] ^ j12) & jArr2[r92];
                jArr[r33] = j12 ^ j13;
                jArr[r15] = jArr[r15] ^ j13;
                r22++;
                r12 = r92 + 1;
            }
        }
    }

    public void apply_benes(byte[] bArr, byte[] bArr2, int r15) {
        int r152;
        int r6;
        int r82;
        long[] jArr = new long[128];
        long[] jArr2 = new long[128];
        long[] jArr3 = new long[64];
        long[] jArr4 = new long[64];
        if (r15 == 0) {
            r152 = (this.SYS_T * 2) + 40;
            r6 = 0;
        } else {
            r152 = a.d(this.SYS_T, 2, 40, 12288);
            r6 = -1024;
        }
        for (int r72 = 0; r72 < 64; r72++) {
            int r92 = (r72 * 16) + 0;
            jArr[r72 + 0] = Utils.load8(bArr, r92 + 0);
            jArr[r72 + 64] = Utils.load8(bArr, r92 + 8);
        }
        BENES.transpose_64x64(jArr2, jArr, 0);
        BENES.transpose_64x64(jArr2, jArr, 64);
        int r73 = 0;
        while (true) {
            if (r73 > 6) {
                break;
            }
            for (int r83 = 0; r83 < 64; r83++) {
                jArr3[r83] = Utils.load8(bArr2, r152);
                r152 += 8;
            }
            r152 += r6;
            BENES.transpose_64x64(jArr4, jArr3);
            layer_ex(jArr2, jArr4, r73);
            r73++;
        }
        BENES.transpose_64x64(jArr, jArr2, 0);
        BENES.transpose_64x64(jArr, jArr2, 64);
        for (int r74 = 0; r74 <= 5; r74++) {
            for (int r93 = 0; r93 < 64; r93++) {
                jArr3[r93] = Utils.load8(bArr2, r152);
                r152 += 8;
            }
            r152 += r6;
            layer_in(jArr, jArr3, r74);
        }
        for (int r75 = 4; r75 >= 0; r75--) {
            for (int r94 = 0; r94 < 64; r94++) {
                jArr3[r94] = Utils.load8(bArr2, r152);
                r152 += 8;
            }
            r152 += r6;
            layer_in(jArr, jArr3, r75);
        }
        BENES.transpose_64x64(jArr2, jArr, 0);
        BENES.transpose_64x64(jArr2, jArr, 64);
        for (r82 = 6; r82 >= 0; r82--) {
            for (int r76 = 0; r76 < 64; r76++) {
                jArr3[r76] = Utils.load8(bArr2, r152);
                r152 += 8;
            }
            r152 += r6;
            BENES.transpose_64x64(jArr4, jArr3);
            layer_ex(jArr2, jArr4, r82);
        }
        BENES.transpose_64x64(jArr, jArr2, 0);
        BENES.transpose_64x64(jArr, jArr2, 64);
        for (int r14 = 0; r14 < 64; r14++) {
            int r153 = (r14 * 16) + 0;
            Utils.store8(bArr, r153 + 0, jArr[r14 + 0]);
            Utils.store8(bArr, r153 + 8, jArr[r14 + 64]);
        }
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.BENES
    public void support_gen(short[] sArr, byte[] bArr) {
        int r02 = this.GFBITS;
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, r02, (1 << r02) / 8);
        for (int r32 = 0; r32 < this.GFBITS; r32++) {
            for (int r42 = 0; r42 < (1 << this.GFBITS) / 8; r42++) {
                bArr2[r32][r42] = 0;
            }
        }
        int r33 = 0;
        while (true) {
            int r43 = this.GFBITS;
            if (r33 >= (1 << r43)) {
                break;
            }
            short sBitrev = Utils.bitrev((short) r33, r43);
            for (int r52 = 0; r52 < this.GFBITS; r52++) {
                byte[] bArr3 = bArr2[r52];
                int r72 = r33 / 8;
                bArr3[r72] = (byte) (bArr3[r72] | (((sBitrev >> r52) & 1) << (r33 % 8)));
            }
            r33++;
        }
        for (int r34 = 0; r34 < this.GFBITS; r34++) {
            apply_benes(bArr2[r34], bArr, 0);
        }
        for (int r13 = 0; r13 < this.SYS_N; r13++) {
            sArr[r13] = 0;
            for (int r35 = this.GFBITS - 1; r35 >= 0; r35--) {
                short s7 = (short) (sArr[r13] << 1);
                sArr[r13] = s7;
                sArr[r13] = (short) (s7 | ((bArr2[r35][r13 / 8] >> (r13 % 8)) & 1));
            }
        }
    }
}
