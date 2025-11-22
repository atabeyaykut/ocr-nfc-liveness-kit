package m4;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import androidx.collection.SimpleArrayMap;
import o3.h;

/* loaded from: classes.dex */
public final class q extends r3.h {
    public final SimpleArrayMap B;
    public final SimpleArrayMap C;
    public final SimpleArrayMap D;

    public q(Context context, Looper looper, r3.e eVar, o3.c cVar, o3.j jVar) {
        super(context, looper, 23, eVar, cVar, jVar);
        this.B = new SimpleArrayMap();
        this.C = new SimpleArrayMap();
        this.D = new SimpleArrayMap();
    }

    @Override // r3.c
    public final void A() {
        System.currentTimeMillis();
        synchronized (this.B) {
            this.B.clear();
        }
        synchronized (this.C) {
            this.C.clear();
        }
        synchronized (this.D) {
            this.D.clear();
        }
    }

    public final void E(h.a aVar, boolean z10, h5.l lVar) throws RemoteException {
        synchronized (this.C) {
            o oVar = (o) this.C.remove(aVar);
            if (oVar == null) {
                lVar.b(Boolean.FALSE);
                return;
            }
            o3.h hVar = oVar.f10010b.f9998a;
            hVar.f11140b = null;
            hVar.f11141c = null;
            if (!z10) {
                lVar.b(Boolean.TRUE);
            } else if (F(w4.h.f18701c)) {
                ((m0) w()).j(new r(2, null, oVar, null, null, null), new h(Boolean.TRUE, lVar));
            } else {
                ((m0) w()).E(new v(2, null, null, oVar, null, new j(Boolean.TRUE, lVar), null));
            }
        }
    }

    public final boolean F(m3.d dVar) {
        m3.d dVar2;
        m3.d[] dVarArrM = m();
        if (dVarArrM == null) {
            return false;
        }
        int length = dVarArrM.length;
        int r32 = 0;
        while (true) {
            if (r32 >= length) {
                dVar2 = null;
                break;
            }
            dVar2 = dVarArrM[r32];
            if (dVar.f9936a.equals(dVar2.f9936a)) {
                break;
            }
            r32++;
        }
        return dVar2 != null && dVar2.E() >= dVar.E();
    }

    @Override // r3.c
    public final int l() {
        return 11717000;
    }

    @Override // r3.c
    public final /* synthetic */ IInterface q(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        return iInterfaceQueryLocalInterface instanceof m0 ? (m0) iInterfaceQueryLocalInterface : new l0(iBinder);
    }

    @Override // r3.c
    public final m3.d[] s() {
        return w4.h.f18702d;
    }

    @Override // r3.c
    public final String x() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    @Override // r3.c
    public final String y() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }
}
