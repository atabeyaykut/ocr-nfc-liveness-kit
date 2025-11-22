package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class e extends s3.a {
    public static final Parcelable.Creator<e> CREATOR = new f();

    /* renamed from: a, reason: collision with root package name */
    public int f12313a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f12314b;

    public e() {
    }

    public e(int r12, boolean z10) {
        this.f12313a = r12;
        this.f12314b = z10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 2, this.f12313a);
        s3.c.a(parcel, 3, this.f12314b);
        s3.c.s(parcel, r43);
    }
}
