package yb;

import cc.a1;
import cc.c1;
import cc.z0;
import gb.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import ma.v0;
import ma.w0;

/* loaded from: classes2.dex */
public final class k0 {

    /* renamed from: a, reason: collision with root package name */
    public final n f19432a;

    /* renamed from: b, reason: collision with root package name */
    public final k0 f19433b;

    /* renamed from: c, reason: collision with root package name */
    public final String f19434c;

    /* renamed from: d, reason: collision with root package name */
    public final String f19435d;

    /* renamed from: e, reason: collision with root package name */
    public final bc.h f19436e;
    public final bc.h f;

    /* renamed from: g, reason: collision with root package name */
    public final Map<Integer, w0> f19437g;

    public static final class a extends kotlin.jvm.internal.j implements x9.l<Integer, ma.g> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final ma.g invoke(Integer num) {
            int r32 = num.intValue();
            n nVar = k0.this.f19432a;
            lb.b bVarN = a6.a.n(nVar.f19465b, r32);
            boolean z10 = bVarN.f9666c;
            l lVar = nVar.f19464a;
            return z10 ? lVar.b(bVarN) : ma.t.b(lVar.f19443b, bVarN);
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<List<? extends na.c>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ k0 f19439a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ gb.p f19440b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(gb.p pVar, k0 k0Var) {
            super(0);
            this.f19439a = k0Var;
            this.f19440b = pVar;
        }

        @Override // x9.a
        public final List<? extends na.c> invoke() {
            n nVar = this.f19439a.f19432a;
            return nVar.f19464a.f19446e.i(this.f19440b, nVar.f19465b);
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.l<Integer, ma.g> {
        public c() {
            super(1);
        }

        @Override // x9.l
        public final ma.g invoke(Integer num) {
            int r32 = num.intValue();
            n nVar = k0.this.f19432a;
            lb.b bVarN = a6.a.n(nVar.f19465b, r32);
            if (!bVarN.f9666c) {
                ma.b0 b0Var = nVar.f19464a.f19443b;
                kotlin.jvm.internal.h.f(b0Var, "<this>");
                ma.g gVarB = ma.t.b(b0Var, bVarN);
                if (gVarB instanceof v0) {
                    return (v0) gVarB;
                }
            }
            return null;
        }
    }

    public k0(n c10, k0 k0Var, List<gb.r> list, String debugName, String str) {
        Map<Integer, w0> linkedHashMap;
        kotlin.jvm.internal.h.f(c10, "c");
        kotlin.jvm.internal.h.f(debugName, "debugName");
        this.f19432a = c10;
        this.f19433b = k0Var;
        this.f19434c = debugName;
        this.f19435d = str;
        l lVar = c10.f19464a;
        this.f19436e = lVar.f19442a.e(new a());
        this.f = lVar.f19442a.e(new c());
        if (list.isEmpty()) {
            linkedHashMap = m9.w.f10174a;
        } else {
            linkedHashMap = new LinkedHashMap<>();
            int r6 = 0;
            for (gb.r rVar : list) {
                linkedHashMap.put(Integer.valueOf(rVar.f6530d), new ac.n(this.f19432a, rVar, r6));
                r6++;
            }
        }
        this.f19437g = linkedHashMap;
    }

    public static final ArrayList e(gb.p pVar, k0 k0Var) {
        List<p.b> argumentList = pVar.f6457d;
        kotlin.jvm.internal.h.e(argumentList, "argumentList");
        List<p.b> list = argumentList;
        gb.p pVarA = ib.f.a(pVar, k0Var.f19432a.f19467d);
        Iterable iterableE = pVarA != null ? e(pVarA, k0Var) : null;
        if (iterableE == null) {
            iterableE = m9.v.f10173a;
        }
        return m9.t.m1(iterableE, list);
    }

    public static a1 f(List list, na.h hVar, c1 c1Var, ma.j jVar) {
        List list2 = list;
        ArrayList arrayList = new ArrayList(m9.n.Q0(list2));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((z0) it.next()).a(hVar));
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            m9.p.T0((Iterable) it2.next(), arrayList2);
        }
        a1.f2258b.getClass();
        return a1.a.c(arrayList2);
    }

    public final cc.m0 a(int r32) {
        n nVar = this.f19432a;
        if (a6.a.n(nVar.f19465b, r32).f9666c) {
            nVar.f19464a.f19447g.a();
        }
        return null;
    }

    public final List<w0> b() {
        return m9.t.v1(this.f19437g.values());
    }

    public final w0 c(int r32) {
        w0 w0Var = this.f19437g.get(Integer.valueOf(r32));
        if (w0Var != null) {
            return w0Var;
        }
        k0 k0Var = this.f19433b;
        if (k0Var != null) {
            return k0Var.c(r32);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03fa  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x042a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0108 A[LOOP:0: B:50:0x0102->B:52:0x0108, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x014f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final cc.m0 d(gb.p r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 1067
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yb.k0.d(gb.p, boolean):cc.m0");
    }

    public final cc.e0 g(gb.p proto) {
        gb.p pVarA;
        kotlin.jvm.internal.h.f(proto, "proto");
        if (!((proto.f6456c & 2) == 2)) {
            return d(proto, true);
        }
        n nVar = this.f19432a;
        String string = nVar.f19465b.getString(proto.f);
        cc.m0 m0VarD = d(proto, true);
        ib.g typeTable = nVar.f19467d;
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        int r52 = proto.f6456c;
        if ((r52 & 4) == 4) {
            pVarA = proto.f6459g;
        } else {
            pVarA = (r52 & 8) == 8 ? typeTable.a(proto.f6460h) : null;
        }
        kotlin.jvm.internal.h.c(pVarA);
        return nVar.f19464a.f19450j.a(proto, string, m0VarD, d(pVarA, true));
    }

    public final String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f19434c);
        k0 k0Var = this.f19433b;
        if (k0Var == null) {
            str = "";
        } else {
            str = ". Child of " + k0Var.f19434c;
        }
        sb2.append(str);
        return sb2.toString();
    }
}
