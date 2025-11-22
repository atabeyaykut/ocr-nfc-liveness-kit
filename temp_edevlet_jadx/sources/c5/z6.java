package c5;

/* loaded from: classes.dex */
public final class z6 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final long f2183a;

    /* renamed from: b, reason: collision with root package name */
    public final long f2184b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ a7 f2185c;

    public z6(a7 a7Var, long j10, long j11) {
        this.f2185c = a7Var;
        this.f2183a = j10;
        this.f2184b = j11;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        h4 h4Var = ((i4) this.f2185c.f1398b.f2115a).f1636k;
        i4.e(h4Var);
        h4Var.p(new l3.k(2, this));
    }
}
