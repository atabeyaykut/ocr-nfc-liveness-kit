package q4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class u extends s3.a {
    public static final Parcelable.Creator<u> CREATOR = new j0();

    /* renamed from: a, reason: collision with root package name */
    public final int f13384a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f13385b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f13386c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f13387d;

    public u(int r12, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.f13384a = r12;
        this.f13385b = str;
        this.f13386c = str2;
        this.f13387d = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f13384a);
        s3.c.n(parcel, 2, this.f13385b);
        s3.c.n(parcel, 3, this.f13386c);
        s3.c.n(parcel, 4, this.f13387d);
        s3.c.s(parcel, r43);
    }
}
