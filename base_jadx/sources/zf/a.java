package zf;

import android.content.Context;
import tr.gov.turkiye.edevlet.kapisi.BaseApplication;

/* loaded from: classes3.dex */
public final class a implements k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final vd.d f20054a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a<BaseApplication> f20055b;

    public a(vd.d dVar, v8.a aVar) {
        this.f20054a = dVar;
        this.f20055b = aVar;
    }

    @Override // k9.a
    public final Object get() {
        BaseApplication application = this.f20055b.get();
        this.f20054a.getClass();
        kotlin.jvm.internal.h.f(application, "application");
        Context applicationContext = application.getApplicationContext();
        kotlin.jvm.internal.h.e(applicationContext, "application.applicationContext");
        return applicationContext;
    }
}
