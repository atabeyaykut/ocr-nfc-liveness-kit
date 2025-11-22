package c5;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public final class a3 extends r3.c<v2> {
    public a3(Context context, Looper looper, s6 s6Var, s6 s6Var2) {
        super(context, looper, r3.i.a(context), m3.f.f9946b, 93, s6Var, s6Var2, null);
    }

    @Override // r3.c
    public final int l() {
        return 12451000;
    }

    @Override // r3.c
    public final /* synthetic */ IInterface q(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        return iInterfaceQueryLocalInterface instanceof v2 ? (v2) iInterfaceQueryLocalInterface : new s2(iBinder);
    }

    @Override // r3.c
    @NonNull
    public final String x() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    @Override // r3.c
    @NonNull
    public final String y() {
        return "com.google.android.gms.measurement.START";
    }
}
