package c5;

/* loaded from: classes.dex */
public final class s5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f1985a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1986b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f1987c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f1988d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ v5 f1989e;

    public s5(v5 v5Var, f fVar, int r32, long j10, boolean z10) {
        this.f1989e = v5Var;
        this.f1985a = fVar;
        this.f1986b = r32;
        this.f1987c = j10;
        this.f1988d = z10;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.f1989e.u(this.f1985a);
        v5.B(this.f1989e, this.f1985a, this.f1986b, this.f1987c, false, this.f1988d);
    }
}
