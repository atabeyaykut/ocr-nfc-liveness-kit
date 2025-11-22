package s4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class u9 implements Parcelable.Creator<t9> {
    @Override // android.os.Parcelable.Creator
    public final t9 createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        boolean zK = false;
        while (parcel.dataPosition() < r02) {
            int r22 = parcel.readInt();
            if (((char) r22) != 1) {
                s3.b.t(parcel, r22);
            } else {
                zK = s3.b.k(parcel, r22);
            }
        }
        s3.b.j(parcel, r02);
        return new t9(zK);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ t9[] newArray(int r12) {
        return new t9[r12];
    }
}
