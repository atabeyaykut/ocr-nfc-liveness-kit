package q4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class g0 implements Parcelable.Creator<r> {
    @Override // android.os.Parcelable.Creator
    public final r createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        String strF2 = null;
        String strF3 = null;
        String strF4 = null;
        String strF5 = null;
        q qVar = null;
        q qVar2 = null;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            switch ((char) r12) {
                case 1:
                    strF = s3.b.f(parcel, r12);
                    break;
                case 2:
                    strF2 = s3.b.f(parcel, r12);
                    break;
                case 3:
                    strF3 = s3.b.f(parcel, r12);
                    break;
                case 4:
                    strF4 = s3.b.f(parcel, r12);
                    break;
                case 5:
                    strF5 = s3.b.f(parcel, r12);
                    break;
                case 6:
                    qVar = (q) s3.b.e(parcel, r12, q.CREATOR);
                    break;
                case 7:
                    qVar2 = (q) s3.b.e(parcel, r12, q.CREATOR);
                    break;
                default:
                    s3.b.t(parcel, r12);
                    break;
            }
        }
        s3.b.j(parcel, r02);
        return new r(strF, strF2, strF3, strF4, strF5, qVar, qVar2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ r[] newArray(int r12) {
        return new r[r12];
    }
}
