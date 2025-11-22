package g7;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicInteger f5824a = new AtomicInteger((int) SystemClock.elapsedRealtime());

    /* renamed from: g7.a$a, reason: collision with other inner class name */
    public static class C0096a {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        public final NotificationCompat.Builder f5825a;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        public final String f5826b;

        public C0096a(NotificationCompat.Builder builder, String str) {
            this.f5825a = builder;
            this.f5826b = str;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0565  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x057c  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0586  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x059a  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x015e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x017b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static g7.a.C0096a a(android.content.Context r14, g7.e0 r15) throws org.json.JSONException, android.content.pm.PackageManager.NameNotFoundException {
        /*
            Method dump skipped, instructions count: 1461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: g7.a.a(android.content.Context, g7.e0):g7.a$a");
    }

    @TargetApi(26)
    public static boolean b(Resources resources, int r52) {
        if (Build.VERSION.SDK_INT != 26) {
            return true;
        }
        try {
            if (!(resources.getDrawable(r52, null) instanceof AdaptiveIconDrawable)) {
                return true;
            }
            StringBuilder sb2 = new StringBuilder(77);
            sb2.append("Adaptive icons cannot be used in notifications. Ignoring icon id: ");
            sb2.append(r52);
            Log.e("FirebaseMessaging", sb2.toString());
            return false;
        } catch (Resources.NotFoundException unused) {
            StringBuilder sb3 = new StringBuilder(66);
            sb3.append("Couldn't find resource ");
            sb3.append(r52);
            sb3.append(", treating it as an invalid icon");
            Log.e("FirebaseMessaging", sb3.toString());
            return false;
        }
    }
}
