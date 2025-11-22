package org.bouncycastle.math.ec.rfc8032;

/* loaded from: classes2.dex */
abstract class Wnaf {
    public static void getSignedVar(int[] r92, int r10, byte[] bArr) {
        int length = r92.length * 2;
        int[] r12 = new int[length];
        int r22 = r92[r92.length - 1] >> 31;
        int length2 = r92.length;
        int r42 = length;
        while (true) {
            length2--;
            if (length2 < 0) {
                break;
            }
            int r6 = r92[length2];
            int r43 = r42 - 1;
            r12[r43] = (r22 << 16) | (r6 >>> 16);
            r42 = r43 - 1;
            r12[r42] = r6;
            r22 = r6;
        }
        int r93 = 32 - r10;
        int r23 = 0;
        int r32 = 0;
        int r44 = 0;
        while (r23 < length) {
            int r62 = r12[r23];
            while (r32 < 16) {
                int r72 = r62 >>> r32;
                if ((r72 & 1) == r44) {
                    r32++;
                } else {
                    int r45 = (r72 | 1) << r93;
                    bArr[(r23 << 4) + r32] = (byte) (r45 >> r93);
                    r32 += r10;
                    r44 = r45 >>> 31;
                }
            }
            r23++;
            r32 -= 16;
        }
    }
}
