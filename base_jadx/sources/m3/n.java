package m3;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class n implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        int r12 = 0;
        PendingIntent pendingIntent = null;
        String strF = null;
        int r22 = 0;
        while (parcel.dataPosition() < r02) {
            int r52 = parcel.readInt();
            char c10 = (char) r52;
            if (c10 == 1) {
                r12 = s3.b.q(parcel, r52);
            } else if (c10 == 2) {
                r22 = s3.b.q(parcel, r52);
            } else if (c10 == 3) {
                pendingIntent = (PendingIntent) s3.b.e(parcel, r52, PendingIntent.CREATOR);
            } else if (c10 != 4) {
                s3.b.t(parcel, r52);
            } else {
                strF = s3.b.f(parcel, r52);
            }
        }
        s3.b.j(parcel, r02);
        return new b(r12, r22, pendingIntent, strF);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new b[r12];
    }
}
