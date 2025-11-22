package s4;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class l9 extends s3.a {
    public static final Parcelable.Creator<l9> CREATOR = new m9();

    /* renamed from: a, reason: collision with root package name */
    public final String f15066a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f15067b;

    /* renamed from: c, reason: collision with root package name */
    public final List<Point> f15068c;

    /* renamed from: d, reason: collision with root package name */
    public final String f15069d;

    /* renamed from: e, reason: collision with root package name */
    public final List<p9> f15070e;

    public l9(String str, Rect rect, ArrayList arrayList, String str2, ArrayList arrayList2) {
        this.f15066a = str;
        this.f15067b = rect;
        this.f15068c = arrayList;
        this.f15069d = str2;
        this.f15070e = arrayList2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 1, this.f15066a);
        s3.c.m(parcel, 2, this.f15067b, r52);
        s3.c.q(parcel, 3, this.f15068c);
        s3.c.n(parcel, 4, this.f15069d);
        s3.c.q(parcel, 5, this.f15070e);
        s3.c.s(parcel, r02);
    }
}
