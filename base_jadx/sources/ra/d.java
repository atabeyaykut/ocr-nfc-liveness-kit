package ra;

import mc.j;
import sa.b0;
import sa.r;
import va.l;

/* loaded from: classes2.dex */
public final class d implements l {

    /* renamed from: a, reason: collision with root package name */
    public final ClassLoader f14362a;

    public d(ClassLoader classLoader) {
        this.f14362a = classLoader;
    }

    @Override // va.l
    public final void a(lb.c packageFqName) {
        kotlin.jvm.internal.h.f(packageFqName, "packageFqName");
    }

    @Override // va.l
    public final b0 b(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        return new b0(fqName);
    }

    @Override // va.l
    public final r c(l.a aVar) {
        lb.b bVar = aVar.f18351a;
        lb.c cVarH = bVar.h();
        kotlin.jvm.internal.h.e(cVarH, "classId.packageFqName");
        String strB = j.B(bVar.i().b(), '.', '$');
        if (!cVarH.d()) {
            strB = cVarH.b() + '.' + strB;
        }
        Class clsT = x5.a.t(this.f14362a, strB);
        if (clsT != null) {
            return new r(clsT);
        }
        return null;
    }
}
