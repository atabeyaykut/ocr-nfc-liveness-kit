package a3;

import android.content.Context;
import d3.b;
import d3.c;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class n implements x2.b<m> {

    /* renamed from: a, reason: collision with root package name */
    public final k9.a<Context> f92a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a<v2.e> f93b;

    /* renamed from: c, reason: collision with root package name */
    public final k9.a<b3.d> f94c;

    /* renamed from: d, reason: collision with root package name */
    public final k9.a<p> f95d;

    /* renamed from: e, reason: collision with root package name */
    public final k9.a<Executor> f96e;
    public final k9.a<c3.b> f;

    /* renamed from: g, reason: collision with root package name */
    public final k9.a<d3.a> f97g;

    /* renamed from: h, reason: collision with root package name */
    public final k9.a<d3.a> f98h;

    /* renamed from: i, reason: collision with root package name */
    public final k9.a<b3.c> f99i;

    public n(k9.a aVar, k9.a aVar2, k9.a aVar3, z2.g gVar, k9.a aVar4, k9.a aVar5, k9.a aVar6) {
        d3.b bVar = b.a.f4653a;
        d3.c cVar = c.a.f4654a;
        this.f92a = aVar;
        this.f93b = aVar2;
        this.f94c = aVar3;
        this.f95d = gVar;
        this.f96e = aVar4;
        this.f = aVar5;
        this.f97g = bVar;
        this.f98h = cVar;
        this.f99i = aVar6;
    }

    @Override // k9.a
    public final Object get() {
        return new m(this.f92a.get(), this.f93b.get(), this.f94c.get(), this.f95d.get(), this.f96e.get(), this.f.get(), this.f97g.get(), this.f98h.get(), this.f99i.get());
    }
}
