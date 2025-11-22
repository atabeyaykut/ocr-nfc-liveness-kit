package k3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.clearcut.n4;

/* loaded from: classes.dex */
public final class g implements Parcelable.Creator<f> {
    @Override // android.os.Parcelable.Creator
    public final f createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        n4 n4Var = null;
        byte[] bArrB = null;
        int[] r6 = null;
        String[] strArrG = null;
        int[] r82 = null;
        byte[][] bArrC = null;
        d5.a[] aVarArr = null;
        boolean zK = true;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            switch ((char) r12) {
                case 2:
                    n4Var = (n4) s3.b.e(parcel, r12, n4.CREATOR);
                    break;
                case 3:
                    bArrB = s3.b.b(parcel, r12);
                    break;
                case 4:
                    r6 = s3.b.d(parcel, r12);
                    break;
                case 5:
                    strArrG = s3.b.g(parcel, r12);
                    break;
                case 6:
                    r82 = s3.b.d(parcel, r12);
                    break;
                case 7:
                    bArrC = s3.b.c(parcel, r12);
                    break;
                case '\b':
                    zK = s3.b.k(parcel, r12);
                    break;
                case '\t':
                    aVarArr = (d5.a[]) s3.b.h(parcel, r12, d5.a.CREATOR);
                    break;
                default:
                    s3.b.t(parcel, r12);
                    break;
            }
        }
        s3.b.j(parcel, r02);
        return new f(n4Var, bArrB, r6, strArrG, r82, bArrC, zK, aVarArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ f[] newArray(int r12) {
        return new f[r12];
    }
}
