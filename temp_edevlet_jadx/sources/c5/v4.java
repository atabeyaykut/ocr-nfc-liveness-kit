package c5;

/* loaded from: classes.dex */
public final class v4 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f2057a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f2058b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ w4 f2059c;

    public v4(w4 w4Var, String str, String str2, String str3, long j10) {
        this.f2059c = w4Var;
        this.f2057a = str;
        this.f2058b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f2057a == null) {
            f6 f6Var = this.f2059c.f2101a.f1828m.f1641q;
            i4.d(f6Var);
            f6Var.r(this.f2058b);
            return;
        }
        f6 f6Var2 = this.f2059c.f2101a.f1828m.f1641q;
        i4.d(f6Var2);
        String str = this.f2058b;
        f6Var2.b();
        synchronized (f6Var2) {
            String str2 = f6Var2.f1556n;
            if (str2 != null) {
                str2.equals(str);
            }
            f6Var2.f1556n = str;
        }
    }
}
