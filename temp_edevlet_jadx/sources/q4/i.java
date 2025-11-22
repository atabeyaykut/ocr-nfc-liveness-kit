package q4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class i implements Parcelable.Creator<z> {
    @Override // android.os.Parcelable.Creator
    public final z createFromParcel(Parcel parcel) {
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
        return new z(strF, strF2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ z[] newArray(int r12) {
        return new z[r12];
    }
}
