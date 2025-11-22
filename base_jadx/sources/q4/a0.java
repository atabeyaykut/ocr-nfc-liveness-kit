package q4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class a0 extends s3.a {
    public static final Parcelable.Creator<a0> CREATOR = new j();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f13325a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f13326b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13327c;

    public a0(@Nullable String str, @Nullable String str2, int r32) {
        this.f13325a = str;
        this.f13326b = str2;
        this.f13327c = r32;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 1, this.f13325a);
        s3.c.n(parcel, 2, this.f13326b);
        s3.c.j(parcel, 3, this.f13327c);
        s3.c.s(parcel, r43);
    }
}
