package v2;

import android.content.Context;

/* loaded from: classes.dex */
public final class l implements x2.b<k> {

    /* renamed from: a, reason: collision with root package name */
    public final k9.a<Context> f18231a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a<i> f18232b;

    public l(x2.c cVar, j jVar) {
        this.f18231a = cVar;
        this.f18232b = jVar;
    }

    @Override // k9.a
    public final Object get() {
        return new k(this.f18231a.get(), this.f18232b.get());
    }
}
