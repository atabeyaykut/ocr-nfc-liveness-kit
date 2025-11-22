package w4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.LocationAvailability;

/* loaded from: classes.dex */
public final class p implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        long jR = 0;
        e[] eVarArr = null;
        int r72 = 1000;
        int r82 = 1;
        int r92 = 1;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            switch ((char) r12) {
                case 1:
                    r82 = s3.b.q(parcel, r12);
                    break;
                case 2:
                    r92 = s3.b.q(parcel, r12);
                    break;
                case 3:
                    jR = s3.b.r(parcel, r12);
                    break;
                case 4:
                    r72 = s3.b.q(parcel, r12);
                    break;
                case 5:
                    eVarArr = (e[]) s3.b.h(parcel, r12, e.CREATOR);
                    break;
                case 6:
                    s3.b.k(parcel, r12);
                    break;
                default:
                    s3.b.t(parcel, r12);
                    break;
            }
        }
        s3.b.j(parcel, r02);
        return new LocationAvailability(r72, r82, r92, jR, eVarArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new LocationAvailability[r12];
    }
}
