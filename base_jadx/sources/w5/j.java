package w5;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;

/* loaded from: classes2.dex */
public abstract class j implements q {

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f18757c = k(new byte[]{101, 120, ISO7816.INS_MANAGE_CHANNEL, 97, 110, ISOFileInfo.FMD_BYTE, ISO7816.INS_VERIFY, 51, ISO7816.INS_INCREASE, 45, ISOFileInfo.FCP_BYTE, 121, 116, 101, ISO7816.INS_VERIFY, 107});

    /* renamed from: a, reason: collision with root package name */
    public final int[] f18758a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18759b;

    public j(byte[] bArr, int r42) throws InvalidKeyException {
        if (bArr.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.f18758a = k(bArr);
        this.f18759b = r42;
    }

    public static void i(int[] r22, int r32, int r42, int r52, int r6) {
        int r02 = r22[r32] + r22[r42];
        r22[r32] = r02;
        int r03 = r02 ^ r22[r6];
        int r04 = (r03 >>> (-16)) | (r03 << 16);
        r22[r6] = r04;
        int r12 = r22[r52] + r04;
        r22[r52] = r12;
        int r05 = r22[r42] ^ r12;
        int r06 = (r05 >>> (-12)) | (r05 << 12);
        r22[r42] = r06;
        int r13 = r22[r32] + r06;
        r22[r32] = r13;
        int r33 = r22[r6] ^ r13;
        int r34 = (r33 >>> (-8)) | (r33 << 8);
        r22[r6] = r34;
        int r62 = r22[r52] + r34;
        r22[r52] = r62;
        int r35 = r22[r42] ^ r62;
        r22[r42] = (r35 >>> (-7)) | (r35 << 7);
    }

    public static void j(int[] r16) {
        for (int r22 = 0; r22 < 10; r22++) {
            i(r16, 0, 4, 8, 12);
            i(r16, 1, 5, 9, 13);
            i(r16, 2, 6, 10, 14);
            i(r16, 3, 7, 11, 15);
            i(r16, 0, 5, 10, 15);
            i(r16, 1, 6, 11, 12);
            i(r16, 2, 7, 8, 13);
            i(r16, 3, 4, 9, 14);
        }
    }

    public static int[] k(byte[] bArr) {
        IntBuffer intBufferAsIntBuffer = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asIntBuffer();
        int[] r02 = new int[intBufferAsIntBuffer.remaining()];
        intBufferAsIntBuffer.get(r02);
        return r02;
    }

    @Override // w5.q
    public final byte[] a(byte[] bArr) throws GeneralSecurityException {
        if (bArr.length > Integer.MAX_VALUE - g()) {
            throw new GeneralSecurityException("plaintext too long");
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(g() + bArr.length);
        f(byteBufferAllocate, bArr);
        return byteBufferAllocate.array();
    }

    @Override // w5.q
    public final byte[] b(byte[] bArr) throws GeneralSecurityException {
        return e(ByteBuffer.wrap(bArr));
    }

    public final ByteBuffer c(int r52, byte[] bArr) {
        int[] r53 = d(k(bArr), r52);
        int[] r6 = (int[]) r53.clone();
        j(r6);
        for (int r12 = 0; r12 < r53.length; r12++) {
            r53[r12] = r53[r12] + r6[r12];
        }
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.asIntBuffer().put(r53, 0, 16);
        return byteBufferOrder;
    }

    public abstract int[] d(int[] r12, int r22);

    public final byte[] e(ByteBuffer byteBuffer) throws GeneralSecurityException {
        if (byteBuffer.remaining() < g()) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        byte[] bArr = new byte[g()];
        byteBuffer.get(bArr);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBuffer.remaining());
        h(bArr, byteBufferAllocate, byteBuffer);
        return byteBufferAllocate.array();
    }

    public final void f(ByteBuffer byteBuffer, byte[] bArr) throws GeneralSecurityException {
        if (byteBuffer.remaining() - g() < bArr.length) {
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        byte[] bArrA = v.a(g());
        byteBuffer.put(bArrA);
        h(bArrA, byteBuffer, ByteBuffer.wrap(bArr));
    }

    public abstract int g();

    public final void h(byte[] bArr, ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws GeneralSecurityException {
        int r02 = byteBuffer2.remaining();
        int r12 = (r02 / 64) + 1;
        for (int r22 = 0; r22 < r12; r22++) {
            ByteBuffer byteBufferC = c(this.f18759b + r22, bArr);
            if (r22 == r12 - 1) {
                h.c(byteBuffer, byteBuffer2, byteBufferC, r02 % 64);
            } else {
                h.c(byteBuffer, byteBuffer2, byteBufferC, 64);
            }
        }
    }
}
