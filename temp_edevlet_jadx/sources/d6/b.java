package d6;

import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.Locale;
import z5.a;

/* loaded from: classes2.dex */
public final class b implements a.InterfaceC0312a {

    /* renamed from: a, reason: collision with root package name */
    public f6.b f4668a;

    /* renamed from: b, reason: collision with root package name */
    public f6.b f4669b;

    public final void a(int r52, @Nullable Bundle bundle) {
        String str = String.format(Locale.US, "Analytics listener received message. ID: %d, Extras: %s", Integer.valueOf(r52), bundle);
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", str, null);
        }
        String string = bundle.getString("name");
        if (string != null) {
            Bundle bundle2 = bundle.getBundle("params");
            if (bundle2 == null) {
                bundle2 = new Bundle();
            }
            f6.b bVar = "clx".equals(bundle2.getString("_o")) ? this.f4668a : this.f4669b;
            if (bVar == null) {
                return;
            }
            bVar.b(bundle2, string);
        }
    }
}
