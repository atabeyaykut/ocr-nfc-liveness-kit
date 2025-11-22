package c5;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class c implements Parcelable.Creator<b> {
    @Override // android.os.Parcelable.Creator
    public final b createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        String strF = null;
        String strF2 = null;
        r7 r7Var = null;
        String strF3 = null;
        s sVar = null;
        s sVar2 = null;
        s sVar3 = null;
        long jR = 0;
        long jR2 = 0;
        long jR3 = 0;
        boolean zK = false;
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
                    r7Var = (r7) s3.b.e(parcel, r22, r7.CREATOR);
                    break;
                case 5:
                    jR = s3.b.r(parcel, r22);
                    break;
                case 6:
                    zK = s3.b.k(parcel, r22);
                    break;
                case 7:
                    strF3 = s3.b.f(parcel, r22);
                    break;
                case '\b':
                    sVar = (s) s3.b.e(parcel, r22, s.CREATOR);
                    break;
                case '\t':
                    jR2 = s3.b.r(parcel, r22);
                    break;
                case '\n':
                    sVar2 = (s) s3.b.e(parcel, r22, s.CREATOR);
                    break;
                case 11:
                    jR3 = s3.b.r(parcel, r22);
                    break;
                case '\f':
                    sVar3 = (s) s3.b.e(parcel, r22, s.CREATOR);
                    break;
                default:
                    s3.b.t(parcel, r22);
                    break;
            }
        }
        s3.b.j(parcel, r12);
        return new b(strF, strF2, r7Var, jR, zK, strF3, sVar, jR2, sVar2, jR3, sVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ b[] newArray(int r12) {
        return new b[r12];
    }
}
