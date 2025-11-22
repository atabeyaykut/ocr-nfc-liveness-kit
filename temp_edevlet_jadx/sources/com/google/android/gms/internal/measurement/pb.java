package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class pb implements ob {

    /* renamed from: a, reason: collision with root package name */
    public static final w4 f3681a;

    /* renamed from: b, reason: collision with root package name */
    public static final x4 f3682b;

    /* renamed from: c, reason: collision with root package name */
    public static final v4 f3683c;

    /* renamed from: d, reason: collision with root package name */
    public static final v4 f3684d;

    /* renamed from: e, reason: collision with root package name */
    public static final y4 f3685e;

    static {
        z4 z4Var = new z4(u4.a(), false);
        f3681a = z4Var.c("measurement.test.boolean_flag", false);
        f3682b = new x4(z4Var, Double.valueOf(-3.0d));
        f3683c = z4Var.a(-2L, "measurement.test.int_flag");
        f3684d = z4Var.a(-1L, "measurement.test.long_flag");
        f3685e = new y4(z4Var, "measurement.test.string_flag", "---");
    }

    @Override // com.google.android.gms.internal.measurement.ob
    public final double a() {
        return f3682b.b().doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.ob
    public final long b() {
        return f3683c.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ob
    public final long c() {
        return f3684d.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.ob
    public final String d() {
        return f3685e.b();
    }

    @Override // com.google.android.gms.internal.measurement.ob
    public final boolean e() {
        return f3681a.b().booleanValue();
    }
}
