package pa;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class e0 extends kotlin.jvm.internal.j implements x9.a<o> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g0 f12888a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e0(g0 g0Var) {
        super(0);
        this.f12888a = g0Var;
    }

    @Override // x9.a
    public final o invoke() {
        g0 g0Var = this.f12888a;
        c0 c0Var = g0Var.f12897g;
        if (c0Var == null) {
            StringBuilder sb2 = new StringBuilder("Dependencies of module ");
            String str = g0Var.getName().f9676a;
            kotlin.jvm.internal.h.e(str, "name.toString()");
            sb2.append(str);
            sb2.append(" were not set before querying module content");
            throw new AssertionError(sb2.toString());
        }
        List<g0> listA = c0Var.a();
        g0Var.z0();
        listA.contains(g0Var);
        List<g0> list = listA;
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            ((g0) it.next()).getClass();
        }
        ArrayList arrayList = new ArrayList(m9.n.Q0(list));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ma.f0 f0Var = ((g0) it2.next()).f12898h;
            kotlin.jvm.internal.h.c(f0Var);
            arrayList.add(f0Var);
        }
        return new o(arrayList, "CompositeProvider@ModuleDescriptor for " + g0Var.getName());
    }
}
