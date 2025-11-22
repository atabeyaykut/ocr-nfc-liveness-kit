package i3;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        String strF = null;
        String strF2 = null;
        String strF3 = null;
        String strF4 = null;
        Uri uri = null;
        String strF5 = null;
        String strF6 = null;
        ArrayList arrayListI = null;
        String strF7 = null;
        String strF8 = null;
        long jR = 0;
        int r72 = 0;
        while (parcel.dataPosition() < r12) {
            int r22 = parcel.readInt();
            switch ((char) r22) {
                case 1:
                    r72 = s3.b.q(parcel, r22);
                    break;
                case 2:
                    strF = s3.b.f(parcel, r22);
                    break;
                case 3:
                    strF2 = s3.b.f(parcel, r22);
                    break;
                case 4:
                    strF3 = s3.b.f(parcel, r22);
                    break;
                case 5:
                    strF4 = s3.b.f(parcel, r22);
                    break;
                case 6:
                    uri = (Uri) s3.b.e(parcel, r22, Uri.CREATOR);
                    break;
                case 7:
                    strF5 = s3.b.f(parcel, r22);
                    break;
                case '\b':
                    jR = s3.b.r(parcel, r22);
                    break;
                case '\t':
                    strF6 = s3.b.f(parcel, r22);
                    break;
                case '\n':
                    arrayListI = s3.b.i(parcel, r22, Scope.CREATOR);
                    break;
                case 11:
                    strF7 = s3.b.f(parcel, r22);
                    break;
                case '\f':
                    strF8 = s3.b.f(parcel, r22);
                    break;
                default:
                    s3.b.t(parcel, r22);
                    break;
            }
        }
        s3.b.j(parcel, r12);
        return new GoogleSignInAccount(r72, strF, strF2, strF3, strF4, uri, strF5, jR, strF6, arrayListI, strF7, strF8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new GoogleSignInAccount[r12];
    }
}
