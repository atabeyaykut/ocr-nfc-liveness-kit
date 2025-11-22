package v7;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.RecentlyNonNull;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicReference<h> f18267b = new AtomicReference<>();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public c6.m f18268a;

    @RecentlyNonNull
    public static h c() {
        h hVar = f18267b.get();
        r3.r.k("MlKitContext has not been initialized", hVar != null);
        return hVar;
    }

    @RecentlyNonNull
    public final <T> T a(@RecentlyNonNull Class<T> cls) {
        r3.r.k("MlKitContext has been deleted", f18267b.get() == this);
        r3.r.i(this.f18268a);
        return (T) this.f18268a.a(cls);
    }

    @RecentlyNonNull
    public final Context b() {
        return (Context) a(Context.class);
    }
}
