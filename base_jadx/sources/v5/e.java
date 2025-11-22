package v5;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import n5.l;
import n5.q;

/* loaded from: classes2.dex */
public final class e implements q {

    /* renamed from: a, reason: collision with root package name */
    public final l<q> f18244a;

    public e(l<q> lVar) throws GeneralSecurityException {
        if (lVar.f10579b == null) {
            throw new GeneralSecurityException("Missing primary primitive.");
        }
        this.f18244a = lVar;
    }

    @Override // n5.q
    public final InputStream a(InputStream inputStream, byte[] bArr) throws GeneralSecurityException, IOException {
        return new c(this.f18244a, inputStream, bArr);
    }

    @Override // n5.q
    public final OutputStream b(byte[] bArr, FileOutputStream fileOutputStream) throws GeneralSecurityException, IOException {
        return this.f18244a.f10579b.f10581a.b(bArr, fileOutputStream);
    }
}
