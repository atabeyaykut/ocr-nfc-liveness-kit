package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class xb implements Parcelable.Creator<m7> {
    @Override // android.os.Parcelable.Creator
    public final m7 createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        int r12 = 0;
        String strF = null;
        String strF2 = null;
        String strF3 = null;
        while (parcel.dataPosition() < r02) {
            int r52 = parcel.readInt();
            char c10 = (char) r52;
            if (c10 == 2) {
                r12 = s3.b.q(parcel, r52);
            } else if (c10 == 3) {
                strF = s3.b.f(parcel, r52);
            } else if (c10 == 4) {
                strF2 = s3.b.f(parcel, r52);
            } else if (c10 != 5) {
                s3.b.t(parcel, r52);
            } else {
                strF3 = s3.b.f(parcel, r52);
            }
        }
        s3.b.j(parcel, r02);
        return new m7(r12, strF, strF2, strF3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ m7[] newArray(int r12) {
        return new m7[r12];
    }
}
