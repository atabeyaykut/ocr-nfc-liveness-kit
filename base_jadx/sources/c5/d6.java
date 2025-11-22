package c5;

/* loaded from: classes.dex */
public final class d6 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b6 f1476a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b6 f1477b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f1478c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f1479d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f6 f1480e;

    public d6(f6 f6Var, b6 b6Var, b6 b6Var2, long j10, boolean z10) {
        this.f1480e = f6Var;
        this.f1476a = b6Var;
        this.f1477b = b6Var2;
        this.f1478c = j10;
        this.f1479d = z10;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.f1480e.h(this.f1476a, this.f1477b, this.f1478c, this.f1479d, null);
    }
}
