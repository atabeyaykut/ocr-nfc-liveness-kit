package com.google.android.gms.internal.clearcut;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class o4 implements Parcelable.Creator<n4> {
    @Override // android.os.Parcelable.Creator
    public final n4 createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        String strF = null;
        String strF2 = null;
        String strF3 = null;
        String strF4 = null;
        int r6 = 0;
        int r72 = 0;
        boolean zK = true;
        boolean zK2 = false;
        int r13 = 0;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            switch ((char) r12) {
                case 2:
                    strF = s3.b.f(parcel, r12);
                    break;
                case 3:
                    r6 = s3.b.q(parcel, r12);
                    break;
                case 4:
                    r72 = s3.b.q(parcel, r12);
                    break;
                case 5:
                    strF2 = s3.b.f(parcel, r12);
                    break;
                case 6:
                    strF3 = s3.b.f(parcel, r12);
                    break;
                case 7:
                    zK = s3.b.k(parcel, r12);
                    break;
                case '\b':
                    strF4 = s3.b.f(parcel, r12);
                    break;
                case '\t':
                    zK2 = s3.b.k(parcel, r12);
                    break;
                case '\n':
                    r13 = s3.b.q(parcel, r12);
                    break;
                default:
                    s3.b.t(parcel, r12);
                    break;
            }
        }
        s3.b.j(parcel, r02);
        return new n4(strF, r6, r72, strF2, strF3, zK, strF4, zK2, r13);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ n4[] newArray(int r12) {
        return new n4[r12];
    }
}
