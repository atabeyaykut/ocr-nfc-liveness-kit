package c5;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class c6 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Bundle f1456a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b6 f1457b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b6 f1458c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f1459d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f6 f1460e;

    public c6(f6 f6Var, Bundle bundle, b6 b6Var, b6 b6Var2, long j10) {
        this.f1460e = f6Var;
        this.f1456a = bundle;
        this.f1457b = b6Var;
        this.f1458c = b6Var2;
        this.f1459d = j10;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        b6 b6Var = this.f1457b;
        b6 b6Var2 = this.f1458c;
        long j10 = this.f1459d;
        Bundle bundle = this.f1456a;
        bundle.remove("screen_name");
        bundle.remove("screen_class");
        f6 f6Var = this.f1460e;
        v7 v7Var = ((i4) f6Var.f2115a).f1638m;
        i4.c(v7Var);
        f6Var.h(b6Var, b6Var2, j10, true, v7Var.o0(null, "screen_view", bundle, null, false));
    }
}
