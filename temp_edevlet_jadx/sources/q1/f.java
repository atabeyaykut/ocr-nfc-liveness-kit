package q1;

/* loaded from: classes.dex */
public final class f implements g<Object> {

    /* renamed from: a, reason: collision with root package name */
    public volatile Object f13305a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f13306b;

    public f(g gVar) {
        this.f13306b = gVar;
    }

    @Override // q1.g
    public final Object get() {
        if (this.f13305a == null) {
            synchronized (this) {
                if (this.f13305a == null) {
                    Object obj = this.f13306b.get();
                    l.b(obj);
                    this.f13305a = obj;
                }
            }
        }
        return this.f13305a;
    }
}
