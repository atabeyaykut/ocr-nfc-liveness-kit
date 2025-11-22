package c5;

/* loaded from: classes.dex */
public final class j5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f1662a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v5 f1663b;

    public j5(v5 v5Var, long j10) {
        this.f1663b = v5Var;
        this.f1662a = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        v5 v5Var = this.f1663b;
        s3 s3Var = ((i4) v5Var.f2115a).f1634h;
        i4.c(s3Var);
        o3 o3Var = s3Var.f1969k;
        long j10 = this.f1662a;
        o3Var.b(j10);
        e3 e3Var = ((i4) v5Var.f2115a).f1635j;
        i4.e(e3Var);
        e3Var.f1512n.b(Long.valueOf(j10), "Session timeout duration set");
    }
}
