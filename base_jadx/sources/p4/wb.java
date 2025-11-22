package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class wb implements Parcelable.Creator<o6> {
    @Override // android.os.Parcelable.Creator
    public final o6 createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        String strF = null;
        String strF2 = null;
        String strF3 = null;
        String strF4 = null;
        String strF5 = null;
        String strF6 = null;
        String strF7 = null;
        String strF8 = null;
        String strF9 = null;
        String strF10 = null;
        String strF11 = null;
        String strF12 = null;
        String strF13 = null;
        String strF14 = null;
        while (parcel.dataPosition() < r12) {
            int r22 = parcel.readInt();
            switch ((char) r22) {
                case 2:
                    strF = s3.b.f(parcel, r22);
                    break;
                case 3:
                    strF2 = s3.b.f(parcel, r22);
                    break;
                case 4:
                    strF3 = s3.b.f(parcel, r22);
                    break;
                case 5:
                    strF4 = s3.b.f(parcel, r22);
                    break;
                case 6:
                    strF5 = s3.b.f(parcel, r22);
                    break;
                case 7:
                    strF6 = s3.b.f(parcel, r22);
                    break;
                case '\b':
                    strF7 = s3.b.f(parcel, r22);
                    break;
                case '\t':
                    strF8 = s3.b.f(parcel, r22);
                    break;
                case '\n':
                    strF9 = s3.b.f(parcel, r22);
                    break;
                case 11:
                    strF10 = s3.b.f(parcel, r22);
                    break;
                case '\f':
                    strF11 = s3.b.f(parcel, r22);
                    break;
                case '\r':
                    strF12 = s3.b.f(parcel, r22);
                    break;
                case 14:
                    strF13 = s3.b.f(parcel, r22);
                    break;
                case 15:
                    strF14 = s3.b.f(parcel, r22);
                    break;
                default:
                    s3.b.t(parcel, r22);
                    break;
            }
        }
        s3.b.j(parcel, r12);
        return new o6(strF, strF2, strF3, strF4, strF5, strF6, strF7, strF8, strF9, strF10, strF11, strF12, strF13, strF14);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ o6[] newArray(int r12) {
        return new o6[r12];
    }
}
