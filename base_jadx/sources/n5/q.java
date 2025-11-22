package n5;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
public interface q {
    InputStream a(InputStream inputStream, byte[] bArr) throws GeneralSecurityException, IOException;

    OutputStream b(byte[] bArr, FileOutputStream fileOutputStream) throws GeneralSecurityException, IOException;
}
