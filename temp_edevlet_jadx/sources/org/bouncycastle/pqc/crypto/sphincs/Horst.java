package org.bouncycastle.pqc.crypto.sphincs;

import androidx.camera.core.impl.a;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.bouncycastle.crypto.DataLengthException;

/* loaded from: classes2.dex */
class Horst {
    static final int HORST_K = 32;
    static final int HORST_LOGT = 16;
    static final int HORST_SIGBYTES = 13312;
    static final int HORST_SKBYTES = 32;
    static final int HORST_T = 65536;
    static final int N_MASKS = 32;

    public static void expand_seed(byte[] bArr, byte[] bArr2) throws DataLengthException, IllegalArgumentException {
        Seed.prg(bArr, 0, 2097152L, bArr2, 0);
    }

    public static int horst_sign(HashFunctions hashFunctions, byte[] bArr, int r23, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) throws DataLengthException, IllegalArgumentException {
        byte[] bArr6 = new byte[2097152];
        byte[] bArr7 = new byte[4194272];
        expand_seed(bArr6, bArr3);
        for (int r22 = 0; r22 < 65536; r22++) {
            hashFunctions.hash_n_n(bArr7, (65535 + r22) * 32, bArr6, r22 * 32);
        }
        for (int r13 = 0; r13 < 16; r13++) {
            int r24 = 16 - r13;
            long j10 = (1 << r24) - 1;
            int r82 = 1 << (r24 - 1);
            long j11 = r82 - 1;
            int r52 = 0;
            while (r52 < r82) {
                hashFunctions.hash_2n_n_mask(bArr7, (int) ((r52 + j11) * 32), bArr7, (int) (((r52 * 2) + j10) * 32), bArr4, r13 * 2 * 32);
                r52++;
                r82 = r82;
                j11 = j11;
            }
        }
        int r25 = r23;
        int r42 = 2016;
        while (r42 < 4064) {
            bArr[r25] = bArr7[r42];
            r42++;
            r25++;
        }
        for (int r43 = 0; r43 < 32; r43++) {
            int r53 = r43 * 2;
            int r6 = (bArr5[r53] & 255) + ((bArr5[r53 + 1] & 255) << 8);
            int r54 = 0;
            while (r54 < 32) {
                bArr[r25] = bArr6[(r6 * 32) + r54];
                r54++;
                r25++;
            }
            int r62 = r6 + 65535;
            for (int r55 = 0; r55 < 10; r55++) {
                int r63 = (r62 & 1) != 0 ? r62 + 1 : r62 - 1;
                int r72 = 0;
                while (r72 < 32) {
                    bArr[r25] = bArr7[(r63 * 32) + r72];
                    r72++;
                    r25++;
                }
                r62 = (r63 - 1) / 2;
            }
        }
        for (int r92 = 0; r92 < 32; r92++) {
            bArr2[r92] = bArr7[r92];
        }
        return HORST_SIGBYTES;
    }

    public static int horst_verify(HashFunctions hashFunctions, byte[] bArr, byte[] bArr2, int r20, byte[] bArr3, byte[] bArr4) {
        byte[] bArr5 = new byte[1024];
        int r02 = r20 + 2048;
        int r12 = 0;
        while (r12 < 32) {
            int r13 = r12 * 2;
            int r22 = (bArr4[r13] & 255) + ((bArr4[r13 + 1] & 255) << 8);
            if ((r22 & 1) == 0) {
                hashFunctions.hash_n_n(bArr5, 0, bArr2, r02);
                for (int r14 = 0; r14 < 32; r14++) {
                    bArr5[r14 + 32] = bArr2[r02 + 32 + r14];
                }
            } else {
                hashFunctions.hash_n_n(bArr5, 32, bArr2, r02);
                for (int r15 = 0; r15 < 32; r15++) {
                    bArr5[r15] = bArr2[r02 + 32 + r15];
                }
            }
            int r132 = r02 + 64;
            int r142 = 1;
            while (r142 < 10) {
                int r16 = r22 >>> 1;
                if ((r16 & 1) == 0) {
                    hashFunctions.hash_2n_n_mask(bArr5, 0, bArr5, 0, bArr3, (r142 - 1) * 2 * 32);
                    for (int r03 = 0; r03 < 32; r03++) {
                        bArr5[r03 + 32] = bArr2[r132 + r03];
                    }
                } else {
                    hashFunctions.hash_2n_n_mask(bArr5, 32, bArr5, 0, bArr3, (r142 - 1) * 2 * 32);
                    for (int r04 = 0; r04 < 32; r04++) {
                        bArr5[r04] = bArr2[r132 + r04];
                    }
                }
                r132 += 32;
                r142++;
                r22 = r16;
            }
            int r143 = r22 >>> 1;
            hashFunctions.hash_2n_n_mask(bArr5, 0, bArr5, 0, bArr3, 576);
            for (int r05 = 0; r05 < 32; r05++) {
                if (bArr2[a.d(r143, 32, r20, r05)] != bArr5[r05]) {
                    for (int r06 = 0; r06 < 32; r06++) {
                        bArr[r06] = 0;
                    }
                    return -1;
                }
            }
            r12++;
            r02 = r132;
        }
        for (int r122 = 0; r122 < 32; r122++) {
            hashFunctions.hash_2n_n_mask(bArr5, r122 * 32, bArr2, (r122 * 2 * 32) + r20, bArr3, 640);
        }
        for (int r82 = 0; r82 < 16; r82++) {
            hashFunctions.hash_2n_n_mask(bArr5, r82 * 32, bArr5, r82 * 2 * 32, bArr3, TypedValues.TransitionType.TYPE_AUTO_TRANSITION);
        }
        for (int r83 = 0; r83 < 8; r83++) {
            hashFunctions.hash_2n_n_mask(bArr5, r83 * 32, bArr5, r83 * 2 * 32, bArr3, 768);
        }
        for (int r84 = 0; r84 < 4; r84++) {
            hashFunctions.hash_2n_n_mask(bArr5, r84 * 32, bArr5, r84 * 2 * 32, bArr3, 832);
        }
        for (int r85 = 0; r85 < 2; r85++) {
            hashFunctions.hash_2n_n_mask(bArr5, r85 * 32, bArr5, r85 * 2 * 32, bArr3, 896);
        }
        hashFunctions.hash_2n_n_mask(bArr, 0, bArr5, 0, bArr3, 960);
        return 0;
    }
}
