package s4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ba implements Parcelable.Creator<aa> {
    @Override // android.os.Parcelable.Creator
    public final aa createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        w9[] w9VarArr = null;
        j3 j3Var = null;
        j3 j3Var2 = null;
        String strF = null;
        String strF2 = null;
        float fN = 0.0f;
        boolean zK = false;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            switch ((char) r12) {
                case 2:
                    w9VarArr = (w9[]) s3.b.h(parcel, r12, w9.CREATOR);
                    break;
                case 3:
                    j3Var = (j3) s3.b.e(parcel, r12, j3.CREATOR);
                    break;
                case 4:
                    j3Var2 = (j3) s3.b.e(parcel, r12, j3.CREATOR);
                    break;
                case 5:
                    strF = s3.b.f(parcel, r12);
                    break;
                case 6:
                    fN = s3.b.n(parcel, r12);
                    break;
                case 7:
                    strF2 = s3.b.f(parcel, r12);
                    break;
                case '\b':
                    zK = s3.b.k(parcel, r12);
                    break;
                default:
                    s3.b.t(parcel, r12);
                    break;
            }
        }
        s3.b.j(parcel, r02);
        return new aa(w9VarArr, j3Var, j3Var2, strF, fN, strF2, zK);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ aa[] newArray(int r12) {
        return new aa[r12];
    }
}
