package kotlin.jvm.internal;

import ga.u0;

/* loaded from: classes2.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public static final x f8976a;

    /* renamed from: b, reason: collision with root package name */
    public static final da.d[] f8977b;

    static {
        x xVar = null;
        try {
            xVar = (x) u0.class.newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (xVar == null) {
            xVar = new x();
        }
        f8976a = xVar;
        f8977b = new da.d[0];
    }

    public static da.d a(Class cls) {
        return f8976a.b(cls);
    }

    public static da.i b(k kVar) {
        return f8976a.d(kVar);
    }

    public static da.l c(q qVar) {
        return f8976a.f(qVar);
    }
}
