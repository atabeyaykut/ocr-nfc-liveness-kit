package g7;

import android.content.Context;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.ArrayDeque;

/* loaded from: classes2.dex */
public final class l0 {

    /* renamed from: e, reason: collision with root package name */
    public static l0 f5876e;

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public String f5877a = null;

    /* renamed from: b, reason: collision with root package name */
    public Boolean f5878b = null;

    /* renamed from: c, reason: collision with root package name */
    public Boolean f5879c = null;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayDeque f5880d = new ArrayDeque();

    public static synchronized l0 a() {
        if (f5876e == null) {
            f5876e = new l0();
        }
        return f5876e;
    }

    public final boolean b(Context context) {
        if (this.f5879c == null) {
            this.f5879c = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0);
        }
        if (!this.f5878b.booleanValue() && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.f5879c.booleanValue();
    }

    public final boolean c(Context context) {
        if (this.f5878b == null) {
            this.f5878b = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!this.f5878b.booleanValue() && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.f5878b.booleanValue();
    }
}
