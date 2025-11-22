package q4;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class c0 implements Parcelable.Creator<b0> {
    @Override // android.os.Parcelable.Creator
    public final b0 createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        String strF = null;
        String strF2 = null;
        byte[] bArrB = null;
        Point[] pointArr = null;
        u uVar = null;
        x xVar = null;
        y yVar = null;
        a0 a0Var = null;
        z zVar = null;
        v vVar = null;
        r rVar = null;
        s sVar = null;
        t tVar = null;
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
                    uVar = (u) s3.b.e(parcel, r22, u.CREATOR);
                    break;
                case '\b':
                    xVar = (x) s3.b.e(parcel, r22, x.CREATOR);
                    break;
                case '\t':
                    yVar = (y) s3.b.e(parcel, r22, y.CREATOR);
                    break;
                case '\n':
                    a0Var = (a0) s3.b.e(parcel, r22, a0.CREATOR);
                    break;
                case 11:
                    zVar = (z) s3.b.e(parcel, r22, z.CREATOR);
                    break;
                case '\f':
                    vVar = (v) s3.b.e(parcel, r22, v.CREATOR);
                    break;
                case '\r':
                    rVar = (r) s3.b.e(parcel, r22, r.CREATOR);
                    break;
                case 14:
                    sVar = (s) s3.b.e(parcel, r22, s.CREATOR);
                    break;
                case 15:
                    tVar = (t) s3.b.e(parcel, r22, t.CREATOR);
                    break;
                default:
                    s3.b.t(parcel, r22);
                    break;
            }
        }
        s3.b.j(parcel, r12);
        return new b0(r52, strF, strF2, bArrB, pointArr, r10, uVar, xVar, yVar, a0Var, zVar, vVar, rVar, sVar, tVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ b0[] newArray(int r12) {
        return new b0[r12];
    }
}
