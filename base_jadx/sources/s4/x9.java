package s4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class x9 implements Parcelable.Creator<w9> {
    @Override // android.os.Parcelable.Creator
    public final w9 createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        while (parcel.dataPosition() < r02) {
            s3.b.t(parcel, parcel.readInt());
        }
        s3.b.j(parcel, r02);
        return new w9();
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ w9[] newArray(int r12) {
        return new w9[r12];
    }
}
