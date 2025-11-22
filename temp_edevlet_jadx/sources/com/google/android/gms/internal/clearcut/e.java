package com.google.android.gms.internal.clearcut;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.UserManager;
import android.util.Log;
import androidx.core.content.PermissionChecker;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public abstract class e<T> {

    /* renamed from: g, reason: collision with root package name */
    public static final Object f3086g = new Object();

    /* renamed from: h, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static Context f3087h;

    /* renamed from: i, reason: collision with root package name */
    public static volatile Boolean f3088i;

    /* renamed from: j, reason: collision with root package name */
    public static volatile Boolean f3089j;

    /* renamed from: a, reason: collision with root package name */
    public final m f3090a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3091b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3092c;

    /* renamed from: d, reason: collision with root package name */
    public final T f3093d;

    /* renamed from: e, reason: collision with root package name */
    public volatile b f3094e;
    public volatile SharedPreferences f;

    public e() {
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(m mVar, String str, Object obj) {
        this.f3094e = null;
        this.f = null;
        String str2 = mVar.f3177a;
        if (str2 == null && mVar.f3178b == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        if (str2 != null && mVar.f3178b != null) {
            throw new IllegalArgumentException("Must pass one of SharedPreferences file name or ContentProvider URI");
        }
        this.f3090a = mVar;
        String strValueOf = String.valueOf(mVar.f3179c);
        this.f3092c = str.length() != 0 ? strValueOf.concat(str) : new String(strValueOf);
        String strValueOf2 = String.valueOf(mVar.f3180d);
        this.f3091b = str.length() != 0 ? strValueOf2.concat(str) : new String(strValueOf2);
        this.f3093d = obj;
    }

    public static <V> V c(k<V> kVar) {
        try {
            return kVar.g();
        } catch (SecurityException unused) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return kVar.g();
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
    }

    public static boolean g() {
        if (f3088i == null) {
            Context context = f3087h;
            if (context == null) {
                return false;
            }
            f3088i = Boolean.valueOf(PermissionChecker.checkCallingOrSelfPermission(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
        }
        return f3088i.booleanValue();
    }

    public final T a() {
        if (f3087h == null) {
            throw new IllegalStateException("Must call PhenotypeFlag.init() first");
        }
        if (this.f3090a.f) {
            T tF = f();
            if (tF != null) {
                return tF;
            }
            T tE = e();
            if (tE != null) {
                return tE;
            }
        } else {
            T tE2 = e();
            if (tE2 != null) {
                return tE2;
            }
            T tF2 = f();
            if (tF2 != null) {
                return tF2;
            }
        }
        return this.f3093d;
    }

    public abstract T b(SharedPreferences sharedPreferences);

    public abstract T d(String str);

    @TargetApi(24)
    public final T e() {
        boolean zBooleanValue;
        if (g() ? ((Boolean) c(new g("gms:phenotype:phenotype_flag:debug_bypass_phenotype"))).booleanValue() : false) {
            String strValueOf = String.valueOf(this.f3091b);
            Log.w("PhenotypeFlag", strValueOf.length() != 0 ? "Bypass reading Phenotype values for flag: ".concat(strValueOf) : new String("Bypass reading Phenotype values for flag: "));
        } else {
            m mVar = this.f3090a;
            if (mVar.f3178b != null) {
                if (this.f3094e == null) {
                    ContentResolver contentResolver = f3087h.getContentResolver();
                    Uri uri = this.f3090a.f3178b;
                    ConcurrentHashMap<Uri, b> concurrentHashMap = b.f3023h;
                    b bVar = concurrentHashMap.get(uri);
                    if (bVar == null) {
                        bVar = new b(contentResolver, uri);
                        b bVarPutIfAbsent = concurrentHashMap.putIfAbsent(uri, bVar);
                        if (bVarPutIfAbsent == null) {
                            bVar.f3025a.registerContentObserver(bVar.f3026b, false, bVar.f3027c);
                        } else {
                            bVar = bVarPutIfAbsent;
                        }
                    }
                    this.f3094e = bVar;
                }
                String str = (String) c(new f(this, this.f3094e));
                if (str != null) {
                    return d(str);
                }
            } else if (mVar.f3177a != null) {
                if (Build.VERSION.SDK_INT < 24 || f3087h.isDeviceProtectedStorage()) {
                    zBooleanValue = true;
                } else {
                    if (f3089j == null || !f3089j.booleanValue()) {
                        f3089j = Boolean.valueOf(((UserManager) f3087h.getSystemService(UserManager.class)).isUserUnlocked());
                    }
                    zBooleanValue = f3089j.booleanValue();
                }
                if (!zBooleanValue) {
                    return null;
                }
                if (this.f == null) {
                    this.f = f3087h.getSharedPreferences(this.f3090a.f3177a, 0);
                }
                SharedPreferences sharedPreferences = this.f;
                if (sharedPreferences.contains(this.f3091b)) {
                    return b(sharedPreferences);
                }
            }
        }
        return null;
    }

    public final T f() {
        String strB;
        String str = this.f3092c;
        if (this.f3090a.f3181e || !g()) {
            return null;
        }
        try {
            strB = p4.b(f3087h.getContentResolver(), str);
        } catch (SecurityException unused) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                strB = p4.b(f3087h.getContentResolver(), str);
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
        if (strB != null) {
            return d(strB);
        }
        return null;
    }
}
