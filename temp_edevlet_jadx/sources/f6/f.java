package f6;

import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class f implements a {
    @Override // f6.a
    public final void a(@Nullable Bundle bundle) {
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "Skipping logging Crashlytics event to Firebase, no Firebase Analytics", null);
        }
    }
}
