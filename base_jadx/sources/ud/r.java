package ud;

/* loaded from: classes2.dex */
public final class r extends kotlin.jvm.internal.j implements x9.l<Throwable, l9.m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f18048a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(b bVar) {
        super(1);
        this.f18048a = bVar;
    }

    @Override // x9.l
    public final l9.m invoke(Throwable th2) {
        this.f18048a.cancel();
        return l9.m.f9594a;
    }
}
