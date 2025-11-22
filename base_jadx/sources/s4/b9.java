package s4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class b9 extends s3.a {
    public static final Parcelable.Creator<b9> CREATOR = new v9();

    /* renamed from: a, reason: collision with root package name */
    public final aa[] f14923a;

    /* renamed from: b, reason: collision with root package name */
    public final j3 f14924b;

    /* renamed from: c, reason: collision with root package name */
    public final j3 f14925c;

    /* renamed from: d, reason: collision with root package name */
    public final j3 f14926d;

    /* renamed from: e, reason: collision with root package name */
    public final String f14927e;
    public final float f;

    /* renamed from: g, reason: collision with root package name */
    public final String f14928g;

    /* renamed from: h, reason: collision with root package name */
    public final int f14929h;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f14930j;

    /* renamed from: k, reason: collision with root package name */
    public final int f14931k;

    /* renamed from: l, reason: collision with root package name */
    public final int f14932l;

    public b9(aa[] aaVarArr, j3 j3Var, j3 j3Var2, j3 j3Var3, String str, float f, String str2, int r82, boolean z10, int r10, int r11) {
        this.f14923a = aaVarArr;
        this.f14924b = j3Var;
        this.f14925c = j3Var2;
        this.f14926d = j3Var3;
        this.f14927e = str;
        this.f = f;
        this.f14928g = str2;
        this.f14929h = r82;
        this.f14930j = z10;
        this.f14931k = r10;
        this.f14932l = r11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.p(parcel, 2, this.f14923a, r52);
        s3.c.m(parcel, 3, this.f14924b, r52);
        s3.c.m(parcel, 4, this.f14925c, r52);
        s3.c.m(parcel, 5, this.f14926d, r52);
        s3.c.n(parcel, 6, this.f14927e);
        s3.c.g(parcel, 7, this.f);
        s3.c.n(parcel, 8, this.f14928g);
        s3.c.j(parcel, 9, this.f14929h);
        s3.c.a(parcel, 10, this.f14930j);
        s3.c.j(parcel, 11, this.f14931k);
        s3.c.j(parcel, 12, this.f14932l);
        s3.c.s(parcel, r02);
    }
}
