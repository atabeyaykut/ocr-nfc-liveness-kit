package ac;

import cc.e0;
import cc.t1;
import gb.r;
import j7.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import m9.t;
import ma.u0;
import na.h;

/* loaded from: classes2.dex */
public final class n extends pa.c {

    /* renamed from: l, reason: collision with root package name */
    public final yb.n f246l;

    /* renamed from: m, reason: collision with root package name */
    public final r f247m;

    /* renamed from: n, reason: collision with root package name */
    public final ac.a f248n;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<List<? extends na.c>> {
        public a() {
            super(0);
        }

        @Override // x9.a
        public final List<? extends na.c> invoke() {
            n nVar = n.this;
            yb.n nVar2 = nVar.f246l;
            return t.v1(nVar2.f19464a.f19446e.j(nVar.f247m, nVar2.f19465b));
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public n(yb.n c10, r rVar, int r13) {
        t1 t1Var;
        kotlin.jvm.internal.h.f(c10, "c");
        yb.l lVar = c10.f19464a;
        bc.l lVar2 = lVar.f19442a;
        ma.j jVar = c10.f19466c;
        h.a.C0201a c0201a = h.a.f10653a;
        lb.f fVarO = a6.a.o(c10.f19465b, rVar.f6531e);
        r.c cVar = rVar.f6532g;
        kotlin.jvm.internal.h.e(cVar, "proto.variance");
        int r12 = cVar.ordinal();
        if (r12 == 0) {
            t1Var = t1.IN_VARIANCE;
        } else if (r12 == 1) {
            t1Var = t1.OUT_VARIANCE;
        } else {
            if (r12 != 2) {
                throw new p();
            }
            t1Var = t1.INVARIANT;
        }
        super(lVar2, jVar, c0201a, fVarO, t1Var, rVar.f, r13, u0.a.f10247a);
        this.f246l = c10;
        this.f247m = rVar;
        this.f248n = new ac.a(lVar.f19442a, new a());
    }

    @Override // pa.k
    public final void K0(e0 type) {
        kotlin.jvm.internal.h.f(type, "type");
        throw new IllegalStateException("There should be no cycles for deserialized type parameters, but found for: " + this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.util.List] */
    @Override // pa.k
    public final List<e0> L0() {
        yb.n nVar = this.f246l;
        ib.g typeTable = nVar.f19467d;
        r rVar = this.f247m;
        kotlin.jvm.internal.h.f(rVar, "<this>");
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        List<gb.p> list = rVar.f6533h;
        boolean z10 = !list.isEmpty();
        ?? arrayList = list;
        if (!z10) {
            arrayList = 0;
        }
        if (arrayList == 0) {
            List<Integer> upperBoundIdList = rVar.f6534j;
            kotlin.jvm.internal.h.e(upperBoundIdList, "upperBoundIdList");
            List<Integer> list2 = upperBoundIdList;
            arrayList = new ArrayList(m9.n.Q0(list2));
            for (Integer it : list2) {
                kotlin.jvm.internal.h.e(it, "it");
                arrayList.add(typeTable.a(it.intValue()));
            }
        }
        if (arrayList.isEmpty()) {
            return b8.f.S(sb.b.e(this).o());
        }
        Iterable iterable = (Iterable) arrayList;
        ArrayList arrayList2 = new ArrayList(m9.n.Q0(iterable));
        Iterator it2 = iterable.iterator();
        while (it2.hasNext()) {
            arrayList2.add(nVar.f19470h.g((gb.p) it2.next()));
        }
        return arrayList2;
    }

    @Override // na.b, na.a
    public final na.h getAnnotations() {
        return this.f248n;
    }
}
