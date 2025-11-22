package c5;

/* loaded from: classes.dex */
public final class r5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f1942a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1943b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f1944c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f1945d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ v5 f1946e;

    public r5(v5 v5Var, f fVar, int r32, long j10, boolean z10) {
        this.f1946e = v5Var;
        this.f1942a = fVar;
        this.f1943b = r32;
        this.f1944c = j10;
        this.f1945d = z10;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.f1946e.u(this.f1942a);
        v5.B(this.f1946e, this.f1942a, this.f1943b, this.f1944c, false, this.f1945d);
    }
}
