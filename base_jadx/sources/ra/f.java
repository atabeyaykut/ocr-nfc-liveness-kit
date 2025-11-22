package ra;

import eb.q;
import ja.o;
import java.io.InputStream;
import mc.j;
import ra.e;

/* loaded from: classes2.dex */
public final class f implements q {

    /* renamed from: a, reason: collision with root package name */
    public final ClassLoader f14365a;

    /* renamed from: b, reason: collision with root package name */
    public final zb.b f14366b = new zb.b();

    public f(ClassLoader classLoader) {
        this.f14365a = classLoader;
    }

    @Override // eb.q
    public final q.a.b a(lb.b classId) {
        e eVarA;
        kotlin.jvm.internal.h.f(classId, "classId");
        String strB = j.B(classId.i().b(), '.', '$');
        if (!classId.h().d()) {
            strB = classId.h() + '.' + strB;
        }
        Class clsT = x5.a.t(this.f14365a, strB);
        if (clsT == null || (eVarA = e.a.a(clsT)) == null) {
            return null;
        }
        return new q.a.b(eVarA);
    }

    @Override // eb.q
    public final q.a.b b(cb.g javaClass) {
        e eVarA;
        kotlin.jvm.internal.h.f(javaClass, "javaClass");
        lb.c cVarD = javaClass.d();
        if (cVarD == null) {
            return null;
        }
        Class clsT = x5.a.t(this.f14365a, cVarD.b());
        if (clsT == null || (eVarA = e.a.a(clsT)) == null) {
            return null;
        }
        return new q.a.b(eVarA);
    }

    @Override // yb.x
    public final InputStream c(lb.c packageFqName) {
        kotlin.jvm.internal.h.f(packageFqName, "packageFqName");
        if (!packageFqName.h(o.f8363j)) {
            return null;
        }
        zb.a.f20019m.getClass();
        String strA = zb.a.a(packageFqName);
        this.f14366b.getClass();
        return zb.b.a(strA);
    }
}
