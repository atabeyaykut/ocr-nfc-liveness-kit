package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class ta implements sa {

    /* renamed from: a, reason: collision with root package name */
    public static final w4 f3781a;

    static {
        z4 z4Var = new z4(u4.a(), false);
        z4Var.c("measurement.collection.efficient_engagement_reporting_enabled_2", true);
        f3781a = z4Var.c("measurement.collection.redundant_engagement_removal_enabled", false);
        z4Var.a(0L, "measurement.id.collection.redundant_engagement_removal_enabled");
    }

    @Override // com.google.android.gms.internal.measurement.sa
    public final boolean a() {
        return f3781a.b().booleanValue();
    }
}
