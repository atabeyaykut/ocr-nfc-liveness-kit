package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class za implements Parcelable.Creator<ka> {
    @Override // android.os.Parcelable.Creator
    public final ka createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        oa oaVar = null;
        String strF = null;
        String strF2 = null;
        pa[] paVarArr = null;
        ma[] maVarArr = null;
        String[] strArrG = null;
        ha[] haVarArr = null;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            switch ((char) r12) {
                case 1:
                    oaVar = (oa) s3.b.e(parcel, r12, oa.CREATOR);
                    break;
                case 2:
                    strF = s3.b.f(parcel, r12);
                    break;
                case 3:
                    strF2 = s3.b.f(parcel, r12);
                    break;
                case 4:
                    paVarArr = (pa[]) s3.b.h(parcel, r12, pa.CREATOR);
                    break;
                case 5:
                    maVarArr = (ma[]) s3.b.h(parcel, r12, ma.CREATOR);
                    break;
                case 6:
                    strArrG = s3.b.g(parcel, r12);
                    break;
                case 7:
                    haVarArr = (ha[]) s3.b.h(parcel, r12, ha.CREATOR);
                    break;
                default:
                    s3.b.t(parcel, r12);
                    break;
            }
        }
        s3.b.j(parcel, r02);
        return new ka(oaVar, strF, strF2, paVarArr, maVarArr, strArrG, haVarArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ka[] newArray(int r12) {
        return new ka[r12];
    }
}
