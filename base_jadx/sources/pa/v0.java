package pa;

import cc.p1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import ma.a1;
import ma.b;
import ma.b1;
import ma.p;

/* loaded from: classes2.dex */
public class v0 extends w0 implements a1 {
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f13001g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f13002h;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f13003j;

    /* renamed from: k, reason: collision with root package name */
    public final cc.e0 f13004k;

    /* renamed from: l, reason: collision with root package name */
    public final a1 f13005l;

    public static final class a extends v0 {

        /* renamed from: m, reason: collision with root package name */
        public final l9.j f13006m;

        public a(ma.a aVar, a1 a1Var, int r32, na.h hVar, lb.f fVar, cc.e0 e0Var, boolean z10, boolean z11, boolean z12, cc.e0 e0Var2, ma.r0 r0Var, x9.a<? extends List<? extends b1>> aVar2) {
            super(aVar, a1Var, r32, hVar, fVar, e0Var, z10, z11, z12, e0Var2, r0Var);
            this.f13006m = c5.y.w(aVar2);
        }

        @Override // pa.v0, ma.a1
        public final a1 q0(ka.e eVar, lb.f fVar, int r18) {
            na.h annotations = getAnnotations();
            kotlin.jvm.internal.h.e(annotations, "annotations");
            cc.e0 type = getType();
            kotlin.jvm.internal.h.e(type, "type");
            return new a(eVar, null, r18, annotations, fVar, type, t0(), this.f13002h, this.f13003j, this.f13004k, ma.r0.f10243a, new u0(this));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v0(ma.a containingDeclaration, a1 a1Var, int r10, na.h annotations, lb.f name, cc.e0 outType, boolean z10, boolean z11, boolean z12, cc.e0 e0Var, ma.r0 source) {
        super(containingDeclaration, annotations, name, outType, source);
        kotlin.jvm.internal.h.f(containingDeclaration, "containingDeclaration");
        kotlin.jvm.internal.h.f(annotations, "annotations");
        kotlin.jvm.internal.h.f(name, "name");
        kotlin.jvm.internal.h.f(outType, "outType");
        kotlin.jvm.internal.h.f(source, "source");
        this.f = r10;
        this.f13001g = z10;
        this.f13002h = z11;
        this.f13003j = z12;
        this.f13004k = e0Var;
        this.f13005l = a1Var == null ? this : a1Var;
    }

    @Override // ma.b1
    public final /* bridge */ /* synthetic */ qb.g S() {
        return null;
    }

    @Override // ma.a1
    public final boolean T() {
        return this.f13003j;
    }

    @Override // ma.a1
    public final boolean W() {
        return this.f13002h;
    }

    @Override // pa.q
    public final a1 a() {
        a1 a1Var = this.f13005l;
        return a1Var == this ? this : a1Var.a();
    }

    @Override // pa.q, ma.j
    public final ma.a b() {
        ma.j jVarB = super.b();
        kotlin.jvm.internal.h.d(jVarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor");
        return (ma.a) jVarB;
    }

    @Override // ma.t0
    public final ma.k c(p1 substitutor) {
        kotlin.jvm.internal.h.f(substitutor, "substitutor");
        if (substitutor.h()) {
            return this;
        }
        throw new UnsupportedOperationException();
    }

    @Override // ma.a
    public final Collection<a1> e() {
        Collection<? extends ma.a> collectionE = b().e();
        kotlin.jvm.internal.h.e(collectionE, "containingDeclaration.overriddenDescriptors");
        Collection<? extends ma.a> collection = collectionE;
        ArrayList arrayList = new ArrayList(m9.n.Q0(collection));
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(((ma.a) it.next()).g().get(this.f));
        }
        return arrayList;
    }

    @Override // ma.b1
    public final boolean f0() {
        return false;
    }

    @Override // ma.a1
    public final cc.e0 g0() {
        return this.f13004k;
    }

    @Override // ma.a1
    public final int getIndex() {
        return this.f;
    }

    @Override // ma.n, ma.z
    public final ma.q getVisibility() {
        p.i LOCAL = ma.p.f;
        kotlin.jvm.internal.h.e(LOCAL, "LOCAL");
        return LOCAL;
    }

    @Override // ma.j
    public final <R, D> R o0(ma.l<R, D> lVar, D d10) {
        return lVar.a(this, d10);
    }

    @Override // ma.a1
    public a1 q0(ka.e eVar, lb.f fVar, int r17) {
        na.h annotations = getAnnotations();
        kotlin.jvm.internal.h.e(annotations, "annotations");
        cc.e0 type = getType();
        kotlin.jvm.internal.h.e(type, "type");
        return new v0(eVar, null, r17, annotations, fVar, type, t0(), this.f13002h, this.f13003j, this.f13004k, ma.r0.f10243a);
    }

    @Override // ma.a1
    public final boolean t0() {
        if (!this.f13001g) {
            return false;
        }
        b.a aVarK0 = ((ma.b) b()).k0();
        aVarK0.getClass();
        return aVarK0 != b.a.FAKE_OVERRIDE;
    }
}
