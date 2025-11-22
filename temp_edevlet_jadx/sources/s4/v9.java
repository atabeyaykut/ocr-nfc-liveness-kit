package s4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class v9 implements Parcelable.Creator<b9> {
    @Override // android.os.Parcelable.Creator
    public final b9 createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        aa[] aaVarArr = null;
        j3 j3Var = null;
        j3 j3Var2 = null;
        j3 j3Var3 = null;
        String strF = null;
        String strF2 = null;
        float fN = 0.0f;
        int r13 = 0;
        boolean zK = false;
        int r15 = 0;
        int r16 = 0;
        while (parcel.dataPosition() < r12) {
            int r22 = parcel.readInt();
            switch ((char) r22) {
                case 2:
                    aaVarArr = (aa[]) s3.b.h(parcel, r22, aa.CREATOR);
                    break;
                case 3:
                    j3Var = (j3) s3.b.e(parcel, r22, j3.CREATOR);
                    break;
                case 4:
                    j3Var2 = (j3) s3.b.e(parcel, r22, j3.CREATOR);
                    break;
                case 5:
                    j3Var3 = (j3) s3.b.e(parcel, r22, j3.CREATOR);
                    break;
                case 6:
                    strF = s3.b.f(parcel, r22);
                    break;
                case 7:
                    fN = s3.b.n(parcel, r22);
                    break;
                case '\b':
                    strF2 = s3.b.f(parcel, r22);
                    break;
                case '\t':
                    r13 = s3.b.q(parcel, r22);
                    break;
                case '\n':
                    zK = s3.b.k(parcel, r22);
                    break;
                case 11:
                    r15 = s3.b.q(parcel, r22);
                    break;
                case '\f':
                    r16 = s3.b.q(parcel, r22);
                    break;
                default:
                    s3.b.t(parcel, r22);
                    break;
            }
        }
        s3.b.j(parcel, r12);
        return new b9(aaVarArr, j3Var, j3Var2, j3Var3, strF, fN, strF2, r13, zK, r15, r16);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ b9[] newArray(int r12) {
        return new b9[r12];
    }
}
