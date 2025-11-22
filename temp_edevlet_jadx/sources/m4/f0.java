package m4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public final class f0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        z zVar = b0.f9989b;
        List listI = c0.f9990e;
        String strF = null;
        String strF2 = null;
        String strF3 = null;
        p pVar = null;
        int r52 = 0;
        int r6 = 0;
        int r10 = 0;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            switch ((char) r12) {
                case 1:
                    r52 = s3.b.q(parcel, r12);
                    break;
                case 2:
                    r6 = s3.b.q(parcel, r12);
                    break;
                case 3:
                    strF = s3.b.f(parcel, r12);
                    break;
                case 4:
                    strF2 = s3.b.f(parcel, r12);
                    break;
                case 5:
                    r10 = s3.b.q(parcel, r12);
                    break;
                case 6:
                    strF3 = s3.b.f(parcel, r12);
                    break;
                case 7:
                    pVar = (p) s3.b.e(parcel, r12, p.CREATOR);
                    break;
                case '\b':
                    listI = s3.b.i(parcel, r12, m3.d.CREATOR);
                    break;
                default:
                    s3.b.t(parcel, r12);
                    break;
            }
        }
        s3.b.j(parcel, r02);
        return new p(r52, r6, strF, strF2, strF3, r10, listI, pVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new p[r12];
    }
}
