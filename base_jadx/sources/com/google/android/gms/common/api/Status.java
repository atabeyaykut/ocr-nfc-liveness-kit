package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Arrays;
import m3.b;
import n3.h;
import n3.m;
import r3.p;
import s3.a;
import s3.c;

/* loaded from: classes.dex */
public final class Status extends a implements h, ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<Status> CREATOR;

    @NonNull
    public static final Status f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public static final Status f2974g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public static final Status f2975h;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    public static final Status f2976j;

    /* renamed from: k, reason: collision with root package name */
    @NonNull
    public static final Status f2977k;

    /* renamed from: a, reason: collision with root package name */
    public final int f2978a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2979b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f2980c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final PendingIntent f2981d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final b f2982e;

    static {
        new Status(-1, null);
        f = new Status(0, null);
        f2974g = new Status(14, null);
        f2975h = new Status(8, null);
        f2976j = new Status(15, null);
        f2977k = new Status(16, null);
        new Status(17, null);
        new Status(18, null);
        CREATOR = new m();
    }

    public Status() {
        throw null;
    }

    public Status(int r12, int r22, @Nullable String str, @Nullable PendingIntent pendingIntent, @Nullable b bVar) {
        this.f2978a = r12;
        this.f2979b = r22;
        this.f2980c = str;
        this.f2981d = pendingIntent;
        this.f2982e = bVar;
    }

    public Status(int r72, @Nullable String str) {
        this(1, r72, str, null, null);
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f2978a == status.f2978a && this.f2979b == status.f2979b && p.a(this.f2980c, status.f2980c) && p.a(this.f2981d, status.f2981d) && p.a(this.f2982e, status.f2982e);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2978a), Integer.valueOf(this.f2979b), this.f2980c, this.f2981d, this.f2982e});
    }

    @NonNull
    public final String toString() {
        p.a aVar = new p.a(this);
        String strD = this.f2980c;
        if (strD == null) {
            int r12 = this.f2979b;
            switch (r12) {
                case -1:
                    strD = "SUCCESS_CACHE";
                    break;
                case 0:
                    strD = "SUCCESS";
                    break;
                case 1:
                case 9:
                case 11:
                case 12:
                default:
                    strD = android.support.v4.media.a.d("unknown status code: ", r12);
                    break;
                case 2:
                    strD = "SERVICE_VERSION_UPDATE_REQUIRED";
                    break;
                case 3:
                    strD = "SERVICE_DISABLED";
                    break;
                case 4:
                    strD = "SIGN_IN_REQUIRED";
                    break;
                case 5:
                    strD = "INVALID_ACCOUNT";
                    break;
                case 6:
                    strD = "RESOLUTION_REQUIRED";
                    break;
                case 7:
                    strD = "NETWORK_ERROR";
                    break;
                case 8:
                    strD = "INTERNAL_ERROR";
                    break;
                case 10:
                    strD = "DEVELOPER_ERROR";
                    break;
                case 13:
                    strD = "ERROR";
                    break;
                case 14:
                    strD = "INTERRUPTED";
                    break;
                case 15:
                    strD = "TIMEOUT";
                    break;
                case 16:
                    strD = "CANCELED";
                    break;
                case 17:
                    strD = "API_NOT_CONNECTED";
                    break;
                case 18:
                    strD = "DEAD_CLIENT";
                    break;
                case 19:
                    strD = "REMOTE_EXCEPTION";
                    break;
                case 20:
                    strD = "CONNECTION_SUSPENDED_DURING_CALL";
                    break;
                case 21:
                    strD = "RECONNECTION_TIMED_OUT_DURING_UPDATE";
                    break;
                case 22:
                    strD = "RECONNECTION_TIMED_OUT";
                    break;
            }
        }
        aVar.a(strD, "statusCode");
        aVar.a(this.f2981d, "resolution");
        return aVar.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r52) {
        int r02 = c.r(parcel, 20293);
        c.j(parcel, 1, this.f2979b);
        c.n(parcel, 2, this.f2980c);
        c.m(parcel, 3, this.f2981d, r52);
        c.m(parcel, 4, this.f2982e, r52);
        c.j(parcel, 1000, this.f2978a);
        c.s(parcel, r02);
    }

    @Override // n3.h
    @NonNull
    @CanIgnoreReturnValue
    public final Status y() {
        return this;
    }
}
