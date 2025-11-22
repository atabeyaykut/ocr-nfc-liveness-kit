package k3;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class e implements Parcelable.Creator<d> {
    @Override // android.os.Parcelable.Creator
    public final d createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        long jR = 0;
        long jR2 = 0;
        boolean zK = false;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            char c10 = (char) r12;
            if (c10 == 1) {
                zK = s3.b.k(parcel, r12);
            } else if (c10 == 2) {
                jR2 = s3.b.r(parcel, r12);
            } else if (c10 != 3) {
                s3.b.t(parcel, r12);
            } else {
                jR = s3.b.r(parcel, r12);
            }
        }
        s3.b.j(parcel, r02);
        return new d(jR, jR2, zK);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ d[] newArray(int r12) {
        return new d[r12];
    }
}
