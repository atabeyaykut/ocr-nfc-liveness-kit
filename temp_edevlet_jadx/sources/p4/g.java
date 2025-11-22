package p4;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class g extends a {
    public g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector");
    }

    public final rb[] z0(z3.d dVar, k kVar) throws RemoteException {
        Parcel parcelW0 = w0();
        int r12 = s0.f12665a;
        parcelW0.writeStrongBinder(dVar);
        parcelW0.writeInt(1);
        kVar.writeToParcel(parcelW0, 0);
        Parcel parcelX0 = x0(parcelW0, 1);
        rb[] rbVarArr = (rb[]) parcelX0.createTypedArray(rb.CREATOR);
        parcelX0.recycle();
        return rbVarArr;
    }
}
