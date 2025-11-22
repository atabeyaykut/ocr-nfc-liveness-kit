package o3;

import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class e extends h4.b {
    public e() {
        super("com.google.android.gms.common.api.internal.IStatusCallback");
    }

    @Override // h4.b
    public final boolean w0(int r22, @NonNull Parcel parcel, @NonNull Parcel parcel2) throws RemoteException {
        if (r22 != 1) {
            return false;
        }
        Status status = (Status) h4.c.a(parcel, Status.CREATOR);
        h4.c.b(parcel);
        m4.h hVar = (m4.h) this;
        n.a(status, hVar.f10001a, hVar.f10002b);
        return true;
    }
}
