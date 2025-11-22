package p4;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class sb implements Parcelable.Creator<rb> {
    @Override // android.os.Parcelable.Creator
    public final rb createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        String strF = null;
        String strF2 = null;
        Point[] pointArr = null;
        m7 m7Var = null;
        ea eaVar = null;
        eb ebVar = null;
        qb qbVar = null;
        pb pbVar = null;
        k8 k8Var = null;
        n4 n4Var = null;
        o5 o5Var = null;
        o6 o6Var = null;
        byte[] bArrB = null;
        double dM = 0.0d;
        int r72 = 0;
        int r10 = 0;
        boolean zK = false;
        while (parcel.dataPosition() < r12) {
            int r22 = parcel.readInt();
            switch ((char) r22) {
                case 2:
                    r72 = s3.b.q(parcel, r22);
                    break;
                case 3:
                    strF = s3.b.f(parcel, r22);
                    break;
                case 4:
                    strF2 = s3.b.f(parcel, r22);
                    break;
                case 5:
                    r10 = s3.b.q(parcel, r22);
                    break;
                case 6:
                    pointArr = (Point[]) s3.b.h(parcel, r22, Point.CREATOR);
                    break;
                case 7:
                    m7Var = (m7) s3.b.e(parcel, r22, m7.CREATOR);
                    break;
                case '\b':
                    eaVar = (ea) s3.b.e(parcel, r22, ea.CREATOR);
                    break;
                case '\t':
                    ebVar = (eb) s3.b.e(parcel, r22, eb.CREATOR);
                    break;
                case '\n':
                    qbVar = (qb) s3.b.e(parcel, r22, qb.CREATOR);
                    break;
                case 11:
                    pbVar = (pb) s3.b.e(parcel, r22, pb.CREATOR);
                    break;
                case '\f':
                    k8Var = (k8) s3.b.e(parcel, r22, k8.CREATOR);
                    break;
                case '\r':
                    n4Var = (n4) s3.b.e(parcel, r22, n4.CREATOR);
                    break;
                case 14:
                    o5Var = (o5) s3.b.e(parcel, r22, o5.CREATOR);
                    break;
                case 15:
                    o6Var = (o6) s3.b.e(parcel, r22, o6.CREATOR);
                    break;
                case 16:
                    bArrB = s3.b.b(parcel, r22);
                    break;
                case 17:
                    zK = s3.b.k(parcel, r22);
                    break;
                case 18:
                    dM = s3.b.m(parcel, r22);
                    break;
                default:
                    s3.b.t(parcel, r22);
                    break;
            }
        }
        s3.b.j(parcel, r12);
        return new rb(r72, strF, strF2, r10, pointArr, m7Var, eaVar, ebVar, qbVar, pbVar, k8Var, n4Var, o5Var, o6Var, bArrB, zK, dM);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ rb[] newArray(int r12) {
        return new rb[r12];
    }
}
