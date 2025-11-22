package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class lb implements Parcelable.Creator<ra> {
    @Override // android.os.Parcelable.Creator
    public final ra createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        String strF2 = null;
        while (parcel.dataPosition() < r02) {
            int r32 = parcel.readInt();
            char c10 = (char) r32;
            if (c10 == 1) {
                strF = s3.b.f(parcel, r32);
            } else if (c10 != 2) {
                s3.b.t(parcel, r32);
            } else {
                strF2 = s3.b.f(parcel, r32);
            }
        }
        s3.b.j(parcel, r02);
        return new ra(strF, strF2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ra[] newArray(int r12) {
        return new ra[r12];
    }
}
