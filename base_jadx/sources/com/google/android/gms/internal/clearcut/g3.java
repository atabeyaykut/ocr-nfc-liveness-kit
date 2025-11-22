package com.google.android.gms.internal.clearcut;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class g3 {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f3141a = Logger.getLogger(g3.class.getName());

    /* renamed from: b, reason: collision with root package name */
    public static final Unsafe f3142b;

    /* renamed from: c, reason: collision with root package name */
    public static final Class<?> f3143c;

    /* renamed from: d, reason: collision with root package name */
    public static final d f3144d;

    /* renamed from: e, reason: collision with root package name */
    public static final boolean f3145e;
    public static final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public static final long f3146g;

    /* renamed from: h, reason: collision with root package name */
    public static final long f3147h;

    /* renamed from: i, reason: collision with root package name */
    public static final boolean f3148i;

    public static final class a extends d {
        public a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final void b(long j10, byte b10) {
            Memory.pokeByte((int) (j10 & (-1)), b10);
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final void c(Object obj, long j10, double d10) {
            e(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final void d(Object obj, long j10, float f) {
            h(Float.floatToIntBits(f), j10, obj);
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final void f(Object obj, long j10, boolean z10) {
            if (g3.f3148i) {
                g3.c(obj, j10, z10 ? (byte) 1 : (byte) 0);
            } else {
                g3.k(obj, j10, z10 ? (byte) 1 : (byte) 0);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final void g(byte[] bArr, long j10, long j11, long j12) {
            Memory.pokeByteArray((int) (j11 & (-1)), bArr, (int) j10, (int) j12);
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final void i(Object obj, long j10, byte b10) {
            if (g3.f3148i) {
                g3.c(obj, j10, b10);
            } else {
                g3.k(obj, j10, b10);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final boolean l(long j10, Object obj) {
            return g3.f3148i ? g3.x(j10, obj) != 0 : g3.y(j10, obj) != 0;
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final float m(long j10, Object obj) {
            return Float.intBitsToFloat(j(j10, obj));
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final double n(long j10, Object obj) {
            return Double.longBitsToDouble(k(j10, obj));
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final byte o(long j10, Object obj) {
            return g3.f3148i ? g3.x(j10, obj) : g3.y(j10, obj);
        }
    }

    public static final class b extends d {
        public b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final void b(long j10, byte b10) {
            Memory.pokeByte(j10, b10);
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final void c(Object obj, long j10, double d10) {
            e(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final void d(Object obj, long j10, float f) {
            h(Float.floatToIntBits(f), j10, obj);
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final void f(Object obj, long j10, boolean z10) {
            if (g3.f3148i) {
                g3.c(obj, j10, z10 ? (byte) 1 : (byte) 0);
            } else {
                g3.k(obj, j10, z10 ? (byte) 1 : (byte) 0);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final void g(byte[] bArr, long j10, long j11, long j12) {
            Memory.pokeByteArray(j11, bArr, (int) j10, (int) j12);
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final void i(Object obj, long j10, byte b10) {
            if (g3.f3148i) {
                g3.c(obj, j10, b10);
            } else {
                g3.k(obj, j10, b10);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final boolean l(long j10, Object obj) {
            return g3.f3148i ? g3.x(j10, obj) != 0 : g3.y(j10, obj) != 0;
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final float m(long j10, Object obj) {
            return Float.intBitsToFloat(j(j10, obj));
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final double n(long j10, Object obj) {
            return Double.longBitsToDouble(k(j10, obj));
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final byte o(long j10, Object obj) {
            return g3.f3148i ? g3.x(j10, obj) : g3.y(j10, obj);
        }
    }

    public static final class c extends d {
        public c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final void b(long j10, byte b10) {
            this.f3149a.putByte(j10, b10);
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final void c(Object obj, long j10, double d10) {
            this.f3149a.putDouble(obj, j10, d10);
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final void d(Object obj, long j10, float f) {
            this.f3149a.putFloat(obj, j10, f);
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final void f(Object obj, long j10, boolean z10) {
            this.f3149a.putBoolean(obj, j10, z10);
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final void g(byte[] bArr, long j10, long j11, long j12) {
            this.f3149a.copyMemory(bArr, g3.f3146g + j10, (Object) null, j11, j12);
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final void i(Object obj, long j10, byte b10) {
            this.f3149a.putByte(obj, j10, b10);
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final boolean l(long j10, Object obj) {
            return this.f3149a.getBoolean(obj, j10);
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final float m(long j10, Object obj) {
            return this.f3149a.getFloat(obj, j10);
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final double n(long j10, Object obj) {
            return this.f3149a.getDouble(obj, j10);
        }

        @Override // com.google.android.gms.internal.clearcut.g3.d
        public final byte o(long j10, Object obj) {
            return this.f3149a.getByte(obj, j10);
        }
    }

    public static abstract class d {

        /* renamed from: a, reason: collision with root package name */
        public final Unsafe f3149a;

        public d(Unsafe unsafe) {
            this.f3149a = unsafe;
        }

        public final long a(Field field) {
            return this.f3149a.objectFieldOffset(field);
        }

        public abstract void b(long j10, byte b10);

        public abstract void c(Object obj, long j10, double d10);

        public abstract void d(Object obj, long j10, float f);

        public final void e(Object obj, long j10, long j11) {
            this.f3149a.putLong(obj, j10, j11);
        }

        public abstract void f(Object obj, long j10, boolean z10);

        public abstract void g(byte[] bArr, long j10, long j11, long j12);

        public final void h(int r22, long j10, Object obj) {
            this.f3149a.putInt(obj, j10, r22);
        }

        public abstract void i(Object obj, long j10, byte b10);

        public final int j(long j10, Object obj) {
            return this.f3149a.getInt(obj, j10);
        }

        public final long k(long j10, Object obj) {
            return this.f3149a.getLong(obj, j10);
        }

        public abstract boolean l(long j10, Object obj);

        public abstract float m(long j10, Object obj);

        public abstract double n(long j10, Object obj);

        public abstract byte o(long j10, Object obj);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(25:0|2|(2:5|(1:(1:8)(1:(1:10)(1:11)))(1:12))(0)|13|(1:15)(6:87|16|17|85|18|(20:21|(1:23)(1:24)|25|32|(1:34)(18:79|35|(1:37)(4:38|39|89|40)|41|48|(1:54)(1:53)|55|81|56|57|83|58|(1:66)(1:65)|(1:71)|72|(1:74)(1:75)|76|77)|47|48|(2:50|54)(0)|55|81|56|57|83|58|(2:63|66)(0)|(2:68|71)|72|(0)(0)|76|77))|20|31|32|(0)(0)|47|48|(0)(0)|55|81|56|57|83|58|(0)(0)|(0)|72|(0)(0)|76|77|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0292, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0120 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 696
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.g3.<clinit>():void");
    }

    public static byte a(long j10, byte[] bArr) {
        return f3144d.o(f3146g + j10, bArr);
    }

    public static void b(long j10, byte b10) {
        f3144d.b(j10, b10);
    }

    public static void c(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int r22 = r(j11, obj);
        int r52 = ((~((int) j10)) & 3) << 3;
        i(((255 & b10) << r52) | (r22 & (~(255 << r52))), j11, obj);
    }

    public static void d(Object obj, long j10, double d10) {
        f3144d.c(obj, j10, d10);
    }

    public static void e(Object obj, long j10, float f10) {
        f3144d.d(obj, j10, f10);
    }

    public static void f(Object obj, long j10, long j11) {
        f3144d.e(obj, j10, j11);
    }

    public static void g(Object obj, long j10, boolean z10) {
        f3144d.f(obj, j10, z10);
    }

    public static void h(byte[] bArr, long j10, byte b10) {
        f3144d.i(bArr, f3146g + j10, b10);
    }

    public static void i(int r12, long j10, Object obj) {
        f3144d.h(r12, j10, obj);
    }

    public static void j(long j10, Object obj, Object obj2) {
        f3144d.f3149a.putObject(obj, j10, obj2);
    }

    public static void k(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int r52 = (((int) j10) & 3) << 3;
        i(((255 & b10) << r52) | (r(j11, obj) & (~(255 << r52))), j11, obj);
    }

    public static Unsafe l() {
        try {
            return (Unsafe) AccessController.doPrivileged(new h3());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Field m() {
        Field declaredField;
        Field declaredField2;
        if (r.a()) {
            try {
                declaredField2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
                declaredField2.setAccessible(true);
            } catch (Throwable unused) {
                declaredField2 = null;
            }
            if (declaredField2 != null) {
                return declaredField2;
            }
        }
        try {
            declaredField = Buffer.class.getDeclaredField("address");
            declaredField.setAccessible(true);
        } catch (Throwable unused2) {
            declaredField = null;
        }
        if (declaredField == null || declaredField.getType() != Long.TYPE) {
            return null;
        }
        return declaredField;
    }

    public static int o(Class<?> cls) {
        if (f) {
            return f3144d.f3149a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static void p(Class cls) {
        if (f) {
            f3144d.f3149a.arrayIndexScale(cls);
        }
    }

    public static boolean q(Class<?> cls) {
        if (!r.a()) {
            return false;
        }
        try {
            Class<?> cls2 = f3143c;
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

    public static int r(long j10, Object obj) {
        return f3144d.j(j10, obj);
    }

    public static long s(long j10, Object obj) {
        return f3144d.k(j10, obj);
    }

    public static boolean t(long j10, Object obj) {
        return f3144d.l(j10, obj);
    }

    public static float u(long j10, Object obj) {
        return f3144d.m(j10, obj);
    }

    public static double v(long j10, Object obj) {
        return f3144d.n(j10, obj);
    }

    public static Object w(long j10, Object obj) {
        return f3144d.f3149a.getObject(obj, j10);
    }

    public static byte x(long j10, Object obj) {
        return (byte) (r((-4) & j10, obj) >>> ((int) (((~j10) & 3) << 3)));
    }

    public static byte y(long j10, Object obj) {
        return (byte) (r((-4) & j10, obj) >>> ((int) ((j10 & 3) << 3)));
    }
}
