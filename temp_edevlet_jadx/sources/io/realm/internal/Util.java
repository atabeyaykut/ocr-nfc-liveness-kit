package io.realm.internal;

import io.realm.s0;
import io.realm.v0;

/* loaded from: classes2.dex */
public class Util {

    /* renamed from: a, reason: collision with root package name */
    public static Boolean f7647a;

    /* renamed from: b, reason: collision with root package name */
    public static Boolean f7648b;

    public static Class<? extends s0> a(Class<? extends s0> cls) {
        if (cls.equals(s0.class) || cls.equals(v0.class)) {
            throw new IllegalArgumentException("RealmModel or RealmObject was passed as an argument. Only subclasses of these can be used as arguments to methods that accept a Realm model class.");
        }
        Class superclass = cls.getSuperclass();
        return (superclass.equals(Object.class) || superclass.equals(v0.class)) ? cls : superclass;
    }

    public static synchronized boolean b() {
        if (f7648b == null) {
            try {
                f7648b = Boolean.TRUE;
            } catch (ClassNotFoundException unused) {
                f7648b = Boolean.FALSE;
            }
        }
        return f7648b.booleanValue();
    }

    public static boolean c(String str) {
        return str == null || str.length() == 0;
    }

    public static native String nativeGetTablePrefix();
}
