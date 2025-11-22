package m3;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class o implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        int r22 = 0;
        long jR = -1;
        while (parcel.dataPosition() < r02) {
            int r52 = parcel.readInt();
            char c10 = (char) r52;
            if (c10 == 1) {
                strF = s3.b.f(parcel, r52);
            } else if (c10 == 2) {
                r22 = s3.b.q(parcel, r52);
            } else if (c10 != 3) {
                s3.b.t(parcel, r52);
            } else {
                jR = s3.b.r(parcel, r52);
            }
        }
        s3.b.j(parcel, r02);
        return new d(strF, jR, r22);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new d[r12];
    }
}
