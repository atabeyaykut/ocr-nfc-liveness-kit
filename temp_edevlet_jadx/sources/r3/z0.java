package r3;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import r3.c;

/* loaded from: classes.dex */
public final class z0 extends n0 {

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final IBinder f14064g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ c f14065h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @BinderThread
    public z0(c cVar, @Nullable int r22, @Nullable IBinder iBinder, Bundle bundle) {
        super(cVar, r22, bundle);
        this.f14065h = cVar;
        this.f14064g = iBinder;
    }

    @Override // r3.n0
    public final void e(m3.b bVar) {
        c.b bVar2 = this.f14065h.f13932p;
        if (bVar2 != null) {
            bVar2.onConnectionFailed(bVar);
        }
        System.currentTimeMillis();
    }

    @Override // r3.n0
    public final boolean f() throws RemoteException {
        String strG;
        String interfaceDescriptor;
        c cVar;
        IBinder iBinder = this.f14064g;
        try {
            r.i(iBinder);
            interfaceDescriptor = iBinder.getInterfaceDescriptor();
            cVar = this.f14065h;
        } catch (RemoteException unused) {
            strG = "service probably died";
        }
        if (!cVar.x().equals(interfaceDescriptor)) {
            strG = androidx.camera.camera2.internal.c.g("service descriptor mismatch: ", cVar.x(), " vs. ", interfaceDescriptor);
            Log.w("GmsClient", strG);
            return false;
        }
        IInterface iInterfaceQ = cVar.q(iBinder);
        if (iInterfaceQ == null || !(c.C(cVar, 2, 4, iInterfaceQ) || c.C(cVar, 3, 4, iInterfaceQ))) {
            return false;
        }
        cVar.f13936t = null;
        c.a aVar = cVar.f13931o;
        if (aVar == null) {
            return true;
        }
        aVar.a();
        return true;
    }
}
