package org.bouncycastle.pqc.crypto.falcon;

import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.crypto.hpke.HPKE;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
class FalconCodec {
    final byte[] max_fg_bits = {0, 8, 8, 8, 8, 8, 7, 7, 6, 6, 5};
    final byte[] max_FG_bits = {0, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8};
    final byte[] max_sig_bits = {0, 10, PassportService.SFI_DG11, PassportService.SFI_DG11, PassportService.SFI_DG12, PassportService.SFI_DG12, PassportService.SFI_DG12, PassportService.SFI_DG12, PassportService.SFI_DG12, PassportService.SFI_DG12, PassportService.SFI_DG12};

    public int comp_decode(short[] sArr, int r11, int r12, byte[] bArr, int r14, int r15) {
        int r122 = 1 << r12;
        int r32 = 0;
        int r42 = 0;
        int r52 = 0;
        for (int r22 = 0; r22 < r122; r22++) {
            if (r52 >= r15) {
                return 0;
            }
            r32 = (r32 << 8) | (bArr[r14 + r52] & 255);
            r52++;
            int r6 = r32 >>> r42;
            int r72 = r6 & 128;
            int r62 = r6 & CertificateBody.profileType;
            do {
                if (r42 == 0) {
                    if (r52 >= r15) {
                        return 0;
                    }
                    r32 = (r32 << 8) | (bArr[r14 + r52] & 255);
                    r52++;
                    r42 = 8;
                }
                r42--;
                if (((r32 >>> r42) & 1) == 0) {
                    r62 += 128;
                } else {
                    if (r72 != 0 && r62 == 0) {
                        return 0;
                    }
                    int r82 = r11 + r22;
                    if (r72 != 0) {
                        r62 = -r62;
                    }
                    sArr[r82] = (short) r62;
                }
            } while (r62 <= 2047);
            return 0;
        }
        if ((((1 << r42) - 1) & r32) != 0) {
            return 0;
        }
        return r52;
    }

    public int comp_encode(byte[] bArr, int r11, int r12, short[] sArr, int r14, int r15) {
        int r152 = 1 << r15;
        for (int r22 = 0; r22 < r152; r22++) {
            short s7 = sArr[r14 + r22];
            if (s7 < -2047 || s7 > 2047) {
                return 0;
            }
        }
        int r32 = 0;
        int r42 = 0;
        int r52 = 0;
        for (int r23 = 0; r23 < r152; r23++) {
            int r43 = r42 << 1;
            short s10 = sArr[r14 + r23];
            int r72 = s10;
            if (s10 < 0) {
                r43 |= 1;
                r72 = -s10;
            }
            int r44 = (r43 << 7) | (r72 & CertificateBody.profileType);
            int r73 = (r72 >>> 7) + 1;
            r42 = (r44 << r73) | 1;
            r32 = r32 + 8 + r73;
            while (r32 >= 8) {
                r32 -= 8;
                if (bArr != null) {
                    if (r52 >= r12) {
                        return 0;
                    }
                    bArr[r11 + r52] = (byte) (r42 >>> r32);
                }
                r52++;
            }
        }
        if (r32 <= 0) {
            return r52;
        }
        if (bArr != null) {
            if (r52 >= r12) {
                return 0;
            }
            bArr[r11 + r52] = (byte) (r42 << (8 - r32));
        }
        return r52 + 1;
    }

    public int modq_decode(short[] sArr, int r92, int r10, byte[] bArr, int r12, int r13) {
        int r102 = 1 << r10;
        int r14 = ((r102 * 14) + 7) >> 3;
        if (r14 > r13) {
            return 0;
        }
        int r132 = 0;
        int r32 = 0;
        int r42 = 0;
        while (r132 < r102) {
            int r52 = r12 + 1;
            r32 = (r32 << 8) | (bArr[r12] & 255);
            r42 += 8;
            if (r42 >= 14) {
                r42 -= 14;
                int r122 = (r32 >>> r42) & 16383;
                if (r122 >= 12289) {
                    return 0;
                }
                sArr[r92 + r132] = (short) r122;
                r132++;
            }
            r12 = r52;
        }
        if ((((1 << r42) - 1) & r32) != 0) {
            return 0;
        }
        return r14;
    }

    public int modq_encode(byte[] bArr, int r92, int r10, short[] sArr, int r12, int r13) {
        int r132 = 1 << r13;
        for (int r14 = 0; r14 < r132; r14++) {
            if ((65535 & sArr[r12 + r14]) >= 12289) {
                return 0;
            }
        }
        int r15 = ((r132 * 14) + 7) >> 3;
        if (bArr == null) {
            return r15;
        }
        if (r15 > r10) {
            return 0;
        }
        int r102 = 0;
        int r32 = 0;
        for (int r02 = 0; r02 < r132; r02++) {
            r32 = (r32 << 14) | (sArr[r12 + r02] & HPKE.aead_EXPORT_ONLY);
            r102 += 14;
            while (r102 >= 8) {
                r102 -= 8;
                bArr[r92] = (byte) (r32 >> r102);
                r92++;
            }
        }
        if (r102 > 0) {
            bArr[r92] = (byte) (r32 << (8 - r102));
        }
        return r15;
    }

    public int trim_i16_decode(short[] sArr, int r15, int r16, int r17, byte[] bArr, int r19, int r20) {
        int r22 = 1 << r16;
        int r32 = ((r22 * r17) + 7) >> 3;
        if (r32 > r20) {
            return 0;
        }
        int r52 = (1 << r17) - 1;
        int r6 = 1 << (r17 - 1);
        int r72 = r19;
        int r82 = 0;
        int r92 = 0;
        int r10 = 0;
        while (r82 < r22) {
            int r11 = r72 + 1;
            r92 = (r92 << 8) | (bArr[r72] & 255);
            r10 += 8;
            while (r10 >= r17 && r82 < r22) {
                r10 -= r17;
                int r73 = (r92 >>> r10) & r52;
                int r74 = r73 | (-(r73 & r6));
                if (r74 == (-r6)) {
                    return 0;
                }
                sArr[r15 + r82] = (short) (r74 | (-(r74 & r6)));
                r82++;
            }
            r72 = r11;
        }
        if ((((1 << r10) - 1) & r92) != 0) {
            return 0;
        }
        return r32;
    }

    public int trim_i16_encode(byte[] bArr, int r92, int r10, short[] sArr, int r12, int r13, int r14) {
        int r132 = 1 << r13;
        int r15 = (1 << (r14 - 1)) - 1;
        int r22 = -r15;
        for (int r42 = 0; r42 < r132; r42++) {
            short s7 = sArr[r12 + r42];
            if (s7 < r22 || s7 > r15) {
                return 0;
            }
        }
        int r16 = ((r132 * r14) + 7) >> 3;
        if (bArr == null) {
            return r16;
        }
        if (r16 > r10) {
            return 0;
        }
        int r102 = (1 << r14) - 1;
        int r02 = 0;
        int r23 = 0;
        for (int r32 = 0; r32 < r132; r32++) {
            r23 = (r23 << r14) | (sArr[r12 + r32] & 4095 & r102);
            r02 += r14;
            while (r02 >= 8) {
                r02 -= 8;
                bArr[r92] = (byte) (r23 >> r02);
                r92++;
            }
        }
        if (r02 > 0) {
            bArr[r92] = (byte) (r23 << (8 - r02));
        }
        return r16;
    }

    public int trim_i8_decode(byte[] bArr, int r15, int r16, int r17, byte[] bArr2, int r19, int r20) {
        int r22 = 1 << r16;
        int r32 = ((r22 * r17) + 7) >> 3;
        if (r32 > r20) {
            return 0;
        }
        int r52 = (1 << r17) - 1;
        int r6 = 1 << (r17 - 1);
        int r72 = r19;
        int r82 = 0;
        int r92 = 0;
        int r10 = 0;
        while (r82 < r22) {
            int r11 = r72 + 1;
            r92 = (r92 << 8) | (bArr2[r72] & 255);
            r10 += 8;
            while (r10 >= r17 && r82 < r22) {
                r10 -= r17;
                int r73 = (r92 >>> r10) & r52;
                int r74 = r73 | (-(r73 & r6));
                if (r74 == (-r6)) {
                    return 0;
                }
                bArr[r15 + r82] = (byte) r74;
                r82++;
            }
            r72 = r11;
        }
        if ((((1 << r10) - 1) & r92) != 0) {
            return 0;
        }
        return r32;
    }

    public int trim_i8_encode(byte[] bArr, int r92, int r10, byte[] bArr2, int r12, int r13, int r14) {
        int r132 = 1 << r13;
        int r15 = (1 << (r14 - 1)) - 1;
        int r22 = -r15;
        for (int r42 = 0; r42 < r132; r42++) {
            int r52 = bArr2[r12 + r42];
            if (r52 < r22 || r52 > r15) {
                return 0;
            }
        }
        int r16 = ((r132 * r14) + 7) >> 3;
        if (bArr == null) {
            return r16;
        }
        if (r16 > r10) {
            return 0;
        }
        int r102 = (1 << r14) - 1;
        int r02 = 0;
        int r23 = 0;
        for (int r32 = 0; r32 < r132; r32++) {
            r23 = (r23 << r14) | (bArr2[r12 + r32] & 65535 & r102);
            r02 += r14;
            while (r02 >= 8) {
                r02 -= 8;
                bArr[r92] = (byte) (r23 >>> r02);
                r92++;
            }
        }
        if (r02 > 0) {
            bArr[r92] = (byte) (r23 << (8 - r02));
        }
        return r16;
    }
}
