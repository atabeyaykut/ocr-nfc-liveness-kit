package g6;

import android.util.Log;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class c implements b {
    @Override // g6.b
    public final void a(@Nullable a aVar) {
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "Could not register handler for breadcrumbs events.", null);
        }
    }
}
