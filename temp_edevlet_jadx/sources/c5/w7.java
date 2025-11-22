package c5;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* loaded from: classes.dex */
public final class w7 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.internal.measurement.y0 f2104a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f2105b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f2106c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AppMeasurementDynamiteService f2107d;

    public w7(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.y0 y0Var, String str, String str2) {
        this.f2107d = appMeasurementDynamiteService;
        this.f2104a = y0Var;
        this.f2105b = str;
        this.f2106c = str2;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        t6 t6VarS = this.f2107d.f4197a.s();
        com.google.android.gms.internal.measurement.y0 y0Var = this.f2104a;
        String str = this.f2105b;
        String str2 = this.f2106c;
        t6VarS.b();
        t6VarS.c();
        t6VarS.t(new p6(t6VarS, str, str2, t6VarS.q(false), y0Var));
    }
}
