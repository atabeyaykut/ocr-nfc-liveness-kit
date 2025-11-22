package c5;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class s7 implements Parcelable.Creator<r7> {
    public static void a(r7 r7Var, Parcel parcel) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, r7Var.f1950a);
        s3.c.n(parcel, 2, r7Var.f1951b);
        s3.c.l(parcel, 3, r7Var.f1952c);
        Long l5 = r7Var.f1953d;
        if (l5 != null) {
            parcel.writeInt(524292);
            parcel.writeLong(l5.longValue());
        }
        s3.c.n(parcel, 6, r7Var.f1954e);
        s3.c.n(parcel, 7, r7Var.f);
        Double d10 = r7Var.f1955g;
        if (d10 != null) {
            parcel.writeInt(524296);
            parcel.writeDouble(d10.doubleValue());
        }
        s3.c.s(parcel, r02);
    }

    @Override // android.os.Parcelable.Creator
    public final r7 createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        String strF = null;
        Long lValueOf = null;
        Float fO = null;
        String strF2 = null;
        String strF3 = null;
        Double dValueOf = null;
        long jR = 0;
        int r72 = 0;
        while (parcel.dataPosition() < r12) {
            int r32 = parcel.readInt();
            switch ((char) r32) {
                case 1:
                    r72 = s3.b.q(parcel, r32);
                    break;
                case 2:
                    strF = s3.b.f(parcel, r32);
                    break;
                case 3:
                    jR = s3.b.r(parcel, r32);
                    break;
                case 4:
                    int r33 = s3.b.s(parcel, r32);
                    if (r33 != 0) {
                        s3.b.v(parcel, r33, 8);
                        lValueOf = Long.valueOf(parcel.readLong());
                        break;
                    } else {
                        lValueOf = null;
                        break;
                    }
                case 5:
                    fO = s3.b.o(parcel, r32);
                    break;
                case 6:
                    strF2 = s3.b.f(parcel, r32);
                    break;
                case 7:
                    strF3 = s3.b.f(parcel, r32);
                    break;
                case '\b':
                    int r34 = s3.b.s(parcel, r32);
                    if (r34 != 0) {
                        s3.b.v(parcel, r34, 8);
                        dValueOf = Double.valueOf(parcel.readDouble());
                        break;
                    } else {
                        dValueOf = null;
                        break;
                    }
                default:
                    s3.b.t(parcel, r32);
                    break;
            }
        }
        s3.b.j(parcel, r12);
        return new r7(r72, strF, jR, lValueOf, fO, strF2, strF3, dValueOf);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ r7[] newArray(int r12) {
        return new r7[r12];
    }
}
