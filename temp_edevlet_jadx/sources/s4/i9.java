package s4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class i9 extends a implements k9 {
    public i9(IBinder iBinder) {
        super(iBinder, "com.google.mlkit.vision.text.aidls.ITextRecognizerCreator");
    }

    @Override // s4.k9
    public final h9 K(z3.d dVar) throws RemoteException {
        h9 h9Var;
        Parcel parcelW0 = w0();
        int r12 = o0.f15116a;
        parcelW0.writeStrongBinder(dVar);
        Parcel parcelX0 = x0(parcelW0, 1);
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            h9Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.mlkit.vision.text.aidls.ITextRecognizer");
            h9Var = iInterfaceQueryLocalInterface instanceof h9 ? (h9) iInterfaceQueryLocalInterface : new h9(strongBinder);
        }
        parcelX0.recycle();
        return h9Var;
    }

    @Override // s4.k9
    public final h9 n(z3.d dVar, t9 t9Var) throws RemoteException {
        h9 h9Var;
        Parcel parcelW0 = w0();
        int r12 = o0.f15116a;
        parcelW0.writeStrongBinder(dVar);
        parcelW0.writeInt(1);
        t9Var.writeToParcel(parcelW0, 0);
        Parcel parcelX0 = x0(parcelW0, 2);
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            h9Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.mlkit.vision.text.aidls.ITextRecognizer");
            h9Var = iInterfaceQueryLocalInterface instanceof h9 ? (h9) iInterfaceQueryLocalInterface : new h9(strongBinder);
        }
        parcelX0.recycle();
        return h9Var;
    }
}
