package r3;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;

/* loaded from: classes.dex */
public final class k0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        int r12 = 0;
        Account account = null;
        GoogleSignInAccount googleSignInAccount = null;
        int r22 = 0;
        while (parcel.dataPosition() < r02) {
            int r52 = parcel.readInt();
            char c10 = (char) r52;
            if (c10 == 1) {
                r12 = s3.b.q(parcel, r52);
            } else if (c10 == 2) {
                account = (Account) s3.b.e(parcel, r52, Account.CREATOR);
            } else if (c10 == 3) {
                r22 = s3.b.q(parcel, r52);
            } else if (c10 != 4) {
                s3.b.t(parcel, r52);
            } else {
                googleSignInAccount = (GoogleSignInAccount) s3.b.e(parcel, r52, GoogleSignInAccount.CREATOR);
            }
        }
        s3.b.j(parcel, r02);
        return new j0(r12, account, r22, googleSignInAccount);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new j0[r12];
    }
}
