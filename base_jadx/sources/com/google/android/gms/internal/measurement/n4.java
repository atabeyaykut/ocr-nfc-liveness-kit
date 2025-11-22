package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Binder;
import android.os.StrictMode;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public final class n4 implements p4 {

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("ConfigurationContentLoader.class")
    public static final ArrayMap f3633g = new ArrayMap();

    /* renamed from: h, reason: collision with root package name */
    public static final String[] f3634h = {"key", "value"};

    /* renamed from: a, reason: collision with root package name */
    public final ContentResolver f3635a;

    /* renamed from: b, reason: collision with root package name */
    public final Uri f3636b;

    /* renamed from: c, reason: collision with root package name */
    public final m4 f3637c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f3638d;

    /* renamed from: e, reason: collision with root package name */
    public volatile Map<String, String> f3639e;

    @GuardedBy("this")
    public final ArrayList f;

    public n4(ContentResolver contentResolver, Uri uri) {
        m4 m4Var = new m4(this);
        this.f3637c = m4Var;
        this.f3638d = new Object();
        this.f = new ArrayList();
        contentResolver.getClass();
        uri.getClass();
        this.f3635a = contentResolver;
        this.f3636b = uri;
        contentResolver.registerContentObserver(uri, false, m4Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static n4 b(ContentResolver contentResolver, Uri uri) {
        n4 n4Var;
        synchronized (n4.class) {
            ArrayMap arrayMap = f3633g;
            n4Var = (n4) arrayMap.get(uri);
            if (n4Var == null) {
                try {
                    n4 n4Var2 = new n4(contentResolver, uri);
                    try {
                        arrayMap.put(uri, n4Var2);
                    } catch (SecurityException unused) {
                    }
                    n4Var = n4Var2;
                } catch (SecurityException unused2) {
                }
            }
        }
        return n4Var;
    }

    public static synchronized void d() {
        for (V v10 : f3633g.values()) {
            v10.f3635a.unregisterContentObserver(v10.f3637c);
        }
        f3633g.clear();
    }

    @Override // com.google.android.gms.internal.measurement.p4
    public final /* bridge */ /* synthetic */ Object a(String str) {
        return c().get(str);
    }

    public final Map<String, String> c() {
        Map<String, String> map;
        Object objA;
        Map<String, String> map2 = this.f3639e;
        if (map2 == null) {
            synchronized (this.f3638d) {
                map2 = this.f3639e;
                if (map2 == null) {
                    StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        try {
                            l4 l4Var = new l4(0, this);
                            try {
                                objA = l4Var.a();
                            } catch (SecurityException unused) {
                                long jClearCallingIdentity = Binder.clearCallingIdentity();
                                try {
                                    objA = l4Var.a();
                                } finally {
                                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                                }
                            }
                            map = (Map) objA;
                        } finally {
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        }
                    } catch (SQLiteException | IllegalStateException | SecurityException unused2) {
                        Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        map = null;
                    }
                    this.f3639e = map;
                    map2 = map;
                }
            }
        }
        return map2 != null ? map2 : Collections.emptyMap();
    }
}
