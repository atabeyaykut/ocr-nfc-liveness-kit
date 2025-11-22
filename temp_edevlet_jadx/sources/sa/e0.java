package sa;

import java.lang.reflect.Type;
import java.util.Iterator;

/* loaded from: classes2.dex */
public abstract class e0 implements cb.w {
    public abstract Type O();

    public final boolean equals(Object obj) {
        return (obj instanceof e0) && kotlin.jvm.internal.h.a(O(), ((e0) obj).O());
    }

    public final int hashCode() {
        return O().hashCode();
    }

    @Override // cb.d
    public cb.a n(lb.c fqName) {
        Object obj;
        kotlin.jvm.internal.h.f(fqName, "fqName");
        Iterator<T> it = getAnnotations().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            lb.b bVarC = ((cb.a) next).c();
            if (kotlin.jvm.internal.h.a(bVarC != null ? bVarC.b() : null, fqName)) {
                obj = next;
                break;
            }
        }
        return (cb.a) obj;
    }

    public final String toString() {
        return getClass().getName() + ": " + O();
    }
}
