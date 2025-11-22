package q4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class j0 implements Parcelable.Creator<u> {
    @Override // android.os.Parcelable.Creator
    public final u createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        int r12 = 0;
        String strF = null;
        String strF2 = null;
        String strF3 = null;
        while (parcel.dataPosition() < r02) {
            int r52 = parcel.readInt();
            char c10 = (char) r52;
            if (c10 == 1) {
                r12 = s3.b.q(parcel, r52);
            } else if (c10 == 2) {
                strF = s3.b.f(parcel, r52);
            } else if (c10 == 3) {
                strF2 = s3.b.f(parcel, r52);
            } else if (c10 != 4) {
                s3.b.t(parcel, r52);
            } else {
                strF3 = s3.b.f(parcel, r52);
            }
        }
        s3.b.j(parcel, r02);
        return new u(r12, strF, strF2, strF3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ u[] newArray(int r12) {
        return new u[r12];
    }
}
