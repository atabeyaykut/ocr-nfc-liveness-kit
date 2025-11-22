package r3;

import android.accounts.Account;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public interface k extends IInterface {

    public static abstract class a extends j4.b implements k {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f14010a = 0;
    }

    @NonNull
    Account b() throws RemoteException;
}
