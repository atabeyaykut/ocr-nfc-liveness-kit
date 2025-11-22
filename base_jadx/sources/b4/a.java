package b4;

@Deprecated
/* loaded from: classes.dex */
public abstract class a<T> {

    /* renamed from: a, reason: collision with root package name */
    public final T f1136a;

    @Deprecated
    /* renamed from: b4.a$a, reason: collision with other inner class name */
    public static class C0044a extends a<Boolean> {
        public C0044a(Boolean bool) {
            super(bool);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(Object obj) {
        c cVar;
        this.f1136a = obj;
        c cVar2 = c.f1138b;
        synchronized (c.class) {
            cVar = c.f1138b;
        }
        cVar.f1139a.f1137a.add(this);
    }
}
