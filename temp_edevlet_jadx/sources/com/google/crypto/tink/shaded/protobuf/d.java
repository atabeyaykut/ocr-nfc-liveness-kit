package com.google.crypto.tink.shaded.protobuf;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final Class<?> f4248a;

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f4249b;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f4248a = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        f4249b = cls2 != null;
    }

    public static boolean a() {
        return (f4248a == null || f4249b) ? false : true;
    }
}
