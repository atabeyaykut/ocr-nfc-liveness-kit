package w5;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class m implements n5.a {

    /* renamed from: a, reason: collision with root package name */
    public final q f18762a;

    /* renamed from: b, reason: collision with root package name */
    public final n5.k f18763b;

    /* renamed from: c, reason: collision with root package name */
    public final int f18764c;

    public m(q qVar, n5.k kVar, int r32) {
        this.f18762a = qVar;
        this.f18763b = kVar;
        this.f18764c = r32;
    }

    @Override // n5.a
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArrA = this.f18762a.a(bArr);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        return h.a(bArrA, this.f18763b.b(h.a(bArr2, bArrA, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr2.length * 8).array(), 8))));
    }

    @Override // n5.a
    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        int r12 = this.f18764c;
        if (length < r12) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, bArr.length - r12);
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, bArr.length - r12, bArr.length);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        this.f18763b.a(bArrCopyOfRange2, h.a(bArr2, bArrCopyOfRange, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr2.length * 8).array(), 8)));
        return this.f18762a.b(bArrCopyOfRange);
    }
}
