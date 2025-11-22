package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class zb implements Parcelable.Creator<j9> {
    @Override // android.os.Parcelable.Creator
    public final j9 createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        String strF2 = null;
        String strF3 = null;
        String strF4 = null;
        String strF5 = null;
        String strF6 = null;
        String strF7 = null;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            switch ((char) r12) {
                case 2:
                    strF = s3.b.f(parcel, r12);
                    break;
                case 3:
                    strF2 = s3.b.f(parcel, r12);
                    break;
                case 4:
                    strF3 = s3.b.f(parcel, r12);
                    break;
                case 5:
                    strF4 = s3.b.f(parcel, r12);
                    break;
                case 6:
                    strF5 = s3.b.f(parcel, r12);
                    break;
                case 7:
                    strF6 = s3.b.f(parcel, r12);
                    break;
                case '\b':
                    strF7 = s3.b.f(parcel, r12);
                    break;
                default:
                    s3.b.t(parcel, r12);
                    break;
            }
        }
        s3.b.j(parcel, r02);
        return new j9(strF, strF2, strF3, strF4, strF5, strF6, strF7);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ j9[] newArray(int r12) {
        return new j9[r12];
    }
}
