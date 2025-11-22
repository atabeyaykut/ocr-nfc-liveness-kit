package s4;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class n9 extends s3.a {
    public static final Parcelable.Creator<n9> CREATOR = new o9();

    /* renamed from: a, reason: collision with root package name */
    public final String f15110a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f15111b;

    /* renamed from: c, reason: collision with root package name */
    public final List<Point> f15112c;

    /* renamed from: d, reason: collision with root package name */
    public final String f15113d;

    public n9(String str, Rect rect, ArrayList arrayList, String str2) {
        this.f15110a = str;
        this.f15111b = rect;
        this.f15112c = arrayList;
        this.f15113d = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 1, this.f15110a);
        s3.c.m(parcel, 2, this.f15111b, r52);
        s3.c.q(parcel, 3, this.f15112c);
        s3.c.n(parcel, 4, this.f15113d);
        s3.c.s(parcel, r02);
    }
}
