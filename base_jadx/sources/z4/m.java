package z4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class m implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        Float fO = null;
        int r22 = 0;
        while (parcel.dataPosition() < r02) {
            int r32 = parcel.readInt();
            char c10 = (char) r32;
            if (c10 == 2) {
                r22 = s3.b.q(parcel, r32);
            } else if (c10 != 3) {
                s3.b.t(parcel, r32);
            } else {
                fO = s3.b.o(parcel, r32);
            }
        }
        s3.b.j(parcel, r02);
        return new f(r22, fO);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new f[r12];
    }
}
