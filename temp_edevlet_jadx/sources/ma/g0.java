package ma;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class g0 implements h0 {

    /* renamed from: a, reason: collision with root package name */
    public final Collection<e0> f10217a;

    public static final class a extends kotlin.jvm.internal.j implements x9.l<e0, lb.c> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f10218a = new a();

        public a() {
            super(1);
        }

        @Override // x9.l
        public final lb.c invoke(e0 e0Var) {
            e0 it = e0Var;
            kotlin.jvm.internal.h.f(it, "it");
            return it.d();
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.l<lb.c, Boolean> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ lb.c f10219a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(lb.c cVar) {
            super(1);
            this.f10219a = cVar;
        }

        @Override // x9.l
        public final Boolean invoke(lb.c cVar) {
            lb.c it = cVar;
            kotlin.jvm.internal.h.f(it, "it");
            return Boolean.valueOf(!it.d() && kotlin.jvm.internal.h.a(it.e(), this.f10219a));
        }
    }

    public g0(ArrayList arrayList) {
        this.f10217a = arrayList;
    }

    @Override // ma.f0
    public final List<e0> a(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        Collection<e0> collection = this.f10217a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (kotlin.jvm.internal.h.a(((e0) obj).d(), fqName)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // ma.h0
    public final void b(lb.c fqName, ArrayList arrayList) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        for (Object obj : this.f10217a) {
            if (kotlin.jvm.internal.h.a(((e0) obj).d(), fqName)) {
                arrayList.add(obj);
            }
        }
    }

    @Override // ma.h0
    public final boolean c(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        Collection<e0> collection = this.f10217a;
        if ((collection instanceof Collection) && collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (kotlin.jvm.internal.h.a(((e0) it.next()).d(), fqName)) {
                return false;
            }
        }
        return true;
    }

    @Override // ma.f0
    public final Collection<lb.c> n(lb.c fqName, x9.l<? super lb.f, Boolean> nameFilter) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        return b8.f.Z(lc.w.c1(lc.w.V0(lc.w.Z0(m9.t.U0(this.f10217a), a.f10218a), new b(fqName))));
    }
}
