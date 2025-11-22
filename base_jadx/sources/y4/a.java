package y4;

import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.maps.model.LatLng;

/* loaded from: classes.dex */
public interface a extends IInterface {
    @NonNull
    z3.b v(@NonNull LatLng latLng) throws RemoteException;
}
