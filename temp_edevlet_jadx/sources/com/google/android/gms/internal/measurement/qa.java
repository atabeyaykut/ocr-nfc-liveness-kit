package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class qa implements pa {

    /* renamed from: a, reason: collision with root package name */
    public static final w4 f3698a;

    static {
        z4 z4Var = new z4(u4.a(), false);
        f3698a = z4Var.c("measurement.client.sessions.check_on_reset_and_enable2", true);
        z4Var.c("measurement.client.sessions.check_on_startup", true);
        z4Var.c("measurement.client.sessions.start_session_before_view_screen", true);
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final void a() {
    }

    @Override // com.google.android.gms.internal.measurement.pa
    public final boolean b() {
        return f3698a.b().booleanValue();
    }
}
