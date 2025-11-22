package r3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.List;

/* loaded from: classes.dex */
public final class v extends s3.a {

    @NonNull
    public static final Parcelable.Creator<v> CREATOR = new y();

    /* renamed from: a, reason: collision with root package name */
    public final int f14051a;

    /* renamed from: b, reason: collision with root package name */
    public List f14052b;

    public v(int r12, List list) {
        this.f14051a = r12;
        this.f14052b = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f14051a);
        s3.c.q(parcel, 2, this.f14052b);
        s3.c.s(parcel, r43);
    }
}
