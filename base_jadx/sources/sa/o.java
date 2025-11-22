package sa;

/* loaded from: classes2.dex */
public final class o extends kotlin.jvm.internal.j implements x9.l<Class<?>, lb.f> {

    /* renamed from: a, reason: collision with root package name */
    public static final o f15360a = new o();

    public o() {
        super(1);
    }

    @Override // x9.l
    public final lb.f invoke(Class<?> cls) {
        String simpleName = cls.getSimpleName();
        if (!lb.f.u(simpleName)) {
            simpleName = null;
        }
        if (simpleName != null) {
            return lb.f.t(simpleName);
        }
        return null;
    }
}
