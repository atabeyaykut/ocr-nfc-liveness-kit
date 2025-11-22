package r3;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class c1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        Bundle bundleA = null;
        m3.d[] dVarArr = null;
        f fVar = null;
        int r42 = 0;
        while (parcel.dataPosition() < r02) {
            int r52 = parcel.readInt();
            char c10 = (char) r52;
            if (c10 == 1) {
                bundleA = s3.b.a(parcel, r52);
            } else if (c10 == 2) {
                dVarArr = (m3.d[]) s3.b.h(parcel, r52, m3.d.CREATOR);
            } else if (c10 == 3) {
                r42 = s3.b.q(parcel, r52);
            } else if (c10 != 4) {
                s3.b.t(parcel, r52);
            } else {
                fVar = (f) s3.b.e(parcel, r52, f.CREATOR);
            }
        }
        s3.b.j(parcel, r02);
        return new b1(bundleA, dVarArr, r42, fVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new b1[r12];
    }
}
