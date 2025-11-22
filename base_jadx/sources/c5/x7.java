package c5;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* loaded from: classes.dex */
public final class x7 implements b5 {

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.internal.measurement.b1 f2122a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppMeasurementDynamiteService f2123b;

    public x7(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.b1 b1Var) {
        this.f2123b = appMeasurementDynamiteService;
        this.f2122a = b1Var;
    }

    @Override // c5.b5
    public final void a(long j10, Bundle bundle, String str, String str2) {
        try {
            this.f2122a.w(j10, bundle, str, str2);
        } catch (RemoteException e10) {
            i4 i4Var = this.f2123b.f4197a;
            if (i4Var != null) {
                e3 e3Var = i4Var.f1635j;
                i4.e(e3Var);
                e3Var.f1508j.b(e10, "Event listener threw exception");
            }
        }
    }
}
