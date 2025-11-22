package m3;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class e0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        IBinder iBinderP = null;
        boolean zK = false;
        boolean zK2 = false;
        while (parcel.dataPosition() < r02) {
            int r52 = parcel.readInt();
            char c10 = (char) r52;
            if (c10 == 1) {
                strF = s3.b.f(parcel, r52);
            } else if (c10 == 2) {
                iBinderP = s3.b.p(parcel, r52);
            } else if (c10 == 3) {
                zK = s3.b.k(parcel, r52);
            } else if (c10 != 4) {
                s3.b.t(parcel, r52);
            } else {
                zK2 = s3.b.k(parcel, r52);
            }
        }
        s3.b.j(parcel, r02);
        return new d0(strF, iBinderP, zK, zK2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new d0[r12];
    }
}
