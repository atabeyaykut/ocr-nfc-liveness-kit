package c5;

/* loaded from: classes.dex */
public final class l5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f1701a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1702b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1703c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f1704d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ v5 f1705e;

    public l5(v5 v5Var, String str, String str2, Object obj, long j10) {
        this.f1705e = v5Var;
        this.f1701a = str;
        this.f1702b = str2;
        this.f1703c = obj;
        this.f1704d = j10;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        v5 v5Var = this.f1705e;
        String str = this.f1701a;
        String str2 = this.f1702b;
        v5Var.w(this.f1704d, this.f1703c, str, str2);
    }
}
