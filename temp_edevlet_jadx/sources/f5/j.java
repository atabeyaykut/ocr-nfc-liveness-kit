package f5;

import android.os.Parcel;
import android.os.Parcelable;
import r3.j0;

/* loaded from: classes.dex */
public final class j extends s3.a {
    public static final Parcelable.Creator<j> CREATOR = new k();

    /* renamed from: a, reason: collision with root package name */
    public final int f5527a;

    /* renamed from: b, reason: collision with root package name */
    public final j0 f5528b;

    public j(int r12, j0 j0Var) {
        this.f5527a = r12;
        this.f5528b = j0Var;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f5527a);
        s3.c.m(parcel, 2, this.f5528b, r52);
        s3.c.s(parcel, r02);
    }
}
