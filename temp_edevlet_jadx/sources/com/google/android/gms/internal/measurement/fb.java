package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class fb implements eb {

    /* renamed from: a, reason: collision with root package name */
    public static final w4 f3475a;

    /* renamed from: b, reason: collision with root package name */
    public static final w4 f3476b;

    static {
        z4 z4Var = new z4(u4.a(), false);
        z4Var.a(0L, "measurement.id.lifecycle.app_in_background_parameter");
        f3475a = z4Var.c("measurement.lifecycle.app_backgrounded_engagement", false);
        z4Var.c("measurement.lifecycle.app_backgrounded_tracking", true);
        f3476b = z4Var.c("measurement.lifecycle.app_in_background_parameter", false);
        z4Var.a(0L, "measurement.id.lifecycle.app_backgrounded_tracking");
    }

    @Override // com.google.android.gms.internal.measurement.eb
    public final boolean a() {
        return f3475a.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.eb
    public final boolean b() {
        return f3476b.b().booleanValue();
    }
}
