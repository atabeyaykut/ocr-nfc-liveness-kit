package l3;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class d implements Parcelable.Creator<a> {
    @Override // android.os.Parcelable.Creator
    public final a createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        Intent intent = null;
        while (parcel.dataPosition() < r02) {
            int r22 = parcel.readInt();
            if (((char) r22) != 1) {
                s3.b.t(parcel, r22);
            } else {
                intent = (Intent) s3.b.e(parcel, r22, Intent.CREATOR);
            }
        }
        s3.b.j(parcel, r02);
        return new a(intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ a[] newArray(int r12) {
        return new a[r12];
    }
}
