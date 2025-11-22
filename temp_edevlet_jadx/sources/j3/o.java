package j3;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class o extends f4.c implements p {
    public o() {
        super("com.google.android.gms.auth.api.signin.internal.ISignInCallbacks");
    }

    @Override // f4.c
    public final boolean w0(int r12, Parcel parcel, Parcel parcel2) throws RemoteException {
        switch (r12) {
            case 101:
                throw new UnsupportedOperationException();
            case 102:
                V((Status) f4.d.a(parcel, Status.CREATOR));
                break;
            case 103:
                M((Status) f4.d.a(parcel, Status.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
