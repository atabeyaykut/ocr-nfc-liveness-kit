package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class f implements Parcelable.Creator<e> {
    @Override // android.os.Parcelable.Creator
    public final e createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        int r12 = 0;
        boolean zK = false;
        while (parcel.dataPosition() < r02) {
            int r32 = parcel.readInt();
            char c10 = (char) r32;
            if (c10 == 2) {
                r12 = s3.b.q(parcel, r32);
            } else if (c10 != 3) {
                s3.b.t(parcel, r32);
            } else {
                zK = s3.b.k(parcel, r32);
            }
        }
        s3.b.j(parcel, r02);
        return new e(r12, zK);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ e[] newArray(int r12) {
        return new e[r12];
    }
}
