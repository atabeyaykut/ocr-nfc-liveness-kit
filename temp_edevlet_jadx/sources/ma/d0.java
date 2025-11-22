package ma;

import androidx.exifinterface.media.ExifInterface;
import bc.c;
import cc.t1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import ma.p;
import na.h;
import vb.i;

/* loaded from: classes2.dex */
public final class d0 {

    /* renamed from: a, reason: collision with root package name */
    public final bc.l f10194a;

    /* renamed from: b, reason: collision with root package name */
    public final b0 f10195b;

    /* renamed from: c, reason: collision with root package name */
    public final bc.g<lb.c, e0> f10196c;

    /* renamed from: d, reason: collision with root package name */
    public final bc.g<a, e> f10197d;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final lb.b f10198a;

        /* renamed from: b, reason: collision with root package name */
        public final List<Integer> f10199b;

        public a(lb.b classId, List<Integer> list) {
            kotlin.jvm.internal.h.f(classId, "classId");
            this.f10198a = classId;
            this.f10199b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return kotlin.jvm.internal.h.a(this.f10198a, aVar.f10198a) && kotlin.jvm.internal.h.a(this.f10199b, aVar.f10199b);
        }

        public final int hashCode() {
            return this.f10199b.hashCode() + (this.f10198a.hashCode() * 31);
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("ClassRequest(classId=");
            sb2.append(this.f10198a);
            sb2.append(", typeParametersCount=");
            return android.support.v4.media.a.j(sb2, this.f10199b, ')');
        }
    }

    public static final class b extends pa.m {

        /* renamed from: h, reason: collision with root package name */
        public final boolean f10200h;

        /* renamed from: j, reason: collision with root package name */
        public final ArrayList f10201j;

        /* renamed from: k, reason: collision with root package name */
        public final cc.m f10202k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(bc.l storageManager, f container, lb.f fVar, boolean z10, int r72) {
            super(storageManager, container, fVar, r0.f10243a);
            kotlin.jvm.internal.h.f(storageManager, "storageManager");
            kotlin.jvm.internal.h.f(container, "container");
            this.f10200h = z10;
            ca.d dVarR0 = b8.f.r0(0, r72);
            ArrayList arrayList = new ArrayList(m9.n.Q0(dVarR0));
            Iterator<Integer> it = dVarR0.iterator();
            while (((ca.c) it).f2251c) {
                int r6 = ((m9.b0) it).nextInt();
                arrayList.add(pa.t0.O0(this, t1.INVARIANT, lb.f.t(ExifInterface.GPS_DIRECTION_TRUE + r6), r6, storageManager));
            }
            this.f10201j = arrayList;
            this.f10202k = new cc.m(this, x0.b(this), x5.a.r(sb.b.j(this).m().f()), storageManager);
        }

        @Override // ma.z
        public final boolean D0() {
            return false;
        }

        @Override // ma.e
        public final Collection<e> E() {
            return m9.v.f10173a;
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
            return this.f10200h;
        }

        @Override // ma.e
        public final boolean H0() {
            return false;
        }

        @Override // ma.e
        public final ma.d M() {
            return null;
        }

        @Override // ma.e
        public final vb.i N() {
            return i.b.f18453b;
        }

        @Override // ma.e
        public final e P() {
            return null;
        }

        @Override // pa.b0
        public final vb.i e0(dc.f kotlinTypeRefiner) {
            kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
            return i.b.f18453b;
        }

        @Override // na.a
        public final na.h getAnnotations() {
            return h.a.f10653a;
        }

        @Override // ma.e, ma.n, ma.z
        public final q getVisibility() {
            p.h PUBLIC = p.f10225e;
            kotlin.jvm.internal.h.e(PUBLIC, "PUBLIC");
            return PUBLIC;
        }

        @Override // ma.e
        public final int h() {
            return 1;
        }

        @Override // ma.g
        public final cc.c1 i() {
            return this.f10202k;
        }

        @Override // pa.m, ma.z
        public final boolean isExternal() {
            return false;
        }

        @Override // ma.e
        public final boolean isInline() {
            return false;
        }

        @Override // ma.e, ma.z
        public final a0 j() {
            return a0.FINAL;
        }

        @Override // ma.e
        public final Collection<ma.d> k() {
            return m9.x.f10175a;
        }

        @Override // ma.e, ma.h
        public final List<w0> s() {
            return this.f10201j;
        }

        public final String toString() {
            return "class " + getName() + " (not found)";
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
        public final y0<cc.m0> y0() {
            return null;
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.l<a, e> {
        public c() {
            super(1);
        }

        @Override // x9.l
        public final e invoke(a aVar) {
            f fVarA;
            a aVar2 = aVar;
            kotlin.jvm.internal.h.f(aVar2, "<name for destructuring parameter 0>");
            lb.b bVar = aVar2.f10198a;
            if (bVar.f9666c) {
                throw new UnsupportedOperationException("Unresolved local class: " + bVar);
            }
            lb.b bVarG = bVar.g();
            d0 d0Var = d0.this;
            List<Integer> list = aVar2.f10199b;
            if (bVarG == null || (fVarA = d0Var.a(bVarG, m9.t.W0(list))) == null) {
                bc.g<lb.c, e0> gVar = d0Var.f10196c;
                lb.c cVarH = bVar.h();
                kotlin.jvm.internal.h.e(cVarH, "classId.packageFqName");
                fVarA = (f) ((c.k) gVar).invoke(cVarH);
            }
            f fVar = fVarA;
            boolean zK = bVar.k();
            bc.l lVar = d0Var.f10194a;
            lb.f fVarJ = bVar.j();
            kotlin.jvm.internal.h.e(fVarJ, "classId.shortClassName");
            Integer num = (Integer) m9.t.c1(list);
            return new b(lVar, fVar, fVarJ, zK, num != null ? num.intValue() : 0);
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements x9.l<lb.c, e0> {
        public d() {
            super(1);
        }

        @Override // x9.l
        public final e0 invoke(lb.c cVar) {
            lb.c fqName = cVar;
            kotlin.jvm.internal.h.f(fqName, "fqName");
            return new pa.r(d0.this.f10195b, fqName);
        }
    }

    public d0(bc.l storageManager, b0 module) {
        kotlin.jvm.internal.h.f(storageManager, "storageManager");
        kotlin.jvm.internal.h.f(module, "module");
        this.f10194a = storageManager;
        this.f10195b = module;
        this.f10196c = storageManager.g(new d());
        this.f10197d = storageManager.g(new c());
    }

    public final e a(lb.b classId, List<Integer> list) {
        kotlin.jvm.internal.h.f(classId, "classId");
        return (e) ((c.k) this.f10197d).invoke(new a(classId, list));
    }
}
