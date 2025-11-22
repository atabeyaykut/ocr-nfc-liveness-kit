package r3;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class d1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        t tVar = null;
        int[] r72 = null;
        int[] r92 = null;
        boolean zK = false;
        boolean zK2 = false;
        int r82 = 0;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            switch ((char) r12) {
                case 1:
                    tVar = (t) s3.b.e(parcel, r12, t.CREATOR);
                    break;
                case 2:
                    zK = s3.b.k(parcel, r12);
                    break;
                case 3:
                    zK2 = s3.b.k(parcel, r12);
                    break;
                case 4:
                    r72 = s3.b.d(parcel, r12);
                    break;
                case 5:
                    r82 = s3.b.q(parcel, r12);
                    break;
                case 6:
                    r92 = s3.b.d(parcel, r12);
                    break;
                default:
                    s3.b.t(parcel, r12);
                    break;
            }
        }
        s3.b.j(parcel, r02);
        return new f(tVar, zK, zK2, r72, r82, r92);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new f[r12];
    }
}
