package r3;

import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class q1 extends j4.b implements r1 {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f14036a = 0;

    public q1() {
        super("com.google.android.gms.common.internal.ICertData");
    }

    @Override // j4.b
    public final boolean w0(int r22, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (r22 == 1) {
            z3.b bVarD = ((m3.u) this).d();
            parcel2.writeNoException();
            j4.c.c(parcel2, bVarD);
        } else {
            if (r22 != 2) {
                return false;
            }
            parcel2.writeNoException();
            parcel2.writeInt(((m3.u) this).f9969b);
        }
        return true;
    }
}
