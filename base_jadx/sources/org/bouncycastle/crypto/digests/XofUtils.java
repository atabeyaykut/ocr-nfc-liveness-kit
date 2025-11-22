package org.bouncycastle.crypto.digests;

import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class XofUtils {
    public static byte[] encode(byte b10) {
        return Arrays.concatenate(leftEncode(8L), new byte[]{b10});
    }

    public static byte[] encode(byte[] bArr, int r32, int r42) {
        return bArr.length == r42 ? Arrays.concatenate(leftEncode(r42 * 8), bArr) : Arrays.concatenate(leftEncode(r42 * 8), Arrays.copyOfRange(bArr, r32, r42 + r32));
    }

    public static byte[] leftEncode(long j10) {
        byte b10 = 1;
        long j11 = j10;
        while (true) {
            j11 >>= 8;
            if (j11 == 0) {
                break;
            }
            b10 = (byte) (b10 + 1);
        }
        byte[] bArr = new byte[b10 + 1];
        bArr[0] = b10;
        for (int r02 = 1; r02 <= b10; r02++) {
            bArr[r02] = (byte) (j10 >> ((b10 - r02) * 8));
        }
        return bArr;
    }

    public static byte[] rightEncode(long j10) {
        byte b10 = 1;
        long j11 = j10;
        while (true) {
            j11 >>= 8;
            if (j11 == 0) {
                break;
            }
            b10 = (byte) (b10 + 1);
        }
        byte[] bArr = new byte[b10 + 1];
        bArr[b10] = b10;
        for (int r22 = 0; r22 < b10; r22++) {
            bArr[r22] = (byte) (j10 >> (((b10 - r22) - 1) * 8));
        }
        return bArr;
    }
}
