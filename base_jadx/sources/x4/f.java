package x4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;

/* loaded from: classes.dex */
public final class f implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        CameraPosition cameraPosition = null;
        Float fO = null;
        Float fO2 = null;
        LatLngBounds latLngBounds = null;
        Integer numValueOf = null;
        String strF = null;
        byte bL = -1;
        byte bL2 = -1;
        int r82 = 0;
        byte bL3 = -1;
        byte bL4 = -1;
        byte bL5 = -1;
        byte bL6 = -1;
        byte bL7 = -1;
        byte bL8 = -1;
        byte bL9 = -1;
        byte bL10 = -1;
        byte bL11 = -1;
        byte bL12 = -1;
        while (parcel.dataPosition() < r12) {
            int r32 = parcel.readInt();
            switch ((char) r32) {
                case 2:
                    bL = s3.b.l(parcel, r32);
                    break;
                case 3:
                    bL2 = s3.b.l(parcel, r32);
                    break;
                case 4:
                    r82 = s3.b.q(parcel, r32);
                    break;
                case 5:
                    cameraPosition = (CameraPosition) s3.b.e(parcel, r32, CameraPosition.CREATOR);
                    break;
                case 6:
                    bL3 = s3.b.l(parcel, r32);
                    break;
                case 7:
                    bL4 = s3.b.l(parcel, r32);
                    break;
                case '\b':
                    bL5 = s3.b.l(parcel, r32);
                    break;
                case '\t':
                    bL6 = s3.b.l(parcel, r32);
                    break;
                case '\n':
                    bL7 = s3.b.l(parcel, r32);
                    break;
                case 11:
                    bL8 = s3.b.l(parcel, r32);
                    break;
                case '\f':
                    bL9 = s3.b.l(parcel, r32);
                    break;
                case '\r':
                default:
                    s3.b.t(parcel, r32);
                    break;
                case 14:
                    bL10 = s3.b.l(parcel, r32);
                    break;
                case 15:
                    bL11 = s3.b.l(parcel, r32);
                    break;
                case 16:
                    fO = s3.b.o(parcel, r32);
                    break;
                case 17:
                    fO2 = s3.b.o(parcel, r32);
                    break;
                case 18:
                    latLngBounds = (LatLngBounds) s3.b.e(parcel, r32, LatLngBounds.CREATOR);
                    break;
                case 19:
                    bL12 = s3.b.l(parcel, r32);
                    break;
                case 20:
                    int r33 = s3.b.s(parcel, r32);
                    if (r33 != 0) {
                        s3.b.v(parcel, r33, 4);
                        numValueOf = Integer.valueOf(parcel.readInt());
                        break;
                    } else {
                        numValueOf = null;
                        break;
                    }
                case 21:
                    strF = s3.b.f(parcel, r32);
                    break;
            }
        }
        s3.b.j(parcel, r12);
        return new GoogleMapOptions(bL, bL2, r82, cameraPosition, bL3, bL4, bL5, bL6, bL7, bL8, bL9, bL10, bL11, fO, fO2, latLngBounds, bL12, numValueOf, strF);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new GoogleMapOptions[r12];
    }
}
