package pa;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class o implements ma.h0 {

    /* renamed from: a, reason: collision with root package name */
    public final List<ma.f0> f12971a;

    /* renamed from: b, reason: collision with root package name */
    public final String f12972b;

    /* JADX WARN: Multi-variable type inference failed */
    public o(List<? extends ma.f0> list, String debugName) {
        kotlin.jvm.internal.h.f(debugName, "debugName");
        this.f12971a = list;
        this.f12972b = debugName;
        list.size();
        m9.t.y1(list).size();
    }

    @Override // ma.f0
    public final List<ma.e0> a(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        ArrayList arrayList = new ArrayList();
        Iterator<ma.f0> it = this.f12971a.iterator();
        while (it.hasNext()) {
            c5.v.p(it.next(), fqName, arrayList);
        }
        return m9.t.v1(arrayList);
    }

    @Override // ma.h0
    public final void b(lb.c fqName, ArrayList arrayList) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        Iterator<ma.f0> it = this.f12971a.iterator();
        while (it.hasNext()) {
            c5.v.p(it.next(), fqName, arrayList);
        }
    }

    @Override // ma.h0
    public final boolean c(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        List<ma.f0> list = this.f12971a;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (!c5.v.x((ma.f0) it.next(), fqName)) {
                return false;
            }
        }
        return true;
    }

    @Override // ma.f0
    public final Collection<lb.c> n(lb.c fqName, x9.l<? super lb.f, Boolean> nameFilter) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        HashSet hashSet = new HashSet();
        Iterator<ma.f0> it = this.f12971a.iterator();
        while (it.hasNext()) {
            hashSet.addAll(it.next().n(fqName, nameFilter));
        }
        return hashSet;
    }

    public final String toString() {
        return this.f12972b;
    }
}
