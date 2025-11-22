package r3;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;

/* loaded from: classes.dex */
public abstract class o0 extends j4.b {
    public o0() {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // j4.b
    public final boolean w0(int r10, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (r10 == 1) {
            int r102 = parcel.readInt();
            IBinder strongBinder = parcel.readStrongBinder();
            Bundle bundle = (Bundle) j4.c.a(parcel, Bundle.CREATOR);
            j4.c.b(parcel);
            x0 x0Var = (x0) this;
            r.j(x0Var.f14060a, "onPostInitComplete can be called only once per call to getRemoteService");
            c cVar = x0Var.f14060a;
            cVar.getClass();
            z0 z0Var = new z0(cVar, r102, strongBinder, bundle);
            v0 v0Var = cVar.f;
            v0Var.sendMessage(v0Var.obtainMessage(1, x0Var.f14061b, -1, z0Var));
            x0Var.f14060a = null;
        } else if (r10 == 2) {
            parcel.readInt();
            j4.c.b(parcel);
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        } else {
            if (r10 != 3) {
                return false;
            }
            int r103 = parcel.readInt();
            IBinder strongBinder2 = parcel.readStrongBinder();
            b1 b1Var = (b1) j4.c.a(parcel, b1.CREATOR);
            j4.c.b(parcel);
            x0 x0Var2 = (x0) this;
            c cVar2 = x0Var2.f14060a;
            r.j(cVar2, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
            r.i(b1Var);
            cVar2.f13938v = b1Var;
            if (cVar2 instanceof m4.q) {
                f fVar = b1Var.f13916d;
                s sVarA = s.a();
                t tVar = fVar == null ? null : fVar.f13956a;
                synchronized (sVarA) {
                    if (tVar == null) {
                        tVar = s.f14039c;
                    } else {
                        t tVar2 = sVarA.f14040a;
                        if (tVar2 == null || tVar2.f14041a < tVar.f14041a) {
                        }
                    }
                    sVarA.f14040a = tVar;
                }
            }
            Bundle bundle2 = b1Var.f13913a;
            r.j(x0Var2.f14060a, "onPostInitComplete can be called only once per call to getRemoteService");
            c cVar3 = x0Var2.f14060a;
            cVar3.getClass();
            z0 z0Var2 = new z0(cVar3, r103, strongBinder2, bundle2);
            v0 v0Var2 = cVar3.f;
            v0Var2.sendMessage(v0Var2.obtainMessage(1, x0Var2.f14061b, -1, z0Var2));
            x0Var2.f14060a = null;
        }
        parcel2.writeNoException();
        return true;
    }
}
