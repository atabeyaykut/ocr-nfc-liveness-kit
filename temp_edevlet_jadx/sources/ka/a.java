package ka;

import bc.l;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import ka.c;
import kotlin.jvm.internal.h;
import lb.f;
import m9.t;
import m9.x;
import ma.b0;
import ma.e0;
import mc.j;
import mc.n;
import pa.g0;

/* loaded from: classes2.dex */
public final class a implements oa.b {

    /* renamed from: a, reason: collision with root package name */
    public final l f8788a;

    /* renamed from: b, reason: collision with root package name */
    public final b0 f8789b;

    public a(l storageManager, g0 module) {
        h.f(storageManager, "storageManager");
        h.f(module, "module");
        this.f8788a = storageManager;
        this.f8789b = module;
    }

    @Override // oa.b
    public final ma.e a(lb.b classId) {
        h.f(classId, "classId");
        if (classId.f9666c || classId.k()) {
            return null;
        }
        String strB = classId.i().b();
        if (!n.G(strB, "Function", false)) {
            return null;
        }
        lb.c cVarH = classId.h();
        h.e(cVarH, "classId.packageFqName");
        c.f8799c.getClass();
        c.a.C0163a c0163aA = c.a.a(strB, cVarH);
        if (c0163aA == null) {
            return null;
        }
        List<e0> listD = this.f8789b.I0(cVarH).D();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listD) {
            if (obj instanceof ja.b) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next instanceof ja.e) {
                arrayList2.add(next);
            }
        }
        ja.b bVar = (ja.e) t.c1(arrayList2);
        if (bVar == null) {
            bVar = (ja.b) t.a1(arrayList);
        }
        return new b(this.f8788a, bVar, c0163aA.f8806a, c0163aA.f8807b);
    }

    @Override // oa.b
    public final Collection<ma.e> b(lb.c packageFqName) {
        h.f(packageFqName, "packageFqName");
        return x.f10175a;
    }

    @Override // oa.b
    public final boolean c(lb.c packageFqName, f name) {
        h.f(packageFqName, "packageFqName");
        h.f(name, "name");
        String strO = name.o();
        h.e(strO, "name.asString()");
        if (!j.D(strO, "Function", false) && !j.D(strO, "KFunction", false) && !j.D(strO, "SuspendFunction", false) && !j.D(strO, "KSuspendFunction", false)) {
            return false;
        }
        c.f8799c.getClass();
        return c.a.a(strO, packageFqName) != null;
    }
}
