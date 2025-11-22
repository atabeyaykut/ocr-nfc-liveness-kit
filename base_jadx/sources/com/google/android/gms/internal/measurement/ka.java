package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class ka implements ja {

    /* renamed from: a, reason: collision with root package name */
    public static final w4 f3602a;

    /* renamed from: b, reason: collision with root package name */
    public static final w4 f3603b;

    static {
        z4 z4Var = new z4(u4.a(), false);
        f3602a = z4Var.c("measurement.client.consent.suppress_1p_in_ga4f_install", true);
        f3603b = z4Var.c("measurement.client.consent.gmpappid_worker_thread_fix", true);
    }

    @Override // com.google.android.gms.internal.measurement.ja
    public final void a() {
    }

    @Override // com.google.android.gms.internal.measurement.ja
    public final boolean b() {
        return f3602a.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.ja
    public final boolean c() {
        return f3603b.b().booleanValue();
    }
}
