package nc;

/* loaded from: classes2.dex */
public final class w1 {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal<n0> f10849a = new ThreadLocal<>();

    public static n0 a() {
        ThreadLocal<n0> threadLocal = f10849a;
        n0 n0Var = threadLocal.get();
        if (n0Var != null) {
            return n0Var;
        }
        e eVar = new e(Thread.currentThread());
        threadLocal.set(eVar);
        return eVar;
    }
}
