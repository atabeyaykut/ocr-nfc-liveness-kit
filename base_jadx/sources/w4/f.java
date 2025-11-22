package w4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class f implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        long jR = -1;
        long jR2 = -1;
        int r52 = 1;
        int r6 = 1;
        while (parcel.dataPosition() < r02) {
            int r22 = parcel.readInt();
            char c10 = (char) r22;
            if (c10 == 1) {
                r52 = s3.b.q(parcel, r22);
            } else if (c10 == 2) {
                r6 = s3.b.q(parcel, r22);
            } else if (c10 == 3) {
                jR = s3.b.r(parcel, r22);
            } else if (c10 != 4) {
                s3.b.t(parcel, r22);
            } else {
                jR2 = s3.b.r(parcel, r22);
            }
        }
        s3.b.j(parcel, r02);
        return new e(r52, r6, jR, jR2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new e[r12];
    }
}
