package com.google.android.gms.internal.vision;

import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class a3 {

    /* renamed from: c, reason: collision with root package name */
    public static final a3 f3885c = new a3();

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f3887b = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final f2 f3886a = new f2();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11, types: [com.google.android.gms.internal.vision.t2] */
    /* JADX WARN: Type inference failed for: r4v9, types: [com.google.android.gms.internal.vision.t2] */
    public final <T> d3<T> a(Class<T> cls) {
        u2 u2Var;
        z1 z1Var;
        y0 y0Var;
        n3<?, ?> n3Var;
        k2 k2Var;
        y0 y0Var2;
        u2 u2Var2;
        n3<?, ?> n3Var2;
        z1 z1Var2;
        r2 r2VarL;
        x2 x2Var;
        z1 z1Var3;
        p3 p3Var;
        r2 t2Var;
        Class<?> cls2;
        Charset charset = m1.f4035a;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f3887b;
        d3<T> d3Var = (d3) concurrentHashMap.get(cls);
        if (d3Var != null) {
            return d3Var;
        }
        f2 f2Var = this.f3886a;
        f2Var.getClass();
        Class<?> cls3 = e3.f3946a;
        if (!i1.class.isAssignableFrom(cls) && (cls2 = e3.f3946a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
        l2 l2VarA = f2Var.f3953a.a(cls);
        if (l2VarA.b()) {
            if (i1.class.isAssignableFrom(cls)) {
                t2Var = new t2(e3.f3949d, z0.f4126a, l2VarA.c());
            } else {
                n3<?, ?> n3Var3 = e3.f3947b;
                y0<?> y0Var3 = z0.f4127b;
                if (y0Var3 == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                t2Var = new t2(n3Var3, y0Var3, l2VarA.c());
            }
            r2VarL = t2Var;
        } else {
            y0 y0Var4 = null;
            if (i1.class.isAssignableFrom(cls)) {
                if (l2VarA.a() == 1) {
                    x2Var = w2.f4118b;
                    z1Var3 = z1.f4129b;
                    p3Var = e3.f3949d;
                    y0Var4 = z0.f4126a;
                } else {
                    x2Var = w2.f4118b;
                    z1Var3 = z1.f4129b;
                    p3Var = e3.f3949d;
                }
                y0Var2 = y0Var4;
                k2Var = m2.f4038b;
                z1Var2 = z1Var3;
                n3Var2 = p3Var;
                u2Var2 = x2Var;
            } else {
                if (l2VarA.a() == 1) {
                    u2Var = w2.f4117a;
                    z1Var = z1.f4128a;
                    n3Var = e3.f3947b;
                    y0 y0Var5 = z0.f4127b;
                    y0Var = y0Var5;
                    if (y0Var5 == null) {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                } else {
                    u2Var = w2.f4117a;
                    z1Var = z1.f4128a;
                    y0Var = null;
                    n3Var = e3.f3948c;
                }
                k2Var = m2.f4037a;
                y0Var2 = y0Var;
                u2Var2 = u2Var;
                n3Var2 = n3Var;
                z1Var2 = z1Var;
            }
            r2VarL = r2.l(l2VarA, u2Var2, z1Var2, n3Var2, y0Var2, k2Var);
        }
        d3<T> d3Var2 = (d3) concurrentHashMap.putIfAbsent(cls, r2VarL);
        return d3Var2 != null ? d3Var2 : r2VarL;
    }
}
