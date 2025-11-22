package ka;

import bc.l;
import cc.a1;
import cc.c1;
import cc.f0;
import cc.k1;
import cc.m0;
import cc.t1;
import j7.p;
import ja.o;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.jvm.internal.h;
import l9.m;
import lb.f;
import m9.n;
import m9.v;
import ma.a0;
import ma.b0;
import ma.e0;
import ma.g;
import ma.j;
import ma.p;
import ma.q;
import ma.r0;
import ma.t;
import ma.u0;
import ma.w0;
import ma.y0;
import na.h;
import pa.t0;
import vb.i;

/* loaded from: classes2.dex */
public final class b extends pa.b {

    /* renamed from: m, reason: collision with root package name */
    public static final lb.b f8790m = new lb.b(o.f8364k, f.t("Function"));

    /* renamed from: n, reason: collision with root package name */
    public static final lb.b f8791n = new lb.b(o.f8361h, f.t("KFunction"));

    /* renamed from: e, reason: collision with root package name */
    public final l f8792e;
    public final e0 f;

    /* renamed from: g, reason: collision with root package name */
    public final c f8793g;

    /* renamed from: h, reason: collision with root package name */
    public final int f8794h;

    /* renamed from: j, reason: collision with root package name */
    public final a f8795j;

    /* renamed from: k, reason: collision with root package name */
    public final d f8796k;

    /* renamed from: l, reason: collision with root package name */
    public final List<w0> f8797l;

    public final class a extends cc.b {
        public a() {
            super(b.this.f8792e);
        }

        @Override // cc.h
        public final Collection<cc.e0> d() {
            List listS;
            Iterable iterableS;
            b bVar = b.this;
            int r12 = bVar.f8793g.ordinal();
            if (r12 == 0 || r12 == 1) {
                listS = b8.f.S(b.f8790m);
            } else {
                int r42 = bVar.f8794h;
                if (r12 == 2) {
                    listS = b8.f.T(b.f8791n, new lb.b(o.f8364k, c.f8800d.n(r42)));
                } else {
                    if (r12 != 3) {
                        throw new p();
                    }
                    listS = b8.f.T(b.f8791n, new lb.b(o.f8359e, c.f8801e.n(r42)));
                }
            }
            b0 b0VarB = bVar.f.b();
            List<lb.b> list = listS;
            ArrayList arrayList = new ArrayList(n.Q0(list));
            for (lb.b bVar2 : list) {
                ma.e eVarA = t.a(b0VarB, bVar2);
                if (eVarA == null) {
                    throw new IllegalStateException(("Built-in class " + bVar2 + " not found").toString());
                }
                int size = eVarA.i().getParameters().size();
                List<w0> list2 = bVar.f8797l;
                h.f(list2, "<this>");
                if (!(size >= 0)) {
                    throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.f("Requested element count ", size, " is less than zero.").toString());
                }
                if (size == 0) {
                    iterableS = v.f10173a;
                } else {
                    int size2 = list2.size();
                    if (size >= size2) {
                        iterableS = m9.t.v1(list2);
                    } else if (size == 1) {
                        iterableS = b8.f.S(m9.t.i1(list2));
                    } else {
                        ArrayList arrayList2 = new ArrayList(size);
                        if (list2 instanceof RandomAccess) {
                            for (int r52 = size2 - size; r52 < size2; r52++) {
                                arrayList2.add(list2.get(r52));
                            }
                        } else {
                            ListIterator<w0> listIterator = list2.listIterator(size2 - size);
                            while (listIterator.hasNext()) {
                                arrayList2.add(listIterator.next());
                            }
                        }
                        iterableS = arrayList2;
                    }
                }
                Iterable iterable = iterableS;
                ArrayList arrayList3 = new ArrayList(n.Q0(iterable));
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList3.add(new k1(((w0) it.next()).q()));
                }
                a1.f2258b.getClass();
                arrayList.add(f0.e(a1.f2259c, eVarA, arrayList3));
            }
            return m9.t.v1(arrayList);
        }

        @Override // cc.h
        public final u0 g() {
            return u0.a.f10247a;
        }

        @Override // cc.c1
        public final List<w0> getParameters() {
            return b.this.f8797l;
        }

        @Override // cc.b, cc.n, cc.c1
        public final g n() {
            return b.this;
        }

        @Override // cc.c1
        public final boolean o() {
            return true;
        }

        @Override // cc.b
        /* renamed from: p */
        public final ma.e n() {
            return b.this;
        }

        public final String toString() {
            return b.this.toString();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(l storageManager, ja.b containingDeclaration, c functionKind, int r72) {
        super(storageManager, functionKind.n(r72));
        h.f(storageManager, "storageManager");
        h.f(containingDeclaration, "containingDeclaration");
        h.f(functionKind, "functionKind");
        this.f8792e = storageManager;
        this.f = containingDeclaration;
        this.f8793g = functionKind;
        this.f8794h = r72;
        this.f8795j = new a();
        this.f8796k = new d(storageManager, this);
        ArrayList arrayList = new ArrayList();
        ca.d dVar = new ca.d(1, r72);
        ArrayList arrayList2 = new ArrayList(n.Q0(dVar));
        Iterator<Integer> it = dVar.iterator();
        while (((ca.c) it).f2251c) {
            int r73 = ((m9.b0) it).nextInt();
            arrayList.add(t0.O0(this, t1.IN_VARIANCE, f.t("P" + r73), arrayList.size(), this.f8792e));
            arrayList2.add(m.f9594a);
        }
        arrayList.add(t0.O0(this, t1.OUT_VARIANCE, f.t("R"), arrayList.size(), this.f8792e));
        this.f8797l = m9.t.v1(arrayList);
    }

    @Override // ma.z
    public final boolean D0() {
        return false;
    }

    @Override // ma.e
    public final /* bridge */ /* synthetic */ Collection E() {
        return v.f10173a;
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
        return false;
    }

    @Override // ma.e
    public final boolean H0() {
        return false;
    }

    @Override // ma.e
    public final /* bridge */ /* synthetic */ ma.d M() {
        return null;
    }

    @Override // ma.e
    public final i N() {
        return i.b.f18453b;
    }

    @Override // ma.e
    public final /* bridge */ /* synthetic */ ma.e P() {
        return null;
    }

    @Override // ma.e, ma.k, ma.j
    public final j b() {
        return this.f;
    }

    @Override // pa.b0
    public final i e0(dc.f kotlinTypeRefiner) {
        h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this.f8796k;
    }

    @Override // na.a
    public final na.h getAnnotations() {
        return h.a.f10653a;
    }

    @Override // ma.m
    public final r0 getSource() {
        return r0.f10243a;
    }

    @Override // ma.e, ma.n, ma.z
    public final q getVisibility() {
        p.h PUBLIC = ma.p.f10225e;
        kotlin.jvm.internal.h.e(PUBLIC, "PUBLIC");
        return PUBLIC;
    }

    @Override // ma.e
    public final int h() {
        return 2;
    }

    @Override // ma.g
    public final c1 i() {
        return this.f8795j;
    }

    @Override // ma.z
    public final boolean isExternal() {
        return false;
    }

    @Override // ma.e
    public final boolean isInline() {
        return false;
    }

    @Override // ma.e, ma.z
    public final a0 j() {
        return a0.ABSTRACT;
    }

    @Override // ma.e
    public final /* bridge */ /* synthetic */ Collection k() {
        return v.f10173a;
    }

    @Override // ma.e, ma.h
    public final List<w0> s() {
        return this.f8797l;
    }

    public final String toString() {
        String strO = getName().o();
        kotlin.jvm.internal.h.e(strO, "name.asString()");
        return strO;
    }

    @Override // ma.e
    public final boolean u() {
        return false;
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
