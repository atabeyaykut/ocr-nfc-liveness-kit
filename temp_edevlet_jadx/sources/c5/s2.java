package c5;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class s2 extends com.google.android.gms.internal.measurement.i0 implements v2 {
    public s2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // c5.v2
    public final void A(r7 r7Var, y7 y7Var) throws RemoteException {
        Parcel parcelW0 = w0();
        com.google.android.gms.internal.measurement.k0.b(parcelW0, r7Var);
        com.google.android.gms.internal.measurement.k0.b(parcelW0, y7Var);
        y0(parcelW0, 2);
    }

    @Override // c5.v2
    public final void C(y7 y7Var) throws RemoteException {
        Parcel parcelW0 = w0();
        com.google.android.gms.internal.measurement.k0.b(parcelW0, y7Var);
        y0(parcelW0, 6);
    }

    @Override // c5.v2
    public final void Q(long j10, String str, String str2, String str3) throws RemoteException {
        Parcel parcelW0 = w0();
        parcelW0.writeLong(j10);
        parcelW0.writeString(str);
        parcelW0.writeString(str2);
        parcelW0.writeString(str3);
        y0(parcelW0, 10);
    }

    @Override // c5.v2
    public final List<r7> S(String str, String str2, boolean z10, y7 y7Var) throws RemoteException {
        Parcel parcelW0 = w0();
        parcelW0.writeString(str);
        parcelW0.writeString(str2);
        ClassLoader classLoader = com.google.android.gms.internal.measurement.k0.f3592a;
        parcelW0.writeInt(z10 ? 1 : 0);
        com.google.android.gms.internal.measurement.k0.b(parcelW0, y7Var);
        Parcel parcelX0 = x0(parcelW0, 14);
        ArrayList arrayListCreateTypedArrayList = parcelX0.createTypedArrayList(r7.CREATOR);
        parcelX0.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // c5.v2
    public final byte[] Y(s sVar, String str) throws RemoteException {
        Parcel parcelW0 = w0();
        com.google.android.gms.internal.measurement.k0.b(parcelW0, sVar);
        parcelW0.writeString(str);
        Parcel parcelX0 = x0(parcelW0, 9);
        byte[] bArrCreateByteArray = parcelX0.createByteArray();
        parcelX0.recycle();
        return bArrCreateByteArray;
    }

    @Override // c5.v2
    public final List<b> b0(String str, String str2, y7 y7Var) throws RemoteException {
        Parcel parcelW0 = w0();
        parcelW0.writeString(str);
        parcelW0.writeString(str2);
        com.google.android.gms.internal.measurement.k0.b(parcelW0, y7Var);
        Parcel parcelX0 = x0(parcelW0, 16);
        ArrayList arrayListCreateTypedArrayList = parcelX0.createTypedArrayList(b.CREATOR);
        parcelX0.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // c5.v2
    public final void d0(y7 y7Var) throws RemoteException {
        Parcel parcelW0 = w0();
        com.google.android.gms.internal.measurement.k0.b(parcelW0, y7Var);
        y0(parcelW0, 4);
    }

    @Override // c5.v2
    public final void h0(s sVar, y7 y7Var) throws RemoteException {
        Parcel parcelW0 = w0();
        com.google.android.gms.internal.measurement.k0.b(parcelW0, sVar);
        com.google.android.gms.internal.measurement.k0.b(parcelW0, y7Var);
        y0(parcelW0, 1);
    }

    @Override // c5.v2
    public final String o(y7 y7Var) throws RemoteException {
        Parcel parcelW0 = w0();
        com.google.android.gms.internal.measurement.k0.b(parcelW0, y7Var);
        Parcel parcelX0 = x0(parcelW0, 11);
        String string = parcelX0.readString();
        parcelX0.recycle();
        return string;
    }

    @Override // c5.v2
    public final void p(Bundle bundle, y7 y7Var) throws RemoteException {
        Parcel parcelW0 = w0();
        com.google.android.gms.internal.measurement.k0.b(parcelW0, bundle);
        com.google.android.gms.internal.measurement.k0.b(parcelW0, y7Var);
        y0(parcelW0, 19);
    }

    @Override // c5.v2
    public final List<r7> q(String str, String str2, String str3, boolean z10) throws RemoteException {
        Parcel parcelW0 = w0();
        parcelW0.writeString(null);
        parcelW0.writeString(str2);
        parcelW0.writeString(str3);
        ClassLoader classLoader = com.google.android.gms.internal.measurement.k0.f3592a;
        parcelW0.writeInt(z10 ? 1 : 0);
        Parcel parcelX0 = x0(parcelW0, 15);
        ArrayList arrayListCreateTypedArrayList = parcelX0.createTypedArrayList(r7.CREATOR);
        parcelX0.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // c5.v2
    public final void q0(b bVar, y7 y7Var) throws RemoteException {
        Parcel parcelW0 = w0();
        com.google.android.gms.internal.measurement.k0.b(parcelW0, bVar);
        com.google.android.gms.internal.measurement.k0.b(parcelW0, y7Var);
        y0(parcelW0, 12);
    }

    @Override // c5.v2
    public final void r(y7 y7Var) throws RemoteException {
        Parcel parcelW0 = w0();
        com.google.android.gms.internal.measurement.k0.b(parcelW0, y7Var);
        y0(parcelW0, 18);
    }

    @Override // c5.v2
    public final void s0(y7 y7Var) throws RemoteException {
        Parcel parcelW0 = w0();
        com.google.android.gms.internal.measurement.k0.b(parcelW0, y7Var);
        y0(parcelW0, 20);
    }

    @Override // c5.v2
    public final List<b> z(String str, String str2, String str3) throws RemoteException {
        Parcel parcelW0 = w0();
        parcelW0.writeString(null);
        parcelW0.writeString(str2);
        parcelW0.writeString(str3);
        Parcel parcelX0 = x0(parcelW0, 17);
        ArrayList arrayListCreateTypedArrayList = parcelX0.createTypedArrayList(b.CREATOR);
        parcelX0.recycle();
        return arrayListCreateTypedArrayList;
    }
}
