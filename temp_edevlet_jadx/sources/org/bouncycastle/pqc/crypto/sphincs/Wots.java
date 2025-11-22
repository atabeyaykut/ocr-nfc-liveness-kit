package org.bouncycastle.pqc.crypto.sphincs;

import org.bouncycastle.crypto.DataLengthException;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
class Wots {
    static final int WOTS_L = 67;
    static final int WOTS_L1 = 64;
    static final int WOTS_LOGW = 4;
    static final int WOTS_LOG_L = 7;
    static final int WOTS_SIGBYTES = 2144;
    static final int WOTS_W = 16;

    private static void clear(byte[] bArr, int r42, int r52) {
        for (int r12 = 0; r12 != r52; r12++) {
            bArr[r12 + r42] = 0;
        }
    }

    public static void expand_seed(byte[] bArr, int r82, byte[] bArr2, int r10) throws DataLengthException, IllegalArgumentException {
        clear(bArr, r82, WOTS_SIGBYTES);
        Seed.prg(bArr, r82, 2144L, bArr2, r10);
    }

    public static void gen_chain(HashFunctions hashFunctions, byte[] bArr, int r10, byte[] bArr2, int r12, byte[] bArr3, int r14, int r15) {
        for (int r13 = 0; r13 < 32; r13++) {
            bArr[r13 + r10] = bArr2[r13 + r12];
        }
        for (int r02 = 0; r02 < r15 && r02 < 16; r02++) {
            hashFunctions.hash_n_n_mask(bArr, r10, bArr, r10, bArr3, (r02 * 32) + r14);
        }
    }

    public void wots_pkgen(HashFunctions hashFunctions, byte[] bArr, int r11, byte[] bArr2, int r13, byte[] bArr3, int r15) {
        expand_seed(bArr, r11, bArr2, r13);
        for (int r12 = 0; r12 < 67; r12++) {
            int r42 = (r12 * 32) + r11;
            gen_chain(hashFunctions, bArr, r42, bArr, r42, bArr3, r15, 15);
        }
    }

    public void wots_sign(HashFunctions hashFunctions, byte[] bArr, int r17, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws DataLengthException, IllegalArgumentException {
        int[] r22 = new int[67];
        int r42 = 0;
        int r52 = 0;
        while (r42 < 64) {
            byte b10 = bArr2[r42 / 2];
            r22[r42] = b10 & PassportService.SFI_DG15;
            int r6 = (b10 & 255) >>> 4;
            r22[r42 + 1] = r6;
            r52 = (15 - r6) + (15 - r22[r42]) + r52;
            r42 += 2;
        }
        while (r42 < 67) {
            r22[r42] = r52 & 15;
            r52 >>>= 4;
            r42++;
        }
        expand_seed(bArr, r17, bArr3, 0);
        for (int r32 = 0; r32 < 67; r32++) {
            int r10 = (r32 * 32) + r17;
            gen_chain(hashFunctions, bArr, r10, bArr, r10, bArr4, 0, r22[r32]);
        }
    }

    public void wots_verify(HashFunctions hashFunctions, byte[] bArr, byte[] bArr2, int r15, byte[] bArr3, byte[] bArr4) {
        int[] r12 = new int[67];
        int r32 = 0;
        int r42 = 0;
        while (r32 < 64) {
            byte b10 = bArr3[r32 / 2];
            r12[r32] = b10 & PassportService.SFI_DG15;
            int r52 = (b10 & 255) >>> 4;
            r12[r32 + 1] = r52;
            r42 = (15 - r52) + (15 - r12[r32]) + r42;
            r32 += 2;
        }
        while (r32 < 67) {
            r12[r32] = r42 & 15;
            r42 >>>= 4;
            r32++;
        }
        for (int r22 = 0; r22 < 67; r22++) {
            int r53 = r22 * 32;
            int r33 = r12[r22];
            gen_chain(hashFunctions, bArr, r53, bArr2, r15 + r53, bArr4, r33 * 32, 15 - r33);
        }
    }
}
