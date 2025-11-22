package vb;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.w;
import m9.t;
import ma.l0;
import ma.q0;

/* loaded from: classes2.dex */
public final class m extends j {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ da.m<Object>[] f18454e = {w.c(new r(w.a(m.class), "functions", "getFunctions()Ljava/util/List;")), w.c(new r(w.a(m.class), "properties", "getProperties()Ljava/util/List;"))};

    /* renamed from: b, reason: collision with root package name */
    public final ma.e f18455b;

    /* renamed from: c, reason: collision with root package name */
    public final bc.i f18456c;

    /* renamed from: d, reason: collision with root package name */
    public final bc.i f18457d;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<List<? extends q0>> {
        public a() {
            super(0);
        }

        @Override // x9.a
        public final List<? extends q0> invoke() {
            m mVar = m.this;
            return b8.f.T(ob.h.f(mVar.f18455b), ob.h.g(mVar.f18455b));
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<List<? extends l0>> {
        public b() {
            super(0);
        }

        @Override // x9.a
        public final List<? extends l0> invoke() {
            return b8.f.U(ob.h.e(m.this.f18455b));
        }
    }

    public m(bc.l storageManager, ma.e containingClass) {
        kotlin.jvm.internal.h.f(storageManager, "storageManager");
        kotlin.jvm.internal.h.f(containingClass, "containingClass");
        this.f18455b = containingClass;
        containingClass.h();
        this.f18456c = storageManager.d(new a());
        this.f18457d = storageManager.d(new b());
    }

    @Override // vb.j, vb.i
    public final Collection a(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        List list = (List) b8.f.O(this.f18457d, f18454e[1]);
        kc.c cVar2 = new kc.c();
        for (Object obj : list) {
            if (kotlin.jvm.internal.h.a(((l0) obj).getName(), name)) {
                cVar2.add(obj);
            }
        }
        return cVar2;
    }

    @Override // vb.j, vb.i
    public final Collection c(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        List list = (List) b8.f.O(this.f18456c, f18454e[0]);
        kc.c cVar2 = new kc.c();
        for (Object obj : list) {
            if (kotlin.jvm.internal.h.a(((q0) obj).getName(), name)) {
                cVar2.add(obj);
            }
        }
        return cVar2;
    }

    @Override // vb.j, vb.l
    public final ma.g e(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return null;
    }

    @Override // vb.j, vb.l
    public final Collection f(d kindFilter, x9.l nameFilter) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        da.m<Object>[] mVarArr = f18454e;
        return t.m1((List) b8.f.O(this.f18457d, mVarArr[1]), (List) b8.f.O(this.f18456c, mVarArr[0]));
    }
}
