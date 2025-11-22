package pa;

import cc.p1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ma.a1;
import ma.b;
import pa.x;

/* loaded from: classes2.dex */
public final class s0 extends x implements r0 {
    public final bc.l H;
    public final ma.v0 I;
    public final bc.j K;
    public ma.d L;
    public static final /* synthetic */ da.m<Object>[] N = {kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(s0.class), "withDispatchReceiver", "getWithDispatchReceiver()Lorg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptor;"))};
    public static final a M = new a();

    public static final class a {
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<s0> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ma.d f12992b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ma.d dVar) {
            super(0);
            this.f12992b = dVar;
        }

        @Override // x9.a
        public final s0 invoke() {
            s0 s0Var = s0.this;
            bc.l lVar = s0Var.H;
            ma.v0 v0Var = s0Var.I;
            ma.d dVar = this.f12992b;
            na.h annotations = dVar.getAnnotations();
            b.a aVarK0 = dVar.k0();
            kotlin.jvm.internal.h.e(aVarK0, "underlyingConstructorDescriptor.kind");
            ma.v0 v0Var2 = s0Var.I;
            ma.r0 source = v0Var2.getSource();
            kotlin.jvm.internal.h.e(source, "typeAliasDescriptor.source");
            s0 s0Var2 = new s0(lVar, v0Var, dVar, s0Var, annotations, aVarK0, source);
            s0.M.getClass();
            p1 p1VarD = v0Var2.p() == null ? null : p1.d(v0Var2.R());
            if (p1VarD == null) {
                return null;
            }
            ma.o0 o0VarA0 = dVar.a0();
            d dVarC = o0VarA0 != null ? o0VarA0.c(p1VarD) : null;
            List<ma.o0> listP0 = dVar.p0();
            kotlin.jvm.internal.h.e(listP0, "underlyingConstructorDes…contextReceiverParameters");
            List<ma.o0> list = listP0;
            ArrayList arrayList = new ArrayList(m9.n.Q0(list));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((ma.o0) it.next()).c(p1VarD));
            }
            List<ma.w0> listS = v0Var2.s();
            List<a1> listG = s0Var.g();
            cc.e0 e0Var = s0Var.f13010g;
            kotlin.jvm.internal.h.c(e0Var);
            s0Var2.N0(null, dVarC, arrayList, listS, listG, e0Var, ma.a0.FINAL, v0Var2.getVisibility());
            return s0Var2;
        }
    }

    public /* synthetic */ s0() {
        throw null;
    }

    public s0(bc.l lVar, ma.v0 v0Var, ma.d dVar, r0 r0Var, na.h hVar, b.a aVar, ma.r0 r0Var2) {
        super(aVar, v0Var, r0Var, r0Var2, hVar, lb.h.f9683e);
        this.H = lVar;
        this.I = v0Var;
        this.f13022v = v0Var.D0();
        this.K = lVar.f(new b(dVar));
        this.L = dVar;
    }

    @Override // pa.x
    public final x K0(b.a kind, ma.j newOwner, ma.u uVar, ma.r0 r0Var, na.h annotations, lb.f fVar) {
        kotlin.jvm.internal.h.f(newOwner, "newOwner");
        kotlin.jvm.internal.h.f(kind, "kind");
        kotlin.jvm.internal.h.f(annotations, "annotations");
        return new s0(this.H, this.I, this.L, this, annotations, b.a.DECLARATION, r0Var);
    }

    @Override // pa.x, ma.b
    /* renamed from: T0, reason: merged with bridge method [inline-methods] */
    public final r0 b0(ma.j newOwner, ma.a0 a0Var, ma.o visibility) {
        b.a aVar = b.a.FAKE_OVERRIDE;
        kotlin.jvm.internal.h.f(newOwner, "newOwner");
        kotlin.jvm.internal.h.f(visibility, "visibility");
        x.a aVar2 = (x.a) r();
        aVar2.b(newOwner);
        aVar2.a(a0Var);
        aVar2.q(visibility);
        aVar2.p(aVar);
        aVar2.f13037m = false;
        ma.u uVarBuild = aVar2.build();
        kotlin.jvm.internal.h.d(uVarBuild, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor");
        return (r0) uVarBuild;
    }

    @Override // pa.x, pa.q
    /* renamed from: U0, reason: merged with bridge method [inline-methods] */
    public final r0 a() {
        ma.u uVarA = super.a();
        kotlin.jvm.internal.h.d(uVarA, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor");
        return (r0) uVarA;
    }

    @Override // pa.x, ma.u, ma.t0
    /* renamed from: V0, reason: merged with bridge method [inline-methods] */
    public final s0 c(p1 substitutor) {
        kotlin.jvm.internal.h.f(substitutor, "substitutor");
        ma.u uVarC = super.c(substitutor);
        kotlin.jvm.internal.h.d(uVarC, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptorImpl");
        s0 s0Var = (s0) uVarC;
        cc.e0 e0Var = s0Var.f13010g;
        kotlin.jvm.internal.h.c(e0Var);
        ma.d dVarC = this.L.a().c(p1.d(e0Var));
        if (dVarC == null) {
            return null;
        }
        s0Var.L = dVarC;
        return s0Var;
    }

    @Override // pa.q, ma.j
    public final ma.h b() {
        return this.I;
    }

    @Override // pa.q, ma.j
    public final ma.j b() {
        return this.I;
    }

    @Override // pa.x, ma.u, ma.t0
    public final /* bridge */ /* synthetic */ ma.i c(p1 p1Var) {
        throw null;
    }

    @Override // pa.x, ma.a
    public final cc.e0 getReturnType() {
        cc.e0 e0Var = this.f13010g;
        kotlin.jvm.internal.h.c(e0Var);
        return e0Var;
    }

    @Override // pa.r0
    public final ma.d m0() {
        return this.L;
    }

    @Override // ma.i
    public final boolean w() {
        return this.L.w();
    }

    @Override // ma.i
    public final ma.e x() {
        ma.e eVarX = this.L.x();
        kotlin.jvm.internal.h.e(eVarX, "underlyingConstructorDescriptor.constructedClass");
        return eVarX;
    }
}
