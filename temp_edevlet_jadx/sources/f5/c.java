package f5;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        int r12 = 0;
        Intent intent = null;
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
                intent = (Intent) s3.b.e(parcel, r42, Intent.CREATOR);
            }
        }
        s3.b.j(parcel, r02);
        return new b(r12, r22, intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new b[r12];
    }
}
