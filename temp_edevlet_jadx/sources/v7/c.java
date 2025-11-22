package v7;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final r3.j f18261a = new r3.j("CommonUtils", "");

    @RecentlyNonNull
    public static String a(@RecentlyNonNull Context context) {
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException e10) {
            String strValueOf = String.valueOf(e10);
            String strH = androidx.camera.camera2.internal.c.h(new StringBuilder(strValueOf.length() + 48), "Exception thrown when trying to get app version ", strValueOf);
            r3.j jVar = f18261a;
            if (Log.isLoggable(jVar.f13999a, 6)) {
                String str = jVar.f14000b;
                if (str != null) {
                    strH = str.concat(strH);
                }
                Log.e("CommonUtils", strH);
            }
            return "";
        }
    }
}
