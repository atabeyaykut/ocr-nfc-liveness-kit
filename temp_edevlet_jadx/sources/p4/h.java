package p4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class h extends a implements j {
    public h(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator");
    }

    @Override // p4.j
    public final g I(z3.d dVar, e eVar) throws RemoteException {
        g gVar;
        Parcel parcelW0 = w0();
        int r12 = s0.f12665a;
        parcelW0.writeStrongBinder(dVar);
        parcelW0.writeInt(1);
        eVar.writeToParcel(parcelW0, 0);
        Parcel parcelX0 = x0(parcelW0, 1);
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            gVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector");
            gVar = iInterfaceQueryLocalInterface instanceof g ? (g) iInterfaceQueryLocalInterface : new g(strongBinder);
        }
        parcelX0.recycle();
        return gVar;
    }
}
