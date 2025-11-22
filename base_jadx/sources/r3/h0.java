package r3;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class h0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        long jR = 0;
        long jR2 = 0;
        String strF = null;
        String strF2 = null;
        int r82 = 0;
        int r92 = 0;
        int r10 = 0;
        int r17 = 0;
        int r18 = -1;
        while (parcel.dataPosition() < r12) {
            int r22 = parcel.readInt();
            switch ((char) r22) {
                case 1:
                    r82 = s3.b.q(parcel, r22);
                    break;
                case 2:
                    r92 = s3.b.q(parcel, r22);
                    break;
                case 3:
                    r10 = s3.b.q(parcel, r22);
                    break;
                case 4:
                    jR = s3.b.r(parcel, r22);
                    break;
                case 5:
                    jR2 = s3.b.r(parcel, r22);
                    break;
                case 6:
                    strF = s3.b.f(parcel, r22);
                    break;
                case 7:
                    strF2 = s3.b.f(parcel, r22);
                    break;
                case '\b':
                    r17 = s3.b.q(parcel, r22);
                    break;
                case '\t':
                    r18 = s3.b.q(parcel, r22);
                    break;
                default:
                    s3.b.t(parcel, r22);
                    break;
            }
        }
        s3.b.j(parcel, r12);
        return new o(r82, r92, r10, jR, jR2, strF, strF2, r17, r18);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new o[r12];
    }
}
