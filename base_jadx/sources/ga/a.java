package ga;

import l9.h;

/* loaded from: classes2.dex */
public final class a {
    static {
        Object objJ;
        try {
            objJ = Class.forName("java.lang.ClassValue");
        } catch (Throwable th2) {
            objJ = c5.w.j(th2);
        }
        if (!(objJ instanceof h.a)) {
            objJ = Boolean.TRUE;
        }
        Object obj = Boolean.FALSE;
        if (objJ instanceof h.a) {
            objJ = obj;
        }
        ((Boolean) objJ).booleanValue();
    }

    public static final c a(x9.l compute) {
        kotlin.jvm.internal.h.f(compute, "compute");
        return new c(compute);
    }
}
