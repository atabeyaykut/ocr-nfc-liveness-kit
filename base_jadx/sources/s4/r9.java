package s4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class r9 extends s3.a {
    public static final Parcelable.Creator<r9> CREATOR = new s9();

    /* renamed from: a, reason: collision with root package name */
    public final String f15165a;

    /* renamed from: b, reason: collision with root package name */
    public final List<l9> f15166b;

    public r9(String str, ArrayList arrayList) {
        this.f15165a = str;
        this.f15166b = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 1, this.f15165a);
        s3.c.q(parcel, 2, this.f15166b);
        s3.c.s(parcel, r43);
    }
}
