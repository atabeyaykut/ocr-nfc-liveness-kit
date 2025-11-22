package f5;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import r3.l0;

/* loaded from: classes.dex */
public final class l extends s3.a {
    public static final Parcelable.Creator<l> CREATOR = new m();

    /* renamed from: a, reason: collision with root package name */
    public final int f5529a;

    /* renamed from: b, reason: collision with root package name */
    public final m3.b f5530b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final l0 f5531c;

    public l(int r12, m3.b bVar, @Nullable l0 l0Var) {
        this.f5529a = r12;
        this.f5530b = bVar;
        this.f5531c = l0Var;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f5529a);
        s3.c.m(parcel, 2, this.f5530b, r52);
        s3.c.m(parcel, 3, this.f5531c, r52);
        s3.c.s(parcel, r02);
    }
}
