package w3;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.NonNull;
import m3.j;
import m3.k;

/* loaded from: classes.dex */
public final class g {
    public static boolean a(int r32, @NonNull Context context) throws PackageManager.NameNotFoundException {
        if (!b(context, r32, "com.google.android.gms")) {
            return false;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.google.android.gms", 64);
            k kVarA = k.a(context);
            kVarA.getClass();
            if (packageInfo == null) {
                return false;
            }
            if (!k.d(packageInfo, false)) {
                if (!k.d(packageInfo, true)) {
                    return false;
                }
                if (!j.a(kVarA.f9959a)) {
                    Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
                    return false;
                }
            }
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            if (Log.isLoggable("UidVerifier", 3)) {
                Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
            }
            return false;
        }
    }

    @TargetApi(19)
    public static boolean b(@NonNull Context context, int r22, @NonNull String str) {
        y3.b bVarA = y3.c.a(context);
        bVarA.getClass();
        try {
            AppOpsManager appOpsManager = (AppOpsManager) bVarA.f19314a.getSystemService("appops");
            if (appOpsManager == null) {
                throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
            }
            appOpsManager.checkPackage(r22, str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }
}
