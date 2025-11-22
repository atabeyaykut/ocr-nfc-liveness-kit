package o3;

/* loaded from: classes.dex */
public final class x implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11198a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a0 f11199b;

    public x(a0 a0Var, int r22) {
        this.f11199b = a0Var;
        this.f11198a = r22;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11199b.f(this.f11198a);
    }
}
