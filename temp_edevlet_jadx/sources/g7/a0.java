package g7;

import android.util.Log;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class a0 implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final URL f5827a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public h5.z f5828b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public volatile InputStream f5829c;

    public a0(URL url) {
        this.f5827a = url;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        try {
            InputStream inputStream = this.f5829c;
            Logger logger = k4.h.f8747a;
            if (inputStream == null) {
                return;
            }
            try {
                inputStream.close();
            } catch (IOException e10) {
                try {
                    k4.h.f8747a.logp(Level.WARNING, "com.google.common.io.Closeables", "close", "IOException thrown while closing Closeable.", (Throwable) e10);
                } catch (IOException e11) {
                    throw new AssertionError(e11);
                }
            }
        } catch (NullPointerException e12) {
            Log.e("FirebaseMessaging", "Failed to close the image download stream.", e12);
        }
    }
}
