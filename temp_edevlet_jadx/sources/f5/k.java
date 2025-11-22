package f5;

import android.os.Parcel;
import android.os.Parcelable;
import r3.j0;

/* loaded from: classes.dex */
public final class k implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        int r12 = 0;
        j0 j0Var = null;
        while (parcel.dataPosition() < r02) {
            int r32 = parcel.readInt();
            char c10 = (char) r32;
            if (c10 == 1) {
                r12 = s3.b.q(parcel, r32);
            } else if (c10 != 2) {
                s3.b.t(parcel, r32);
            } else {
                j0Var = (j0) s3.b.e(parcel, r32, j0.CREATOR);
            }
        }
        s3.b.j(parcel, r02);
        return new j(r12, j0Var);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new j[r12];
    }
}
