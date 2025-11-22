package com.google.android.gms.internal.clearcut;

import android.content.ContentResolver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.GuardedBy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: h, reason: collision with root package name */
    public static final ConcurrentHashMap<Uri, b> f3023h = new ConcurrentHashMap<>();

    /* renamed from: i, reason: collision with root package name */
    public static final String[] f3024i = {"key", "value"};

    /* renamed from: a, reason: collision with root package name */
    public final ContentResolver f3025a;

    /* renamed from: b, reason: collision with root package name */
    public final Uri f3026b;

    /* renamed from: e, reason: collision with root package name */
    public volatile HashMap f3029e;

    /* renamed from: d, reason: collision with root package name */
    public final Object f3028d = new Object();
    public final Object f = new Object();

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("listenersLock")
    public final ArrayList f3030g = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final c f3027c = new c(this);

    public b(ContentResolver contentResolver, Uri uri) {
        this.f3025a = contentResolver;
        this.f3026b = uri;
    }

    public static void a(b bVar) {
        synchronized (bVar.f) {
            Iterator it = bVar.f3030g.iterator();
            while (it.hasNext()) {
                ((d) it.next()).f();
            }
        }
    }

    public final HashMap b() {
        try {
            HashMap map = new HashMap();
            Cursor cursorQuery = this.f3025a.query(this.f3026b, f3024i, null, null, null);
            if (cursorQuery != null) {
                while (cursorQuery.moveToNext()) {
                    try {
                        map.put(cursorQuery.getString(0), cursorQuery.getString(1));
                    } catch (Throwable th2) {
                        cursorQuery.close();
                        throw th2;
                    }
                }
                cursorQuery.close();
            }
            return map;
        } catch (SQLiteException | SecurityException unused) {
            Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
            return null;
        }
    }
}
