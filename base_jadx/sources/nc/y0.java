package nc;

/* loaded from: classes2.dex */
public final class y0 extends g {

    /* renamed from: a, reason: collision with root package name */
    public final x9.l<Throwable, l9.m> f10858a;

    /* JADX WARN: Multi-variable type inference failed */
    public y0(x9.l<? super Throwable, l9.m> lVar) {
        this.f10858a = lVar;
    }

    @Override // nc.h
    public final void a(Throwable th2) {
        this.f10858a.invoke(th2);
    }

    @Override // x9.l
    public final /* bridge */ /* synthetic */ l9.m invoke(Throwable th2) {
        a(th2);
        return l9.m.f9594a;
    }

    public final String toString() {
        return "InvokeOnCancel[" + this.f10858a.getClass().getSimpleName() + '@' + c0.c(this) + ']';
    }
}
