package org.bouncycastle.pqc.crypto.frodo;

import androidx.camera.camera2.internal.c;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
class FrodoEngine {
    private static final int len_chi = 16;
    private static final int len_chi_bytes = 2;
    private static final int len_seedA = 128;
    private static final int len_seedA_bytes = 16;
    private static final int len_z = 128;
    private static final int len_z_bytes = 16;
    private static final int mbar = 8;
    static final int nbar = 8;
    private final int B;
    private final int D;
    private final short[] T_chi;
    private final Xof digest;
    private final FrodoMatrixGenerator gen;
    private final int len_ct_bytes;
    private final int len_k;
    private final int len_k_bytes;
    private final int len_mu;
    private final int len_mu_bytes;
    private final int len_pk_bytes;
    private final int len_pkh;
    private final int len_pkh_bytes;
    private final int len_s;
    private final int len_s_bytes;
    private final int len_seedSE;
    private final int len_seedSE_bytes;
    private final int len_sk_bytes;
    private final int len_ss;
    private final int len_ss_bytes;

    /* renamed from: n, reason: collision with root package name */
    private final int f11878n;

    /* renamed from: q, reason: collision with root package name */
    private final int f11879q;

    public FrodoEngine(int r32, int r42, int r52, short[] sArr, Xof xof, FrodoMatrixGenerator frodoMatrixGenerator) {
        this.f11878n = r32;
        this.D = r42;
        this.f11879q = 1 << r42;
        this.B = r52;
        int r53 = r52 * 8 * 8;
        this.len_mu = r53;
        this.len_seedSE = r53;
        this.len_s = r53;
        this.len_k = r53;
        this.len_pkh = r53;
        this.len_ss = r53;
        this.len_mu_bytes = r53 / 8;
        this.len_seedSE_bytes = r53 / 8;
        int r02 = r53 / 8;
        this.len_s_bytes = r02;
        this.len_k_bytes = r53 / 8;
        int r12 = r53 / 8;
        this.len_pkh_bytes = r12;
        this.len_ss_bytes = r53 / 8;
        int r54 = ((r42 * r32) * 8) / 8;
        this.len_ct_bytes = (((r42 * 8) * 8) / 8) + r54;
        int r55 = r54 + 16;
        this.len_pk_bytes = r55;
        this.len_sk_bytes = (r32 * 2 * 8) + r12 + r02 + r55;
        this.T_chi = sArr;
        this.digest = xof;
        this.gen = frodoMatrixGenerator;
    }

    private byte[] ctselect(byte[] bArr, byte[] bArr2, short s7) {
        byte[] bArr3 = new byte[bArr.length];
        for (int r12 = 0; r12 < bArr.length; r12++) {
            bArr3[r12] = (byte) (((~s7) & bArr[r12] & 255) | (bArr2[r12] & s7 & 255));
        }
        return bArr3;
    }

    private short ctverify(short[] sArr, short[] sArr2, short[] sArr3, short[] sArr4) {
        short s7 = 0;
        for (short s10 = 0; s10 < sArr.length; s10 = (short) (s10 + 1)) {
            s7 = (short) (s7 | (sArr[s10] ^ sArr3[s10]));
        }
        for (short s11 = 0; s11 < sArr2.length; s11 = (short) (s11 + 1)) {
            s7 = (short) ((sArr2[s11] ^ sArr4[s11]) | s7);
        }
        return s7 == 0 ? (short) 0 : (short) -1;
    }

    private byte[] decode(short[] sArr) {
        int r12 = this.B;
        short s7 = (short) ((1 << r12) - 1);
        short s10 = (short) ((1 << this.D) - 1);
        byte[] bArr = new byte[r12 * 8];
        int r82 = 0;
        for (int r72 = 0; r72 < 8; r72++) {
            long j10 = 0;
            for (int r11 = 0; r11 < 8; r11++) {
                int r122 = sArr[r82] & s10;
                int r13 = this.D;
                j10 |= (((short) ((r122 + (1 << ((r13 - r14) - 1))) >> (r13 - r14))) & s7) << (this.B * r11);
                r82++;
            }
            int r112 = 0;
            while (true) {
                int r123 = this.B;
                if (r112 < r123) {
                    bArr[(r123 * r72) + r112] = (byte) ((j10 >> (r112 * 8)) & 255);
                    r112++;
                }
            }
        }
        return bArr;
    }

    private short[] encode(byte[] bArr) {
        int r10;
        short[] sArr = new short[64];
        int r42 = 0;
        byte b10 = 1;
        for (int r32 = 0; r32 < 8; r32++) {
            for (int r72 = 0; r72 < 8; r72++) {
                int r82 = 0;
                int r92 = 0;
                while (true) {
                    r10 = this.B;
                    if (r82 < r10) {
                        r92 += (1 << r82) * ((bArr[r42] & b10) == b10 ? 1 : 0);
                        b10 = (byte) (b10 << 1);
                        if (b10 == 0) {
                            r42++;
                            b10 = 1;
                        }
                        r82++;
                    }
                }
                sArr[(r32 * 8) + r72] = (short) ((this.f11879q / (1 << r10)) * r92);
            }
        }
        return sArr;
    }

    private short[] matrix_add(short[] sArr, short[] sArr2, int r11, int r12) {
        int r02 = this.f11879q - 1;
        short[] sArr3 = new short[r11 * r12];
        for (int r32 = 0; r32 < r11; r32++) {
            for (int r42 = 0; r42 < r12; r42++) {
                int r52 = (r32 * r12) + r42;
                sArr3[r52] = (short) ((sArr[r52] + sArr2[r52]) & r02);
            }
        }
        return sArr3;
    }

    private short[] matrix_mul(short[] sArr, int r10, int r11, short[] sArr2, int r13, int r14) {
        int r132 = this.f11879q - 1;
        short[] sArr3 = new short[r10 * r14];
        for (int r22 = 0; r22 < r10; r22++) {
            for (int r32 = 0; r32 < r14; r32++) {
                int r52 = 0;
                for (int r42 = 0; r42 < r11; r42++) {
                    r52 += sArr[(r22 * r11) + r42] * sArr2[(r42 * r14) + r32];
                }
                sArr3[(r22 * r14) + r32] = (short) (r52 & r132);
            }
        }
        return sArr3;
    }

    private short[] matrix_sub(short[] sArr, short[] sArr2, int r11, int r12) {
        int r02 = this.f11879q - 1;
        short[] sArr3 = new short[r11 * r12];
        for (int r32 = 0; r32 < r11; r32++) {
            for (int r42 = 0; r42 < r12; r42++) {
                int r52 = (r32 * r12) + r42;
                sArr3[r52] = (short) ((sArr[r52] - sArr2[r52]) & r02);
            }
        }
        return sArr3;
    }

    private short[] matrix_transpose(short[] sArr, int r82, int r92) {
        short[] sArr2 = new short[r82 * r92];
        for (int r22 = 0; r22 < r92; r22++) {
            for (int r32 = 0; r32 < r82; r32++) {
                sArr2[(r22 * r82) + r32] = sArr[(r32 * r92) + r22];
            }
        }
        return sArr2;
    }

    private byte[] pack(short[] sArr) {
        int length = sArr.length;
        int r32 = (this.D * length) / 8;
        byte[] bArr = new byte[r32];
        short s7 = 0;
        short s10 = 0;
        byte b10 = 0;
        short s11 = 0;
        while (s7 < r32 && (s10 < length || (s10 == length && b10 > 0))) {
            byte b11 = 0;
            while (b11 < 8) {
                int r12 = 8 - b11;
                int r13 = Math.min(r12, (int) b10);
                int r92 = b10 - r13;
                bArr[s7] = (byte) (bArr[s7] + (((byte) (((short) ((1 << r13) - 1)) & (s11 >> r92))) << (r12 - r13)));
                b11 = (byte) (b11 + r13);
                b10 = (byte) r92;
                if (b10 == 0) {
                    if (s10 >= length) {
                        break;
                    }
                    short s12 = sArr[s10];
                    s10 = (short) (s10 + 1);
                    s11 = s12;
                    b10 = (byte) this.D;
                }
            }
            if (b11 == 8) {
                s7 = (short) (s7 + 1);
            }
        }
        return bArr;
    }

    private short sample(short s7) {
        int r72 = s7 & HPKE.aead_EXPORT_ONLY;
        short s10 = (short) (r72 >>> 1);
        int r22 = 0;
        short s11 = 0;
        while (true) {
            short[] sArr = this.T_chi;
            if (r22 >= sArr.length) {
                break;
            }
            if (s10 > sArr[r22]) {
                s11 = (short) (s11 + 1);
            }
            r22++;
        }
        return r72 % 2 == 1 ? (short) ((s11 * (-1)) & 65535) : s11;
    }

    private short[] sample_matrix(short[] sArr, int r82, int r92, int r10) {
        short[] sArr2 = new short[r92 * r10];
        for (int r22 = 0; r22 < r92; r22++) {
            for (int r32 = 0; r32 < r10; r32++) {
                int r42 = (r22 * r10) + r32;
                sArr2[r42] = sample(sArr[r42 + r82]);
            }
        }
        return sArr2;
    }

    private short[] unpack(byte[] bArr, int r18, int r19) {
        int r22 = r18 * r19;
        short[] sArr = new short[r22];
        short s7 = 0;
        short s10 = 0;
        byte b10 = 0;
        byte b11 = 0;
        while (s7 < r22 && (s10 < bArr.length || (s10 == bArr.length && b10 > 0))) {
            byte b12 = 0;
            while (true) {
                int r10 = this.D;
                if (b12 >= r10) {
                    break;
                }
                int r102 = Math.min(r10 - b12, (int) b10);
                short s11 = (short) (((1 << r102) - 1) & 65535);
                sArr[s7] = (short) (((sArr[s7] & HPKE.aead_EXPORT_ONLY) + ((((byte) ((((b11 & 255) >>> ((b10 & 255) - r102)) & (s11 & HPKE.aead_EXPORT_ONLY)) & 255)) & 255) << ((this.D - (b12 & 255)) - r102))) & 65535);
                b12 = (byte) (b12 + r102);
                byte b13 = (byte) (b10 - r102);
                byte b14 = (byte) ((~(s11 << b13)) & b11);
                if (b13 != 0) {
                    b11 = b14;
                    b10 = b13;
                } else {
                    if (s10 >= bArr.length) {
                        b11 = b14;
                        b10 = b13;
                        break;
                    }
                    byte b15 = bArr[s10];
                    s10 = (short) (s10 + 1);
                    b10 = 8;
                    b11 = b15;
                }
            }
            if (b12 == this.D) {
                s7 = (short) (s7 + 1);
            }
        }
        return sArr;
    }

    public int getCipherTextSize() {
        return this.len_ct_bytes;
    }

    public int getPrivateKeySize() {
        return this.len_sk_bytes;
    }

    public int getPublicKeySize() {
        return this.len_pk_bytes;
    }

    public int getSessionKeySize() {
        return this.len_ss_bytes;
    }

    public void kem_dec(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int r22 = c.a(this.f11878n * 8, this.D, 8, 0);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, 0, r22);
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr2, r22, ((this.D * 64) / 8) + r22);
        int r02 = this.len_s_bytes + 0;
        byte[] bArrCopyOfRange3 = Arrays.copyOfRange(bArr3, 0, r02);
        int r23 = r02 + 16;
        byte[] bArrCopyOfRange4 = Arrays.copyOfRange(bArr3, r02, r23);
        int r03 = (((this.D * this.f11878n) * 8) / 8) + r23;
        byte[] bArrCopyOfRange5 = Arrays.copyOfRange(bArr3, r23, r03);
        int r24 = (((this.f11878n * 8) * 16) / 8) + r03;
        byte[] bArrCopyOfRange6 = Arrays.copyOfRange(bArr3, r03, r24);
        short[] sArr = new short[this.f11878n * 8];
        for (int r42 = 0; r42 < 8; r42++) {
            int r52 = 0;
            while (true) {
                int r6 = this.f11878n;
                if (r52 < r6) {
                    sArr[(r42 * r6) + r52] = Pack.littleEndianToShort(bArrCopyOfRange6, (r52 * 2) + (r6 * r42 * 2));
                    r52++;
                }
            }
        }
        short[] sArrMatrix_transpose = matrix_transpose(sArr, 8, this.f11878n);
        byte[] bArrCopyOfRange7 = Arrays.copyOfRange(bArr3, r24, this.len_pkh_bytes + r24);
        short[] sArrUnpack = unpack(bArrCopyOfRange, 8, this.f11878n);
        short[] sArrUnpack2 = unpack(bArrCopyOfRange2, 8, 8);
        int r53 = this.f11878n;
        byte[] bArrDecode = decode(matrix_sub(sArrUnpack2, matrix_mul(sArrUnpack, 8, r53, sArrMatrix_transpose, r53, 8), 8, 8));
        byte[] bArr4 = new byte[this.len_seedSE_bytes + this.len_k_bytes];
        this.digest.update(bArrCopyOfRange7, 0, this.len_pkh_bytes);
        this.digest.update(bArrDecode, 0, this.len_mu_bytes);
        this.digest.doFinal(bArr4, 0, this.len_seedSE_bytes + this.len_k_bytes);
        int r12 = this.len_seedSE_bytes;
        byte[] bArrCopyOfRange8 = Arrays.copyOfRange(bArr4, r12, this.len_k_bytes + r12);
        int r13 = ((this.f11878n * 16) + 64) * 2;
        byte[] bArr5 = new byte[r13];
        this.digest.update((byte) -106);
        this.digest.update(bArr4, 0, this.len_seedSE_bytes);
        this.digest.doFinal(bArr5, 0, r13);
        int r04 = (this.f11878n * 16) + 64;
        short[] sArr2 = new short[r04];
        for (int r14 = 0; r14 < r04; r14++) {
            sArr2[r14] = Pack.littleEndianToShort(bArr5, r14 * 2);
        }
        short[] sArrSample_matrix = sample_matrix(sArr2, 0, 8, this.f11878n);
        int r05 = this.f11878n;
        short[] sArrSample_matrix2 = sample_matrix(sArr2, r05 * 8, 8, r05);
        short[] sArrGenMatrix = this.gen.genMatrix(bArrCopyOfRange4);
        int r32 = this.f11878n;
        short[] sArrMatrix_add = matrix_add(matrix_mul(sArrSample_matrix, 8, r32, sArrGenMatrix, r32, r32), sArrSample_matrix2, 8, this.f11878n);
        short[] sArrSample_matrix3 = sample_matrix(sArr2, this.f11878n * 16, 8, 8);
        short[] sArrUnpack3 = unpack(bArrCopyOfRange5, this.f11878n, 8);
        int r54 = this.f11878n;
        byte[] bArrCtselect = ctselect(bArrCopyOfRange8, bArrCopyOfRange3, ctverify(sArrUnpack, sArrUnpack2, sArrMatrix_add, matrix_add(matrix_add(matrix_mul(sArrSample_matrix, 8, r54, sArrUnpack3, r54, 8), sArrSample_matrix3, 8, 8), encode(bArrDecode), 8, 8)));
        this.digest.update(bArrCopyOfRange, 0, bArrCopyOfRange.length);
        this.digest.update(bArrCopyOfRange2, 0, bArrCopyOfRange2.length);
        this.digest.update(bArrCtselect, 0, bArrCtselect.length);
        this.digest.doFinal(bArr, 0, this.len_ss_bytes);
    }

    public void kem_enc(byte[] bArr, byte[] bArr2, byte[] bArr3, SecureRandom secureRandom) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr3, 0, 16);
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr3, 16, this.len_pk_bytes);
        byte[] bArr4 = new byte[this.len_mu_bytes];
        secureRandom.nextBytes(bArr4);
        byte[] bArr5 = new byte[this.len_pkh_bytes];
        this.digest.update(bArr3, 0, this.len_pk_bytes);
        this.digest.doFinal(bArr5, 0, this.len_pkh_bytes);
        byte[] bArr6 = new byte[this.len_seedSE + this.len_k];
        this.digest.update(bArr5, 0, this.len_pkh_bytes);
        this.digest.update(bArr4, 0, this.len_mu_bytes);
        this.digest.doFinal(bArr6, 0, this.len_seedSE_bytes + this.len_k_bytes);
        byte[] bArrCopyOfRange3 = Arrays.copyOfRange(bArr6, 0, this.len_seedSE_bytes);
        int r32 = this.len_seedSE_bytes;
        byte[] bArrCopyOfRange4 = Arrays.copyOfRange(bArr6, r32, this.len_k_bytes + r32);
        int r02 = ((this.f11878n * 16) + 64) * 2;
        byte[] bArr7 = new byte[r02];
        this.digest.update((byte) -106);
        this.digest.update(bArrCopyOfRange3, 0, bArrCopyOfRange3.length);
        this.digest.doFinal(bArr7, 0, r02);
        int r03 = r02 / 2;
        short[] sArr = new short[r03];
        for (int r22 = 0; r22 < r03; r22++) {
            sArr[r22] = Pack.littleEndianToShort(bArr7, r22 * 2);
        }
        short[] sArrSample_matrix = sample_matrix(sArr, 0, 8, this.f11878n);
        int r04 = this.f11878n;
        short[] sArrSample_matrix2 = sample_matrix(sArr, r04 * 8, 8, r04);
        short[] sArrGenMatrix = this.gen.genMatrix(bArrCopyOfRange);
        int r52 = this.f11878n;
        byte[] bArrPack = pack(matrix_add(matrix_mul(sArrSample_matrix, 8, r52, sArrGenMatrix, r52, r52), sArrSample_matrix2, 8, this.f11878n));
        short[] sArrSample_matrix3 = sample_matrix(sArr, this.f11878n * 16, 8, 8);
        short[] sArrUnpack = unpack(bArrCopyOfRange2, this.f11878n, 8);
        int r53 = this.f11878n;
        byte[] bArrPack2 = pack(matrix_add(matrix_add(matrix_mul(sArrSample_matrix, 8, r53, sArrUnpack, r53, 8), sArrSample_matrix3, 8, 8), encode(bArr4), 8, 8));
        System.arraycopy(Arrays.concatenate(bArrPack, bArrPack2), 0, bArr, 0, this.len_ct_bytes);
        this.digest.update(bArrPack, 0, bArrPack.length);
        this.digest.update(bArrPack2, 0, bArrPack2.length);
        this.digest.update(bArrCopyOfRange4, 0, this.len_k_bytes);
        this.digest.doFinal(bArr2, 0, this.len_s_bytes);
    }

    public void kem_keypair(byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        byte[] bArr3 = new byte[this.len_s_bytes + this.len_seedSE_bytes + 16];
        secureRandom.nextBytes(bArr3);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr3, 0, this.len_s_bytes);
        int r22 = this.len_s_bytes;
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr3, r22, this.len_seedSE_bytes + r22);
        int r32 = this.len_s_bytes;
        int r42 = this.len_seedSE_bytes;
        byte[] bArrCopyOfRange3 = Arrays.copyOfRange(bArr3, r32 + r42, r32 + r42 + 16);
        byte[] bArr4 = new byte[16];
        this.digest.update(bArrCopyOfRange3, 0, bArrCopyOfRange3.length);
        this.digest.doFinal(bArr4, 0, 16);
        short[] sArrGenMatrix = this.gen.genMatrix(bArr4);
        int r02 = this.f11878n * 2 * 8 * 2;
        byte[] bArr5 = new byte[r02];
        this.digest.update((byte) 95);
        this.digest.update(bArrCopyOfRange2, 0, bArrCopyOfRange2.length);
        this.digest.doFinal(bArr5, 0, r02);
        int r03 = this.f11878n * 2 * 8;
        short[] sArr = new short[r03];
        for (int r43 = 0; r43 < r03; r43++) {
            sArr[r43] = Pack.littleEndianToShort(bArr5, r43 * 2);
        }
        short[] sArrSample_matrix = sample_matrix(sArr, 0, 8, this.f11878n);
        short[] sArrMatrix_transpose = matrix_transpose(sArrSample_matrix, 8, this.f11878n);
        int r04 = this.f11878n;
        short[] sArrSample_matrix2 = sample_matrix(sArr, r04 * 8, r04, 8);
        int r52 = this.f11878n;
        System.arraycopy(Arrays.concatenate(bArr4, pack(matrix_add(matrix_mul(sArrGenMatrix, r52, r52, sArrMatrix_transpose, r52, 8), sArrSample_matrix2, this.f11878n, 8))), 0, bArr, 0, this.len_pk_bytes);
        int r05 = this.len_pkh_bytes;
        byte[] bArr6 = new byte[r05];
        this.digest.update(bArr, 0, bArr.length);
        this.digest.doFinal(bArr6, 0, r05);
        System.arraycopy(Arrays.concatenate(bArrCopyOfRange, bArr), 0, bArr2, 0, this.len_s_bytes + this.len_pk_bytes);
        for (int r06 = 0; r06 < 8; r06++) {
            int r23 = 0;
            while (true) {
                int r33 = this.f11878n;
                if (r23 < r33) {
                    System.arraycopy(Pack.shortToLittleEndian(sArrSample_matrix[(r33 * r06) + r23]), 0, bArr2, (r23 * 2) + (this.f11878n * r06 * 2) + this.len_s_bytes + this.len_pk_bytes, 2);
                    r23++;
                }
            }
        }
        int r07 = this.len_sk_bytes;
        int r24 = this.len_pkh_bytes;
        System.arraycopy(bArr6, 0, bArr2, r07 - r24, r24);
    }
}
