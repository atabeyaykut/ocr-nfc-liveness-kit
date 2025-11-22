package n3;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class m implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        PendingIntent pendingIntent = null;
        m3.b bVar = null;
        int r42 = 0;
        int r52 = 0;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            char c10 = (char) r12;
            if (c10 == 1) {
                r52 = s3.b.q(parcel, r12);
            } else if (c10 == 2) {
                strF = s3.b.f(parcel, r12);
            } else if (c10 == 3) {
                pendingIntent = (PendingIntent) s3.b.e(parcel, r12, PendingIntent.CREATOR);
            } else if (c10 == 4) {
                bVar = (m3.b) s3.b.e(parcel, r12, m3.b.CREATOR);
            } else if (c10 != 1000) {
                s3.b.t(parcel, r12);
            } else {
                r42 = s3.b.q(parcel, r12);
            }
        }
        s3.b.j(parcel, r02);
        return new Status(r42, r52, strF, pendingIntent, bVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new Status[r12];
    }
}
