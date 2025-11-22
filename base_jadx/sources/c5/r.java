package c5;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class r implements Parcelable.Creator<q> {
    @Override // android.os.Parcelable.Creator
    public final q createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        Bundle bundleA = null;
        while (parcel.dataPosition() < r02) {
            int r22 = parcel.readInt();
            if (((char) r22) != 2) {
                s3.b.t(parcel, r22);
            } else {
                bundleA = s3.b.a(parcel, r22);
            }
        }
        s3.b.j(parcel, r02);
        return new q(bundleA);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ q[] newArray(int r12) {
        return new q[r12];
    }
}
