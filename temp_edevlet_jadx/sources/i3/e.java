package i3;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class e implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        ArrayList arrayListI = null;
        ArrayList arrayListI2 = null;
        Account account = null;
        String strF = null;
        String strF2 = null;
        String strF3 = null;
        int r32 = 0;
        boolean zK = false;
        boolean zK2 = false;
        boolean zK3 = false;
        while (parcel.dataPosition() < r02) {
            int r22 = parcel.readInt();
            switch ((char) r22) {
                case 1:
                    r32 = s3.b.q(parcel, r22);
                    break;
                case 2:
                    arrayListI2 = s3.b.i(parcel, r22, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) s3.b.e(parcel, r22, Account.CREATOR);
                    break;
                case 4:
                    zK = s3.b.k(parcel, r22);
                    break;
                case 5:
                    zK2 = s3.b.k(parcel, r22);
                    break;
                case 6:
                    zK3 = s3.b.k(parcel, r22);
                    break;
                case 7:
                    strF = s3.b.f(parcel, r22);
                    break;
                case '\b':
                    strF2 = s3.b.f(parcel, r22);
                    break;
                case '\t':
                    arrayListI = s3.b.i(parcel, r22, j3.a.CREATOR);
                    break;
                case '\n':
                    strF3 = s3.b.f(parcel, r22);
                    break;
                default:
                    s3.b.t(parcel, r22);
                    break;
            }
        }
        s3.b.j(parcel, r02);
        return new GoogleSignInOptions(r32, arrayListI2, account, zK, zK2, zK3, strF, strF2, GoogleSignInOptions.Z(arrayListI), strF3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new GoogleSignInOptions[r12];
    }
}
