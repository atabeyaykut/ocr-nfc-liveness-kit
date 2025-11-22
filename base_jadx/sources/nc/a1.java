package nc;

/* loaded from: classes2.dex */
public final class a1 extends f1 {

    /* renamed from: e, reason: collision with root package name */
    public final x9.l<Throwable, l9.m> f10780e;

    /* JADX WARN: Multi-variable type inference failed */
    public a1(x9.l<? super Throwable, l9.m> lVar) {
        this.f10780e = lVar;
    }

    @Override // nc.t
    public final void J(Throwable th2) {
        this.f10780e.invoke(th2);
    }

    @Override // x9.l
    public final /* bridge */ /* synthetic */ l9.m invoke(Throwable th2) {
        J(th2);
        return l9.m.f9594a;
    }
}
