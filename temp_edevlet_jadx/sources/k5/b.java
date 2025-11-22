package k5;

import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class b implements Parcelable.Creator<a> {
    @Override // android.os.Parcelable.Creator
    public final a createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        PointF[] pointFArr = null;
        int r22 = 0;
        while (parcel.dataPosition() < r02) {
            int r32 = parcel.readInt();
            char c10 = (char) r32;
            if (c10 == 2) {
                pointFArr = (PointF[]) s3.b.h(parcel, r32, PointF.CREATOR);
            } else if (c10 != 3) {
                s3.b.t(parcel, r32);
            } else {
                r22 = s3.b.q(parcel, r32);
            }
        }
        s3.b.j(parcel, r02);
        return new a(pointFArr, r22);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ a[] newArray(int r12) {
        return new a[r12];
    }
}
