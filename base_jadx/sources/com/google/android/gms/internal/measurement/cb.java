package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class cb implements bb {

    /* renamed from: a, reason: collision with root package name */
    public static final w4 f3428a;

    /* renamed from: b, reason: collision with root package name */
    public static final w4 f3429b;

    static {
        z4 z4Var = new z4(u4.a(), false);
        f3428a = z4Var.c("measurement.sdk.collection.enable_extend_user_property_size", true);
        z4Var.c("measurement.sdk.collection.last_deep_link_referrer2", true);
        f3429b = z4Var.c("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        z4Var.a(0L, "measurement.id.sdk.collection.last_deep_link_referrer2");
    }

    @Override // com.google.android.gms.internal.measurement.bb
    public final boolean a() {
        return f3428a.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.bb
    public final boolean b() {
        return f3429b.b().booleanValue();
    }
}
