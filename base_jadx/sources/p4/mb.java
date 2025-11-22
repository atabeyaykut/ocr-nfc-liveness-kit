package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class mb implements Parcelable.Creator<sa> {
    @Override // android.os.Parcelable.Creator
    public final sa createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        String strF2 = null;
        int r32 = 0;
        while (parcel.dataPosition() < r02) {
            int r42 = parcel.readInt();
            char c10 = (char) r42;
            if (c10 == 1) {
                strF = s3.b.f(parcel, r42);
            } else if (c10 == 2) {
                strF2 = s3.b.f(parcel, r42);
            } else if (c10 != 3) {
                s3.b.t(parcel, r42);
            } else {
                r32 = s3.b.q(parcel, r42);
            }
        }
        s3.b.j(parcel, r02);
        return new sa(strF, strF2, r32);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ sa[] newArray(int r12) {
        return new sa[r12];
    }
}
