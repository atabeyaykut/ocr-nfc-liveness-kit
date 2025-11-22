package r3;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class u0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        int r32 = 0;
        boolean zK = false;
        boolean zK2 = false;
        int r6 = 0;
        int r72 = 0;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            char c10 = (char) r12;
            if (c10 == 1) {
                r32 = s3.b.q(parcel, r12);
            } else if (c10 == 2) {
                zK = s3.b.k(parcel, r12);
            } else if (c10 == 3) {
                zK2 = s3.b.k(parcel, r12);
            } else if (c10 == 4) {
                r6 = s3.b.q(parcel, r12);
            } else if (c10 != 5) {
                s3.b.t(parcel, r12);
            } else {
                r72 = s3.b.q(parcel, r12);
            }
        }
        s3.b.j(parcel, r02);
        return new t(r32, zK, zK2, r6, r72);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new t[r12];
    }
}
