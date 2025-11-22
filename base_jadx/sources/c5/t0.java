package c5;

/* loaded from: classes.dex */
public final class t0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f1993a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u1 f1994b;

    public t0(u1 u1Var, long j10) {
        this.f1994b = u1Var;
        this.f1993a = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f1994b.n(this.f1993a);
    }
}
