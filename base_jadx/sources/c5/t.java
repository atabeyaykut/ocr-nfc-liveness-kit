package c5;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class t implements Parcelable.Creator<s> {
    public static void a(s sVar, Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 2, sVar.f1956a);
        s3.c.m(parcel, 3, sVar.f1957b, r52);
        s3.c.n(parcel, 4, sVar.f1958c);
        s3.c.l(parcel, 5, sVar.f1959d);
        s3.c.s(parcel, r02);
    }

    @Override // android.os.Parcelable.Creator
    public final s createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        q qVar = null;
        String strF2 = null;
        long jR = 0;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            char c10 = (char) r12;
            if (c10 == 2) {
                strF = s3.b.f(parcel, r12);
            } else if (c10 == 3) {
                qVar = (q) s3.b.e(parcel, r12, q.CREATOR);
            } else if (c10 == 4) {
                strF2 = s3.b.f(parcel, r12);
            } else if (c10 != 5) {
                s3.b.t(parcel, r12);
            } else {
                jR = s3.b.r(parcel, r12);
            }
        }
        s3.b.j(parcel, r02);
        return new s(strF, qVar, strF2, jR);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ s[] newArray(int r12) {
        return new s[r12];
    }
}
