package m3;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class c0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        boolean zK = false;
        String strF = null;
        int r22 = 0;
        int r32 = 0;
        while (parcel.dataPosition() < r02) {
            int r52 = parcel.readInt();
            char c10 = (char) r52;
            if (c10 == 1) {
                zK = s3.b.k(parcel, r52);
            } else if (c10 == 2) {
                strF = s3.b.f(parcel, r52);
            } else if (c10 == 3) {
                r22 = s3.b.q(parcel, r52);
            } else if (c10 != 4) {
                s3.b.t(parcel, r52);
            } else {
                r32 = s3.b.q(parcel, r52);
            }
        }
        s3.b.j(parcel, r02);
        return new b0(strF, r22, r32, zK);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new b0[r12];
    }
}
