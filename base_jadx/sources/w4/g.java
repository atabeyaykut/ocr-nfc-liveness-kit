package w4;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;

/* loaded from: classes.dex */
public final class g implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        WorkSource workSource = new WorkSource();
        long jR = Long.MAX_VALUE;
        long jR2 = Long.MAX_VALUE;
        String strF = null;
        m4.p pVar = null;
        int r11 = 0;
        int r122 = 102;
        boolean zK = false;
        int r16 = 0;
        while (parcel.dataPosition() < r12) {
            int r22 = parcel.readInt();
            switch ((char) r22) {
                case 1:
                    jR = s3.b.r(parcel, r22);
                    break;
                case 2:
                    r11 = s3.b.q(parcel, r22);
                    break;
                case 3:
                    r122 = s3.b.q(parcel, r22);
                    break;
                case 4:
                    jR2 = s3.b.r(parcel, r22);
                    break;
                case 5:
                    zK = s3.b.k(parcel, r22);
                    break;
                case 6:
                    workSource = (WorkSource) s3.b.e(parcel, r22, WorkSource.CREATOR);
                    break;
                case 7:
                    r16 = s3.b.q(parcel, r22);
                    break;
                case '\b':
                    strF = s3.b.f(parcel, r22);
                    break;
                case '\t':
                    pVar = (m4.p) s3.b.e(parcel, r22, m4.p.CREATOR);
                    break;
                default:
                    s3.b.t(parcel, r22);
                    break;
            }
        }
        s3.b.j(parcel, r12);
        return new a(jR, r11, r122, jR2, zK, r16, strF, workSource, pVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new a[r12];
    }
}
