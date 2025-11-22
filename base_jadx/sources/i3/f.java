package i3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.SignInAccount;

/* loaded from: classes.dex */
public final class f implements Parcelable.Creator<SignInAccount> {
    @Override // android.os.Parcelable.Creator
    public final SignInAccount createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = "";
        GoogleSignInAccount googleSignInAccount = null;
        String strF2 = "";
        while (parcel.dataPosition() < r02) {
            int r42 = parcel.readInt();
            char c10 = (char) r42;
            if (c10 == 4) {
                strF = s3.b.f(parcel, r42);
            } else if (c10 == 7) {
                googleSignInAccount = (GoogleSignInAccount) s3.b.e(parcel, r42, GoogleSignInAccount.CREATOR);
            } else if (c10 != '\b') {
                s3.b.t(parcel, r42);
            } else {
                strF2 = s3.b.f(parcel, r42);
            }
        }
        s3.b.j(parcel, r02);
        return new SignInAccount(strF, googleSignInAccount, strF2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ SignInAccount[] newArray(int r12) {
        return new SignInAccount[r12];
    }
}
