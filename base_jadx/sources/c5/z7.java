package c5;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class z7 implements Parcelable.Creator<y7> {
    @Override // android.os.Parcelable.Creator
    public final y7 createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        String strF = "";
        String strF2 = null;
        String strF3 = null;
        String strF4 = null;
        String strF5 = null;
        String strF6 = null;
        String strF7 = null;
        String strF8 = null;
        Boolean boolValueOf = null;
        ArrayList<String> arrayList = null;
        String strF9 = null;
        long jR = 0;
        long jR2 = 0;
        long jR3 = 0;
        long jR4 = 0;
        long jR5 = 0;
        long jR6 = -2147483648L;
        boolean zK = true;
        boolean zK2 = false;
        int r29 = 0;
        boolean zK3 = true;
        boolean zK4 = false;
        while (parcel.dataPosition() < r12) {
            int r22 = parcel.readInt();
            switch ((char) r22) {
                case 2:
                    strF2 = s3.b.f(parcel, r22);
                    break;
                case 3:
                    strF3 = s3.b.f(parcel, r22);
                    break;
                case 4:
                    strF4 = s3.b.f(parcel, r22);
                    break;
                case 5:
                    strF5 = s3.b.f(parcel, r22);
                    break;
                case 6:
                    jR = s3.b.r(parcel, r22);
                    break;
                case 7:
                    jR2 = s3.b.r(parcel, r22);
                    break;
                case '\b':
                    strF6 = s3.b.f(parcel, r22);
                    break;
                case '\t':
                    zK = s3.b.k(parcel, r22);
                    break;
                case '\n':
                    zK2 = s3.b.k(parcel, r22);
                    break;
                case 11:
                    jR6 = s3.b.r(parcel, r22);
                    break;
                case '\f':
                    strF7 = s3.b.f(parcel, r22);
                    break;
                case '\r':
                    jR3 = s3.b.r(parcel, r22);
                    break;
                case 14:
                    jR4 = s3.b.r(parcel, r22);
                    break;
                case 15:
                    r29 = s3.b.q(parcel, r22);
                    break;
                case 16:
                    zK3 = s3.b.k(parcel, r22);
                    break;
                case 17:
                case 20:
                default:
                    s3.b.t(parcel, r22);
                    break;
                case 18:
                    zK4 = s3.b.k(parcel, r22);
                    break;
                case 19:
                    strF8 = s3.b.f(parcel, r22);
                    break;
                case 21:
                    int r23 = s3.b.s(parcel, r22);
                    if (r23 != 0) {
                        s3.b.v(parcel, r23, 4);
                        boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
                        break;
                    } else {
                        boolValueOf = null;
                        break;
                    }
                case 22:
                    jR5 = s3.b.r(parcel, r22);
                    break;
                case 23:
                    int r24 = s3.b.s(parcel, r22);
                    int r42 = parcel.dataPosition();
                    if (r24 != 0) {
                        ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
                        parcel.setDataPosition(r42 + r24);
                        arrayList = arrayListCreateStringArrayList;
                        break;
                    } else {
                        arrayList = null;
                        break;
                    }
                case 24:
                    strF9 = s3.b.f(parcel, r22);
                    break;
                case 25:
                    strF = s3.b.f(parcel, r22);
                    break;
            }
        }
        s3.b.j(parcel, r12);
        return new y7(strF2, strF3, strF4, strF5, jR, jR2, strF6, zK, zK2, jR6, strF7, jR3, jR4, r29, zK3, zK4, strF8, boolValueOf, jR5, arrayList, strF9, strF);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ y7[] newArray(int r12) {
        return new y7[r12];
    }
}
