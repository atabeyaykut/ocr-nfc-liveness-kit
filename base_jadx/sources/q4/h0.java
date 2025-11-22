package q4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class h0 implements Parcelable.Creator<s> {
    @Override // android.os.Parcelable.Creator
    public final s createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        w wVar = null;
        String strF = null;
        String strF2 = null;
        x[] xVarArr = null;
        u[] uVarArr = null;
        String[] strArrG = null;
        p[] pVarArr = null;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            switch ((char) r12) {
                case 1:
                    wVar = (w) s3.b.e(parcel, r12, w.CREATOR);
                    break;
                case 2:
                    strF = s3.b.f(parcel, r12);
                    break;
                case 3:
                    strF2 = s3.b.f(parcel, r12);
                    break;
                case 4:
                    xVarArr = (x[]) s3.b.h(parcel, r12, x.CREATOR);
                    break;
                case 5:
                    uVarArr = (u[]) s3.b.h(parcel, r12, u.CREATOR);
                    break;
                case 6:
                    strArrG = s3.b.g(parcel, r12);
                    break;
                case 7:
                    pVarArr = (p[]) s3.b.h(parcel, r12, p.CREATOR);
                    break;
                default:
                    s3.b.t(parcel, r12);
                    break;
            }
        }
        s3.b.j(parcel, r02);
        return new s(wVar, strF, strF2, xVarArr, uVarArr, strArrG, pVarArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ s[] newArray(int r12) {
        return new s[r12];
    }
}
