package m4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.LocationRequest;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class u implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        LocationRequest locationRequest = null;
        ArrayList arrayListI = null;
        String strF = null;
        String strF2 = null;
        long jR = Long.MAX_VALUE;
        boolean zK = false;
        boolean zK2 = false;
        boolean zK3 = false;
        boolean zK4 = false;
        while (parcel.dataPosition() < r12) {
            int r22 = parcel.readInt();
            char c10 = (char) r22;
            if (c10 == 1) {
                locationRequest = (LocationRequest) s3.b.e(parcel, r22, LocationRequest.CREATOR);
            } else if (c10 != 5) {
                switch (c10) {
                    case '\b':
                        zK = s3.b.k(parcel, r22);
                        break;
                    case '\t':
                        zK2 = s3.b.k(parcel, r22);
                        break;
                    case '\n':
                        strF = s3.b.f(parcel, r22);
                        break;
                    case 11:
                        zK3 = s3.b.k(parcel, r22);
                        break;
                    case '\f':
                        zK4 = s3.b.k(parcel, r22);
                        break;
                    case '\r':
                        strF2 = s3.b.f(parcel, r22);
                        break;
                    case 14:
                        jR = s3.b.r(parcel, r22);
                        break;
                    default:
                        s3.b.t(parcel, r22);
                        break;
                }
            } else {
                arrayListI = s3.b.i(parcel, r22, r3.d.CREATOR);
            }
        }
        s3.b.j(parcel, r12);
        return new t(locationRequest, arrayListI, zK, zK2, strF, zK3, zK4, strF2, jR);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new t[r12];
    }
}
