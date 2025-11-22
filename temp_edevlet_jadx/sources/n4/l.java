package n4;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;

/* loaded from: classes.dex */
public interface l extends IInterface {
    boolean W(l lVar) throws RemoteException;

    double d() throws RemoteException;

    LatLng f() throws RemoteException;

    int h() throws RemoteException;
}
