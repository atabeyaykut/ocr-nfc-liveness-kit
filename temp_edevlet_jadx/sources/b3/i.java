package b3;

/* loaded from: classes.dex */
public final class i implements x2.b<e> {

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final i f1103a = new i();
    }

    @Override // k9.a
    public final Object get() {
        b3.a aVar = e.f1099a;
        if (aVar != null) {
            return aVar;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
