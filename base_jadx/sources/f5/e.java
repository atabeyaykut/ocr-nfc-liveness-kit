package f5;

import android.os.Parcel;
import android.os.RemoteException;
import o3.n0;
import o3.p0;

/* loaded from: classes.dex */
public abstract class e extends h4.b implements f {
    public e() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override // h4.b
    public final boolean w0(int r32, Parcel parcel, Parcel parcel2) throws RemoteException {
        int r02 = 0;
        switch (r32) {
            case 3:
                h4.c.b(parcel);
                parcel2.writeNoException();
                return true;
            case 4:
            case 6:
                h4.c.b(parcel);
                parcel2.writeNoException();
                return true;
            case 5:
            default:
                return false;
            case 7:
                h4.c.b(parcel);
                parcel2.writeNoException();
                return true;
            case 8:
                l lVar = (l) h4.c.a(parcel, l.CREATOR);
                h4.c.b(parcel);
                p0 p0Var = (p0) this;
                p0Var.f11178b.post(new n0(r02, p0Var, lVar));
                parcel2.writeNoException();
                return true;
            case 9:
                h4.c.b(parcel);
                parcel2.writeNoException();
                return true;
        }
    }
}
