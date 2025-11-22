package m4;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class w implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        t tVar = null;
        IBinder iBinderP = null;
        IBinder iBinderP2 = null;
        PendingIntent pendingIntent = null;
        IBinder iBinderP3 = null;
        String strF = null;
        int r42 = 1;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            switch ((char) r12) {
                case 1:
                    r42 = s3.b.q(parcel, r12);
                    break;
                case 2:
                    tVar = (t) s3.b.e(parcel, r12, t.CREATOR);
                    break;
                case 3:
                    iBinderP = s3.b.p(parcel, r12);
                    break;
                case 4:
                    pendingIntent = (PendingIntent) s3.b.e(parcel, r12, PendingIntent.CREATOR);
                    break;
                case 5:
                    iBinderP2 = s3.b.p(parcel, r12);
                    break;
                case 6:
                    iBinderP3 = s3.b.p(parcel, r12);
                    break;
                case 7:
                default:
                    s3.b.t(parcel, r12);
                    break;
                case '\b':
                    strF = s3.b.f(parcel, r12);
                    break;
            }
        }
        s3.b.j(parcel, r02);
        return new v(r42, tVar, iBinderP, iBinderP2, pendingIntent, iBinderP3, strF);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new v[r12];
    }
}
