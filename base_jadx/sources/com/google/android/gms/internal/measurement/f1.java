package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class f1 implements Parcelable.Creator<e1> {
    @Override // android.os.Parcelable.Creator
    public final e1 createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        long jR = 0;
        long jR2 = 0;
        String strF = null;
        String strF2 = null;
        String strF3 = null;
        Bundle bundleA = null;
        String strF4 = null;
        boolean zK = false;
        while (parcel.dataPosition() < r12) {
            int r22 = parcel.readInt();
            switch ((char) r22) {
                case 1:
                    jR = s3.b.r(parcel, r22);
                    break;
                case 2:
                    jR2 = s3.b.r(parcel, r22);
                    break;
                case 3:
                    zK = s3.b.k(parcel, r22);
                    break;
                case 4:
                    strF = s3.b.f(parcel, r22);
                    break;
                case 5:
                    strF2 = s3.b.f(parcel, r22);
                    break;
                case 6:
                    strF3 = s3.b.f(parcel, r22);
                    break;
                case 7:
                    bundleA = s3.b.a(parcel, r22);
                    break;
                case '\b':
                    strF4 = s3.b.f(parcel, r22);
                    break;
                default:
                    s3.b.t(parcel, r22);
                    break;
            }
        }
        s3.b.j(parcel, r12);
        return new e1(jR, jR2, zK, strF, strF2, strF3, bundleA, strF4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ e1[] newArray(int r12) {
        return new e1[r12];
    }
}
