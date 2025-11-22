package z4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;

/* loaded from: classes.dex */
public final class h implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        float fN = 0.0f;
        LatLng latLng = null;
        float fN2 = 0.0f;
        float fN3 = 0.0f;
        while (parcel.dataPosition() < r02) {
            int r52 = parcel.readInt();
            char c10 = (char) r52;
            if (c10 == 2) {
                latLng = (LatLng) s3.b.e(parcel, r52, LatLng.CREATOR);
            } else if (c10 == 3) {
                fN = s3.b.n(parcel, r52);
            } else if (c10 == 4) {
                fN2 = s3.b.n(parcel, r52);
            } else if (c10 != 5) {
                s3.b.t(parcel, r52);
            } else {
                fN3 = s3.b.n(parcel, r52);
            }
        }
        s3.b.j(parcel, r02);
        return new CameraPosition(latLng, fN, fN2, fN3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new CameraPosition[r12];
    }
}
