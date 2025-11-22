package m3;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import r3.p;

/* loaded from: classes.dex */
public final class b extends s3.a {

    /* renamed from: a, reason: collision with root package name */
    public final int f9925a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9926b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final PendingIntent f9927c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f9928d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public static final b f9924e = new b(0);

    @NonNull
    public static final Parcelable.Creator<b> CREATOR = new n();

    public b() {
        throw null;
    }

    public b(int r32) {
        this(1, r32, null, null);
    }

    public b(int r12, int r22, @Nullable PendingIntent pendingIntent, @Nullable String str) {
        this.f9925a = r12;
        this.f9926b = r22;
        this.f9927c = pendingIntent;
        this.f9928d = str;
    }

    @NonNull
    public static String E(int r22) {
        if (r22 == 99) {
            return "UNFINISHED";
        }
        if (r22 == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (r22) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (r22) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return "TIMEOUT";
                    case 15:
                        return "INTERRUPTED";
                    case 16:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case 18:
                        return "SERVICE_UPDATING";
                    case 19:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case 21:
                        return "API_VERSION_UPDATE_REQUIRED";
                    case 22:
                        return "RESOLUTION_ACTIVITY_NOT_FOUND";
                    case 23:
                        return "API_DISABLED";
                    case 24:
                        return "API_DISABLED_FOR_CONNECTION";
                    default:
                        return androidx.appcompat.graphics.drawable.a.f("UNKNOWN_ERROR_CODE(", r22, ")");
                }
        }
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f9926b == bVar.f9926b && r3.p.a(this.f9927c, bVar.f9927c) && r3.p.a(this.f9928d, bVar.f9928d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f9926b), this.f9927c, this.f9928d});
    }

    @NonNull
    public final String toString() {
        p.a aVar = new p.a(this);
        aVar.a(E(this.f9926b), "statusCode");
        aVar.a(this.f9927c, "resolution");
        aVar.a(this.f9928d, "message");
        return aVar.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f9925a);
        s3.c.j(parcel, 2, this.f9926b);
        s3.c.m(parcel, 3, this.f9927c, r52);
        s3.c.n(parcel, 4, this.f9928d);
        s3.c.s(parcel, r02);
    }

    public b(int r32, @Nullable PendingIntent pendingIntent) {
        this(1, r32, pendingIntent, null);
    }
}
