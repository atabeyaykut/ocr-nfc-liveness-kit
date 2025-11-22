package kotlin.reflect.jvm.internal.impl.load.java;

import b8.f;
import kotlin.jvm.internal.h;
import ma.l0;
import ob.j;

/* loaded from: classes2.dex */
public final class FieldOverridabilityCondition implements j {
    @Override // ob.j
    public j.a a() {
        return j.a.BOTH;
    }

    @Override // ob.j
    public j.b b(ma.a superDescriptor, ma.a subDescriptor, ma.e eVar) {
        h.f(superDescriptor, "superDescriptor");
        h.f(subDescriptor, "subDescriptor");
        boolean z10 = subDescriptor instanceof l0;
        j.b bVar = j.b.UNKNOWN;
        if (!z10 || !(superDescriptor instanceof l0)) {
            return bVar;
        }
        l0 l0Var = (l0) subDescriptor;
        l0 l0Var2 = (l0) superDescriptor;
        return !h.a(l0Var.getName(), l0Var2.getName()) ? bVar : (f.Q(l0Var) && f.Q(l0Var2)) ? j.b.OVERRIDABLE : (f.Q(l0Var) || f.Q(l0Var2)) ? j.b.INCOMPATIBLE : bVar;
    }
}
