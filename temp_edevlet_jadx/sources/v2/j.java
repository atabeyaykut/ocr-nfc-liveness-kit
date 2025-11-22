package v2;

import android.content.Context;
import d3.b;
import d3.c;

/* loaded from: classes.dex */
public final class j implements x2.b<i> {

    /* renamed from: a, reason: collision with root package name */
    public final k9.a<Context> f18223a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a<d3.a> f18224b;

    /* renamed from: c, reason: collision with root package name */
    public final k9.a<d3.a> f18225c;

    public j(x2.c cVar) {
        d3.b bVar = b.a.f4653a;
        d3.c cVar2 = c.a.f4654a;
        this.f18223a = cVar;
        this.f18224b = bVar;
        this.f18225c = cVar2;
    }

    @Override // k9.a
    public final Object get() {
        return new i(this.f18223a.get(), this.f18224b.get(), this.f18225c.get());
    }
}
