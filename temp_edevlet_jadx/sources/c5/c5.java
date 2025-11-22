package c5;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class c5 {

    /* renamed from: a, reason: collision with root package name */
    public final Context f1447a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f1448b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f1449c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f1450d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final Boolean f1451e;
    public final long f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final com.google.android.gms.internal.measurement.e1 f1452g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f1453h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    public final Long f1454i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    public final String f1455j;

    public c5(Context context, @Nullable com.google.android.gms.internal.measurement.e1 e1Var, @Nullable Long l5) {
        this.f1453h = true;
        r3.r.i(context);
        Context applicationContext = context.getApplicationContext();
        r3.r.i(applicationContext);
        this.f1447a = applicationContext;
        this.f1454i = l5;
        if (e1Var != null) {
            this.f1452g = e1Var;
            this.f1448b = e1Var.f;
            this.f1449c = e1Var.f3455e;
            this.f1450d = e1Var.f3454d;
            this.f1453h = e1Var.f3453c;
            this.f = e1Var.f3452b;
            this.f1455j = e1Var.f3457h;
            Bundle bundle = e1Var.f3456g;
            if (bundle != null) {
                this.f1451e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
