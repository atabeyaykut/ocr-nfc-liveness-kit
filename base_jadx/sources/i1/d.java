package i1;

import android.util.Log;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;
import v0.k;
import x0.w;

/* loaded from: classes.dex */
public final class d implements k<c> {
    @Override // v0.k
    @NonNull
    public final v0.c a(@NonNull v0.h hVar) {
        return v0.c.SOURCE;
    }

    @Override // v0.d
    public final boolean b(@NonNull Object obj, @NonNull File file, @NonNull v0.h hVar) throws Throwable {
        try {
            q1.a.d(((c) ((w) obj).get()).f7243a.f7253a.f7255a.l().asReadOnlyBuffer(), file);
            return true;
        } catch (IOException e10) {
            if (Log.isLoggable("GifEncoder", 5)) {
                Log.w("GifEncoder", "Failed to encode GIF drawable data", e10);
            }
            return false;
        }
    }
}
