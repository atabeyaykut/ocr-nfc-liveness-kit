package e6;

import a7.a;
import android.util.Log;
import androidx.annotation.NonNull;
import c6.x;
import j6.c0;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class c implements e6.a {

    /* renamed from: c, reason: collision with root package name */
    public static final a f5113c = new a();

    /* renamed from: a, reason: collision with root package name */
    public final a7.a<e6.a> f5114a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReference<e6.a> f5115b = new AtomicReference<>(null);

    public static final class a implements e {
    }

    public c(a7.a<e6.a> aVar) {
        this.f5114a = aVar;
        ((x) aVar).a(new androidx.camera.camera2.internal.compat.workaround.b(1, this));
    }

    @Override // e6.a
    @NonNull
    public final e a(@NonNull String str) {
        e6.a aVar = this.f5115b.get();
        return aVar == null ? f5113c : aVar.a(str);
    }

    @Override // e6.a
    public final boolean b() {
        e6.a aVar = this.f5115b.get();
        return aVar != null && aVar.b();
    }

    @Override // e6.a
    public final void c(@NonNull final String str, @NonNull final String str2, final long j10, @NonNull final c0 c0Var) {
        String strE = androidx.browser.browseractions.b.e("Deferring native open session: ", str);
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", strE, null);
        }
        ((x) this.f5114a).a(new a.InterfaceC0008a() { // from class: e6.b
            @Override // a7.a.InterfaceC0008a
            public final void a(a7.b bVar) {
                ((a) bVar.get()).c(str, str2, j10, c0Var);
            }
        });
    }

    @Override // e6.a
    public final boolean d(@NonNull String str) {
        e6.a aVar = this.f5115b.get();
        return aVar != null && aVar.d(str);
    }
}
