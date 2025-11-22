package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ub implements Parcelable.Creator<n4> {
    @Override // android.os.Parcelable.Creator
    public final n4 createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        String strF2 = null;
        String strF3 = null;
        String strF4 = null;
        String strF5 = null;
        m3 m3Var = null;
        m3 m3Var2 = null;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            switch ((char) r12) {
                case 2:
                    strF = s3.b.f(parcel, r12);
                    break;
                case 3:
                    strF2 = s3.b.f(parcel, r12);
                    break;
                case 4:
                    strF3 = s3.b.f(parcel, r12);
                    break;
                case 5:
                    strF4 = s3.b.f(parcel, r12);
                    break;
                case 6:
                    strF5 = s3.b.f(parcel, r12);
                    break;
                case 7:
                    m3Var = (m3) s3.b.e(parcel, r12, m3.CREATOR);
                    break;
                case '\b':
                    m3Var2 = (m3) s3.b.e(parcel, r12, m3.CREATOR);
                    break;
                default:
                    s3.b.t(parcel, r12);
                    break;
            }
        }
        s3.b.j(parcel, r02);
        return new n4(strF, strF2, strF3, strF4, strF5, m3Var, m3Var2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ n4[] newArray(int r12) {
        return new n4[r12];
    }
}
