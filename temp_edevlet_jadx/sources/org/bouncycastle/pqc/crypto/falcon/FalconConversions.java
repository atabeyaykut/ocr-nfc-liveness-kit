package org.bouncycastle.pqc.crypto.falcon;

/* loaded from: classes2.dex */
class FalconConversions {
    private int toUnsignedInt(byte b10) {
        return b10 & 255;
    }

    private long toUnsignedLong(byte b10) {
        return b10 & 255;
    }

    public int bytes_to_int(byte[] bArr, int r42) {
        return (toUnsignedInt(bArr[r42 + 3]) << 24) | (toUnsignedInt(bArr[r42 + 0]) << 0) | (toUnsignedInt(bArr[r42 + 1]) << 8) | (toUnsignedInt(bArr[r42 + 2]) << 16);
    }

    public int[] bytes_to_int_array(byte[] bArr, int r52, int r6) {
        int[] r02 = new int[r6];
        for (int r12 = 0; r12 < r6; r12++) {
            r02[r12] = bytes_to_int(bArr, (r12 * 4) + r52);
        }
        return r02;
    }

    public long bytes_to_long(byte[] bArr, int r72) {
        return (toUnsignedLong(bArr[r72 + 7]) << 56) | (toUnsignedLong(bArr[r72 + 0]) << 0) | (toUnsignedLong(bArr[r72 + 1]) << 8) | (toUnsignedLong(bArr[r72 + 2]) << 16) | (toUnsignedLong(bArr[r72 + 3]) << 24) | (toUnsignedLong(bArr[r72 + 4]) << 32) | (toUnsignedLong(bArr[r72 + 5]) << 40) | (toUnsignedLong(bArr[r72 + 6]) << 48);
    }

    public byte[] int_to_bytes(int r42) {
        return new byte[]{(byte) (r42 >>> 0), (byte) (r42 >>> 8), (byte) (r42 >>> 16), (byte) (r42 >>> 24)};
    }

    public byte[] long_to_bytes(long j10) {
        return new byte[]{(byte) (j10 >>> 0), (byte) (j10 >>> 8), (byte) (j10 >>> 16), (byte) (j10 >>> 24), (byte) (j10 >>> 32), (byte) (j10 >>> 40), (byte) (j10 >>> 48), (byte) (j10 >>> 56)};
    }
}
