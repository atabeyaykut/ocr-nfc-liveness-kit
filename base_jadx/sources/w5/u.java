package w5;

import com.google.errorprone.annotations.Immutable;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

@Immutable
/* loaded from: classes2.dex */
public final class u implements n5.k {

    /* renamed from: a, reason: collision with root package name */
    public final t5.a f18778a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18779b;

    public u(t5.a aVar, int r32) throws GeneralSecurityException {
        this.f18778a = aVar;
        this.f18779b = r32;
        if (r32 < 10) {
            throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
        }
        aVar.a(r32, new byte[0]);
    }

    @Override // n5.k
    public final void a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (!h.b(b(bArr2), bArr)) {
            throw new GeneralSecurityException("invalid MAC");
        }
    }

    @Override // n5.k
    public final byte[] b(byte[] bArr) throws GeneralSecurityException {
        return this.f18778a.a(this.f18779b, bArr);
    }
}
