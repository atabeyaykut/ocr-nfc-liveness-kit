package w5;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
public final class h {
    public static byte[] a(byte[]... bArr) throws GeneralSecurityException {
        int length = 0;
        for (byte[] bArr2 : bArr) {
            if (length > Integer.MAX_VALUE - bArr2.length) {
                throw new GeneralSecurityException("exceeded size limit");
            }
            length += bArr2.length;
        }
        byte[] bArr3 = new byte[length];
        int length2 = 0;
        for (byte[] bArr4 : bArr) {
            System.arraycopy(bArr4, 0, bArr3, length2, bArr4.length);
            length2 += bArr4.length;
        }
        return bArr3;
    }

    public static final boolean b(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null || bArr.length != bArr2.length) {
            return false;
        }
        int r22 = 0;
        for (int r12 = 0; r12 < bArr.length; r12++) {
            r22 |= bArr[r12] ^ bArr2[r12];
        }
        return r22 == 0;
    }

    public static final void c(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int r6) {
        if (r6 < 0 || byteBuffer2.remaining() < r6 || byteBuffer3.remaining() < r6 || byteBuffer.remaining() < r6) {
            throw new IllegalArgumentException("That combination of buffers, offsets and length to xor result in out-of-bond accesses.");
        }
        for (int r02 = 0; r02 < r6; r02++) {
            byteBuffer.put((byte) (byteBuffer2.get() ^ byteBuffer3.get()));
        }
    }

    public static final byte[] d(int r42, byte[] bArr, int r6, byte[] bArr2, int r82) {
        if (r82 < 0 || bArr.length - r82 < r42 || bArr2.length - r82 < r6) {
            throw new IllegalArgumentException("That combination of buffers, offsets and length to xor result in out-of-bond accesses.");
        }
        byte[] bArr3 = new byte[r82];
        for (int r12 = 0; r12 < r82; r12++) {
            bArr3[r12] = (byte) (bArr[r12 + r42] ^ bArr2[r12 + r6]);
        }
        return bArr3;
    }

    public static final byte[] e(byte[] bArr, byte[] bArr2) {
        if (bArr.length == bArr2.length) {
            return d(0, bArr, 0, bArr2, bArr.length);
        }
        throw new IllegalArgumentException("The lengths of x and y should match.");
    }
}
