package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class i4 implements Parcelable.Creator<h4> {
    @Override // android.os.Parcelable.Creator
    public final h4 createFromParcel(Parcel parcel) {
        int r02 = s3.b.u(parcel);
        long jR = 0;
        int r52 = 0;
        int r6 = 0;
        int r72 = 0;
        int r82 = 0;
        while (parcel.dataPosition() < r02) {
            int r12 = parcel.readInt();
            char c10 = (char) r12;
            if (c10 == 2) {
                r52 = s3.b.q(parcel, r12);
            } else if (c10 == 3) {
                r6 = s3.b.q(parcel, r12);
            } else if (c10 == 4) {
                r72 = s3.b.q(parcel, r12);
            } else if (c10 == 5) {
                jR = s3.b.r(parcel, r12);
            } else if (c10 != 6) {
                s3.b.t(parcel, r12);
            } else {
                r82 = s3.b.q(parcel, r12);
            }
        }
        s3.b.j(parcel, r02);
        return new h4(r52, r6, r72, r82, jR);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ h4[] newArray(int r12) {
        return new h4[r12];
    }
}
