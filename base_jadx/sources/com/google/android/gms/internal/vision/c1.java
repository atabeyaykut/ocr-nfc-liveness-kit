package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.e1;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class c1<T extends e1<T>> {

    /* renamed from: d, reason: collision with root package name */
    public static final c1 f3913d = new c1(0);

    /* renamed from: a, reason: collision with root package name */
    public final g3<T, Object> f3914a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3915b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3916c;

    public c1() {
        int r02 = g3.f3966g;
        this.f3914a = new f3(16);
    }

    public static int a(c4 c4Var, Object obj) {
        switch (b1.f3905b[c4Var.ordinal()]) {
            case 1:
                ((Double) obj).doubleValue();
                Logger logger = t0.f4085b;
                return 8;
            case 2:
                ((Float) obj).floatValue();
                Logger logger2 = t0.f4085b;
                return 4;
            case 3:
                return t0.H(((Long) obj).longValue());
            case 4:
                return t0.H(((Long) obj).longValue());
            case 5:
                return t0.J(((Integer) obj).intValue());
            case 6:
            case 15:
                ((Long) obj).longValue();
                Logger logger3 = t0.f4085b;
                return 8;
            case 7:
            case 14:
                ((Integer) obj).intValue();
                Logger logger22 = t0.f4085b;
                return 4;
            case 8:
                ((Boolean) obj).booleanValue();
                Logger logger4 = t0.f4085b;
                return 1;
            case 9:
                Logger logger5 = t0.f4085b;
                return ((n2) obj).r();
            case 10:
                if (!(obj instanceof u1)) {
                    Logger logger6 = t0.f4085b;
                    int r32 = ((n2) obj).r();
                    return t0.O(r32) + r32;
                }
                u1 u1Var = (u1) obj;
                Logger logger7 = t0.f4085b;
                int r33 = u1Var.f4124b != null ? u1Var.f4124b.x() : u1Var.f4123a != null ? u1Var.f4123a.r() : 0;
                return t0.O(r33) + r33;
            case 11:
                if (!(obj instanceof p0)) {
                    return t0.s((String) obj);
                }
                Logger logger8 = t0.f4085b;
                int r34 = ((p0) obj).x();
                return t0.O(r34) + r34;
            case 12:
                if (obj instanceof p0) {
                    Logger logger9 = t0.f4085b;
                    int r35 = ((p0) obj).x();
                    return t0.O(r35) + r35;
                }
                Logger logger10 = t0.f4085b;
                int length = ((byte[]) obj).length;
                return t0.O(length) + length;
            case 13:
                return t0.O(((Integer) obj).intValue());
            case 16:
                int r36 = ((Integer) obj).intValue();
                return t0.O((r36 >> 31) ^ (r36 << 1));
            case 17:
                long jLongValue = ((Long) obj).longValue();
                return t0.H((jLongValue >> 63) ^ (jLongValue << 1));
            case 18:
                return obj instanceof l1 ? t0.J(((l1) obj).a()) : t0.J(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static Object c(Object obj) {
        if (obj instanceof v2) {
            return ((v2) obj).a();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static <T extends e1<T>> boolean e(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.c() == f4.MESSAGE) {
            key.d();
            Object value = entry.getValue();
            if (!(value instanceof n2)) {
                if (value instanceof u1) {
                    return true;
                }
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            if (!((n2) value).f()) {
                return false;
            }
        }
        return true;
    }

    public static int g(e1<?> e1Var, Object obj) {
        e1Var.b();
        e1Var.mo29a();
        e1Var.d();
        int r22 = t0.F(0);
        if (c4.f3930k == null) {
            n2 n2Var = (n2) obj;
            if (n2Var instanceof h0) {
            }
            r22 <<= 1;
        }
        return a(null, obj) + r22;
    }

    public static int h(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.c() != f4.MESSAGE) {
            return g(key, value);
        }
        key.d();
        key.e();
        boolean z10 = value instanceof u1;
        entry.getKey().mo29a();
        int r22 = 0;
        if (!z10) {
            int r23 = t0.N(2, 0) + (t0.O(8) << 1);
            int r52 = t0.O(24);
            int r02 = ((n2) value).r();
            return t0.O(r02) + r02 + r52 + r23;
        }
        u1 u1Var = (u1) value;
        int r32 = t0.N(2, 0) + (t0.O(8) << 1);
        int r53 = t0.O(24);
        if (u1Var.f4124b != null) {
            r22 = u1Var.f4124b.x();
        } else if (u1Var.f4123a != null) {
            r22 = u1Var.f4123a.r();
        }
        return t0.O(r22) + r22 + r53 + r32;
    }

    public static void j(T t10, Object obj) {
        t10.b();
        Charset charset = m1.f4035a;
        obj.getClass();
        int[] r02 = b1.f3904a;
        throw null;
    }

    public final Object b(T t10) {
        Object obj = this.f3914a.get(t10);
        if (!(obj instanceof u1)) {
            return obj;
        }
        int r22 = u1.f4103c;
        throw new NoSuchMethodError();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        g3<T, Object> g3Var;
        c1 c1Var = new c1();
        int r12 = 0;
        while (true) {
            g3Var = this.f3914a;
            if (r12 >= g3Var.e()) {
                break;
            }
            Map.Entry<K, Object> entryD = g3Var.d(r12);
            c1Var.d((e1) entryD.getKey(), entryD.getValue());
            r12++;
        }
        Iterator it = g3Var.g().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            c1Var.d((e1) entry.getKey(), entry.getValue());
        }
        c1Var.f3916c = this.f3916c;
        return c1Var;
    }

    public final void d(T t10, Object obj) {
        t10.d();
        j(t10, obj);
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c1) {
            return this.f3914a.equals(((c1) obj).f3914a);
        }
        return false;
    }

    public final void f(Map.Entry<T, Object> entry) {
        Object objB;
        Object objK;
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof u1) {
            int r52 = u1.f4103c;
            throw new NoSuchMethodError();
        }
        key.d();
        f4 f4VarC = key.c();
        f4 f4Var = f4.MESSAGE;
        g3<T, Object> g3Var = this.f3914a;
        if (f4VarC != f4Var || (objB = b(key)) == null) {
            g3Var.put(key, c(value));
            return;
        }
        if (objB instanceof v2) {
            objK = key.a();
        } else {
            objK = key.U(((n2) objB).g(), (n2) value).k();
        }
        g3Var.put(key, objK);
    }

    public final int hashCode() {
        return this.f3914a.hashCode();
    }

    public final Iterator<Map.Entry<T, Object>> i() {
        boolean z10 = this.f3916c;
        g3<T, Object> g3Var = this.f3914a;
        return z10 ? new v1(g3Var.entrySet().iterator()) : g3Var.entrySet().iterator();
    }

    public final boolean k() {
        int r12 = 0;
        while (true) {
            g3<T, Object> g3Var = this.f3914a;
            if (r12 >= g3Var.e()) {
                Iterator it = g3Var.g().iterator();
                while (it.hasNext()) {
                    if (!e((Map.Entry) it.next())) {
                        return false;
                    }
                }
                return true;
            }
            if (!e(g3Var.d(r12))) {
                return false;
            }
            r12++;
        }
    }

    public c1(int r32) {
        int r33 = g3.f3966g;
        f3 f3Var = new f3(0);
        this.f3914a = f3Var;
        if (!this.f3915b) {
            f3Var.c();
            this.f3915b = true;
        }
        if (this.f3915b) {
            return;
        }
        f3Var.c();
        this.f3915b = true;
    }
}
