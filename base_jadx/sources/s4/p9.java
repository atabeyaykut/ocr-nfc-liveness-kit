package s4;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class p9 extends s3.a {
    public static final Parcelable.Creator<p9> CREATOR = new q9();

    /* renamed from: a, reason: collision with root package name */
    public final String f15132a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f15133b;

    /* renamed from: c, reason: collision with root package name */
    public final List<Point> f15134c;

    /* renamed from: d, reason: collision with root package name */
    public final String f15135d;

    /* renamed from: e, reason: collision with root package name */
    public final List<n9> f15136e;

    public p9(String str, Rect rect, ArrayList arrayList, String str2, ArrayList arrayList2) {
        this.f15132a = str;
        this.f15133b = rect;
        this.f15134c = arrayList;
        this.f15135d = str2;
        this.f15136e = arrayList2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 1, this.f15132a);
        s3.c.m(parcel, 2, this.f15133b, r52);
        s3.c.q(parcel, 3, this.f15134c);
        s3.c.n(parcel, 4, this.f15135d);
        s3.c.q(parcel, 5, this.f15136e);
        s3.c.s(parcel, r02);
    }
}
