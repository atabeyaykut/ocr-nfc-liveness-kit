package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class y8 {

    /* renamed from: a, reason: collision with root package name */
    public static final Unsafe f3845a;

    /* renamed from: b, reason: collision with root package name */
    public static final Class<?> f3846b;

    /* renamed from: c, reason: collision with root package name */
    public static final x8 f3847c;

    /* renamed from: d, reason: collision with root package name */
    public static final boolean f3848d;

    /* renamed from: e, reason: collision with root package name */
    public static final boolean f3849e;
    public static final long f;

    /* renamed from: g, reason: collision with root package name */
    public static final boolean f3850g;

    /* JADX WARN: Removed duplicated region for block: B:22:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002d  */
    static {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.y8.<clinit>():void");
    }

    public static void a(Class cls) {
        if (f3849e) {
            f3847c.i(cls);
        }
    }

    public static Field b() {
        Field declaredField;
        Field declaredField2;
        int r12 = n5.f3640a;
        try {
            declaredField = Buffer.class.getDeclaredField("effectiveDirectAddress");
        } catch (Throwable unused) {
            declaredField = null;
        }
        if (declaredField != null) {
            return declaredField;
        }
        try {
            declaredField2 = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            declaredField2 = null;
        }
        if (declaredField2 == null || declaredField2.getType() != Long.TYPE) {
            return null;
        }
        return declaredField2;
    }

    public static void c(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        x8 x8Var = f3847c;
        int r32 = x8Var.j(j11, obj);
        int r6 = ((~((int) j10)) & 3) << 3;
        x8Var.n(((255 & b10) << r6) | (r32 & (~(255 << r6))), j11, obj);
    }

    public static void d(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        x8 x8Var = f3847c;
        int r6 = (((int) j10) & 3) << 3;
        x8Var.n(((255 & b10) << r6) | (x8Var.j(j11, obj) & (~(255 << r6))), j11, obj);
    }

    public static double e(long j10, Object obj) {
        return f3847c.a(j10, obj);
    }

    public static float f(long j10, Object obj) {
        return f3847c.b(j10, obj);
    }

    public static int g(long j10, Object obj) {
        return f3847c.j(j10, obj);
    }

    public static long h(long j10, Object obj) {
        return f3847c.k(j10, obj);
    }

    public static <T> T i(Class<T> cls) {
        try {
            return (T) f3845a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static Object j(long j10, Object obj) {
        return f3847c.m(j10, obj);
    }

    public static Unsafe k() {
        try {
            return (Unsafe) AccessController.doPrivileged(new u8());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* synthetic */ void l(Throwable th2) {
        Logger.getLogger(y8.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th2.toString()));
    }

    public static void m(Object obj, long j10, boolean z10) {
        f3847c.c(obj, j10, z10);
    }

    public static void n(Object obj, long j10, double d10) {
        f3847c.e(obj, j10, d10);
    }

    public static void o(Object obj, long j10, float f10) {
        f3847c.f(obj, j10, f10);
    }

    public static void p(int r12, long j10, Object obj) {
        f3847c.n(r12, j10, obj);
    }

    public static void q(Object obj, long j10, long j11) {
        f3847c.o(obj, j10, j11);
    }

    public static void r(long j10, Object obj, Object obj2) {
        f3847c.p(j10, obj, obj2);
    }

    public static boolean s(Class<?> cls) {
        int r12 = n5.f3640a;
        try {
            Class<?> cls2 = f3846b;
            Class<?> cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class<?> cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean t(long j10, Object obj) {
        return f3847c.g(j10, obj);
    }

    public static int u(Class<?> cls) {
        if (f3849e) {
            return f3847c.h(cls);
        }
        return -1;
    }
}
