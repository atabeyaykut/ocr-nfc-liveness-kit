package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class na implements ma {

    /* renamed from: a, reason: collision with root package name */
    public static final w4 f3648a;

    /* renamed from: b, reason: collision with root package name */
    public static final w4 f3649b;

    /* renamed from: c, reason: collision with root package name */
    public static final w4 f3650c;

    static {
        z4 z4Var = new z4(u4.a(), false);
        z4Var.c("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        f3648a = z4Var.c("measurement.audience.refresh_event_count_filters_timestamp", false);
        f3649b = z4Var.c("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        f3650c = z4Var.c("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }

    @Override // com.google.android.gms.internal.measurement.ma
    public final void a() {
    }

    @Override // com.google.android.gms.internal.measurement.ma
    public final boolean b() {
        return f3648a.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.ma
    public final boolean c() {
        return f3649b.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.ma
    public final boolean d() {
        return f3650c.b().booleanValue();
    }
}
