package c5;

/* loaded from: classes.dex */
public final class e6 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b6 f1519a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f1520b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f6 f1521c;

    public e6(f6 f6Var, b6 b6Var, long j10) {
        this.f1521c = f6Var;
        this.f1519a = b6Var;
        this.f1520b = j10;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        b6 b6Var = this.f1519a;
        long j10 = this.f1520b;
        f6 f6Var = this.f1521c;
        f6Var.n(b6Var, false, j10);
        f6Var.f1549e = null;
        t6 t6VarS = ((i4) f6Var.f2115a).s();
        t6VarS.b();
        t6VarS.c();
        t6VarS.t(new p5(t6VarS, null, 1));
    }
}
