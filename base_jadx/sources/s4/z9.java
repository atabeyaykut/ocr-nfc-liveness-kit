package s4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class z9 implements Parcelable.Creator<y9> {
    @Override // android.os.Parcelable.Creator
    public final y9 createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        while (parcel.dataPosition() < r02) {
            int r22 = parcel.readInt();
            if (((char) r22) != 2) {
                s3.b.t(parcel, r22);
            } else {
                strF = s3.b.f(parcel, r22);
            }
        }
        s3.b.j(parcel, r02);
        return new y9(strF);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ y9[] newArray(int r12) {
        return new y9[r12];
    }
}
