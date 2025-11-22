package w4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class o implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        long jR = Long.MAX_VALUE;
        String strF = null;
        m4.p pVar = null;
        int r82 = 0;
        boolean zK = false;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            char c10 = (char) r12;
            if (c10 == 1) {
                jR = s3.b.r(parcel, r12);
            } else if (c10 == 2) {
                r82 = s3.b.q(parcel, r12);
            } else if (c10 == 3) {
                zK = s3.b.k(parcel, r12);
            } else if (c10 == 4) {
                strF = s3.b.f(parcel, r12);
            } else if (c10 != 5) {
                s3.b.t(parcel, r12);
            } else {
                pVar = (m4.p) s3.b.e(parcel, r12, m4.p.CREATOR);
            }
        }
        s3.b.j(parcel, r02);
        return new b(jR, r82, zK, strF, pVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new b[r12];
    }
}
