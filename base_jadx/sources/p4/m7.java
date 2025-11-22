package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class m7 extends s3.a {
    public static final Parcelable.Creator<m7> CREATOR = new xb();

    /* renamed from: a, reason: collision with root package name */
    public final int f12504a;

    /* renamed from: b, reason: collision with root package name */
    public final String f12505b;

    /* renamed from: c, reason: collision with root package name */
    public final String f12506c;

    /* renamed from: d, reason: collision with root package name */
    public final String f12507d;

    public m7() {
    }

    public m7(int r12, String str, String str2, String str3) {
        this.f12504a = r12;
        this.f12505b = str;
        this.f12506c = str2;
        this.f12507d = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 2, this.f12504a);
        s3.c.n(parcel, 3, this.f12505b);
        s3.c.n(parcel, 4, this.f12506c);
        s3.c.n(parcel, 5, this.f12507d);
        s3.c.s(parcel, r43);
    }
}
