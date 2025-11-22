package p4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class sa extends s3.a {
    public static final Parcelable.Creator<sa> CREATOR = new mb();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f12676a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f12677b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12678c;

    public sa(@Nullable String str, @Nullable String str2, int r32) {
        this.f12676a = str;
        this.f12677b = str2;
        this.f12678c = r32;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 1, this.f12676a);
        s3.c.n(parcel, 2, this.f12677b);
        s3.c.j(parcel, 3, this.f12678c);
        s3.c.s(parcel, r43);
    }
}
