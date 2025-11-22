package j3;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Status;
import n3.a;
import o3.e0;

/* loaded from: classes.dex */
public final class i extends l<Status> {
    public i(e0 e0Var) {
        super(e0Var);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* bridge */ /* synthetic */ n3.h b(Status status) {
        return status;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.a
    public final void i(a.e eVar) throws RemoteException {
        g gVar = (g) eVar;
        q qVar = (q) gVar.w();
        h hVar = new h(this);
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(qVar.f5519b);
        int r32 = f4.d.f5521a;
        parcelObtain.writeStrongBinder(hVar);
        GoogleSignInOptions googleSignInOptions = gVar.B;
        if (googleSignInOptions == null) {
            parcelObtain.writeInt(0);
        } else {
            parcelObtain.writeInt(1);
            googleSignInOptions.writeToParcel(parcelObtain, 0);
        }
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            qVar.f5518a.transact(102, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }
}
