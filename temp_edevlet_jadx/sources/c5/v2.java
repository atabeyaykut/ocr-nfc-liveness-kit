package c5;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import java.util.List;

/* loaded from: classes.dex */
public interface v2 extends IInterface {
    void A(r7 r7Var, y7 y7Var) throws RemoteException;

    void C(y7 y7Var) throws RemoteException;

    void Q(long j10, @Nullable String str, @Nullable String str2, String str3) throws RemoteException;

    List<r7> S(@Nullable String str, @Nullable String str2, boolean z10, y7 y7Var) throws RemoteException;

    @Nullable
    byte[] Y(s sVar, String str) throws RemoteException;

    List<b> b0(@Nullable String str, @Nullable String str2, y7 y7Var) throws RemoteException;

    void d0(y7 y7Var) throws RemoteException;

    void h0(s sVar, y7 y7Var) throws RemoteException;

    @Nullable
    String o(y7 y7Var) throws RemoteException;

    void p(Bundle bundle, y7 y7Var) throws RemoteException;

    List<r7> q(String str, @Nullable String str2, @Nullable String str3, boolean z10) throws RemoteException;

    void q0(b bVar, y7 y7Var) throws RemoteException;

    void r(y7 y7Var) throws RemoteException;

    void s0(y7 y7Var) throws RemoteException;

    List<b> z(String str, @Nullable String str2, @Nullable String str3) throws RemoteException;
}
