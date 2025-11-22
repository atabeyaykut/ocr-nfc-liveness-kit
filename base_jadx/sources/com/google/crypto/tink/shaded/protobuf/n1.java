package com.google.crypto.tink.shaded.protobuf;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* loaded from: classes2.dex */
public final class n1 {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f4328a = Logger.getLogger(n1.class.getName());

    /* renamed from: b, reason: collision with root package name */
    public static final Unsafe f4329b;

    /* renamed from: c, reason: collision with root package name */
    public static final Class<?> f4330c;

    /* renamed from: d, reason: collision with root package name */
    public static final e f4331d;

    /* renamed from: e, reason: collision with root package name */
    public static final boolean f4332e;
    public static final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public static final long f4333g;

    /* renamed from: h, reason: collision with root package name */
    public static final boolean f4334h;

    public class a implements PrivilegedExceptionAction<Unsafe> {
        public static Unsafe a() throws Exception {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }

        @Override // java.security.PrivilegedExceptionAction
        public final /* bridge */ /* synthetic */ Unsafe run() throws Exception {
            return a();
        }
    }

    public static final class b extends e {
        public b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final boolean c(long j10, Object obj) {
            return n1.f4334h ? n1.h(j10, obj) != 0 : n1.i(j10, obj) != 0;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final byte d(long j10, Object obj) {
            return n1.f4334h ? n1.h(j10, obj) : n1.i(j10, obj);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final double e(long j10, Object obj) {
            return Double.longBitsToDouble(h(j10, obj));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final float f(long j10, Object obj) {
            return Float.intBitsToFloat(g(j10, obj));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final void k(Object obj, long j10, boolean z10) {
            if (n1.f4334h) {
                n1.r(obj, j10, z10 ? (byte) 1 : (byte) 0);
            } else {
                n1.s(obj, j10, z10 ? (byte) 1 : (byte) 0);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final void l(Object obj, long j10, byte b10) {
            if (n1.f4334h) {
                n1.r(obj, j10, b10);
            } else {
                n1.s(obj, j10, b10);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final void m(Object obj, long j10, double d10) {
            p(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final void n(Object obj, long j10, float f) {
            o(Float.floatToIntBits(f), j10, obj);
        }
    }

    public static final class c extends e {
        public c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final boolean c(long j10, Object obj) {
            return n1.f4334h ? n1.h(j10, obj) != 0 : n1.i(j10, obj) != 0;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final byte d(long j10, Object obj) {
            return n1.f4334h ? n1.h(j10, obj) : n1.i(j10, obj);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final double e(long j10, Object obj) {
            return Double.longBitsToDouble(h(j10, obj));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final float f(long j10, Object obj) {
            return Float.intBitsToFloat(g(j10, obj));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final void k(Object obj, long j10, boolean z10) {
            if (n1.f4334h) {
                n1.r(obj, j10, z10 ? (byte) 1 : (byte) 0);
            } else {
                n1.s(obj, j10, z10 ? (byte) 1 : (byte) 0);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final void l(Object obj, long j10, byte b10) {
            if (n1.f4334h) {
                n1.r(obj, j10, b10);
            } else {
                n1.s(obj, j10, b10);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final void m(Object obj, long j10, double d10) {
            p(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final void n(Object obj, long j10, float f) {
            o(Float.floatToIntBits(f), j10, obj);
        }
    }

    public static final class d extends e {
        public d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final boolean c(long j10, Object obj) {
            return this.f4335a.getBoolean(obj, j10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final byte d(long j10, Object obj) {
            return this.f4335a.getByte(obj, j10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final double e(long j10, Object obj) {
            return this.f4335a.getDouble(obj, j10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final float f(long j10, Object obj) {
            return this.f4335a.getFloat(obj, j10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final void k(Object obj, long j10, boolean z10) {
            this.f4335a.putBoolean(obj, j10, z10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final void l(Object obj, long j10, byte b10) {
            this.f4335a.putByte(obj, j10, b10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final void m(Object obj, long j10, double d10) {
            this.f4335a.putDouble(obj, j10, d10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.n1.e
        public final void n(Object obj, long j10, float f) {
            this.f4335a.putFloat(obj, j10, f);
        }
    }

    public static abstract class e {

        /* renamed from: a, reason: collision with root package name */
        public final Unsafe f4335a;

        public e(Unsafe unsafe) {
            this.f4335a = unsafe;
        }

        public final int a(Class<?> cls) {
            return this.f4335a.arrayBaseOffset(cls);
        }

        public final int b(Class<?> cls) {
            return this.f4335a.arrayIndexScale(cls);
        }

        public abstract boolean c(long j10, Object obj);

        public abstract byte d(long j10, Object obj);

        public abstract double e(long j10, Object obj);

        public abstract float f(long j10, Object obj);

        public final int g(long j10, Object obj) {
            return this.f4335a.getInt(obj, j10);
        }

        public final long h(long j10, Object obj) {
            return this.f4335a.getLong(obj, j10);
        }

        public final Object i(long j10, Object obj) {
            return this.f4335a.getObject(obj, j10);
        }

        public final long j(Field field) {
            return this.f4335a.objectFieldOffset(field);
        }

        public abstract void k(Object obj, long j10, boolean z10);

        public abstract void l(Object obj, long j10, byte b10);

        public abstract void m(Object obj, long j10, double d10);

        public abstract void n(Object obj, long j10, float f);

        public final void o(int r22, long j10, Object obj) {
            this.f4335a.putInt(obj, j10, r22);
        }

        public final void p(Object obj, long j10, long j11) {
            this.f4335a.putLong(obj, j10, j11);
        }

        public final void q(long j10, Object obj, Object obj2) {
            this.f4335a.putObject(obj, j10, obj2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0261  */
    static {
        /*
            Method dump skipped, instructions count: 613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.n1.<clinit>():void");
    }

    public static <T> T a(Class<T> cls) {
        try {
            return (T) f4329b.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static int b(Class<?> cls) {
        if (f) {
            return f4331d.a(cls);
        }
        return -1;
    }

    public static void c(Class cls) {
        if (f) {
            f4331d.b(cls);
        }
    }

    public static Field d() {
        Field declaredField;
        Field declaredField2;
        if (com.google.crypto.tink.shaded.protobuf.d.a()) {
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

    public static boolean e(Class<?> cls) {
        if (!com.google.crypto.tink.shaded.protobuf.d.a()) {
            return false;
        }
        try {
            Class<?> cls2 = f4330c;
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

    public static boolean f(long j10, Object obj) {
        return f4331d.c(j10, obj);
    }

    public static byte g(long j10, byte[] bArr) {
        return f4331d.d(f4333g + j10, bArr);
    }

    public static byte h(long j10, Object obj) {
        return (byte) ((l((-4) & j10, obj) >>> ((int) (((~j10) & 3) << 3))) & 255);
    }

    public static byte i(long j10, Object obj) {
        return (byte) ((l((-4) & j10, obj) >>> ((int) ((j10 & 3) << 3))) & 255);
    }

    public static double j(long j10, Object obj) {
        return f4331d.e(j10, obj);
    }

    public static float k(long j10, Object obj) {
        return f4331d.f(j10, obj);
    }

    public static int l(long j10, Object obj) {
        return f4331d.g(j10, obj);
    }

    public static long m(long j10, Object obj) {
        return f4331d.h(j10, obj);
    }

    public static Object n(long j10, Object obj) {
        return f4331d.i(j10, obj);
    }

    public static Unsafe o() {
        try {
            return (Unsafe) AccessController.doPrivileged(new a());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void p(Object obj, long j10, boolean z10) {
        f4331d.k(obj, j10, z10);
    }

    public static void q(byte[] bArr, long j10, byte b10) {
        f4331d.l(bArr, f4333g + j10, b10);
    }

    public static void r(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int r22 = l(j11, obj);
        int r52 = ((~((int) j10)) & 3) << 3;
        v(((255 & b10) << r52) | (r22 & (~(255 << r52))), j11, obj);
    }

    public static void s(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int r52 = (((int) j10) & 3) << 3;
        v(((255 & b10) << r52) | (l(j11, obj) & (~(255 << r52))), j11, obj);
    }

    public static void t(Object obj, long j10, double d10) {
        f4331d.m(obj, j10, d10);
    }

    public static void u(Object obj, long j10, float f10) {
        f4331d.n(obj, j10, f10);
    }

    public static void v(int r12, long j10, Object obj) {
        f4331d.o(r12, j10, obj);
    }

    public static void w(Object obj, long j10, long j11) {
        f4331d.p(obj, j10, j11);
    }

    public static void x(long j10, Object obj, Object obj2) {
        f4331d.q(j10, obj, obj2);
    }
}
