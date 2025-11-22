package na;

import cc.o1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class l implements h {

    /* renamed from: a, reason: collision with root package name */
    public final h f10663a;

    /* renamed from: b, reason: collision with root package name */
    public final x9.l<lb.c, Boolean> f10664b;

    public l(h hVar, o1 o1Var) {
        this.f10663a = hVar;
        this.f10664b = o1Var;
    }

    @Override // na.h
    public final boolean P(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        if (this.f10664b.invoke(fqName).booleanValue()) {
            return this.f10663a.P(fqName);
        }
        return false;
    }

    @Override // na.h
    public final boolean isEmpty() {
        h hVar = this.f10663a;
        if ((hVar instanceof Collection) && ((Collection) hVar).isEmpty()) {
            return false;
        }
        Iterator<c> it = hVar.iterator();
        while (it.hasNext()) {
            lb.c cVarD = it.next().d();
            if (cVarD != null && this.f10664b.invoke(cVarD).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.Iterable
    public final Iterator<c> iterator() {
        ArrayList arrayList = new ArrayList();
        for (c cVar : this.f10663a) {
            lb.c cVarD = cVar.d();
            if (cVarD != null && this.f10664b.invoke(cVarD).booleanValue()) {
                arrayList.add(cVar);
            }
        }
        return arrayList.iterator();
    }

    @Override // na.h
    public final c n(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        if (this.f10664b.invoke(fqName).booleanValue()) {
            return this.f10663a.n(fqName);
        }
        return null;
    }
}
