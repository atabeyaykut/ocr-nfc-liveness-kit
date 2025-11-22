package r3;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class n1 extends j4.a implements k {
    public n1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
    }

    @Override // r3.k
    public final Account b() throws RemoteException {
        Parcel parcelW0 = w0(x0(), 2);
        Account account = (Account) j4.c.a(parcelW0, Account.CREATOR);
        parcelW0.recycle();
        return account;
    }
}
