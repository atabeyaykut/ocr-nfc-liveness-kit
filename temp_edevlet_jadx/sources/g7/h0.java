package g7;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public final class h0 implements Parcelable.Creator<g0> {
    @Override // android.os.Parcelable.Creator
    @NonNull
    public final g0 createFromParcel(@NonNull Parcel parcel) {
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
        return new g0(bundleA);
    }

    @Override // android.os.Parcelable.Creator
    @NonNull
    public final g0[] newArray(int r12) {
        return new g0[r12];
    }
}
