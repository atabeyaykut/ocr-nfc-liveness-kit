package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.c0;
import com.google.crypto.tink.shaded.protobuf.q0;
import com.google.crypto.tink.shaded.protobuf.t.a;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.z;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class t<T extends a<T>> {

    /* renamed from: d, reason: collision with root package name */
    public static final t f4358d = new t(0);

    /* renamed from: a, reason: collision with root package name */
    public final h1<T, Object> f4359a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4360b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4361c;

    public interface a<T extends a<T>> extends Comparable<T> {
        x.a D(q0.a aVar, q0 q0Var);

        void f();

        void g();

        void h();

        q1 l();

        void m();
    }

    public t() {
        int r02 = h1.f4271g;
        this.f4359a = new g1(16);
    }

    public static Object b(Object obj) {
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static int c(p1 p1Var, int r22, Object obj) {
        int r23 = l.t(r22);
        if (p1Var == p1.f4343b) {
            r23 *= 2;
        }
        return d(p1Var, obj) + r23;
    }

    public static int d(p1 p1Var, Object obj) {
        switch (p1Var.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                Logger logger = l.f4315b;
                return 8;
            case 1:
                ((Float) obj).floatValue();
                Logger logger2 = l.f4315b;
                return 4;
            case 2:
                return l.x(((Long) obj).longValue());
            case 3:
                return l.x(((Long) obj).longValue());
            case 4:
                return l.k(((Integer) obj).intValue());
            case 5:
            case 15:
                ((Long) obj).longValue();
                Logger logger3 = l.f4315b;
                return 8;
            case 6:
            case 14:
                ((Integer) obj).intValue();
                Logger logger22 = l.f4315b;
                return 4;
            case 7:
                ((Boolean) obj).booleanValue();
                Logger logger4 = l.f4315b;
                return 1;
            case 8:
                if (!(obj instanceof i)) {
                    return l.s((String) obj);
                }
                Logger logger5 = l.f4315b;
                int size = ((i) obj).size();
                return l.v(size) + size;
            case 9:
                Logger logger6 = l.f4315b;
                return ((q0) obj).c();
            case 10:
                if (obj instanceof c0) {
                    return l.m((c0) obj);
                }
                Logger logger7 = l.f4315b;
                int r32 = ((q0) obj).c();
                return l.v(r32) + r32;
            case 11:
                if (obj instanceof i) {
                    Logger logger8 = l.f4315b;
                    int size2 = ((i) obj).size();
                    return l.v(size2) + size2;
                }
                Logger logger9 = l.f4315b;
                int length = ((byte[]) obj).length;
                return l.v(length) + length;
            case 12:
                return l.v(((Integer) obj).intValue());
            case 13:
                return obj instanceof z.a ? l.k(((z.a) obj).f()) : l.k(((Integer) obj).intValue());
            case 16:
                int r33 = ((Integer) obj).intValue();
                return l.v((r33 >> 31) ^ (r33 << 1));
            case 17:
                long jLongValue = ((Long) obj).longValue();
                return l.x((jLongValue >> 63) ^ (jLongValue << 1));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int e(a<?> aVar, Object obj) {
        aVar.h();
        aVar.f();
        aVar.g();
        return c(null, 0, obj);
    }

    public static int g(Map.Entry entry) {
        a aVar = (a) entry.getKey();
        Object value = entry.getValue();
        if (aVar.l() != q1.MESSAGE) {
            return e(aVar, value);
        }
        aVar.g();
        aVar.m();
        boolean z10 = value instanceof c0;
        ((a) entry.getKey()).f();
        if (z10) {
            return l.m((c0) value) + l.t(3) + l.u(2, 0) + (l.t(1) * 2);
        }
        int r52 = l.u(2, 0) + (l.t(1) * 2);
        int r02 = l.t(3);
        int r12 = ((q0) value).c();
        return l.v(r12) + r12 + r02 + r52;
    }

    public static <T extends a<T>> boolean k(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.l() == q1.MESSAGE) {
            key.g();
            Object value = entry.getValue();
            if (!(value instanceof q0)) {
                if (value instanceof c0) {
                    return true;
                }
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            if (!((q0) value).b()) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void o(com.google.crypto.tink.shaded.protobuf.p1 r1, java.lang.Object r2) {
        /*
            java.nio.charset.Charset r0 = com.google.crypto.tink.shaded.protobuf.z.f4405a
            r2.getClass()
            com.google.crypto.tink.shaded.protobuf.q1 r1 = r1.f4345a
            int r1 = r1.ordinal()
            switch(r1) {
                case 0: goto L3a;
                case 1: goto L37;
                case 2: goto L34;
                case 3: goto L31;
                case 4: goto L2e;
                case 5: goto L2b;
                case 6: goto L21;
                case 7: goto L18;
                case 8: goto Lf;
                default: goto Le;
            }
        Le:
            goto L3d
        Lf:
            boolean r1 = r2 instanceof com.google.crypto.tink.shaded.protobuf.q0
            if (r1 != 0) goto L29
            boolean r1 = r2 instanceof com.google.crypto.tink.shaded.protobuf.c0
            if (r1 == 0) goto L3d
            goto L29
        L18:
            boolean r1 = r2 instanceof java.lang.Integer
            if (r1 != 0) goto L29
            boolean r1 = r2 instanceof com.google.crypto.tink.shaded.protobuf.z.a
            if (r1 == 0) goto L3d
            goto L29
        L21:
            boolean r1 = r2 instanceof com.google.crypto.tink.shaded.protobuf.i
            if (r1 != 0) goto L29
            boolean r1 = r2 instanceof byte[]
            if (r1 == 0) goto L3d
        L29:
            r1 = 1
            goto L3e
        L2b:
            boolean r1 = r2 instanceof java.lang.String
            goto L3e
        L2e:
            boolean r1 = r2 instanceof java.lang.Boolean
            goto L3e
        L31:
            boolean r1 = r2 instanceof java.lang.Double
            goto L3e
        L34:
            boolean r1 = r2 instanceof java.lang.Float
            goto L3e
        L37:
            boolean r1 = r2 instanceof java.lang.Long
            goto L3e
        L3a:
            boolean r1 = r2 instanceof java.lang.Integer
            goto L3e
        L3d:
            r1 = 0
        L3e:
            if (r1 == 0) goto L41
            return
        L41:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.String r2 = "Wrong object type used with protocol message reflection."
            r1.<init>(r2)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.t.o(com.google.crypto.tink.shaded.protobuf.p1, java.lang.Object):void");
    }

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final t<T> clone() {
        h1<T, Object> h1Var;
        t<T> tVar = new t<>();
        int r12 = 0;
        while (true) {
            h1Var = this.f4359a;
            if (r12 >= h1Var.d()) {
                break;
            }
            Map.Entry<K, Object> entryC = h1Var.c(r12);
            tVar.n((a) entryC.getKey(), entryC.getValue());
            r12++;
        }
        Iterator it = h1Var.e().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            tVar.n((a) entry.getKey(), entry.getValue());
        }
        tVar.f4361c = this.f4361c;
        return tVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof t) {
            return this.f4359a.equals(((t) obj).f4359a);
        }
        return false;
    }

    public final Object f(T t10) {
        Object obj = this.f4359a.get(t10);
        return obj instanceof c0 ? ((c0) obj).a(null) : obj;
    }

    public final int h() {
        h1<T, Object> h1Var;
        int r02 = 0;
        int r12 = 0;
        while (true) {
            h1Var = this.f4359a;
            if (r02 >= h1Var.d()) {
                break;
            }
            Map.Entry<K, Object> entryC = h1Var.c(r02);
            r12 += e((a) entryC.getKey(), entryC.getValue());
            r02++;
        }
        Iterator it = h1Var.e().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            r12 += e((a) entry.getKey(), entry.getValue());
        }
        return r12;
    }

    public final int hashCode() {
        return this.f4359a.hashCode();
    }

    public final boolean i() {
        return this.f4359a.isEmpty();
    }

    public final boolean j() {
        int r12 = 0;
        while (true) {
            h1<T, Object> h1Var = this.f4359a;
            if (r12 >= h1Var.d()) {
                Iterator it = h1Var.e().iterator();
                while (it.hasNext()) {
                    if (!k((Map.Entry) it.next())) {
                        return false;
                    }
                }
                return true;
            }
            if (!k(h1Var.c(r12))) {
                return false;
            }
            r12++;
        }
    }

    public final Iterator<Map.Entry<T, Object>> l() {
        boolean z10 = this.f4361c;
        h1<T, Object> h1Var = this.f4359a;
        return z10 ? new c0.b(h1Var.entrySet().iterator()) : h1Var.entrySet().iterator();
    }

    public final void m(Map.Entry<T, Object> entry) {
        Object objF;
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof c0) {
            value = ((c0) value).a(null);
        }
        key.g();
        this.f4359a.put(key, (key.l() != q1.MESSAGE || (objF = f(key)) == null) ? b(value) : key.D(((q0) objF).g(), (q0) value).i());
    }

    public final void n(T t10, Object obj) {
        t10.g();
        t10.h();
        o(null, obj);
        if (obj instanceof c0) {
            this.f4361c = true;
        }
        this.f4359a.put(t10, obj);
    }

    public t(int r32) {
        int r33 = h1.f4271g;
        g1 g1Var = new g1(0);
        this.f4359a = g1Var;
        if (!this.f4360b) {
            g1Var.g();
            this.f4360b = true;
        }
        if (this.f4360b) {
            return;
        }
        g1Var.g();
        this.f4360b = true;
    }
}
