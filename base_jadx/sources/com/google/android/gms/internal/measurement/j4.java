package com.google.android.gms.internal.measurement;

import android.net.Uri;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class j4 {

    /* renamed from: a, reason: collision with root package name */
    public static final Uri f3566a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f3567b;

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f3568c;

    /* renamed from: d, reason: collision with root package name */
    public static final AtomicBoolean f3569d;

    /* renamed from: e, reason: collision with root package name */
    public static HashMap<String, String> f3570e;
    public static final HashMap<String, Boolean> f;

    /* renamed from: g, reason: collision with root package name */
    public static final HashMap<String, Integer> f3571g;

    /* renamed from: h, reason: collision with root package name */
    public static final HashMap<String, Long> f3572h;

    /* renamed from: i, reason: collision with root package name */
    public static final HashMap<String, Float> f3573i;

    /* renamed from: j, reason: collision with root package name */
    public static Object f3574j;

    /* renamed from: k, reason: collision with root package name */
    public static final String[] f3575k;

    static {
        Uri.parse("content://com.google.android.gsf.gservices/prefix");
        f3567b = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
        f3568c = Pattern.compile("^(0|false|f|off|no|n)$", 2);
        f3569d = new AtomicBoolean();
        f = new HashMap<>();
        f3571g = new HashMap<>();
        f3572h = new HashMap<>();
        f3573i = new HashMap<>();
        f3575k = new String[0];
    }

    public static void a(Object obj, String str, String str2) {
        synchronized (j4.class) {
            if (obj == f3574j) {
                f3570e.put(str, str2);
            }
        }
    }
}
