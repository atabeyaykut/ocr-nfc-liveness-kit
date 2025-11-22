package za;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import lc.e;

/* loaded from: classes2.dex */
public final class a implements b {

    /* renamed from: a, reason: collision with root package name */
    public final cb.g f19884a;

    /* renamed from: b, reason: collision with root package name */
    public final x9.l<cb.p, Boolean> f19885b;

    /* renamed from: c, reason: collision with root package name */
    public final C0314a f19886c;

    /* renamed from: d, reason: collision with root package name */
    public final LinkedHashMap f19887d;

    /* renamed from: e, reason: collision with root package name */
    public final LinkedHashMap f19888e;
    public final LinkedHashMap f;

    /* renamed from: za.a$a, reason: collision with other inner class name */
    public static final class C0314a extends kotlin.jvm.internal.j implements x9.l<cb.q, Boolean> {
        public C0314a() {
            super(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:37:0x0094  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00a2  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00a5  */
        @Override // x9.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Boolean invoke(cb.q r6) {
            /*
                r5 = this;
                cb.q r6 = (cb.q) r6
                java.lang.String r0 = "m"
                kotlin.jvm.internal.h.f(r6, r0)
                za.a r0 = za.a.this
                x9.l<cb.p, java.lang.Boolean> r0 = r0.f19885b
                java.lang.Object r0 = r0.invoke(r6)
                java.lang.Boolean r0 = (java.lang.Boolean) r0
                boolean r0 = r0.booleanValue()
                r1 = 0
                if (r0 == 0) goto La6
                sa.r r0 = r6.i()
                boolean r0 = r0.E()
                r2 = 1
                if (r0 == 0) goto La2
                lb.f r0 = r6.getName()
                java.lang.String r0 = r0.o()
                int r3 = r0.hashCode()
                r4 = -1776922004(0xffffffff9616526c, float:-1.2142911E-25)
                if (r3 == r4) goto L8c
                r4 = -1295482945(0xffffffffb2c87fbf, float:-2.3341157E-8)
                if (r3 == r4) goto L48
                r4 = 147696667(0x8cdac1b, float:1.23784505E-33)
                if (r3 == r4) goto L3f
                goto L9d
            L3f:
                java.lang.String r3 = "hashCode"
                boolean r0 = r0.equals(r3)
                if (r0 != 0) goto L94
                goto L9d
            L48:
                java.lang.String r3 = "equals"
                boolean r0 = r0.equals(r3)
                if (r0 != 0) goto L51
                goto L9d
            L51:
                java.util.List r6 = r6.g()
                java.lang.Object r6 = m9.t.r1(r6)
                cb.z r6 = (cb.z) r6
                r0 = 0
                if (r6 == 0) goto L63
                cb.w r6 = r6.getType()
                goto L64
            L63:
                r6 = r0
            L64:
                boolean r3 = r6 instanceof cb.j
                if (r3 == 0) goto L6b
                r0 = r6
                cb.j r0 = (cb.j) r0
            L6b:
                if (r0 != 0) goto L6e
                goto L9d
            L6e:
                cb.i r6 = r0.b()
                boolean r0 = r6 instanceof cb.g
                if (r0 == 0) goto L9d
                cb.g r6 = (cb.g) r6
                lb.c r6 = r6.d()
                if (r6 == 0) goto L9d
                java.lang.String r6 = r6.b()
                java.lang.String r0 = "java.lang.Object"
                boolean r6 = kotlin.jvm.internal.h.a(r6, r0)
                if (r6 == 0) goto L9d
                r6 = 1
                goto L9e
            L8c:
                java.lang.String r3 = "toString"
                boolean r0 = r0.equals(r3)
                if (r0 == 0) goto L9d
            L94:
                java.util.List r6 = r6.g()
                boolean r6 = r6.isEmpty()
                goto L9e
            L9d:
                r6 = 0
            L9e:
                if (r6 == 0) goto La2
                r6 = 1
                goto La3
            La2:
                r6 = 0
            La3:
                if (r6 != 0) goto La6
                r1 = 1
            La6:
                java.lang.Boolean r6 = java.lang.Boolean.valueOf(r1)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: za.a.C0314a.invoke(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(cb.g jClass, x9.l<? super cb.p, Boolean> memberFilter) {
        kotlin.jvm.internal.h.f(jClass, "jClass");
        kotlin.jvm.internal.h.f(memberFilter, "memberFilter");
        this.f19884a = jClass;
        this.f19885b = memberFilter;
        C0314a c0314a = new C0314a();
        this.f19886c = c0314a;
        lc.e eVarV0 = lc.w.V0(m9.t.U0(jClass.L()), c0314a);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        e.a aVar = new e.a(eVarV0);
        while (aVar.hasNext()) {
            Object next = aVar.next();
            lb.f name = ((cb.q) next).getName();
            Object arrayList = linkedHashMap.get(name);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(name, arrayList);
            }
            ((List) arrayList).add(next);
        }
        this.f19887d = linkedHashMap;
        lc.e eVarV02 = lc.w.V0(m9.t.U0(this.f19884a.A()), this.f19885b);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        e.a aVar2 = new e.a(eVarV02);
        while (aVar2.hasNext()) {
            Object next2 = aVar2.next();
            linkedHashMap2.put(((cb.n) next2).getName(), next2);
        }
        this.f19888e = linkedHashMap2;
        ArrayList arrayListM = this.f19884a.m();
        x9.l<cb.p, Boolean> lVar = this.f19885b;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayListM) {
            if (((Boolean) lVar.invoke(obj)).booleanValue()) {
                arrayList2.add(obj);
            }
        }
        int r42 = b8.f.V(m9.n.Q0(arrayList2));
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(r42 < 16 ? 16 : r42);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Object next3 = it.next();
            linkedHashMap3.put(((cb.v) next3).getName(), next3);
        }
        this.f = linkedHashMap3;
    }

    @Override // za.b
    public final Set<lb.f> a() {
        lc.e eVarV0 = lc.w.V0(m9.t.U0(this.f19884a.L()), this.f19886c);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        e.a aVar = new e.a(eVarV0);
        while (aVar.hasNext()) {
            linkedHashSet.add(((cb.q) aVar.next()).getName());
        }
        return linkedHashSet;
    }

    @Override // za.b
    public final Collection<cb.q> b(lb.f name) {
        kotlin.jvm.internal.h.f(name, "name");
        List list = (List) this.f19887d.get(name);
        return list != null ? list : m9.v.f10173a;
    }

    @Override // za.b
    public final cb.n c(lb.f name) {
        kotlin.jvm.internal.h.f(name, "name");
        return (cb.n) this.f19888e.get(name);
    }

    @Override // za.b
    public final cb.v d(lb.f name) {
        kotlin.jvm.internal.h.f(name, "name");
        return (cb.v) this.f.get(name);
    }

    @Override // za.b
    public final Set<lb.f> e() {
        return this.f.keySet();
    }

    @Override // za.b
    public final Set<lb.f> f() {
        lc.e eVarV0 = lc.w.V0(m9.t.U0(this.f19884a.A()), this.f19885b);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        e.a aVar = new e.a(eVarV0);
        while (aVar.hasNext()) {
            linkedHashSet.add(((cb.n) aVar.next()).getName());
        }
        return linkedHashSet;
    }
}
