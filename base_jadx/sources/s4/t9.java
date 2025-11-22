package s4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class t9 extends s3.a {
    public static final Parcelable.Creator<t9> CREATOR = new u9();

    /* renamed from: a, reason: collision with root package name */
    public final boolean f15181a;

    public t9(boolean z10) {
        this.f15181a = z10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.a(parcel, 1, this.f15181a);
        s3.c.s(parcel, r43);
    }
}
