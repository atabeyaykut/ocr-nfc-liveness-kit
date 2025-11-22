package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class xa implements Parcelable.Creator<ia> {
    @Override // android.os.Parcelable.Creator
    public final ia createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        int r52 = 0;
        int r6 = 0;
        int r72 = 0;
        int r82 = 0;
        boolean zK = false;
        int r10 = 0;
        int r11 = 0;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            switch ((char) r12) {
                case 1:
                    r52 = s3.b.q(parcel, r12);
                    break;
                case 2:
                    r6 = s3.b.q(parcel, r12);
                    break;
                case 3:
                    r72 = s3.b.q(parcel, r12);
                    break;
                case 4:
                    r82 = s3.b.q(parcel, r12);
                    break;
                case 5:
                    r10 = s3.b.q(parcel, r12);
                    break;
                case 6:
                    r11 = s3.b.q(parcel, r12);
                    break;
                case 7:
                    zK = s3.b.k(parcel, r12);
                    break;
                case '\b':
                    strF = s3.b.f(parcel, r12);
                    break;
                default:
                    s3.b.t(parcel, r12);
                    break;
            }
        }
        s3.b.j(parcel, r02);
        return new ia(strF, r52, r6, r72, r82, zK, r10, r11);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ia[] newArray(int r12) {
        return new ia[r12];
    }
}
