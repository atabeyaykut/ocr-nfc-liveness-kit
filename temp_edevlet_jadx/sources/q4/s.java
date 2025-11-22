package q4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class s extends s3.a {
    public static final Parcelable.Creator<s> CREATOR = new h0();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final w f13365a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f13366b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f13367c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final x[] f13368d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final u[] f13369e;

    @Nullable
    public final String[] f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final p[] f13370g;

    public s(@Nullable w wVar, @Nullable String str, @Nullable String str2, @Nullable x[] xVarArr, @Nullable u[] uVarArr, @Nullable String[] strArr, @Nullable p[] pVarArr) {
        this.f13365a = wVar;
        this.f13366b = str;
        this.f13367c = str2;
        this.f13368d = xVarArr;
        this.f13369e = uVarArr;
        this.f = strArr;
        this.f13370g = pVarArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.m(parcel, 1, this.f13365a, r52);
        s3.c.n(parcel, 2, this.f13366b);
        s3.c.n(parcel, 3, this.f13367c);
        s3.c.p(parcel, 4, this.f13368d, r52);
        s3.c.p(parcel, 5, this.f13369e, r52);
        s3.c.o(parcel, 6, this.f);
        s3.c.p(parcel, 7, this.f13370g, r52);
        s3.c.s(parcel, r02);
    }
}
