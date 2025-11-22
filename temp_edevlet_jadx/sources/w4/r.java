package w4;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.LocationResult;
import java.util.List;

/* loaded from: classes.dex */
public final class r implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        List listI = LocationResult.f4163b;
        while (parcel.dataPosition() < r02) {
            int r22 = parcel.readInt();
            if (((char) r22) != 1) {
                s3.b.t(parcel, r22);
            } else {
                listI = s3.b.i(parcel, r22, Location.CREATOR);
            }
        }
        s3.b.j(parcel, r02);
        return new LocationResult(listI);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new LocationResult[r12];
    }
}
