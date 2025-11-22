package s4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class g9 implements Parcelable.Creator<f9> {
    @Override // android.os.Parcelable.Creator
    public final f9 createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        long jR = 0;
        int r52 = 0;
        int r6 = 0;
        int r72 = 0;
        int r82 = 0;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            char c10 = (char) r12;
            if (c10 == 1) {
                r52 = s3.b.q(parcel, r12);
            } else if (c10 == 2) {
                r6 = s3.b.q(parcel, r12);
            } else if (c10 == 3) {
                r72 = s3.b.q(parcel, r12);
            } else if (c10 == 4) {
                r82 = s3.b.q(parcel, r12);
            } else if (c10 != 5) {
                s3.b.t(parcel, r12);
            } else {
                jR = s3.b.r(parcel, r12);
            }
        }
        s3.b.j(parcel, r02);
        return new f9(r52, r6, r72, r82, jR);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ f9[] newArray(int r12) {
        return new f9[r12];
    }
}
