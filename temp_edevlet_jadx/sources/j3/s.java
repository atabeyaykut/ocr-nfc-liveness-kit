package j3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.SignInConfiguration;

/* loaded from: classes.dex */
public final class s implements Parcelable.Creator<SignInConfiguration> {
    @Override // android.os.Parcelable.Creator
    public final SignInConfiguration createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        GoogleSignInOptions googleSignInOptions = null;
        while (parcel.dataPosition() < r02) {
            int r32 = parcel.readInt();
            char c10 = (char) r32;
            if (c10 == 2) {
                strF = s3.b.f(parcel, r32);
            } else if (c10 != 5) {
                s3.b.t(parcel, r32);
            } else {
                googleSignInOptions = (GoogleSignInOptions) s3.b.e(parcel, r32, GoogleSignInOptions.CREATOR);
            }
        }
        s3.b.j(parcel, r02);
        return new SignInConfiguration(strF, googleSignInOptions);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ SignInConfiguration[] newArray(int r12) {
        return new SignInConfiguration[r12];
    }
}
