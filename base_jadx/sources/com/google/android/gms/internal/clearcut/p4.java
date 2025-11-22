package com.google.android.gms.internal.clearcut;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class p4 {
    public static HashMap<String, String> f;

    /* renamed from: k, reason: collision with root package name */
    public static Object f3264k;

    /* renamed from: l, reason: collision with root package name */
    public static boolean f3265l;

    /* renamed from: a, reason: collision with root package name */
    public static final Uri f3255a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b, reason: collision with root package name */
    public static final Uri f3256b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f3257c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f3258d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: e, reason: collision with root package name */
    public static final AtomicBoolean f3259e = new AtomicBoolean();

    /* renamed from: g, reason: collision with root package name */
    public static final HashMap<String, Boolean> f3260g = new HashMap<>();

    /* renamed from: h, reason: collision with root package name */
    public static final HashMap<String, Integer> f3261h = new HashMap<>();

    /* renamed from: i, reason: collision with root package name */
    public static final HashMap<String, Long> f3262i = new HashMap<>();

    /* renamed from: j, reason: collision with root package name */
    public static final HashMap<String, Float> f3263j = new HashMap<>();

    /* renamed from: m, reason: collision with root package name */
    public static final String[] f3266m = new String[0];

    public static <T> T a(HashMap<String, T> map, String str, T t10) {
        synchronized (p4.class) {
            if (!map.containsKey(str)) {
                return null;
            }
            T t11 = map.get(str);
            if (t11 != null) {
                t10 = t11;
            }
            return t10;
        }
    }

    public static String b(ContentResolver contentResolver, String str) {
        Cursor cursorQuery;
        synchronized (p4.class) {
            c(contentResolver);
            Object obj = f3264k;
            if (f.containsKey(str)) {
                String str2 = f.get(str);
                return str2 != null ? str2 : null;
            }
            for (String str3 : f3266m) {
                if (str.startsWith(str3)) {
                    if (!f3265l || f.isEmpty()) {
                        String[] strArr = f3266m;
                        HashMap<String, String> map = f;
                        cursorQuery = contentResolver.query(f3256b, null, null, strArr, null);
                        TreeMap treeMap = new TreeMap();
                        if (cursorQuery != null) {
                            while (cursorQuery.moveToNext()) {
                                try {
                                    treeMap.put(cursorQuery.getString(0), cursorQuery.getString(1));
                                } finally {
                                    cursorQuery.close();
                                }
                            }
                        }
                        map.putAll(treeMap);
                        f3265l = true;
                        if (f.containsKey(str)) {
                            String str4 = f.get(str);
                            return str4 != null ? str4 : null;
                        }
                    }
                    return null;
                }
            }
            cursorQuery = contentResolver.query(f3255a, null, null, new String[]{str}, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(1);
                        if (string != null && string.equals(null)) {
                            string = null;
                        }
                        d(obj, str, string);
                        return string != null ? string : null;
                    }
                } finally {
                    if (cursorQuery != null) {
                    }
                }
            }
            d(obj, str, null);
            return null;
        }
    }

    public static void c(ContentResolver contentResolver) {
        HashMap<String, String> map = f;
        AtomicBoolean atomicBoolean = f3259e;
        if (map == null) {
            atomicBoolean.set(false);
            f = new HashMap<>();
            f3264k = new Object();
            f3265l = false;
            contentResolver.registerContentObserver(f3255a, true, new q4(0));
            return;
        }
        if (atomicBoolean.getAndSet(false)) {
            f.clear();
            f3260g.clear();
            f3261h.clear();
            f3262i.clear();
            f3263j.clear();
            f3264k = new Object();
            f3265l = false;
        }
    }

    public static void d(Object obj, String str, String str2) {
        synchronized (p4.class) {
            if (obj == f3264k) {
                f.put(str, str2);
            }
        }
    }

    public static <T> void e(Object obj, HashMap<String, T> map, String str, T t10) {
        synchronized (p4.class) {
            if (obj == f3264k) {
                map.put(str, t10);
                f.remove(str);
            }
        }
    }
}
