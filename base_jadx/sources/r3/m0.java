package r3;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class m0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        IBinder iBinderP = null;
        m3.b bVar = null;
        int r42 = 0;
        boolean zK = false;
        boolean zK2 = false;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            char c10 = (char) r12;
            if (c10 == 1) {
                r42 = s3.b.q(parcel, r12);
            } else if (c10 == 2) {
                iBinderP = s3.b.p(parcel, r12);
            } else if (c10 == 3) {
                bVar = (m3.b) s3.b.e(parcel, r12, m3.b.CREATOR);
            } else if (c10 == 4) {
                zK = s3.b.k(parcel, r12);
            } else if (c10 != 5) {
                s3.b.t(parcel, r12);
            } else {
                zK2 = s3.b.k(parcel, r12);
            }
        }
        s3.b.j(parcel, r02);
        return new l0(r42, iBinderP, bVar, zK, zK2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new l0[r12];
    }
}
