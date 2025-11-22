package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public static final Class<?> f3274a;

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f3275b;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f3274a = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        f3275b = cls2 != null;
    }

    public static boolean a() {
        return (f3274a == null || f3275b) ? false : true;
    }
}
