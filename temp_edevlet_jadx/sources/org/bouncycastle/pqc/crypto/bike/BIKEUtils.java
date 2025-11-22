package org.bouncycastle.pqc.crypto.bike;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
class BIKEUtils {
    public static int CHECK_BIT(byte[] bArr, int r22) {
        return (bArr[r22 / 8] >>> (r22 % 8)) & 1;
    }

    public static void SET_BIT(byte[] bArr, int r6) {
        bArr[r6 / 8] = (byte) (bArr[r0] | (1 << (r6 % 8)));
    }

    public static void fromBitArrayToByteArray(byte[] bArr, byte[] bArr2, int r11, int r12) {
        long j10 = r12;
        int r22 = 0;
        int r32 = 0;
        while (r22 < j10) {
            int r42 = r22 + 8;
            if (r42 >= r12) {
                int r6 = r11 + r22;
                int r72 = bArr2[r6];
                for (int r23 = (r12 - r22) - 1; r23 >= 1; r23--) {
                    r72 |= bArr2[r6 + r23] << r23;
                }
                bArr[r32] = (byte) r72;
            } else {
                int r24 = r22 + r11;
                int r62 = bArr2[r24];
                for (int r73 = 7; r73 >= 1; r73--) {
                    r62 |= bArr2[r24 + r73] << r73;
                }
                bArr[r32] = (byte) r62;
            }
            r32++;
            r22 = r42;
        }
    }

    public static void generateRandomByteArray(byte[] bArr, int r72, int r82, Xof xof) {
        byte[] bArr2 = new byte[4];
        for (int r83 = r82 - 1; r83 >= 0; r83--) {
            xof.doOutput(bArr2, 0, 4);
            int r32 = ((int) (((Pack.littleEndianToInt(bArr2, 0) & BodyPartID.bodyIdMax) * (r72 - r83)) >> 32)) + r83;
            if (CHECK_BIT(bArr, r32) != 0) {
                r32 = r83;
            }
            SET_BIT(bArr, r32);
        }
    }

    public static int getHammingWeight(byte[] bArr) {
        int r12 = 0;
        for (byte b10 : bArr) {
            r12 += b10;
        }
        return r12;
    }
}
