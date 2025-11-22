package p4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class pa extends s3.a {
    public static final Parcelable.Creator<pa> CREATOR = new jb();

    /* renamed from: a, reason: collision with root package name */
    public final int f12603a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f12604b;

    public pa(int r12, @Nullable String str) {
        this.f12603a = r12;
        this.f12604b = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f12603a);
        s3.c.n(parcel, 2, this.f12604b);
        s3.c.s(parcel, r43);
    }
}
