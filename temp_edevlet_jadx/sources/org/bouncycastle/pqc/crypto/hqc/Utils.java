package org.bouncycastle.pqc.crypto.hqc;

import androidx.core.location.LocationRequestCompat;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
class Utils {
    public static long bitMask(long j10, long j11) {
        return (1 << ((int) (j10 % j11))) - 1;
    }

    public static void copyBytes(int[] r02, int r12, int[] r22, int r32, int r42) {
        System.arraycopy(r02, r12, r22, r32, r42 / 2);
    }

    public static void fromByte16ArrayToLongArray(long[] jArr, int[] r82) {
        for (int r02 = 0; r02 != r82.length; r02 += 4) {
            int r12 = r02 / 4;
            long j10 = r82[r02] & 65535;
            jArr[r12] = j10;
            long j11 = j10 | (r82[r02 + 1] << 16);
            jArr[r12] = j11;
            long j12 = j11 | (r82[r02 + 2] << 32);
            jArr[r12] = j12;
            jArr[r12] = j12 | (r82[r02 + 3] << 48);
        }
    }

    public static void fromByte32ArrayToLongArray(long[] jArr, int[] r82) {
        for (int r02 = 0; r02 != r82.length; r02 += 2) {
            int r12 = r02 / 2;
            long j10 = r82[r02] & BodyPartID.bodyIdMax;
            jArr[r12] = j10;
            jArr[r12] = j10 | (r82[r02 + 1] << 32);
        }
    }

    public static void fromByteArrayToByte16Array(int[] r42, byte[] bArr) {
        if (bArr.length % 2 != 0) {
            byte[] bArr2 = new byte[((bArr.length + 1) / 2) * 2];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            bArr = bArr2;
        }
        int r02 = 0;
        for (int r12 = 0; r12 < r42.length; r12++) {
            r42[r12] = Pack.littleEndianToShort(bArr, r02) & HPKE.aead_EXPORT_ONLY;
            r02 += 2;
        }
    }

    public static void fromByteArrayToLongArray(long[] jArr, byte[] bArr) {
        if (bArr.length % 8 != 0) {
            byte[] bArr2 = new byte[((bArr.length + 7) / 8) * 8];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            bArr = bArr2;
        }
        int r02 = 0;
        for (int r12 = 0; r12 < jArr.length; r12++) {
            jArr[r12] = Pack.littleEndianToLong(bArr, r02);
            r02 += 8;
        }
    }

    public static void fromLongArrayToByte32Array(int[] r52, long[] jArr) {
        for (int r02 = 0; r02 != jArr.length; r02++) {
            int r12 = r02 * 2;
            long j10 = jArr[r02];
            r52[r12] = (int) j10;
            r52[r12 + 1] = (int) (j10 >> 32);
        }
    }

    public static void fromLongArrayToByteArray(byte[] bArr, long[] jArr) {
        int length = bArr.length / 8;
        int r12 = 0;
        for (int r22 = 0; r22 != length; r22++) {
            Pack.longToLittleEndian(jArr[r22], bArr, r22 * 8);
        }
        if (bArr.length % 8 != 0) {
            int r23 = length * 8;
            while (r23 < bArr.length) {
                bArr[r23] = (byte) (jArr[length] >>> (r12 * 8));
                r23++;
                r12++;
            }
        }
    }

    public static int getByte64SizeFromBitSize(int r02) {
        return (r02 + 63) / 64;
    }

    public static int getByteSizeFromBitSize(int r02) {
        return (r02 + 7) / 8;
    }

    public static void resizeArray(long[] jArr, int r42, long[] jArr2, int r6, int r72, int r82) {
        if (r42 >= r6) {
            System.arraycopy(jArr2, 0, jArr, 0, (r6 + 7) / 8);
            return;
        }
        int r43 = r42 % 64;
        int r44 = r43 != 0 ? 64 - r43 : 0;
        System.arraycopy(jArr2, 0, jArr, 0, r72);
        for (int r02 = 0; r02 < r44; r02++) {
            int r52 = r82 - 1;
            jArr[r52] = jArr[r52] & (LocationRequestCompat.PASSIVE_INTERVAL >> r02);
        }
    }

    public static int toUnsigned16Bits(int r12) {
        return r12 & 65535;
    }

    public static int toUnsigned8bits(int r02) {
        return r02 & 255;
    }

    public static void xorLongToByte16Array(int[] r6, long j10, int r92) {
        int r02 = r92 + 0;
        r6[r02] = r6[r02] ^ (((int) j10) & 65535);
        int r03 = r92 + 1;
        r6[r03] = r6[r03] ^ (((int) (j10 >>> 16)) & 65535);
        int r04 = r92 + 2;
        r6[r04] = r6[r04] ^ (((int) (j10 >>> 32)) & 65535);
        int r93 = r92 + 3;
        r6[r93] = (((int) (j10 >>> 48)) & 65535) ^ r6[r93];
    }
}
