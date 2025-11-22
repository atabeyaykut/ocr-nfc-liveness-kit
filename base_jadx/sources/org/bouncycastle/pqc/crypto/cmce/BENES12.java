package org.bouncycastle.pqc.crypto.cmce;

import androidx.core.view.InputDeviceCompat;
import java.lang.reflect.Array;

/* loaded from: classes2.dex */
class BENES12 extends BENES {
    public BENES12(int r12, int r22, int r32) {
        super(r12, r22, r32);
    }

    private void apply_benes(byte[] bArr, byte[] bArr2, int r14) {
        int r142;
        int r6;
        long[] jArr = new long[64];
        long[] jArr2 = new long[64];
        for (int r42 = 0; r42 < 64; r42++) {
            jArr[r42] = Utils.load8(bArr, r42 * 8);
        }
        int r43 = 256;
        if (r14 == 0) {
            r142 = (this.SYS_T * 2) + 40;
        } else {
            r142 = (this.SYS_T * 2) + 40 + (((this.GFBITS * 2) - 2) * 256);
            r43 = InputDeviceCompat.SOURCE_ANY;
        }
        BENES.transpose_64x64(jArr, jArr);
        int r52 = 0;
        while (true) {
            if (r52 > 5) {
                break;
            }
            for (int r62 = 0; r62 < 64; r62++) {
                jArr2[r62] = Utils.load4(bArr2, (r62 * 4) + r142);
            }
            BENES.transpose_64x64(jArr2, jArr2);
            layerBenes(jArr, jArr2, r52);
            r142 += r43;
            r52++;
        }
        BENES.transpose_64x64(jArr, jArr);
        for (int r53 = 0; r53 <= 5; r53++) {
            for (int r82 = 0; r82 < 32; r82++) {
                jArr2[r82] = Utils.load8(bArr2, (r82 * 8) + r142);
            }
            layerBenes(jArr, jArr2, r53);
            r142 += r43;
        }
        for (int r54 = 4; r54 >= 0; r54--) {
            for (int r83 = 0; r83 < 32; r83++) {
                jArr2[r83] = Utils.load8(bArr2, (r83 * 8) + r142);
            }
            layerBenes(jArr, jArr2, r54);
            r142 += r43;
        }
        BENES.transpose_64x64(jArr, jArr);
        for (r6 = 5; r6 >= 0; r6--) {
            for (int r55 = 0; r55 < 64; r55++) {
                jArr2[r55] = Utils.load4(bArr2, (r55 * 4) + r142);
            }
            BENES.transpose_64x64(jArr2, jArr2);
            layerBenes(jArr, jArr2, r6);
            r142 += r43;
        }
        BENES.transpose_64x64(jArr, jArr);
        for (int r32 = 0; r32 < 64; r32++) {
            Utils.store8(bArr, r32 * 8, jArr[r32]);
        }
    }

    public static void layerBenes(long[] jArr, long[] jArr2, int r14) {
        int r142 = 1 << r14;
        int r12 = 0;
        for (int r02 = 0; r02 < 64; r02 += r142 * 2) {
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
