package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ya implements Parcelable.Creator<ja> {
    @Override // android.os.Parcelable.Creator
    public final ja createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        String strF2 = null;
        String strF3 = null;
        String strF4 = null;
        String strF5 = null;
        ia iaVar = null;
        ia iaVar2 = null;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            switch ((char) r12) {
                case 1:
                    strF = s3.b.f(parcel, r12);
                    break;
                case 2:
                    strF2 = s3.b.f(parcel, r12);
                    break;
                case 3:
                    strF3 = s3.b.f(parcel, r12);
                    break;
                case 4:
                    strF4 = s3.b.f(parcel, r12);
                    break;
                case 5:
                    strF5 = s3.b.f(parcel, r12);
                    break;
                case 6:
                    iaVar = (ia) s3.b.e(parcel, r12, ia.CREATOR);
                    break;
                case 7:
                    iaVar2 = (ia) s3.b.e(parcel, r12, ia.CREATOR);
                    break;
                default:
                    s3.b.t(parcel, r12);
                    break;
            }
        }
        s3.b.j(parcel, r02);
        return new ja(strF, strF2, strF3, strF4, strF5, iaVar, iaVar2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ja[] newArray(int r12) {
        return new ja[r12];
    }
}
