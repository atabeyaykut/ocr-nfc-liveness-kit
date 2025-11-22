package m4;

import android.location.Location;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.location.LocationRequest;

/* loaded from: classes.dex */
public interface m0 extends IInterface {
    @Deprecated
    void E(v vVar) throws RemoteException;

    void R(r rVar, LocationRequest locationRequest, h hVar) throws RemoteException;

    @Deprecated
    r3.l X(w4.a aVar, i iVar) throws RemoteException;

    @Deprecated
    Location d() throws RemoteException;

    @Deprecated
    void g0(w4.b bVar, i iVar) throws RemoteException;

    void j(r rVar, h hVar) throws RemoteException;
}
