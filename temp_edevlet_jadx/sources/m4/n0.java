package m4;

import android.location.Location;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class n0 extends b {
    public n0() {
        super("com.google.android.gms.location.internal.ILocationStatusCallback");
    }

    @Override // m4.b
    public final boolean w0(int r32, Parcel parcel) throws RemoteException {
        if (r32 != 1) {
            return false;
        }
        Status status = (Status) e.a(parcel, Status.CREATOR);
        Location location = (Location) e.a(parcel, Location.CREATOR);
        e.b(parcel);
        o3.n.a(status, location, ((i) this).f10003a);
        return true;
    }
}
