package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class f9 implements e9 {

    /* renamed from: a, reason: collision with root package name */
    public static final w4 f3468a;

    /* renamed from: b, reason: collision with root package name */
    public static final w4 f3469b;

    /* renamed from: c, reason: collision with root package name */
    public static final w4 f3470c;

    /* renamed from: d, reason: collision with root package name */
    public static final w4 f3471d;

    /* renamed from: e, reason: collision with root package name */
    public static final w4 f3472e;

    static {
        z4 z4Var = new z4(u4.a(), true);
        f3468a = z4Var.c("measurement.adid_zero.app_instance_id_fix", true);
        f3469b = z4Var.c("measurement.adid_zero.service", false);
        f3470c = z4Var.c("measurement.adid_zero.adid_uid", false);
        z4Var.a(0L, "measurement.id.adid_zero.service");
        f3471d = z4Var.c("measurement.adid_zero.remove_lair_if_adidzero_false", true);
        f3472e = z4Var.c("measurement.adid_zero.remove_lair_if_userid_cleared", true);
    }

    @Override // com.google.android.gms.internal.measurement.e9
    public final void a() {
    }

    @Override // com.google.android.gms.internal.measurement.e9
    public final boolean b() {
        return f3468a.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.e9
    public final boolean c() {
        return f3469b.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.e9
    public final boolean d() {
        return f3470c.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.e9
    public final boolean e() {
        return f3471d.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.e9
    public final boolean k() {
        return f3472e.b().booleanValue();
    }
}
