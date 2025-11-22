package org.bouncycastle.pqc.crypto.falcon;

import androidx.core.app.FrameMetricsAggregator;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* loaded from: classes2.dex */
class FalconCommon {
    static final int[] l2bound = {0, 101498, 208714, 428865, 892039, 1852696, 3842630, 7959734, 16468416, 34034726, 70265242};

    public void hash_to_point_ct(SHAKE256 shake256, short[] sArr, int r22, int r23, short[] sArr2, int r25) {
        int r12;
        short s7;
        char c10;
        int r6;
        short s10;
        char c11;
        short[] sArr3 = new short[63];
        int r32 = 1 << r23;
        int r42 = r32 << 1;
        short s11 = new short[]{0, 65, 67, 71, 77, 86, 100, 122, 154, 205, 287}[r23];
        int r52 = r32 + s11;
        for (int r72 = 0; r72 < r52; r72++) {
            byte[] bArr = new byte[2];
            shake256.inner_shake256_extract(bArr, 0, 2);
            int r82 = ((bArr[0] & 255) << 8) | (bArr[1] & 255);
            int r92 = r82 - ((((r82 - 24578) >>> 31) - 1) & 24578);
            int r93 = r92 - ((((r92 - 24578) >>> 31) - 1) & 24578);
            int r83 = (((r82 - 61445) >>> 31) - 1) | (r93 - ((((r93 - 12289) >>> 31) - 1) & 12289));
            if (r72 < r32) {
                sArr[r22 + r72] = (short) r83;
            } else if (r72 < r42) {
                sArr2[(r25 + r72) - r32] = (short) r83;
            } else {
                sArr3[r72 - r42] = (short) r83;
            }
        }
        for (int r73 = 1; r73 <= s11; r73 <<= 1) {
            int r10 = 0;
            for (int r94 = 0; r94 < r52; r94++) {
                if (r94 < r32) {
                    r12 = r22 + r94;
                    s7 = sArr[r12];
                    c10 = 1;
                } else if (r94 < r42) {
                    r12 = (r25 + r94) - r32;
                    s7 = sArr2[r12];
                    c10 = 2;
                } else {
                    r12 = r94 - r42;
                    s7 = sArr3[r12];
                    c10 = 3;
                }
                int r15 = r94 - r10;
                int r16 = (s7 >>> 15) - 1;
                r10 -= r16;
                if (r94 >= r73) {
                    int r62 = r94 - r73;
                    if (r62 < r32) {
                        r6 = (r22 + r94) - r73;
                        s10 = sArr[r6];
                        c11 = 1;
                    } else if (r62 < r42) {
                        r6 = (r25 + r62) - r32;
                        s10 = sArr2[r6];
                        c11 = 2;
                    } else {
                        r6 = r62 - r42;
                        s10 = sArr3[r6];
                        c11 = 3;
                    }
                    int r152 = r16 & (-(((r15 & r73) + FrameMetricsAggregator.EVERY_DURATION) >> 9));
                    if (c10 == 1) {
                        sArr[r12] = (short) (((s7 ^ s10) & r152) ^ s7);
                    } else if (c10 == 2) {
                        sArr2[r12] = (short) (((s7 ^ s10) & r152) ^ s7);
                    } else {
                        sArr3[r12] = (short) (((s7 ^ s10) & r152) ^ s7);
                    }
                    char c12 = c11;
                    if (c12 == 1) {
                        sArr[r6] = (short) (s10 ^ ((s7 ^ s10) & r152));
                    } else if (c12 == 2) {
                        sArr2[r6] = (short) (s10 ^ ((s7 ^ s10) & r152));
                    } else {
                        sArr3[r6] = (short) (s10 ^ ((s7 ^ s10) & r152));
                    }
                }
            }
        }
    }

    public void hash_to_point_vartime(SHAKE256 shake256, short[] sArr, int r72, int r82) {
        int r83 = 1 << r82;
        while (r83 > 0) {
            byte[] bArr = new byte[2];
            shake256.inner_shake256_extract(bArr, 0, 2);
            int r12 = ((bArr[0] & 255) << 8) | (bArr[1] & 255);
            if (r12 < 61445) {
                while (r12 >= 12289) {
                    r12 -= 12289;
                }
                sArr[r72] = (short) r12;
                r83--;
                r72++;
            }
        }
    }

    public int is_short(short[] sArr, int r10, short[] sArr2, int r12, int r13) {
        int r14 = 1 << r13;
        int r32 = 0;
        int r42 = 0;
        int r52 = 0;
        while (r32 < r14) {
            short s7 = sArr[r10 + r32];
            int r6 = (s7 * s7) + r42;
            int r43 = r52 | r6;
            short s10 = sArr2[r12 + r32];
            int r53 = (s10 * s10) + r6;
            r32++;
            r52 = r43 | r53;
            r42 = r53;
        }
        return (((long) ((-(r52 >>> 31)) | r42)) & BodyPartID.bodyIdMax) <= ((long) l2bound[r13]) ? 1 : 0;
    }

    public int is_short_half(int r72, short[] sArr, int r92, int r10) {
        int r12 = 1 << r10;
        int r22 = -(r72 >>> 31);
        for (int r42 = 0; r42 < r12; r42++) {
            short s7 = sArr[r92 + r42];
            r72 += s7 * s7;
            r22 |= r72;
        }
        return (((long) (r72 | (-(r22 >>> 31)))) & BodyPartID.bodyIdMax) <= ((long) l2bound[r10]) ? 1 : 0;
    }
}
