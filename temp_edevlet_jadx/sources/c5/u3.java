package c5;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import androidx.annotation.MainThread;

/* loaded from: classes.dex */
public final class u3 implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final String f2033a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v3 f2034b;

    public u3(v3 v3Var, String str) {
        this.f2034b = v3Var;
        this.f2033a = str;
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        v3 v3Var = this.f2034b;
        if (iBinder == null) {
            e3 e3Var = v3Var.f2056a.f1635j;
            i4.e(e3Var);
            e3Var.f1508j.a("Install Referrer connection returned with null binder");
            return;
        }
        try {
            int r02 = com.google.android.gms.internal.measurement.m0.f3623a;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            Object l0Var = iInterfaceQueryLocalInterface instanceof com.google.android.gms.internal.measurement.n0 ? (com.google.android.gms.internal.measurement.n0) iInterfaceQueryLocalInterface : new com.google.android.gms.internal.measurement.l0(iBinder);
            if (l0Var == null) {
                e3 e3Var2 = v3Var.f2056a.f1635j;
                i4.e(e3Var2);
                e3Var2.f1508j.a("Install Referrer Service implementation was not found");
            } else {
                e3 e3Var3 = v3Var.f2056a.f1635j;
                i4.e(e3Var3);
                e3Var3.f1513p.a("Install Referrer Service connected");
                h4 h4Var = v3Var.f2056a.f1636k;
                i4.e(h4Var);
                h4Var.p(new t3(this, l0Var, this, 0));
            }
        } catch (RuntimeException e10) {
            e3 e3Var4 = v3Var.f2056a.f1635j;
            i4.e(e3Var4);
            e3Var4.f1508j.b(e10, "Exception occurred while calling Install Referrer API");
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        e3 e3Var = this.f2034b.f2056a.f1635j;
        i4.e(e3Var);
        e3Var.f1513p.a("Install Referrer Service disconnected");
    }
}
