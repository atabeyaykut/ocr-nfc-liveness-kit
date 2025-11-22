package g7;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;

/* loaded from: classes2.dex */
public final class g0 extends s3.a {

    @NonNull
    public static final Parcelable.Creator<g0> CREATOR = new h0();

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f5863a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayMap f5864b;

    public g0(@NonNull Bundle bundle) {
        this.f5863a = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.b(parcel, 2, this.f5863a);
        s3.c.s(parcel, r43);
    }
}
