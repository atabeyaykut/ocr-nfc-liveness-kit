package ob;

import dc.e;
import dc.f;
import java.util.Collection;
import ma.b;
import ma.e0;
import ma.r0;
import ma.w0;
import ma.z;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static final g f11276a = new g();

    public static r0 d(ma.a aVar) {
        while (aVar instanceof ma.b) {
            ma.b bVar = (ma.b) aVar;
            if (bVar.k0() != b.a.FAKE_OVERRIDE) {
                break;
            }
            Collection<? extends ma.b> overriddenDescriptors = bVar.e();
            kotlin.jvm.internal.h.e(overriddenDescriptors, "overriddenDescriptors");
            aVar = (ma.b) m9.t.q1(overriddenDescriptors);
            if (aVar == null) {
                return null;
            }
        }
        return aVar.getSource();
    }

    public final boolean a(ma.j jVar, ma.j jVar2, boolean z10, boolean z11) {
        if ((jVar instanceof ma.e) && (jVar2 instanceof ma.e)) {
            return kotlin.jvm.internal.h.a(((ma.e) jVar).i(), ((ma.e) jVar2).i());
        }
        if ((jVar instanceof w0) && (jVar2 instanceof w0)) {
            return b((w0) jVar, (w0) jVar2, z10, f.f11275a);
        }
        if (!(jVar instanceof ma.a) || !(jVar2 instanceof ma.a)) {
            boolean z12 = jVar instanceof e0;
            Object objD = jVar;
            Object objD2 = jVar2;
            if (z12) {
                boolean z13 = jVar2 instanceof e0;
                objD = jVar;
                objD2 = jVar2;
                if (z13) {
                    objD = ((e0) jVar).d();
                    objD2 = ((e0) jVar2).d();
                }
            }
            return kotlin.jvm.internal.h.a(objD, objD2);
        }
        ma.a a10 = (ma.a) jVar;
        ma.a b10 = (ma.a) jVar2;
        f.a kotlinTypeRefiner = f.a.f4827a;
        kotlin.jvm.internal.h.f(a10, "a");
        kotlin.jvm.internal.h.f(b10, "b");
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        if (!kotlin.jvm.internal.h.a(a10, b10)) {
            if (kotlin.jvm.internal.h.a(a10.getName(), b10.getName()) && ((!z11 || !(a10 instanceof z) || !(b10 instanceof z) || ((z) a10).G() == ((z) b10).G()) && ((!kotlin.jvm.internal.h.a(a10.b(), b10.b()) || (z10 && kotlin.jvm.internal.h.a(d(a10), d(b10)))) && !i.o(a10) && !i.o(b10) && c(a10, b10, d.f11272a, z10)))) {
                n nVar = new n(new c(a10, b10, z10), kotlinTypeRefiner, e.a.f4826a);
                if (nVar.m(a10, b10, null, true).c() != 1 || nVar.m(b10, a10, null, true).c() != 1) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean b(w0 a10, w0 b10, boolean z10, x9.p<? super ma.j, ? super ma.j, Boolean> equivalentCallables) {
        kotlin.jvm.internal.h.f(a10, "a");
        kotlin.jvm.internal.h.f(b10, "b");
        kotlin.jvm.internal.h.f(equivalentCallables, "equivalentCallables");
        if (kotlin.jvm.internal.h.a(a10, b10)) {
            return true;
        }
        return !kotlin.jvm.internal.h.a(a10.b(), b10.b()) && c(a10, b10, equivalentCallables, z10) && a10.getIndex() == b10.getIndex();
    }

    public final boolean c(ma.j jVar, ma.j jVar2, x9.p<? super ma.j, ? super ma.j, Boolean> pVar, boolean z10) {
        ma.j jVarB = jVar.b();
        ma.j jVarB2 = jVar2.b();
        return ((jVarB instanceof ma.b) || (jVarB2 instanceof ma.b)) ? pVar.mo7invoke(jVarB, jVarB2).booleanValue() : a(jVarB, jVarB2, z10, true);
    }
}
