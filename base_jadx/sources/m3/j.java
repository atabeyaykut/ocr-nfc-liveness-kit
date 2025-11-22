package m3;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class j {

    /* renamed from: b, reason: collision with root package name */
    public static boolean f9955b;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f9956c;

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f9954a = new AtomicBoolean();

    /* renamed from: d, reason: collision with root package name */
    public static final AtomicBoolean f9957d = new AtomicBoolean();

    public static boolean a(@NonNull Context context) {
        try {
            if (!f9956c) {
                try {
                    PackageInfo packageInfoB = y3.c.a(context).b(64, "com.google.android.gms");
                    k.a(context);
                    if (packageInfoB == null || k.d(packageInfoB, false) || !k.d(packageInfoB, true)) {
                        f9955b = false;
                    } else {
                        f9955b = true;
                    }
                } catch (PackageManager.NameNotFoundException e10) {
                    Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e10);
                }
            }
            return f9955b || !"user".equals(Build.TYPE);
        } finally {
            f9956c = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0100  */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int b(int r8, @androidx.annotation.NonNull android.content.Context r9) throws android.content.pm.PackageManager.NameNotFoundException {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: m3.j.b(int, android.content.Context):int");
    }

    @TargetApi(21)
    public static boolean c(Context context) {
        try {
            Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
            while (it.hasNext()) {
                if ("com.google.android.gms".equals(it.next().getAppPackageName())) {
                    return true;
                }
            }
            return context.getPackageManager().getApplicationInfo("com.google.android.gms", 8192).enabled;
        } catch (PackageManager.NameNotFoundException | Exception unused) {
            return false;
        }
    }
}
