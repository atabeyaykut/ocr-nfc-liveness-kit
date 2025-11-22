package yb;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class q implements i {

    /* renamed from: a, reason: collision with root package name */
    public final ma.f0 f19476a;

    public q(ma.f0 packageFragmentProvider) {
        kotlin.jvm.internal.h.f(packageFragmentProvider, "packageFragmentProvider");
        this.f19476a = packageFragmentProvider;
    }

    @Override // yb.i
    public final h a(lb.b classId) {
        h hVarA;
        kotlin.jvm.internal.h.f(classId, "classId");
        lb.c cVarH = classId.h();
        kotlin.jvm.internal.h.e(cVarH, "classId.packageFqName");
        Iterator it = c5.v.F(this.f19476a, cVarH).iterator();
        while (it.hasNext()) {
            ma.e0 e0Var = (ma.e0) it.next();
            if ((e0Var instanceof r) && (hVarA = ((r) e0Var).E0().a(classId)) != null) {
                return hVarA;
            }
        }
        return null;
    }
}
