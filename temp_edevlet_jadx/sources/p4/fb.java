package p4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class fb extends a implements hb {
    public fb(IBinder iBinder) {
        super(iBinder, "com.google.mlkit.vision.barcode.aidls.IBarcodeScannerCreator");
    }

    @Override // p4.hb
    public final db x(z3.d dVar, va vaVar) throws RemoteException {
        db dbVar;
        Parcel parcelW0 = w0();
        int r12 = s0.f12665a;
        parcelW0.writeStrongBinder(dVar);
        parcelW0.writeInt(1);
        vaVar.writeToParcel(parcelW0, 0);
        Parcel parcelX0 = x0(parcelW0, 1);
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            dbVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.mlkit.vision.barcode.aidls.IBarcodeScanner");
            dbVar = iInterfaceQueryLocalInterface instanceof db ? (db) iInterfaceQueryLocalInterface : new db(strongBinder);
        }
        parcelX0.recycle();
        return dbVar;
    }
}
