package w5;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import javax.crypto.AEADBadTagException;

/* loaded from: classes2.dex */
public abstract class l implements n5.a {

    /* renamed from: a, reason: collision with root package name */
    public final j f18760a;

    /* renamed from: b, reason: collision with root package name */
    public final j f18761b;

    public l(byte[] bArr) throws InvalidKeyException {
        this.f18760a = d(1, bArr);
        this.f18761b = d(0, bArr);
    }

    public static byte[] c(ByteBuffer byteBuffer, byte[] bArr) {
        int length = bArr.length % 16 == 0 ? bArr.length : (bArr.length + 16) - (bArr.length % 16);
        int r12 = byteBuffer.remaining();
        int r22 = r12 % 16;
        int r32 = (r22 == 0 ? r12 : (r12 + 16) - r22) + length;
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(r32 + 16).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.put(bArr);
        byteBufferOrder.position(length);
        byteBufferOrder.put(byteBuffer);
        byteBufferOrder.position(r32);
        byteBufferOrder.putLong(bArr.length);
        byteBufferOrder.putLong(r12);
        return byteBufferOrder.array();
    }

    @Override // n5.a
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        j jVar = this.f18760a;
        if (length > (Integer.MAX_VALUE - jVar.g()) - 16) {
            throw new GeneralSecurityException("plaintext too long");
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(jVar.g() + bArr.length + 16);
        if (byteBufferAllocate.remaining() < jVar.g() + bArr.length + 16) {
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        int r22 = byteBufferAllocate.position();
        jVar.f(byteBufferAllocate, bArr);
        byteBufferAllocate.position(r22);
        byte[] bArr3 = new byte[jVar.g()];
        byteBufferAllocate.get(bArr3);
        byteBufferAllocate.limit(byteBufferAllocate.limit() - 16);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        byte[] bArr4 = new byte[32];
        this.f18761b.c(0, bArr3).get(bArr4);
        byte[] bArrM = c5.u.m(bArr4, c(byteBufferAllocate, bArr2));
        byteBufferAllocate.limit(byteBufferAllocate.limit() + 16);
        byteBufferAllocate.put(bArrM);
        return byteBufferAllocate.array();
    }

    @Override // n5.a
    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        int r02 = byteBufferWrap.remaining();
        j jVar = this.f18760a;
        if (r02 < jVar.g() + 16) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        int r03 = byteBufferWrap.position();
        byte[] bArr3 = new byte[16];
        byteBufferWrap.position(byteBufferWrap.limit() - 16);
        byteBufferWrap.get(bArr3);
        byteBufferWrap.position(r03);
        byteBufferWrap.limit(byteBufferWrap.limit() - 16);
        byte[] bArr4 = new byte[jVar.g()];
        byteBufferWrap.get(bArr4);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        try {
            byte[] bArr5 = new byte[32];
            this.f18761b.c(0, bArr4).get(bArr5);
            if (!h.b(c5.u.m(bArr5, c(byteBufferWrap, bArr2)), bArr3)) {
                throw new GeneralSecurityException("invalid MAC");
            }
            byteBufferWrap.position(r03);
            return jVar.e(byteBufferWrap);
        } catch (GeneralSecurityException e10) {
            throw new AEADBadTagException(e10.toString());
        }
    }

    public abstract j d(int r12, byte[] bArr) throws InvalidKeyException;
}
