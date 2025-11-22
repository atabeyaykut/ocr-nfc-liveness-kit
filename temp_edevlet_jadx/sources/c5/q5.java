package c5;

/* loaded from: classes.dex */
public final class q5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f1877a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f1878b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1879c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f1880d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f1881e;
    public final /* synthetic */ v5 f;

    public q5(v5 v5Var, f fVar, long j10, int r52, long j11, boolean z10) {
        this.f = v5Var;
        this.f1877a = fVar;
        this.f1878b = j10;
        this.f1879c = r52;
        this.f1880d = j11;
        this.f1881e = z10;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        f fVar = this.f1877a;
        v5 v5Var = this.f;
        v5Var.u(fVar);
        v5Var.q(this.f1878b, false);
        v5.B(this.f, this.f1877a, this.f1879c, this.f1880d, true, this.f1881e);
    }
}
