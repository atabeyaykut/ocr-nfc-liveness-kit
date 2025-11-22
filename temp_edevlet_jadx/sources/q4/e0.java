package q4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class e0 implements Parcelable.Creator<d0> {
    @Override // android.os.Parcelable.Creator
    public final d0 createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        int r12 = 0;
        while (parcel.dataPosition() < r02) {
            int r22 = parcel.readInt();
            if (((char) r22) != 1) {
                s3.b.t(parcel, r22);
            } else {
                r12 = s3.b.q(parcel, r22);
            }
        }
        s3.b.j(parcel, r02);
        return new d0(r12);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ d0[] newArray(int r12) {
        return new d0[r12];
    }
}
