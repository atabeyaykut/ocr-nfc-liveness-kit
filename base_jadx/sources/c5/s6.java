package c5;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import r3.c;

/* loaded from: classes.dex */
public final class s6 implements ServiceConnection, c.a, c.b {

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f1990a;

    /* renamed from: b, reason: collision with root package name */
    public volatile a3 f1991b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ t6 f1992c;

    public s6(t6 t6Var) {
        this.f1992c = t6Var;
    }

    @Override // r3.c.a
    @MainThread
    public final void a() {
        r3.r.e("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                r3.r.i(this.f1991b);
                v2 v2VarW = this.f1991b.w();
                h4 h4Var = ((i4) this.f1992c.f2115a).f1636k;
                i4.e(h4Var);
                h4Var.p(new e5(2, this, v2VarW));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.f1991b = null;
                this.f1990a = false;
            }
        }
    }

    @WorkerThread
    public final void b(Intent intent) {
        this.f1992c.b();
        Context context = ((i4) this.f1992c.f2115a).f1628a;
        v3.a aVarB = v3.a.b();
        synchronized (this) {
            if (this.f1990a) {
                e3 e3Var = ((i4) this.f1992c.f2115a).f1635j;
                i4.e(e3Var);
                e3Var.f1513p.a("Connection attempt already in progress");
            } else {
                e3 e3Var2 = ((i4) this.f1992c.f2115a).f1635j;
                i4.e(e3Var2);
                e3Var2.f1513p.a("Using local app measurement service");
                this.f1990a = true;
                aVarB.a(context, intent, this.f1992c.f2002c, 129);
            }
        }
    }

    @Override // r3.c.b
    @MainThread
    public final void onConnectionFailed(@NonNull m3.b bVar) throws IllegalStateException {
        r3.r.e("MeasurementServiceConnection.onConnectionFailed");
        e3 e3Var = ((i4) this.f1992c.f2115a).f1635j;
        if (e3Var == null || !e3Var.f2147b) {
            e3Var = null;
        }
        if (e3Var != null) {
            e3Var.f1508j.b(bVar, "Service connection failed");
        }
        synchronized (this) {
            this.f1990a = false;
            this.f1991b = null;
        }
        h4 h4Var = ((i4) this.f1992c.f2115a).f1636k;
        i4.e(h4Var);
        h4Var.p(new l3.l(3, this));
    }

    @Override // r3.c.a
    @MainThread
    public final void onConnectionSuspended(int r32) throws IllegalStateException {
        r3.r.e("MeasurementServiceConnection.onConnectionSuspended");
        t6 t6Var = this.f1992c;
        e3 e3Var = ((i4) t6Var.f2115a).f1635j;
        i4.e(e3Var);
        e3Var.f1512n.a("Service connection suspended");
        h4 h4Var = ((i4) t6Var.f2115a).f1636k;
        i4.e(h4Var);
        h4Var.p(new l3.k(1, this));
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        r3.r.e("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.f1990a = false;
                e3 e3Var = ((i4) this.f1992c.f2115a).f1635j;
                i4.e(e3Var);
                e3Var.f.a("Service connected with null binder");
                return;
            }
            v2 s2Var = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    s2Var = iInterfaceQueryLocalInterface instanceof v2 ? (v2) iInterfaceQueryLocalInterface : new s2(iBinder);
                    e3 e3Var2 = ((i4) this.f1992c.f2115a).f1635j;
                    i4.e(e3Var2);
                    e3Var2.f1513p.a("Bound to IMeasurementService interface");
                } else {
                    e3 e3Var3 = ((i4) this.f1992c.f2115a).f1635j;
                    i4.e(e3Var3);
                    e3Var3.f.b(interfaceDescriptor, "Got binder with a wrong descriptor");
                }
            } catch (RemoteException unused) {
                e3 e3Var4 = ((i4) this.f1992c.f2115a).f1635j;
                i4.e(e3Var4);
                e3Var4.f.a("Service connect failed to get IMeasurementService");
            }
            if (s2Var == null) {
                this.f1990a = false;
                try {
                    v3.a aVarB = v3.a.b();
                    t6 t6Var = this.f1992c;
                    aVarB.c(((i4) t6Var.f2115a).f1628a, t6Var.f2002c);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                h4 h4Var = ((i4) this.f1992c.f2115a).f1636k;
                i4.e(h4Var);
                h4Var.p(new r6(this, s2Var));
            }
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) throws IllegalStateException {
        r3.r.e("MeasurementServiceConnection.onServiceDisconnected");
        t6 t6Var = this.f1992c;
        e3 e3Var = ((i4) t6Var.f2115a).f1635j;
        i4.e(e3Var);
        e3Var.f1512n.a("Service disconnected");
        h4 h4Var = ((i4) t6Var.f2115a).f1636k;
        i4.e(h4Var);
        h4Var.p(new o3.h0(3, this, componentName));
    }
}
