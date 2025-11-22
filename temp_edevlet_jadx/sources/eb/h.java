package eb;

import cc.e0;
import eb.s;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import ma.a1;
import ma.b0;
import ma.d0;
import ma.r0;
import pa.g0;
import qb.l;

/* loaded from: classes2.dex */
public final class h extends eb.a<na.c, qb.g<?>> {

    /* renamed from: c, reason: collision with root package name */
    public final b0 f5194c;

    /* renamed from: d, reason: collision with root package name */
    public final d0 f5195d;

    /* renamed from: e, reason: collision with root package name */
    public final yb.f f5196e;

    public abstract class a implements s.a {

        /* renamed from: eb.h$a$a, reason: collision with other inner class name */
        public static final class C0080a implements s.b {

            /* renamed from: a, reason: collision with root package name */
            public final ArrayList<qb.g<?>> f5198a = new ArrayList<>();

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ h f5199b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ lb.f f5200c;

            /* renamed from: d, reason: collision with root package name */
            public final /* synthetic */ a f5201d;

            /* renamed from: eb.h$a$a$a, reason: collision with other inner class name */
            public static final class C0081a implements s.a {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ s.a f5202a;

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ s.a f5203b;

                /* renamed from: c, reason: collision with root package name */
                public final /* synthetic */ C0080a f5204c;

                /* renamed from: d, reason: collision with root package name */
                public final /* synthetic */ ArrayList<na.c> f5205d;

                public C0081a(i iVar, C0080a c0080a, ArrayList arrayList) {
                    this.f5203b = iVar;
                    this.f5204c = c0080a;
                    this.f5205d = arrayList;
                    this.f5202a = iVar;
                }

                @Override // eb.s.a
                public final void a() {
                    this.f5203b.a();
                    this.f5204c.f5198a.add(new qb.a((na.c) m9.t.p1(this.f5205d)));
                }

                @Override // eb.s.a
                public final void b(lb.f fVar, lb.b bVar, lb.f fVar2) {
                    this.f5202a.b(fVar, bVar, fVar2);
                }

                @Override // eb.s.a
                public final s.b c(lb.f fVar) {
                    return this.f5202a.c(fVar);
                }

                @Override // eb.s.a
                public final s.a d(lb.b bVar, lb.f fVar) {
                    return this.f5202a.d(bVar, fVar);
                }

                @Override // eb.s.a
                public final void e(Object obj, lb.f fVar) {
                    this.f5202a.e(obj, fVar);
                }

                @Override // eb.s.a
                public final void f(lb.f fVar, qb.f fVar2) {
                    this.f5202a.f(fVar, fVar2);
                }
            }

            public C0080a(h hVar, lb.f fVar, a aVar) {
                this.f5199b = hVar;
                this.f5200c = fVar;
                this.f5201d = aVar;
            }

            @Override // eb.s.b
            public final void a() {
                ArrayList<qb.g<?>> elements = this.f5198a;
                i iVar = (i) this.f5201d;
                iVar.getClass();
                kotlin.jvm.internal.h.f(elements, "elements");
                lb.f fVar = this.f5200c;
                if (fVar == null) {
                    return;
                }
                a1 a1VarN = c5.y.n(fVar, iVar.f5208d);
                if (a1VarN != null) {
                    HashMap<lb.f, qb.g<?>> map = iVar.f5206b;
                    List listI = com.google.android.gms.internal.clearcut.d0.i(elements);
                    e0 type = a1VarN.getType();
                    kotlin.jvm.internal.h.e(type, "parameter.type");
                    map.put(fVar, new qb.b(listI, new qb.h(type)));
                    return;
                }
                if (iVar.f5207c.p(iVar.f5209e) && kotlin.jvm.internal.h.a(fVar.o(), "value")) {
                    ArrayList arrayList = new ArrayList();
                    Iterator<qb.g<?>> it = elements.iterator();
                    while (it.hasNext()) {
                        qb.g<?> next = it.next();
                        if (next instanceof qb.a) {
                            arrayList.add(next);
                        }
                    }
                    List<na.c> list = iVar.f;
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        list.add((na.c) ((qb.a) it2.next()).f13469a);
                    }
                }
            }

            @Override // eb.s.b
            public final void b(Object obj) {
                this.f5198a.add(h.u(this.f5199b, this.f5200c, obj));
            }

            @Override // eb.s.b
            public final void c(qb.f fVar) {
                this.f5198a.add(new qb.s(fVar));
            }

            @Override // eb.s.b
            public final void d(lb.b bVar, lb.f fVar) {
                this.f5198a.add(new qb.k(bVar, fVar));
            }

            @Override // eb.s.b
            public final s.a e(lb.b bVar) {
                ArrayList arrayList = new ArrayList();
                return new C0081a(this.f5199b.q(bVar, r0.f10243a, arrayList), this, arrayList);
            }
        }

        public a() {
        }

        @Override // eb.s.a
        public final void b(lb.f fVar, lb.b bVar, lb.f fVar2) {
            ((i) this).f5206b.put(fVar, new qb.k(bVar, fVar2));
        }

        @Override // eb.s.a
        public final s.b c(lb.f fVar) {
            return new C0080a(h.this, fVar, this);
        }

        @Override // eb.s.a
        public final s.a d(lb.b bVar, lb.f fVar) {
            ArrayList arrayList = new ArrayList();
            return new g(h.this.q(bVar, r0.f10243a, arrayList), this, fVar, arrayList);
        }

        @Override // eb.s.a
        public final void e(Object obj, lb.f fVar) {
            ((i) this).f5206b.put(fVar, h.u(h.this, fVar, obj));
        }

        @Override // eb.s.a
        public final void f(lb.f fVar, qb.f fVar2) {
            ((i) this).f5206b.put(fVar, new qb.s(fVar2));
        }

        public abstract void g(lb.f fVar, qb.g<?> gVar);
    }

    public h(g0 g0Var, d0 d0Var, bc.c cVar, ra.f fVar) {
        super(cVar, fVar);
        this.f5194c = g0Var;
        this.f5195d = d0Var;
        this.f5196e = new yb.f(g0Var, d0Var);
    }

    public static final qb.g u(h hVar, lb.f fVar, Object obj) {
        hVar.getClass();
        qb.g gVarB = qb.i.b(obj);
        if (gVarB != null) {
            return gVarB;
        }
        String message = "Unsupported annotation argument: " + fVar;
        kotlin.jvm.internal.h.f(message, "message");
        return new l.a(message);
    }

    @Override // eb.d
    public final i q(lb.b bVar, r0 r0Var, List result) {
        kotlin.jvm.internal.h.f(result, "result");
        return new i(this, ma.t.c(this.f5194c, bVar, this.f5195d), bVar, result, r0Var);
    }
}
