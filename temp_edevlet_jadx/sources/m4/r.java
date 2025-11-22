package m4;

import android.app.PendingIntent;
import android.os.Build;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class r extends s3.a {
    public static final Parcelable.Creator<r> CREATOR = new s();

    /* renamed from: a, reason: collision with root package name */
    public final int f10018a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final IBinder f10019b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final IBinder f10020c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final PendingIntent f10021d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final String f10022e;

    @Nullable
    public final String f;

    public r(int r12, @Nullable IBinder iBinder, @Nullable IBinder iBinder2, @Nullable PendingIntent pendingIntent, @Nullable String str, @Nullable String str2) {
        this.f10018a = r12;
        this.f10019b = iBinder;
        this.f10020c = iBinder2;
        this.f10021d = pendingIntent;
        this.f10022e = Build.VERSION.SDK_INT >= 30 ? null : str;
        this.f = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f10018a);
        s3.c.i(parcel, 2, this.f10019b);
        s3.c.i(parcel, 3, this.f10020c);
        s3.c.m(parcel, 4, this.f10021d, r52);
        s3.c.n(parcel, 5, this.f10022e);
        s3.c.n(parcel, 6, this.f);
        s3.c.s(parcel, r02);
    }
}
