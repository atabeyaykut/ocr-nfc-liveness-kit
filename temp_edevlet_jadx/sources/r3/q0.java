package r3;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class q0 extends j4.a implements s0 {
    public q0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // r3.s0
    public final boolean h() throws RemoteException {
        Parcel parcelW0 = w0(x0(), 7);
        int r12 = j4.c.f7999a;
        boolean z10 = parcelW0.readInt() != 0;
        parcelW0.recycle();
        return z10;
    }

    @Override // r3.s0
    public final m3.b0 r0(m3.z zVar) throws RemoteException {
        Parcel parcelX0 = x0();
        int r12 = j4.c.f7999a;
        parcelX0.writeInt(1);
        zVar.writeToParcel(parcelX0, 0);
        Parcel parcelW0 = w0(parcelX0, 6);
        m3.b0 b0Var = (m3.b0) j4.c.a(parcelW0, m3.b0.CREATOR);
        parcelW0.recycle();
        return b0Var;
    }

    @Override // r3.s0
    public final boolean s(m3.d0 d0Var, z3.d dVar) throws RemoteException {
        Parcel parcelX0 = x0();
        int r12 = j4.c.f7999a;
        parcelX0.writeInt(1);
        d0Var.writeToParcel(parcelX0, 0);
        j4.c.c(parcelX0, dVar);
        Parcel parcelW0 = w0(parcelX0, 5);
        boolean z10 = parcelW0.readInt() != 0;
        parcelW0.recycle();
        return z10;
    }
}
