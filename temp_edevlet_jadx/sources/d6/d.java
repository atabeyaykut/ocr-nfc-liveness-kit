package d6;

import android.util.Log;
import androidx.annotation.NonNull;
import h5.k;

/* loaded from: classes2.dex */
public final class d implements h5.b<Void, Object> {
    @Override // h5.b
    public final Object c(@NonNull k<Void> kVar) throws Exception {
        if (kVar.m()) {
            return null;
        }
        Log.e("FirebaseCrashlytics", "Error fetching settings.", kVar.h());
        return null;
    }
}
