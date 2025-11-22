package m4;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class s implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        IBinder iBinderP = null;
        IBinder iBinderP2 = null;
        PendingIntent pendingIntent = null;
        String strF = null;
        String strF2 = null;
        int r42 = 0;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            switch ((char) r12) {
                case 1:
                    r42 = s3.b.q(parcel, r12);
                    break;
                case 2:
                    iBinderP = s3.b.p(parcel, r12);
                    break;
                case 3:
                    iBinderP2 = s3.b.p(parcel, r12);
                    break;
                case 4:
                    pendingIntent = (PendingIntent) s3.b.e(parcel, r12, PendingIntent.CREATOR);
                    break;
                case 5:
                    strF = s3.b.f(parcel, r12);
                    break;
                case 6:
                    strF2 = s3.b.f(parcel, r12);
                    break;
                default:
                    s3.b.t(parcel, r12);
                    break;
            }
        }
        s3.b.j(parcel, r02);
        return new r(r42, iBinderP, iBinderP2, pendingIntent, strF, strF2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new r[r12];
    }
}
