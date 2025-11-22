package r3;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public final class y0 implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final int f14062a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f14063b;

    public y0(c cVar, int r22) {
        this.f14063b = cVar;
        this.f14062a = r22;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        c cVar = this.f14063b;
        if (iBinder == null) {
            c.B(cVar);
            return;
        }
        synchronized (cVar.f13924h) {
            c cVar2 = this.f14063b;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            cVar2.f13925i = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof m)) ? new p0(iBinder) : (m) iInterfaceQueryLocalInterface;
        }
        c cVar3 = this.f14063b;
        int r52 = this.f14062a;
        cVar3.getClass();
        a1 a1Var = new a1(cVar3, 0);
        v0 v0Var = cVar3.f;
        v0Var.sendMessage(v0Var.obtainMessage(7, r52, -1, a1Var));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        c cVar;
        synchronized (this.f14063b.f13924h) {
            cVar = this.f14063b;
            cVar.f13925i = null;
        }
        v0 v0Var = cVar.f;
        v0Var.sendMessage(v0Var.obtainMessage(6, this.f14062a, 1));
    }
}
