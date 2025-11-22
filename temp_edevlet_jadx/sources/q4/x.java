package q4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class x extends s3.a {
    public static final Parcelable.Creator<x> CREATOR = new g();

    /* renamed from: a, reason: collision with root package name */
    public final int f13396a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f13397b;

    public x(int r12, @Nullable String str) {
        this.f13396a = r12;
        this.f13397b = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f13396a);
        s3.c.n(parcel, 2, this.f13397b);
        s3.c.s(parcel, r43);
    }
}
