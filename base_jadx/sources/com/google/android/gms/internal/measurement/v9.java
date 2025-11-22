package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class v9 implements u9 {

    /* renamed from: a, reason: collision with root package name */
    public static final v4 f3807a;

    static {
        z4 z4Var = new z4(u4.a(), false);
        z4Var.c("measurement.client.consent_state_v1", true);
        z4Var.c("measurement.client.3p_consent_state_v1", true);
        z4Var.c("measurement.service.consent_state_v1_W36", true);
        f3807a = z4Var.a(203600L, "measurement.service.storage_consent_support_version");
    }

    @Override // com.google.android.gms.internal.measurement.u9
    public final long a() {
        return f3807a.b().longValue();
    }
}
