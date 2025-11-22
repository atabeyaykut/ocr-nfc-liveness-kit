package c5;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* loaded from: classes.dex */
public final class u5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.internal.measurement.y0 f2037a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f2038b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f2039c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AppMeasurementDynamiteService f2040d;

    public u5(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.y0 y0Var, s sVar, String str) {
        this.f2040d = appMeasurementDynamiteService;
        this.f2037a = y0Var;
        this.f2038b = sVar;
        this.f2039c = str;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        t6 t6VarS = this.f2040d.f4197a.s();
        t6VarS.b();
        t6VarS.c();
        i4 i4Var = (i4) t6VarS.f2115a;
        v7 v7Var = i4Var.f1638m;
        i4.c(v7Var);
        v7Var.getClass();
        int r22 = m3.f.f9946b.c(12451000, ((i4) v7Var.f2115a).f1628a);
        com.google.android.gms.internal.measurement.y0 y0Var = this.f2037a;
        if (r22 == 0) {
            t6VarS.t(new n5(t6VarS, this.f2038b, this.f2039c, y0Var));
            return;
        }
        e3 e3Var = i4Var.f1635j;
        i4.e(e3Var);
        e3Var.f1508j.a("Not bundling data. Service unavailable or out of date");
        v7 v7Var2 = i4Var.f1638m;
        i4.c(v7Var2);
        v7Var2.B(y0Var, new byte[0]);
    }
}
