package h6;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class c0 {

    /* renamed from: a, reason: collision with root package name */
    public final x5.c f6891a;

    /* renamed from: d, reason: collision with root package name */
    public boolean f6894d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final Boolean f6895e;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6892b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final h5.l<Void> f6893c = new h5.l<>();
    public final h5.l<Void> f = new h5.l<>();

    public c0(x5.c cVar) {
        Boolean boolValueOf;
        PackageManager packageManager;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        this.f6894d = false;
        cVar.a();
        Context context = cVar.f19165a;
        this.f6891a = cVar;
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.crashlytics", 0);
        if (sharedPreferences.contains("firebase_crashlytics_collection_enabled")) {
            this.f6894d = false;
            boolValueOf = Boolean.valueOf(sharedPreferences.getBoolean("firebase_crashlytics_collection_enabled", true));
        } else {
            boolValueOf = null;
        }
        if (boolValueOf == null) {
            try {
                packageManager = context.getPackageManager();
            } catch (PackageManager.NameNotFoundException e10) {
                Log.e("FirebaseCrashlytics", "Could not read data collection permission from manifest", e10);
            }
            Boolean boolValueOf2 = (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_crashlytics_collection_enabled")) ? null : Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_crashlytics_collection_enabled"));
            if (boolValueOf2 == null) {
                this.f6894d = false;
                boolValueOf = null;
            } else {
                this.f6894d = true;
                boolValueOf = Boolean.valueOf(Boolean.TRUE.equals(boolValueOf2));
            }
        }
        this.f6895e = boolValueOf;
        synchronized (this.f6892b) {
            if (a()) {
                this.f6893c.d(null);
            }
        }
    }

    public final synchronized boolean a() {
        boolean zBooleanValue;
        Boolean bool = this.f6895e;
        zBooleanValue = bool != null ? bool.booleanValue() : this.f6891a.f();
        b(zBooleanValue);
        return zBooleanValue;
    }

    public final void b(boolean z10) {
        String str = String.format("Crashlytics automatic data collection %s by %s.", z10 ? "ENABLED" : "DISABLED", this.f6895e == null ? "global Firebase setting" : this.f6894d ? "firebase_crashlytics_collection_enabled manifest flag" : "API");
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", str, null);
        }
    }
}
