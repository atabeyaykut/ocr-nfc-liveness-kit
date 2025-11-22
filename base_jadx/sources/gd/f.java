package gd;

import android.os.RemoteException;

/* loaded from: classes2.dex */
public final class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f6666a;

    public f(e eVar) {
        this.f6666a = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        e eVar = this.f6666a;
        eVar.f6655q = false;
        try {
            id.b.a("BeaconManager", "API Performing settings sync to running service.", new Object[0]);
            eVar.a(7, null);
        } catch (RemoteException e10) {
            id.b.c("BeaconManager", "Failed to sync settings to service", e10);
        }
    }
}
