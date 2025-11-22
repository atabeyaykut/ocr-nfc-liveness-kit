package d5;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class c implements Parcelable.Creator<a> {
    @Override // android.os.Parcelable.Creator
    public final a createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        byte[] bArrB = null;
        byte[][] bArrC = null;
        byte[][] bArrC2 = null;
        byte[][] bArrC3 = null;
        byte[][] bArrC4 = null;
        int[] r92 = null;
        byte[][] bArrC5 = null;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            switch ((char) r12) {
                case 2:
                    strF = s3.b.f(parcel, r12);
                    break;
                case 3:
                    bArrB = s3.b.b(parcel, r12);
                    break;
                case 4:
                    bArrC = s3.b.c(parcel, r12);
                    break;
                case 5:
                    bArrC2 = s3.b.c(parcel, r12);
                    break;
                case 6:
                    bArrC3 = s3.b.c(parcel, r12);
                    break;
                case 7:
                    bArrC4 = s3.b.c(parcel, r12);
                    break;
                case '\b':
                    r92 = s3.b.d(parcel, r12);
                    break;
                case '\t':
                    bArrC5 = s3.b.c(parcel, r12);
                    break;
                default:
                    s3.b.t(parcel, r12);
                    break;
            }
        }
        s3.b.j(parcel, r02);
        return new a(strF, bArrB, bArrC, bArrC2, bArrC3, bArrC4, r92, bArrC5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ a[] newArray(int r12) {
        return new a[r12];
    }
}
