package sa;

/* loaded from: classes2.dex */
public final class n extends kotlin.jvm.internal.j implements x9.l<Class<?>, Boolean> {

    /* renamed from: a, reason: collision with root package name */
    public static final n f15359a = new n();

    public n() {
        super(1);
    }

    @Override // x9.l
    public final Boolean invoke(Class<?> cls) {
        return Boolean.valueOf(cls.getSimpleName().length() == 0);
    }
}
