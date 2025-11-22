package e9;

import android.os.Looper;

/* loaded from: classes2.dex */
public final class a implements io.realm.internal.a {

    /* renamed from: a, reason: collision with root package name */
    public final Looper f5159a = Looper.myLooper();

    /* renamed from: b, reason: collision with root package name */
    public final boolean f5160b;

    public a() {
        String name = Thread.currentThread().getName();
        this.f5160b = name != null && name.startsWith("IntentService[");
    }

    public final void a(String str) {
        if (!(this.f5159a != null)) {
            throw new IllegalStateException(str != null ? str.concat(" Realm cannot be automatically updated on a thread without a looper.") : "");
        }
        if (this.f5160b) {
            throw new IllegalStateException(str != null ? str.concat(" Realm cannot be automatically updated on an IntentService thread.") : "");
        }
    }
}
