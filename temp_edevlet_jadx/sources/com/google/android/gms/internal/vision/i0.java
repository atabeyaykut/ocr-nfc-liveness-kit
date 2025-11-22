package com.google.android.gms.internal.vision;

/* loaded from: classes.dex */
public final class i0 {

    /* renamed from: a, reason: collision with root package name */
    public static final Class<?> f3990a;

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f3991b;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f3990a = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        f3991b = cls2 != null;
    }

    public static boolean a() {
        return (f3990a == null || f3991b) ? false : true;
    }

    public static Class<?> b() {
        return f3990a;
    }
}
