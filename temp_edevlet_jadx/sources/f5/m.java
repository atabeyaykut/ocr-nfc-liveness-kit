package f5;

import android.os.Parcel;
import android.os.Parcelable;
import r3.l0;

/* loaded from: classes.dex */
public final class m implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        int r12 = 0;
        m3.b bVar = null;
        l0 l0Var = null;
        while (parcel.dataPosition() < r02) {
            int r42 = parcel.readInt();
            char c10 = (char) r42;
            if (c10 == 1) {
                r12 = s3.b.q(parcel, r42);
            } else if (c10 == 2) {
                bVar = (m3.b) s3.b.e(parcel, r42, m3.b.CREATOR);
            } else if (c10 != 3) {
                s3.b.t(parcel, r42);
            } else {
                l0Var = (l0) s3.b.e(parcel, r42, l0.CREATOR);
            }
        }
        s3.b.j(parcel, r02);
        return new l(r12, bVar, l0Var);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new l[r12];
    }
}
