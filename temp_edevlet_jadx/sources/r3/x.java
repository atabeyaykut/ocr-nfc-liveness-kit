package r3;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class x implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        int r12 = 0;
        String strF = null;
        while (parcel.dataPosition() < r02) {
            int r32 = parcel.readInt();
            char c10 = (char) r32;
            if (c10 == 1) {
                r12 = s3.b.q(parcel, r32);
            } else if (c10 != 2) {
                s3.b.t(parcel, r32);
            } else {
                strF = s3.b.f(parcel, r32);
            }
        }
        s3.b.j(parcel, r02);
        return new d(r12, strF);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new d[r12];
    }
}
