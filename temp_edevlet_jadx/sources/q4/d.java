package q4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import z3.b;

/* loaded from: classes.dex */
public abstract class d extends m implements e {
    public d() {
        super("com.google.mlkit.vision.barcode.aidls.IBarcodeScannerCreator");
    }

    public static e asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.mlkit.vision.barcode.aidls.IBarcodeScannerCreator");
        return iInterfaceQueryLocalInterface instanceof e ? (e) iInterfaceQueryLocalInterface : new c(iBinder);
    }

    @Override // q4.m
    public final boolean w0(int r52, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (r52 != 1) {
            return false;
        }
        z3.b bVarX0 = b.a.x0(parcel.readStrongBinder());
        Parcelable.Creator<d0> creator = d0.CREATOR;
        int r22 = n.f13349a;
        IInterface iInterfaceNewBarcodeScanner = newBarcodeScanner(bVarX0, parcel.readInt() == 0 ? null : creator.createFromParcel(parcel));
        parcel2.writeNoException();
        parcel2.writeStrongBinder(iInterfaceNewBarcodeScanner != null ? ((m) iInterfaceNewBarcodeScanner).asBinder() : null);
        return true;
    }
}
