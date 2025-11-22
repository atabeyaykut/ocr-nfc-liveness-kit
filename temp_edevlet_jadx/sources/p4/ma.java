package p4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class ma extends s3.a {
    public static final Parcelable.Creator<ma> CREATOR = new bb();

    /* renamed from: a, reason: collision with root package name */
    public final int f12511a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f12512b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f12513c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f12514d;

    public ma(int r12, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.f12511a = r12;
        this.f12512b = str;
        this.f12513c = str2;
        this.f12514d = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f12511a);
        s3.c.n(parcel, 2, this.f12512b);
        s3.c.n(parcel, 3, this.f12513c);
        s3.c.n(parcel, 4, this.f12514d);
        s3.c.s(parcel, r43);
    }
}
