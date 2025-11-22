package y4;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.maps.GoogleMapOptions;

/* loaded from: classes.dex */
public interface c extends IInterface {
    void B(x4.g gVar) throws RemoteException;

    void F() throws RemoteException;

    void L(@NonNull Bundle bundle) throws RemoteException;

    void O(@NonNull z3.d dVar, GoogleMapOptions googleMapOptions, @NonNull Bundle bundle) throws RemoteException;

    void g() throws RemoteException;

    void i() throws RemoteException;

    @NonNull
    z3.b m0(@NonNull z3.d dVar, @NonNull z3.d dVar2, @NonNull Bundle bundle) throws RemoteException;

    void o0() throws RemoteException;

    void onLowMemory() throws RemoteException;

    void onResume() throws RemoteException;

    void onStart() throws RemoteException;

    void u0(@NonNull Bundle bundle) throws RemoteException;
}
