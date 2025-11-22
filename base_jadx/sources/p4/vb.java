package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class vb implements Parcelable.Creator<o5> {
    @Override // android.os.Parcelable.Creator
    public final o5 createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        j9 j9Var = null;
        String strF = null;
        String strF2 = null;
        ea[] eaVarArr = null;
        m7[] m7VarArr = null;
        String[] strArrG = null;
        l2[] l2VarArr = null;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            switch ((char) r12) {
                case 2:
                    j9Var = (j9) s3.b.e(parcel, r12, j9.CREATOR);
                    break;
                case 3:
                    strF = s3.b.f(parcel, r12);
                    break;
                case 4:
                    strF2 = s3.b.f(parcel, r12);
                    break;
                case 5:
                    eaVarArr = (ea[]) s3.b.h(parcel, r12, ea.CREATOR);
                    break;
                case 6:
                    m7VarArr = (m7[]) s3.b.h(parcel, r12, m7.CREATOR);
                    break;
                case 7:
                    strArrG = s3.b.g(parcel, r12);
                    break;
                case '\b':
                    l2VarArr = (l2[]) s3.b.h(parcel, r12, l2.CREATOR);
                    break;
                default:
                    s3.b.t(parcel, r12);
                    break;
            }
        }
        s3.b.j(parcel, r02);
        return new o5(j9Var, strF, strF2, eaVarArr, m7VarArr, strArrG, l2VarArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ o5[] newArray(int r12) {
        return new o5[r12];
    }
}
