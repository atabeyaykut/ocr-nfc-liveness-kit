package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class sb implements rb {

    /* renamed from: a, reason: collision with root package name */
    public static final w4 f3764a;

    /* renamed from: b, reason: collision with root package name */
    public static final w4 f3765b;

    static {
        z4 z4Var = new z4(u4.a(), false);
        f3764a = z4Var.c("measurement.module.pixie.ees", true);
        f3765b = z4Var.c("measurement.module.pixie.fix_array", true);
    }

    @Override // com.google.android.gms.internal.measurement.rb
    public final void a() {
    }

    @Override // com.google.android.gms.internal.measurement.rb
    public final boolean b() {
        return f3764a.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.rb
    public final boolean c() {
        return f3765b.b().booleanValue();
    }
}
