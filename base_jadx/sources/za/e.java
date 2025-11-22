package za;

import cc.c1;
import cc.m0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import ma.a0;
import ma.e1;
import ma.p;
import ma.p0;
import ma.u0;
import ma.w0;
import ma.x0;
import ma.y0;
import p4.g7;
import va.c0;
import va.o;
import wa.h;

/* loaded from: classes2.dex */
public final class e extends pa.m implements xa.c {

    /* renamed from: h, reason: collision with root package name */
    public final g7 f19907h;

    /* renamed from: j, reason: collision with root package name */
    public final cb.g f19908j;

    /* renamed from: k, reason: collision with root package name */
    public final ma.e f19909k;

    /* renamed from: l, reason: collision with root package name */
    public final g7 f19910l;

    /* renamed from: m, reason: collision with root package name */
    public final l9.j f19911m;

    /* renamed from: n, reason: collision with root package name */
    public final int f19912n;

    /* renamed from: p, reason: collision with root package name */
    public final a0 f19913p;

    /* renamed from: q, reason: collision with root package name */
    public final e1 f19914q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f19915r;

    /* renamed from: s, reason: collision with root package name */
    public final a f19916s;

    /* renamed from: t, reason: collision with root package name */
    public final k f19917t;

    /* renamed from: v, reason: collision with root package name */
    public final p0<k> f19918v;
    public final vb.g w;

    /* renamed from: x, reason: collision with root package name */
    public final x f19919x;

    /* renamed from: y, reason: collision with root package name */
    public final ya.e f19920y;

    /* renamed from: z, reason: collision with root package name */
    public final bc.i<List<w0>> f19921z;

    public final class a extends cc.b {

        /* renamed from: c, reason: collision with root package name */
        public final bc.i<List<w0>> f19922c;

        /* renamed from: za.e$a$a, reason: collision with other inner class name */
        public static final class C0315a extends kotlin.jvm.internal.j implements x9.a<List<? extends w0>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ e f19924a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0315a(e eVar) {
                super(0);
                this.f19924a = eVar;
            }

            @Override // x9.a
            public final List<? extends w0> invoke() {
                return x0.b(this.f19924a);
            }
        }

        public a() {
            super(e.this.f19910l.b());
            this.f19922c = e.this.f19910l.b().d(new C0315a(e.this));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:100:0x0216  */
        /* JADX WARN: Removed duplicated region for block: B:103:0x0224  */
        /* JADX WARN: Removed duplicated region for block: B:110:0x025c  */
        /* JADX WARN: Removed duplicated region for block: B:111:0x0261  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x008a  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x00a1  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x017f  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x018a  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x0205  */
        @Override // cc.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.Collection<cc.e0> d() {
            /*
                Method dump skipped, instructions count: 628
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: za.e.a.d():java.util.Collection");
        }

        @Override // cc.h
        public final u0 g() {
            return ((ya.c) e.this.f19910l.f12358a).f19344m;
        }

        @Override // cc.c1
        public final List<w0> getParameters() {
            return this.f19922c.invoke();
        }

        @Override // cc.b, cc.n, cc.c1
        public final ma.g n() {
            return e.this;
        }

        @Override // cc.c1
        public final boolean o() {
            return true;
        }

        @Override // cc.b
        /* renamed from: p */
        public final ma.e n() {
            return e.this;
        }

        public final String toString() {
            String strO = e.this.getName().o();
            kotlin.jvm.internal.h.e(strO, "name.asString()");
            return strO;
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<List<? extends w0>> {
        public b() {
            super(0);
        }

        @Override // x9.a
        public final List<? extends w0> invoke() {
            e eVar = e.this;
            ArrayList<cb.x> typeParameters = eVar.f19908j.getTypeParameters();
            ArrayList arrayList = new ArrayList(m9.n.Q0(typeParameters));
            for (cb.x xVar : typeParameters) {
                w0 w0VarA = ((ya.j) eVar.f19910l.f12359b).a(xVar);
                if (w0VarA == null) {
                    throw new AssertionError("Parameter " + xVar + " surely belongs to class " + eVar.f19908j + ", so it must be resolved");
                }
                arrayList.add(w0VarA);
            }
            return arrayList;
        }
    }

    public static final class c<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return b8.f.q(sb.b.g((ma.e) t10).b(), sb.b.g((ma.e) t11).b());
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements x9.a<List<? extends cb.a>> {
        public d() {
            super(0);
        }

        @Override // x9.a
        public final List<? extends cb.a> invoke() {
            e eVar = e.this;
            lb.b bVarF = sb.b.f(eVar);
            if (bVarF == null) {
                return null;
            }
            ((ya.c) eVar.f19907h.f12358a).w.b(bVarF);
            return null;
        }
    }

    /* renamed from: za.e$e, reason: collision with other inner class name */
    public static final class C0316e extends kotlin.jvm.internal.j implements x9.l<dc.f, k> {
        public C0316e() {
            super(1);
        }

        @Override // x9.l
        public final k invoke(dc.f fVar) {
            dc.f it = fVar;
            kotlin.jvm.internal.h.f(it, "it");
            e eVar = e.this;
            return new k(eVar.f19910l, eVar, eVar.f19908j, eVar.f19909k != null, eVar.f19917t);
        }
    }

    static {
        x5.a.s("equals", "hashCode", "getClass", "wait", "notify", "notifyAll", "toString");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(g7 outerContext, ma.j containingDeclaration, cb.g jClass, ma.e eVar) {
        a0 a0VarA;
        super(outerContext.b(), containingDeclaration, jClass.getName(), ((ya.c) outerContext.f12358a).f19341j.a(jClass));
        kotlin.jvm.internal.h.f(outerContext, "outerContext");
        kotlin.jvm.internal.h.f(containingDeclaration, "containingDeclaration");
        kotlin.jvm.internal.h.f(jClass, "jClass");
        this.f19907h = outerContext;
        this.f19908j = jClass;
        this.f19909k = eVar;
        g7 g7VarA = ya.b.a(outerContext, this, jClass, 4);
        this.f19910l = g7VarA;
        ((h.a) ((ya.c) g7VarA.f12358a).f19338g).getClass();
        jClass.G();
        this.f19911m = c5.y.w(new d());
        this.f19912n = jClass.p() ? 5 : jClass.E() ? 2 : jClass.y() ? 3 : 1;
        if (jClass.p() || jClass.y()) {
            a0VarA = a0.FINAL;
        } else {
            a0VarA = a0.a.a(jClass.B(), jClass.B() || jClass.isAbstract() || jClass.E(), !jClass.isFinal());
        }
        this.f19913p = a0VarA;
        this.f19914q = jClass.getVisibility();
        this.f19915r = (jClass.q() == null || jClass.f()) ? false : true;
        this.f19916s = new a();
        k kVar = new k(g7VarA, this, jClass, eVar != null, null);
        this.f19917t = kVar;
        p0.a aVar = p0.f10236e;
        bc.l lVarB = g7VarA.b();
        dc.f fVarB = ((ya.c) g7VarA.f12358a).f19352u.b();
        C0316e c0316e = new C0316e();
        aVar.getClass();
        this.f19918v = p0.a.a(c0316e, this, lVarB, fVarB);
        this.w = new vb.g(kVar);
        this.f19919x = new x(g7VarA, jClass, this);
        this.f19920y = a6.a.v(g7VarA, jClass);
        this.f19921z = g7VarA.b().d(new b());
    }

    @Override // ma.z
    public final boolean D0() {
        return false;
    }

    @Override // ma.e
    public final Collection<ma.e> E() {
        if (this.f19913p != a0.SEALED) {
            return m9.v.f10173a;
        }
        ab.a aVarK = c5.v.K(2, false, false, null, 7);
        Collection<cb.j> collectionM = this.f19908j.M();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = collectionM.iterator();
        while (it.hasNext()) {
            ma.g gVarN = ((ab.d) this.f19910l.f12362e).e((cb.j) it.next(), aVarK).M0().n();
            ma.e eVar = gVarN instanceof ma.e ? (ma.e) gVarN : null;
            if (eVar != null) {
                arrayList.add(eVar);
            }
        }
        return m9.t.s1(arrayList, new c());
    }

    @Override // ma.e
    public final boolean F() {
        return false;
    }

    @Override // ma.z
    public final boolean G() {
        return false;
    }

    @Override // ma.h
    public final boolean H() {
        return this.f19915r;
    }

    @Override // ma.e
    public final boolean H0() {
        return false;
    }

    @Override // pa.b, ma.e
    /* renamed from: K0, reason: merged with bridge method [inline-methods] */
    public final k C0() {
        vb.i iVarC0 = super.C0();
        kotlin.jvm.internal.h.d(iVarC0, "null cannot be cast to non-null type org.jetbrains.kotlin.load.java.lazy.descriptors.LazyJavaClassMemberScope");
        return (k) iVarC0;
    }

    @Override // ma.e
    public final ma.d M() {
        return null;
    }

    @Override // ma.e
    public final vb.i N() {
        return this.f19919x;
    }

    @Override // ma.e
    public final ma.e P() {
        return null;
    }

    @Override // pa.b0
    public final vb.i e0(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        return (k) this.f19918v.a(kotlinTypeRefiner);
    }

    @Override // na.a
    public final na.h getAnnotations() {
        return this.f19920y;
    }

    @Override // ma.e, ma.n, ma.z
    public final ma.q getVisibility() {
        p.d dVar = ma.p.f10221a;
        e1 e1Var = this.f19914q;
        if (!kotlin.jvm.internal.h.a(e1Var, dVar) || this.f19908j.q() != null) {
            return c0.a(e1Var);
        }
        o.a aVar = va.o.f18358a;
        kotlin.jvm.internal.h.e(aVar, "{\n            JavaDescri…KAGE_VISIBILITY\n        }");
        return aVar;
    }

    @Override // ma.e
    public final int h() {
        return this.f19912n;
    }

    @Override // ma.g
    public final c1 i() {
        return this.f19916s;
    }

    @Override // ma.e
    public final boolean isInline() {
        return false;
    }

    @Override // ma.e, ma.z
    public final a0 j() {
        return this.f19913p;
    }

    @Override // ma.e
    public final Collection k() {
        return this.f19917t.f19934q.invoke();
    }

    @Override // ma.e, ma.h
    public final List<w0> s() {
        return this.f19921z.invoke();
    }

    public final String toString() {
        return "Lazy Java class " + sb.b.h(this);
    }

    @Override // ma.e
    public final boolean u() {
        return false;
    }

    @Override // pa.b, ma.e
    public final vb.i x0() {
        return this.w;
    }

    @Override // ma.e
    public final boolean y() {
        return false;
    }

    @Override // ma.e
    public final y0<m0> y0() {
        return null;
    }
}
