package p4;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ua implements Parcelable.Creator<ta> {
    @Override // android.os.Parcelable.Creator
    public final ta createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        String strF = null;
        String strF2 = null;
        byte[] bArrB = null;
        Point[] pointArr = null;
        ma maVar = null;
        pa paVar = null;
        qa qaVar = null;
        sa saVar = null;
        ra raVar = null;
        na naVar = null;
        ja jaVar = null;
        ka kaVar = null;
        la laVar = null;
        int r52 = 0;
        int r10 = 0;
        while (parcel.dataPosition() < r12) {
            int r22 = parcel.readInt();
            switch ((char) r22) {
                case 1:
                    r52 = s3.b.q(parcel, r22);
                    break;
                case 2:
                    strF = s3.b.f(parcel, r22);
                    break;
                case 3:
                    strF2 = s3.b.f(parcel, r22);
                    break;
                case 4:
                    bArrB = s3.b.b(parcel, r22);
                    break;
                case 5:
                    pointArr = (Point[]) s3.b.h(parcel, r22, Point.CREATOR);
                    break;
                case 6:
                    r10 = s3.b.q(parcel, r22);
                    break;
                case 7:
                    maVar = (ma) s3.b.e(parcel, r22, ma.CREATOR);
                    break;
                case '\b':
                    paVar = (pa) s3.b.e(parcel, r22, pa.CREATOR);
                    break;
                case '\t':
                    qaVar = (qa) s3.b.e(parcel, r22, qa.CREATOR);
                    break;
                case '\n':
                    saVar = (sa) s3.b.e(parcel, r22, sa.CREATOR);
                    break;
                case 11:
                    raVar = (ra) s3.b.e(parcel, r22, ra.CREATOR);
                    break;
                case '\f':
                    naVar = (na) s3.b.e(parcel, r22, na.CREATOR);
                    break;
                case '\r':
                    jaVar = (ja) s3.b.e(parcel, r22, ja.CREATOR);
                    break;
                case 14:
                    kaVar = (ka) s3.b.e(parcel, r22, ka.CREATOR);
                    break;
                case 15:
                    laVar = (la) s3.b.e(parcel, r22, la.CREATOR);
                    break;
                default:
                    s3.b.t(parcel, r22);
                    break;
            }
        }
        s3.b.j(parcel, r12);
        return new ta(r52, strF, strF2, bArrB, pointArr, r10, maVar, paVar, qaVar, saVar, raVar, naVar, jaVar, kaVar, laVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ta[] newArray(int r12) {
        return new ta[r12];
    }
}
