package ic;

import ic.f;
import java.util.Collection;
import java.util.List;
import ma.a1;

/* loaded from: classes2.dex */
public final class p implements f {

    /* renamed from: a, reason: collision with root package name */
    public static final p f7380a = new p();

    @Override // ic.f
    public final String a(ma.u uVar) {
        return f.a.a(this, uVar);
    }

    @Override // ic.f
    public final boolean b(ma.u functionDescriptor) {
        kotlin.jvm.internal.h.f(functionDescriptor, "functionDescriptor");
        List<a1> listG = functionDescriptor.g();
        kotlin.jvm.internal.h.e(listG, "functionDescriptor.valueParameters");
        List<a1> list = listG;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        for (a1 it : list) {
            kotlin.jvm.internal.h.e(it, "it");
            if (!(!sb.b.a(it) && it.g0() == null)) {
                return false;
            }
        }
        return true;
    }

    @Override // ic.f
    public final String getDescription() {
        return "should not have varargs or parameters with default values";
    }
}
