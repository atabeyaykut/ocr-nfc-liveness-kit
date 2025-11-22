package b4;

import android.os.IInterface;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface d extends IInterface {
    boolean getBooleanFlagValue(String str, boolean z10, int r32) throws RemoteException;

    int getIntFlagValue(String str, int r22, int r32) throws RemoteException;

    long getLongFlagValue(String str, long j10, int r42) throws RemoteException;

    String getStringFlagValue(String str, String str2, int r32) throws RemoteException;

    void init(z3.b bVar) throws RemoteException;
}
