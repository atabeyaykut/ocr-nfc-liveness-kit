package m4;

import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class j0 extends b implements k0 {
    public j0() {
        super("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }

    @Override // m4.b
    public final boolean w0(int r22, Parcel parcel) throws RemoteException {
        if (r22 == 1) {
            g0 g0Var = (g0) e.a(parcel, g0.CREATOR);
            e.b(parcel);
            N(g0Var);
        } else {
            if (r22 != 2) {
                return false;
            }
            e();
        }
        return true;
    }
}
