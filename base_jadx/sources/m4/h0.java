package m4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class h0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        Status status = null;
        while (parcel.dataPosition() < r02) {
            int r22 = parcel.readInt();
            if (((char) r22) != 1) {
                s3.b.t(parcel, r22);
            } else {
                status = (Status) s3.b.e(parcel, r22, Status.CREATOR);
            }
        }
        s3.b.j(parcel, r02);
        return new g0(status);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new g0[r12];
    }
}
