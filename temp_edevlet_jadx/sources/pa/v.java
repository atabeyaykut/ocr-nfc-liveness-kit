package pa;

import cc.p1;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class v implements x9.a<Collection<ma.u>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p1 f12999a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f13000b;

    public v(x xVar, p1 p1Var) {
        this.f13000b = xVar;
        this.f12999a = p1Var;
    }

    @Override // x9.a
    public final Collection<ma.u> invoke() {
        kc.c cVar = new kc.c();
        Iterator<? extends ma.u> it = this.f13000b.e().iterator();
        while (it.hasNext()) {
            cVar.add(it.next().c(this.f12999a));
        }
        return cVar;
    }
}
