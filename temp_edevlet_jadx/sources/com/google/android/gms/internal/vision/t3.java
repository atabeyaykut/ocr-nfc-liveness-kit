package com.google.android.gms.internal.vision;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class t3 {

    /* renamed from: a, reason: collision with root package name */
    public static final Unsafe f4094a;

    /* renamed from: b, reason: collision with root package name */
    public static final Class<?> f4095b;

    /* renamed from: c, reason: collision with root package name */
    public static final d f4096c;

    /* renamed from: d, reason: collision with root package name */
    public static final boolean f4097d;

    /* renamed from: e, reason: collision with root package name */
    public static final boolean f4098e;
    public static final long f;

    /* renamed from: g, reason: collision with root package name */
    public static final boolean f4099g;

    public static final class a extends d {
        public a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final byte a(long j10, Object obj) {
            return t3.f4099g ? t3.w(j10, obj) : t3.x(j10, obj);
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final void b(Object obj, long j10, byte b10) {
            if (t3.f4099g) {
                t3.o(obj, j10, b10);
            } else {
                t3.r(obj, j10, b10);
            }
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final void c(Object obj, long j10, double d10) {
            e(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final void d(Object obj, long j10, float f) {
            g(Float.floatToIntBits(f), j10, obj);
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final void f(Object obj, long j10, boolean z10) {
            if (t3.f4099g) {
                t3.o(obj, j10, z10 ? (byte) 1 : (byte) 0);
            } else {
                t3.r(obj, j10, z10 ? (byte) 1 : (byte) 0);
            }
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final boolean h(long j10, Object obj) {
            return t3.f4099g ? t3.w(j10, obj) != 0 : t3.x(j10, obj) != 0;
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final float i(long j10, Object obj) {
            return Float.intBitsToFloat(k(j10, obj));
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final double j(long j10, Object obj) {
            return Double.longBitsToDouble(l(j10, obj));
        }
    }

    public static final class b extends d {
        public b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final byte a(long j10, Object obj) {
            return this.f4100a.getByte(obj, j10);
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final void b(Object obj, long j10, byte b10) {
            this.f4100a.putByte(obj, j10, b10);
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final void c(Object obj, long j10, double d10) {
            this.f4100a.putDouble(obj, j10, d10);
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final void d(Object obj, long j10, float f) {
            this.f4100a.putFloat(obj, j10, f);
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final void f(Object obj, long j10, boolean z10) {
            this.f4100a.putBoolean(obj, j10, z10);
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final boolean h(long j10, Object obj) {
            return this.f4100a.getBoolean(obj, j10);
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final float i(long j10, Object obj) {
            return this.f4100a.getFloat(obj, j10);
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final double j(long j10, Object obj) {
            return this.f4100a.getDouble(obj, j10);
        }
    }

    public static final class c extends d {
        public c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final byte a(long j10, Object obj) {
            return t3.f4099g ? t3.w(j10, obj) : t3.x(j10, obj);
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final void b(Object obj, long j10, byte b10) {
            if (t3.f4099g) {
                t3.o(obj, j10, b10);
            } else {
                t3.r(obj, j10, b10);
            }
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final void c(Object obj, long j10, double d10) {
            e(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final void d(Object obj, long j10, float f) {
            g(Float.floatToIntBits(f), j10, obj);
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final void f(Object obj, long j10, boolean z10) {
            if (t3.f4099g) {
                t3.o(obj, j10, z10 ? (byte) 1 : (byte) 0);
            } else {
                t3.r(obj, j10, z10 ? (byte) 1 : (byte) 0);
            }
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final boolean h(long j10, Object obj) {
            return t3.f4099g ? t3.w(j10, obj) != 0 : t3.x(j10, obj) != 0;
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final float i(long j10, Object obj) {
            return Float.intBitsToFloat(k(j10, obj));
        }

        @Override // com.google.android.gms.internal.vision.t3.d
        public final double j(long j10, Object obj) {
            return Double.longBitsToDouble(l(j10, obj));
        }
    }

    public static abstract class d {

        /* renamed from: a, reason: collision with root package name */
        public final Unsafe f4100a;

        public d(Unsafe unsafe) {
            this.f4100a = unsafe;
        }

        public abstract byte a(long j10, Object obj);

        public abstract void b(Object obj, long j10, byte b10);

        public abstract void c(Object obj, long j10, double d10);

        public abstract void d(Object obj, long j10, float f);

        public final void e(Object obj, long j10, long j11) {
            this.f4100a.putLong(obj, j10, j11);
        }

        public abstract void f(Object obj, long j10, boolean z10);

        public final void g(int r22, long j10, Object obj) {
            this.f4100a.putInt(obj, j10, r22);
        }

        public abstract boolean h(long j10, Object obj);

        public abstract float i(long j10, Object obj);

        public abstract double j(long j10, Object obj);

        public final int k(long j10, Object obj) {
            return this.f4100a.getInt(obj, j10);
        }

        public final long l(long j10, Object obj) {
            return this.f4100a.getLong(obj, j10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x011f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 666
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.t3.<clinit>():void");
    }

    public static byte a(long j10, byte[] bArr) {
        return f4096c.a(f + j10, bArr);
    }

    public static int b(long j10, Object obj) {
        return f4096c.k(j10, obj);
    }

    public static <T> T c(Class<T> cls) {
        try {
            return (T) f4094a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static void d(Object obj, long j10, double d10) {
        f4096c.c(obj, j10, d10);
    }

    public static void e(Object obj, long j10, float f10) {
        f4096c.d(obj, j10, f10);
    }

    public static void f(Object obj, long j10, long j11) {
        f4096c.e(obj, j10, j11);
    }

    public static void g(Object obj, long j10, boolean z10) {
        f4096c.f(obj, j10, z10);
    }

    public static void h(byte[] bArr, long j10, byte b10) {
        f4096c.b(bArr, f + j10, b10);
    }

    public static void i(int r12, long j10, Object obj) {
        f4096c.g(r12, j10, obj);
    }

    public static void j(long j10, Object obj, Object obj2) {
        f4096c.f4100a.putObject(obj, j10, obj2);
    }

    public static int k(Class<?> cls) {
        if (f4098e) {
            return f4096c.f4100a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static long l(long j10, Object obj) {
        return f4096c.l(j10, obj);
    }

    public static Unsafe m() {
        try {
            return (Unsafe) AccessController.doPrivileged(new v3());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void n(Class cls) {
        if (f4098e) {
            f4096c.f4100a.arrayIndexScale(cls);
        }
    }

    public static void o(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int r22 = b(j11, obj);
        int r52 = ((~((int) j10)) & 3) << 3;
        i(((255 & b10) << r52) | (r22 & (~(255 << r52))), j11, obj);
    }

    public static boolean p(long j10, Object obj) {
        return f4096c.h(j10, obj);
    }

    public static float q(long j10, Object obj) {
        return f4096c.i(j10, obj);
    }

    public static void r(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int r52 = (((int) j10) & 3) << 3;
        i(((255 & b10) << r52) | (b(j11, obj) & (~(255 << r52))), j11, obj);
    }

    public static boolean s(Class<?> cls) {
        if (!i0.a()) {
            return false;
        }
        try {
            Class<?> cls2 = f4095b;
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

    public static double t(long j10, Object obj) {
        return f4096c.j(j10, obj);
    }

    public static Object u(long j10, Object obj) {
        return f4096c.f4100a.getObject(obj, j10);
    }

    public static Field v() {
        Field declaredField;
        Field declaredField2;
        if (i0.a()) {
            try {
                declaredField2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
            } catch (Throwable unused) {
                declaredField2 = null;
            }
            if (declaredField2 != null) {
                return declaredField2;
            }
        }
        try {
            declaredField = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            declaredField = null;
        }
        if (declaredField == null || declaredField.getType() != Long.TYPE) {
            return null;
        }
        return declaredField;
    }

    public static byte w(long j10, Object obj) {
        return (byte) (b((-4) & j10, obj) >>> ((int) (((~j10) & 3) << 3)));
    }

    public static byte x(long j10, Object obj) {
        return (byte) (b((-4) & j10, obj) >>> ((int) ((j10 & 3) << 3)));
    }
}
