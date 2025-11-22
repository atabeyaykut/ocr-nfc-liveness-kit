package f5;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class b extends s3.a implements n3.h {
    public static final Parcelable.Creator<b> CREATOR = new c();

    /* renamed from: a, reason: collision with root package name */
    public final int f5522a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5523b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final Intent f5524c;

    public b() {
        this(2, 0, null);
    }

    public b(int r12, int r22, @Nullable Intent intent) {
        this.f5522a = r12;
        this.f5523b = r22;
        this.f5524c = intent;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f5522a);
        s3.c.j(parcel, 2, this.f5523b);
        s3.c.m(parcel, 3, this.f5524c, r52);
        s3.c.s(parcel, r02);
    }

    @Override // n3.h
    public final Status y() {
        return this.f5523b == 0 ? Status.f : Status.f2977k;
    }
}
