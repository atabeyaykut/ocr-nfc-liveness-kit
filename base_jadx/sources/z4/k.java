package z4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;

/* loaded from: classes.dex */
public final class k implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        double dM = 0.0d;
        double dM2 = 0.0d;
        while (parcel.dataPosition() < r02) {
            int r52 = parcel.readInt();
            char c10 = (char) r52;
            if (c10 == 2) {
                dM = s3.b.m(parcel, r52);
            } else if (c10 != 3) {
                s3.b.t(parcel, r52);
            } else {
                dM2 = s3.b.m(parcel, r52);
            }
        }
        s3.b.j(parcel, r02);
        return new LatLng(dM, dM2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new LatLng[r12];
    }
}
