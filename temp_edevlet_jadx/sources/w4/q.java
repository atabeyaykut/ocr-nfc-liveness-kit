package w4;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;
import com.google.android.gms.location.LocationRequest;

/* loaded from: classes.dex */
public final class q implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        WorkSource workSource = new WorkSource();
        long jR = 3600000;
        long jR2 = 600000;
        long jR3 = 0;
        long jR4 = Long.MAX_VALUE;
        long jR5 = Long.MAX_VALUE;
        long jR6 = -1;
        String strF = null;
        m4.p pVar = null;
        int r19 = 102;
        int r30 = Integer.MAX_VALUE;
        float fN = 0.0f;
        boolean zK = false;
        int r35 = 0;
        int r36 = 0;
        boolean zK2 = false;
        while (parcel.dataPosition() < r12) {
            int r22 = parcel.readInt();
            switch ((char) r22) {
                case 1:
                    r19 = s3.b.q(parcel, r22);
                    break;
                case 2:
                    jR = s3.b.r(parcel, r22);
                    break;
                case 3:
                    jR2 = s3.b.r(parcel, r22);
                    break;
                case 4:
                default:
                    s3.b.t(parcel, r22);
                    break;
                case 5:
                    jR4 = s3.b.r(parcel, r22);
                    break;
                case 6:
                    r30 = s3.b.q(parcel, r22);
                    break;
                case 7:
                    fN = s3.b.n(parcel, r22);
                    break;
                case '\b':
                    jR3 = s3.b.r(parcel, r22);
                    break;
                case '\t':
                    zK = s3.b.k(parcel, r22);
                    break;
                case '\n':
                    jR5 = s3.b.r(parcel, r22);
                    break;
                case 11:
                    jR6 = s3.b.r(parcel, r22);
                    break;
                case '\f':
                    r35 = s3.b.q(parcel, r22);
                    break;
                case '\r':
                    r36 = s3.b.q(parcel, r22);
                    break;
                case 14:
                    strF = s3.b.f(parcel, r22);
                    break;
                case 15:
                    zK2 = s3.b.k(parcel, r22);
                    break;
                case 16:
                    workSource = (WorkSource) s3.b.e(parcel, r22, WorkSource.CREATOR);
                    break;
                case 17:
                    pVar = (m4.p) s3.b.e(parcel, r22, m4.p.CREATOR);
                    break;
            }
        }
        s3.b.j(parcel, r12);
        return new LocationRequest(r19, jR, jR2, jR3, jR4, jR5, r30, fN, zK, jR6, r35, r36, strF, zK2, workSource, pVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new LocationRequest[r12];
    }
}
