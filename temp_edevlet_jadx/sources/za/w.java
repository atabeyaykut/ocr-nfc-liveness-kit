package za;

import java.util.Collection;
import java.util.Set;
import kc.a;

/* loaded from: classes2.dex */
public final class w extends a.b<ma.e, l9.m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ma.e f20011a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Set<Object> f20012b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x9.l<vb.i, Collection<Object>> f20013c;

    public w(xa.c cVar, Set set, x9.l lVar) {
        this.f20011a = cVar;
        this.f20012b = set;
        this.f20013c = lVar;
    }

    @Override // kc.a.d
    public final /* bridge */ /* synthetic */ Object a() {
        return l9.m.f9594a;
    }

    @Override // kc.a.d
    public final boolean c(Object obj) {
        ma.e current = (ma.e) obj;
        kotlin.jvm.internal.h.f(current, "current");
        if (current != this.f20011a) {
            vb.i iVarN = current.N();
            kotlin.jvm.internal.h.e(iVarN, "current.staticScope");
            if (iVarN instanceof y) {
                this.f20012b.addAll(this.f20013c.invoke(iVarN));
                return false;
            }
        }
        return true;
    }
}
