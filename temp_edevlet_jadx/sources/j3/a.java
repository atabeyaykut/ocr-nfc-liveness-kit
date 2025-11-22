package j3;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public final class a extends s3.a {

    @NonNull
    public static final Parcelable.Creator<a> CREATOR = new c();

    /* renamed from: a, reason: collision with root package name */
    public final int f7978a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7979b;

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f7980c;

    public a(int r12, int r22, Bundle bundle) {
        this.f7978a = r12;
        this.f7979b = r22;
        this.f7980c = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f7978a);
        s3.c.j(parcel, 2, this.f7979b);
        s3.c.b(parcel, 3, this.f7980c);
        s3.c.s(parcel, r43);
    }
}
