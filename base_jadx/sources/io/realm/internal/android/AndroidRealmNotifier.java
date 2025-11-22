package io.realm.internal.android;

import android.os.Handler;
import android.os.Looper;
import io.realm.internal.Keep;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.RealmNotifier;
import io.realm.internal.a;

@Keep
/* loaded from: classes2.dex */
public class AndroidRealmNotifier extends RealmNotifier {
    private Handler handler;

    public AndroidRealmNotifier(OsSharedRealm osSharedRealm, a aVar) {
        super(osSharedRealm);
        e9.a aVar2 = (e9.a) aVar;
        boolean z10 = false;
        if ((aVar2.f5159a != null) && !aVar2.f5160b) {
            z10 = true;
        }
        this.handler = z10 ? new Handler(Looper.myLooper()) : null;
    }

    @Override // io.realm.internal.RealmNotifier
    public boolean post(Runnable runnable) {
        Handler handler = this.handler;
        return handler != null && handler.post(runnable);
    }
}
