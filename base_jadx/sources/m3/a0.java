package m3;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class a0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        IBinder iBinderP = null;
        boolean zK = false;
        boolean zK2 = false;
        boolean zK3 = false;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            char c10 = (char) r12;
            if (c10 == 1) {
                strF = s3.b.f(parcel, r12);
            } else if (c10 == 2) {
                zK = s3.b.k(parcel, r12);
            } else if (c10 == 3) {
                zK2 = s3.b.k(parcel, r12);
            } else if (c10 == 4) {
                iBinderP = s3.b.p(parcel, r12);
            } else if (c10 != 5) {
                s3.b.t(parcel, r12);
            } else {
                zK3 = s3.b.k(parcel, r12);
            }
        }
        s3.b.j(parcel, r02);
        return new z(strF, zK, zK2, iBinderP, zK3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new z[r12];
    }
}
