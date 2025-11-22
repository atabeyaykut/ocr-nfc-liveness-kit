package s4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class k6 extends a implements g8 {
    public k6(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator");
    }

    @Override // s4.g8
    public final l5 e0(z3.d dVar, y9 y9Var) throws RemoteException {
        l5 l5Var;
        Parcel parcelW0 = w0();
        int r12 = o0.f15116a;
        parcelW0.writeStrongBinder(dVar);
        parcelW0.writeInt(1);
        y9Var.writeToParcel(parcelW0, 0);
        Parcel parcelX0 = x0(parcelW0, 1);
        IBinder strongBinder = parcelX0.readStrongBinder();
        if (strongBinder == null) {
            l5Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.vision.text.internal.client.INativeTextRecognizer");
            l5Var = iInterfaceQueryLocalInterface instanceof l5 ? (l5) iInterfaceQueryLocalInterface : new l5(strongBinder);
        }
        parcelX0.recycle();
        return l5Var;
    }
}
