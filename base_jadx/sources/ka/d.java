package ka;

import b8.f;
import bc.l;
import java.util.List;
import ka.e;
import kotlin.jvm.internal.h;
import m9.v;
import ma.u;

/* loaded from: classes2.dex */
public final class d extends vb.e {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(l storageManager, b containingClass) {
        super(storageManager, containingClass);
        h.f(storageManager, "storageManager");
        h.f(containingClass, "containingClass");
    }

    @Override // vb.e
    public final List<u> h() {
        e eVarA;
        ma.e eVar = this.f18441b;
        h.d(eVar, "null cannot be cast to non-null type org.jetbrains.kotlin.builtins.functions.FunctionClassDescriptor");
        b bVar = (b) eVar;
        int r12 = bVar.f8793g.ordinal();
        if (r12 == 0) {
            eVarA = e.a.a(bVar, false);
        } else {
            if (r12 != 1) {
                return v.f10173a;
            }
            eVarA = e.a.a(bVar, true);
        }
        return f.S(eVarA);
    }
}
