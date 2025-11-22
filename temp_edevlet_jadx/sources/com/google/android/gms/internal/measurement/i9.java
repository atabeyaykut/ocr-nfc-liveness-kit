package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class i9 implements h9 {

    /* renamed from: a, reason: collision with root package name */
    public static final w4 f3555a;

    static {
        z4 z4Var = new z4(u4.a(), false);
        f3555a = z4Var.c("measurement.androidId.delete_feature", true);
        z4Var.c("measurement.log_androidId_enabled", false);
    }

    @Override // com.google.android.gms.internal.measurement.h9
    public final boolean a() {
        return f3555a.b().booleanValue();
    }
}
