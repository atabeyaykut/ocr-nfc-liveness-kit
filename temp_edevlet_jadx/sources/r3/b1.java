package r3;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class b1 extends s3.a {
    public static final Parcelable.Creator<b1> CREATOR = new c1();

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f13913a;

    /* renamed from: b, reason: collision with root package name */
    public final m3.d[] f13914b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13915c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final f f13916d;

    public b1() {
    }

    public b1(Bundle bundle, m3.d[] dVarArr, int r32, @Nullable f fVar) {
        this.f13913a = bundle;
        this.f13914b = dVarArr;
        this.f13915c = r32;
        this.f13916d = fVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.b(parcel, 1, this.f13913a);
        s3.c.p(parcel, 2, this.f13914b, r52);
        s3.c.j(parcel, 3, this.f13915c);
        s3.c.m(parcel, 4, this.f13916d, r52);
        s3.c.s(parcel, r02);
    }
}
