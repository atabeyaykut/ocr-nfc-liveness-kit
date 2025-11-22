package z2;

import a3.p;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class d implements x2.b<c> {

    /* renamed from: a, reason: collision with root package name */
    public final k9.a<Executor> f19782a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a<v2.e> f19783b;

    /* renamed from: c, reason: collision with root package name */
    public final k9.a<p> f19784c;

    /* renamed from: d, reason: collision with root package name */
    public final k9.a<b3.d> f19785d;

    /* renamed from: e, reason: collision with root package name */
    public final k9.a<c3.b> f19786e;

    public d(k9.a aVar, k9.a aVar2, g gVar, k9.a aVar3, k9.a aVar4) {
        this.f19782a = aVar;
        this.f19783b = aVar2;
        this.f19784c = gVar;
        this.f19785d = aVar3;
        this.f19786e = aVar4;
    }

    @Override // k9.a
    public final Object get() {
        return new c(this.f19782a.get(), this.f19783b.get(), this.f19784c.get(), this.f19785d.get(), this.f19786e.get());
    }
}
