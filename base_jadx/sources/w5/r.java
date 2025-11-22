package w5;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
public abstract class r implements n5.q {
    @Override // n5.q
    public final InputStream a(InputStream inputStream, byte[] bArr) throws GeneralSecurityException, IOException {
        return new y(this, inputStream, bArr);
    }

    @Override // n5.q
    public final OutputStream b(byte[] bArr, FileOutputStream fileOutputStream) throws GeneralSecurityException, IOException {
        return new z(this, fileOutputStream, bArr);
    }

    public abstract int c();

    public abstract int d();

    public abstract int e();

    public abstract int f();

    public abstract w g() throws GeneralSecurityException;

    public abstract x h(byte[] bArr) throws GeneralSecurityException;
}
