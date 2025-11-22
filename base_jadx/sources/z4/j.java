package z4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

/* loaded from: classes.dex */
public final class j implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        LatLng latLng = null;
        LatLng latLng2 = null;
        while (parcel.dataPosition() < r02) {
            int r32 = parcel.readInt();
            char c10 = (char) r32;
            if (c10 == 2) {
                latLng = (LatLng) s3.b.e(parcel, r32, LatLng.CREATOR);
            } else if (c10 != 3) {
                s3.b.t(parcel, r32);
            } else {
                latLng2 = (LatLng) s3.b.e(parcel, r32, LatLng.CREATOR);
            }
        }
        s3.b.j(parcel, r02);
        return new LatLngBounds(latLng, latLng2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new LatLngBounds[r12];
    }
}
