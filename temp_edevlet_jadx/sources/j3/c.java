package j3;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        int r12 = 0;
        Bundle bundleA = null;
        int r22 = 0;
        while (parcel.dataPosition() < r02) {
            int r42 = parcel.readInt();
            char c10 = (char) r42;
            if (c10 == 1) {
                r12 = s3.b.q(parcel, r42);
            } else if (c10 == 2) {
                r22 = s3.b.q(parcel, r42);
            } else if (c10 != 3) {
                s3.b.t(parcel, r42);
            } else {
                bundleA = s3.b.a(parcel, r42);
            }
        }
        s3.b.j(parcel, r02);
        return new a(r12, r22, bundleA);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new a[r12];
    }
}
