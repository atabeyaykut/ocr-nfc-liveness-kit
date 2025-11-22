package l3;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public final class a extends s3.a {

    @NonNull
    public static final Parcelable.Creator<a> CREATOR = new d();

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final Intent f9337a;

    public a(@NonNull Intent intent) {
        this.f9337a = intent;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.m(parcel, 1, this.f9337a, r52);
        s3.c.s(parcel, r02);
    }
}
