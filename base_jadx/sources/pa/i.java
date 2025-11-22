package pa;

import vb.o;

/* loaded from: classes2.dex */
public final class i implements x9.a<vb.i> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j f12913a;

    public i(j jVar) {
        this.f12913a = jVar;
    }

    @Override // x9.a
    public final vb.i invoke() {
        StringBuilder sb2 = new StringBuilder("Scope for type parameter ");
        j jVar = this.f12913a;
        sb2.append(jVar.f12915a.o());
        return o.a.a(sb2.toString(), jVar.f12916b.getUpperBounds());
    }
}
