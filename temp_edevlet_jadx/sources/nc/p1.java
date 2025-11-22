package nc;

/* loaded from: classes2.dex */
public final class p1 extends c {

    /* renamed from: a, reason: collision with root package name */
    public final kotlinx.coroutines.internal.j f10828a;

    public p1(kotlinx.coroutines.internal.j jVar) {
        this.f10828a = jVar;
    }

    @Override // nc.h
    public final void a(Throwable th2) {
        this.f10828a.F();
    }

    @Override // x9.l
    public final /* bridge */ /* synthetic */ l9.m invoke(Throwable th2) {
        a(th2);
        return l9.m.f9594a;
    }

    public final String toString() {
        return "RemoveOnCancel[" + this.f10828a + ']';
    }
}
