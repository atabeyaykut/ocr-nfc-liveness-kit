package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class a8 {

    /* renamed from: c, reason: collision with root package name */
    public static final a8 f3373c = new a8();

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f3375b = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final k7 f3374a = new k7();

    public final <T> d8<T> a(Class<T> cls) {
        g7 g7Var;
        o8<?, ?> o8Var;
        e6<?> e6Var;
        n7 n7Var;
        w7 w7Var;
        Class<?> cls2;
        Charset charset = x6.f3835a;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f3375b;
        d8<T> d8VarZ = (d8) concurrentHashMap.get(cls);
        if (d8VarZ == null) {
            k7 k7Var = this.f3374a;
            k7Var.getClass();
            Class<?> cls3 = e8.f3459a;
            if (!q6.class.isAssignableFrom(cls) && (cls2 = e8.f3459a) != null && !cls2.isAssignableFrom(cls)) {
                throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            }
            p7 p7VarA = k7Var.f3600a.a(cls);
            boolean zB = p7VarA.b();
            boolean zIsAssignableFrom = q6.class.isAssignableFrom(cls);
            if (zB) {
                if (zIsAssignableFrom) {
                    w7Var = new w7(e8.f3462d, g6.f3482a, p7VarA.a());
                } else {
                    o8<?, ?> o8Var2 = e8.f3460b;
                    e6<?> e6Var2 = g6.f3483b;
                    if (e6Var2 == null) {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                    w7Var = new w7(o8Var2, e6Var2, p7VarA.a());
                }
                d8VarZ = w7Var;
            } else {
                if (zIsAssignableFrom) {
                    if (p7VarA.c() == 1) {
                        int r22 = y7.f3844a;
                        g7Var = g7.f3485b;
                        o8Var = e8.f3462d;
                        e6Var = g6.f3482a;
                    } else {
                        int r23 = y7.f3844a;
                        g7Var = g7.f3485b;
                        o8Var = e8.f3462d;
                        e6Var = null;
                    }
                    n7Var = o7.f3664b;
                } else {
                    if (p7VarA.c() == 1) {
                        int r24 = y7.f3844a;
                        g7Var = g7.f3484a;
                        o8Var = e8.f3460b;
                        e6<?> e6Var3 = g6.f3483b;
                        if (e6Var3 == null) {
                            throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                        }
                        e6Var = e6Var3;
                    } else {
                        int r25 = y7.f3844a;
                        g7Var = g7.f3484a;
                        o8Var = e8.f3461c;
                        e6Var = null;
                    }
                    n7Var = o7.f3663a;
                }
                int[] r72 = v7.f3793n;
                if (!(p7VarA instanceof c8)) {
                    throw null;
                }
                d8VarZ = v7.z((c8) p7VarA, g7Var, o8Var, e6Var, n7Var);
            }
            d8<T> d8Var = (d8) concurrentHashMap.putIfAbsent(cls, d8VarZ);
            if (d8Var != null) {
                return d8Var;
            }
        }
        return d8VarZ;
    }
}
