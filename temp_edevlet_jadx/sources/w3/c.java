package w3;

import java.io.Closeable;
import java.io.IOException;

@Deprecated
/* loaded from: classes.dex */
public final class c {
    public static void a(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
