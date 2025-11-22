package g4;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import o3.n;

/* loaded from: classes.dex */
public class a extends Binder implements IInterface {
    public a() {
        attachInterface(this, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverResultCallback");
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int r32, Parcel parcel, Parcel parcel2, int r6) throws RemoteException {
        boolean zOnTransact;
        if (r32 > 16777215) {
            zOnTransact = super.onTransact(r32, parcel, parcel2, r6);
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
            zOnTransact = false;
        }
        if (zOnTransact) {
            return true;
        }
        e eVar = (e) this;
        if (r32 != 1) {
            return false;
        }
        Parcelable.Creator<Status> creator = Status.CREATOR;
        int r02 = b.f5804a;
        n.a(parcel.readInt() == 0 ? null : creator.createFromParcel(parcel), null, ((i) eVar).f5806a.f5807d);
        return true;
    }
}
