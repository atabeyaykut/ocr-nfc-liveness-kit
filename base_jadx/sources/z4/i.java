package z4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class i implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        LatLng latLng = null;
        ArrayList arrayListI = null;
        double dM = 0.0d;
        float fN = 0.0f;
        int r122 = 0;
        int r13 = 0;
        float fN2 = 0.0f;
        boolean zK = false;
        boolean zK2 = false;
        while (parcel.dataPosition() < r12) {
            int r22 = parcel.readInt();
            switch ((char) r22) {
                case 2:
                    latLng = (LatLng) s3.b.e(parcel, r22, LatLng.CREATOR);
                    break;
                case 3:
                    dM = s3.b.m(parcel, r22);
                    break;
                case 4:
                    fN = s3.b.n(parcel, r22);
                    break;
                case 5:
                    r122 = s3.b.q(parcel, r22);
                    break;
                case 6:
                    r13 = s3.b.q(parcel, r22);
                    break;
                case 7:
                    fN2 = s3.b.n(parcel, r22);
                    break;
                case '\b':
                    zK = s3.b.k(parcel, r22);
                    break;
                case '\t':
                    zK2 = s3.b.k(parcel, r22);
                    break;
                case '\n':
                    arrayListI = s3.b.i(parcel, r22, f.CREATOR);
                    break;
                default:
                    s3.b.t(parcel, r22);
                    break;
            }
        }
        s3.b.j(parcel, r12);
        return new c(latLng, dM, fN, r122, r13, fN2, zK, zK2, arrayListI);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new c[r12];
    }
}
