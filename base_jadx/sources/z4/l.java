package z4;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;

/* loaded from: classes.dex */
public final class l implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        LatLng latLng = null;
        String strF = null;
        String strF2 = null;
        IBinder iBinderP = null;
        IBinder iBinderP2 = null;
        String strF3 = null;
        float fN = 0.0f;
        float fN2 = 0.0f;
        boolean zK = false;
        boolean zK2 = false;
        boolean zK3 = false;
        float fN3 = 0.0f;
        float fN4 = 0.5f;
        float fN5 = 0.0f;
        float fN6 = 1.0f;
        float fN7 = 0.0f;
        int r22 = 0;
        int r24 = 0;
        float fN8 = 0.0f;
        while (parcel.dataPosition() < r12) {
            int r23 = parcel.readInt();
            switch ((char) r23) {
                case 2:
                    latLng = (LatLng) s3.b.e(parcel, r23, LatLng.CREATOR);
                    break;
                case 3:
                    strF = s3.b.f(parcel, r23);
                    break;
                case 4:
                    strF2 = s3.b.f(parcel, r23);
                    break;
                case 5:
                    iBinderP = s3.b.p(parcel, r23);
                    break;
                case 6:
                    fN = s3.b.n(parcel, r23);
                    break;
                case 7:
                    fN2 = s3.b.n(parcel, r23);
                    break;
                case '\b':
                    zK = s3.b.k(parcel, r23);
                    break;
                case '\t':
                    zK2 = s3.b.k(parcel, r23);
                    break;
                case '\n':
                    zK3 = s3.b.k(parcel, r23);
                    break;
                case 11:
                    fN3 = s3.b.n(parcel, r23);
                    break;
                case '\f':
                    fN4 = s3.b.n(parcel, r23);
                    break;
                case '\r':
                    fN5 = s3.b.n(parcel, r23);
                    break;
                case 14:
                    fN6 = s3.b.n(parcel, r23);
                    break;
                case 15:
                    fN7 = s3.b.n(parcel, r23);
                    break;
                case 16:
                default:
                    s3.b.t(parcel, r23);
                    break;
                case 17:
                    r22 = s3.b.q(parcel, r23);
                    break;
                case 18:
                    iBinderP2 = s3.b.p(parcel, r23);
                    break;
                case 19:
                    r24 = s3.b.q(parcel, r23);
                    break;
                case 20:
                    strF3 = s3.b.f(parcel, r23);
                    break;
                case 21:
                    fN8 = s3.b.n(parcel, r23);
                    break;
            }
        }
        s3.b.j(parcel, r12);
        return new e(latLng, strF, strF2, iBinderP, fN, fN2, zK, zK2, zK3, fN3, fN4, fN5, fN6, fN7, r22, iBinderP2, r24, strF3, fN8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new e[r12];
    }
}
