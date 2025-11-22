package s4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class k4 implements Parcelable.Creator<j3> {
    @Override // android.os.Parcelable.Creator
    public final j3 createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        int r42 = 0;
        int r52 = 0;
        int r6 = 0;
        int r72 = 0;
        float fN = 0.0f;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            char c10 = (char) r12;
            if (c10 == 2) {
                r42 = s3.b.q(parcel, r12);
            } else if (c10 == 3) {
                r52 = s3.b.q(parcel, r12);
            } else if (c10 == 4) {
                r6 = s3.b.q(parcel, r12);
            } else if (c10 == 5) {
                r72 = s3.b.q(parcel, r12);
            } else if (c10 != 6) {
                s3.b.t(parcel, r12);
            } else {
                fN = s3.b.n(parcel, r12);
            }
        }
        s3.b.j(parcel, r02);
        return new j3(r42, r52, r6, r72, fN);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ j3[] newArray(int r12) {
        return new j3[r12];
    }
}
