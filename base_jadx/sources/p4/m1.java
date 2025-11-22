package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class m1 implements Parcelable.Creator<l2> {
    @Override // android.os.Parcelable.Creator
    public final l2 createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        int r12 = 0;
        String[] strArrG = null;
        while (parcel.dataPosition() < r02) {
            int r32 = parcel.readInt();
            char c10 = (char) r32;
            if (c10 == 2) {
                r12 = s3.b.q(parcel, r32);
            } else if (c10 != 3) {
                s3.b.t(parcel, r32);
            } else {
                strArrG = s3.b.g(parcel, r32);
            }
        }
        s3.b.j(parcel, r02);
        return new l2(r12, strArrG);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ l2[] newArray(int r12) {
        return new l2[r12];
    }
}
