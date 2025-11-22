package kotlin.reflect.jvm.internal.impl.load.java;

import ab.g;
import cc.e0;
import cc.p1;
import java.util.List;
import kotlin.jvm.internal.h;
import lc.f;
import lc.q;
import lc.w;
import lc.y;
import m9.t;
import ma.a1;
import ma.o0;
import ma.q0;
import ob.j;
import ob.n;
import x9.l;

/* loaded from: classes2.dex */
public final class ErasedOverridabilityCondition implements j {

    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8978a;

        static {
            int[] r02 = new int[g.d.d(3).length];
            try {
                r02[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f8978a = r02;
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements l<a1, e0> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f8979a = new b();

        public b() {
            super(1);
        }

        @Override // x9.l
        public final e0 invoke(a1 a1Var) {
            return a1Var.getType();
        }
    }

    @Override // ob.j
    public j.a a() {
        return j.a.SUCCESS_ONLY;
    }

    @Override // ob.j
    public j.b b(ma.a superDescriptor, ma.a subDescriptor, ma.e eVar) {
        boolean z10;
        ma.a aVarC;
        h.f(superDescriptor, "superDescriptor");
        h.f(subDescriptor, "subDescriptor");
        boolean z11 = subDescriptor instanceof xa.e;
        j.b bVar = j.b.UNKNOWN;
        if (!z11) {
            return bVar;
        }
        xa.e eVar2 = (xa.e) subDescriptor;
        if (!eVar2.getTypeParameters().isEmpty()) {
            return bVar;
        }
        n.b bVarI = n.i(superDescriptor, subDescriptor);
        if ((bVarI != null ? bVarI.c() : 0) != 0) {
            return bVar;
        }
        List<a1> listG = eVar2.g();
        h.e(listG, "subDescriptor.valueParameters");
        y yVarZ0 = w.Z0(t.U0(listG), b.f8979a);
        e0 e0Var = eVar2.f13010g;
        h.c(e0Var);
        f fVarB1 = w.b1(yVarZ0, e0Var);
        o0 o0Var = eVar2.f13012j;
        f.a aVar = new f.a(q.Q0(q.S0(fVarB1, t.U0(b8.f.U(o0Var != null ? o0Var.getType() : null)))));
        while (true) {
            if (!aVar.a()) {
                z10 = false;
                break;
            }
            e0 e0Var2 = (e0) aVar.next();
            if ((e0Var2.K0().isEmpty() ^ true) && !(e0Var2.P0() instanceof ab.h)) {
                z10 = true;
                break;
            }
        }
        if (z10 || (aVarC = superDescriptor.c(p1.e(new g()))) == null) {
            return bVar;
        }
        if (aVarC instanceof q0) {
            q0 q0Var = (q0) aVarC;
            h.e(q0Var.getTypeParameters(), "erasedSuper.typeParameters");
            if (!r1.isEmpty()) {
                aVarC = q0Var.r().l().build();
                h.c(aVarC);
            }
        }
        int r6 = n.f.n(aVarC, subDescriptor, false).c();
        androidx.camera.core.impl.a.k(r6, "DEFAULT.isOverridableByW…Descriptor, false).result");
        return a.f8978a[g.d.c(r6)] == 1 ? j.b.OVERRIDABLE : bVar;
    }
}
