package c5;

/* loaded from: classes.dex */
public final class q4 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1874a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ y7 f1875b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ w4 f1876c;

    public /* synthetic */ q4(w4 w4Var, y7 y7Var, int r32) {
        this.f1874a = r32;
        this.f1876c = w4Var;
        this.f1875b = y7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f1874a;
        y7 y7Var = this.f1875b;
        w4 w4Var = this.f1876c;
        switch (r02) {
            case 0:
                w4Var.f2101a.a();
                w4Var.f2101a.p(y7Var);
                break;
            default:
                w4Var.f2101a.a();
                w4Var.f2101a.h(y7Var);
                break;
        }
    }
}
