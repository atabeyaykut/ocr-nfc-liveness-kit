package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class ha implements ga {

    /* renamed from: a, reason: collision with root package name */
    public static final w4 f3538a = new z4(u4.a(), false).c("measurement.client.firebase_feature_rollout.v1.enable", true);

    @Override // com.google.android.gms.internal.measurement.ga
    public final void a() {
    }

    @Override // com.google.android.gms.internal.measurement.ga
    public final boolean b() {
        return f3538a.b().booleanValue();
    }
}
