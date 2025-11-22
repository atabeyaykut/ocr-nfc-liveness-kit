package y3;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import w3.d;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static Context f19312a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public static Boolean f19313b;

    public static synchronized boolean a(@NonNull Context context) {
        Boolean boolValueOf;
        Boolean bool;
        Context applicationContext = context.getApplicationContext();
        Context context2 = f19312a;
        if (context2 != null && (bool = f19313b) != null && context2 == applicationContext) {
            return bool.booleanValue();
        }
        f19313b = null;
        if (!d.a()) {
            try {
                context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                f19313b = Boolean.TRUE;
            } catch (ClassNotFoundException unused) {
                boolValueOf = Boolean.FALSE;
            }
            f19312a = applicationContext;
            return f19313b.booleanValue();
        }
        boolValueOf = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
        f19313b = boolValueOf;
        f19312a = applicationContext;
        return f19313b.booleanValue();
    }
}
