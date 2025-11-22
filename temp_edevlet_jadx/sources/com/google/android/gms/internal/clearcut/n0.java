package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.q0;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class n0<FieldDescriptorType extends q0<FieldDescriptorType>> {

    /* renamed from: d, reason: collision with root package name */
    public static final n0 f3234d = new n0(0);

    /* renamed from: a, reason: collision with root package name */
    public final s2 f3235a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3236b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3237c = false;

    public n0() {
        int r02 = r2.f3291g;
        this.f3235a = new s2(16);
    }

    public static int d(m3 m3Var, int r22, Object obj) {
        int r23 = e0.W(r22);
        if (m3Var == m3.f3216l) {
            Charset charset = x0.f3344a;
            r23 <<= 1;
        }
        return i(m3Var, obj) + r23;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0011. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void f(com.google.android.gms.internal.clearcut.m3 r2, java.lang.Object r3) {
        /*
            java.nio.charset.Charset r0 = com.google.android.gms.internal.clearcut.x0.f3344a
            r3.getClass()
            int[] r0 = com.google.android.gms.internal.clearcut.o0.f3250a
            com.google.android.gms.internal.clearcut.r3 r2 = r2.f3225a
            int r2 = r2.ordinal()
            r2 = r0[r2]
            r0 = 1
            r1 = 0
            switch(r2) {
                case 1: goto L41;
                case 2: goto L3e;
                case 3: goto L3b;
                case 4: goto L38;
                case 5: goto L35;
                case 6: goto L32;
                case 7: goto L29;
                case 8: goto L20;
                case 9: goto L15;
                default: goto L14;
            }
        L14:
            goto L44
        L15:
            boolean r2 = r3 instanceof com.google.android.gms.internal.clearcut.x1
            if (r2 != 0) goto L43
            boolean r2 = r3 instanceof com.google.android.gms.internal.clearcut.e1
            if (r2 == 0) goto L1e
            goto L43
        L1e:
            r0 = 0
            goto L43
        L20:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L43
            boolean r2 = r3 instanceof com.google.android.gms.internal.clearcut.y0
            if (r2 == 0) goto L1e
            goto L43
        L29:
            boolean r2 = r3 instanceof com.google.android.gms.internal.clearcut.x
            if (r2 != 0) goto L43
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L1e
            goto L43
        L32:
            boolean r0 = r3 instanceof java.lang.String
            goto L43
        L35:
            boolean r0 = r3 instanceof java.lang.Boolean
            goto L43
        L38:
            boolean r0 = r3 instanceof java.lang.Double
            goto L43
        L3b:
            boolean r0 = r3 instanceof java.lang.Float
            goto L43
        L3e:
            boolean r0 = r3 instanceof java.lang.Long
            goto L43
        L41:
            boolean r0 = r3 instanceof java.lang.Integer
        L43:
            r1 = r0
        L44:
            if (r1 == 0) goto L47
            return
        L47:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Wrong object type used with protocol message reflection."
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.n0.f(com.google.android.gms.internal.clearcut.m3, java.lang.Object):void");
    }

    public static int h(q0<?> q0Var, Object obj) {
        q0Var.k();
        q0Var.c();
        q0Var.j();
        return d(null, 0, obj);
    }

    public static int i(m3 m3Var, Object obj) {
        switch (o0.f3251b[m3Var.ordinal()]) {
            case 1:
                ((Double) obj).doubleValue();
                Logger logger = e0.f3095b;
                return 8;
            case 2:
                ((Float) obj).floatValue();
                Logger logger2 = e0.f3095b;
                return 4;
            case 3:
                return e0.I(((Long) obj).longValue());
            case 4:
                return e0.I(((Long) obj).longValue());
            case 5:
                return e0.X(((Integer) obj).intValue());
            case 6:
            case 15:
                ((Long) obj).longValue();
                Logger logger3 = e0.f3095b;
                return 8;
            case 7:
            case 14:
                ((Integer) obj).intValue();
                Logger logger22 = e0.f3095b;
                return 4;
            case 8:
                ((Boolean) obj).booleanValue();
                Logger logger4 = e0.f3095b;
                return 1;
            case 9:
                Logger logger5 = e0.f3095b;
                return ((x1) obj).s();
            case 10:
                if (obj instanceof e1) {
                    return e0.h((e1) obj);
                }
                Logger logger6 = e0.f3095b;
                int r32 = ((x1) obj).s();
                return e0.Y(r32) + r32;
            case 11:
                if (!(obj instanceof x)) {
                    return e0.O((String) obj);
                }
                Logger logger7 = e0.f3095b;
                int size = ((x) obj).size();
                return e0.Y(size) + size;
            case 12:
                if (obj instanceof x) {
                    Logger logger8 = e0.f3095b;
                    int size2 = ((x) obj).size();
                    return e0.Y(size2) + size2;
                }
                Logger logger9 = e0.f3095b;
                int length = ((byte[]) obj).length;
                return e0.Y(length) + length;
            case 13:
                return e0.Y(((Integer) obj).intValue());
            case 16:
                int r33 = ((Integer) obj).intValue();
                return e0.Y((r33 >> 31) ^ (r33 << 1));
            case 17:
                long jLongValue = ((Long) obj).longValue();
                return e0.I((jLongValue >> 63) ^ (jLongValue << 1));
            case 18:
                return obj instanceof y0 ? e0.X(((y0) obj).c()) : e0.X(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static boolean j(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.i() == r3.MESSAGE) {
            key.j();
            Object value = entry.getValue();
            if (!(value instanceof x1)) {
                if (value instanceof e1) {
                    return true;
                }
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            if (!((x1) value).b()) {
                return false;
            }
        }
        return true;
    }

    public static int l(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (key.i() != r3.MESSAGE) {
            return h(key, value);
        }
        key.j();
        key.s();
        boolean z10 = value instanceof e1;
        entry.getKey().c();
        if (z10) {
            int r22 = e0.N(2, 0) + (e0.W(1) << 1);
            int r52 = e0.W(3);
            int r02 = ((e1) value).a();
            return e0.Y(r02) + r02 + r52 + r22;
        }
        int r23 = e0.N(2, 0) + (e0.W(1) << 1);
        int r53 = e0.W(3);
        int r03 = ((x1) value).s();
        return e0.Y(r03) + r03 + r53 + r23;
    }

    public static Object m(Object obj) {
        if (obj instanceof d2) {
            return ((d2) obj).Z();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public final boolean a() {
        return this.f3235a.isEmpty();
    }

    public final boolean b() {
        int r12 = 0;
        while (true) {
            s2 s2Var = this.f3235a;
            if (r12 >= s2Var.e()) {
                Iterator it = s2Var.f().iterator();
                while (it.hasNext()) {
                    if (!j((Map.Entry) it.next())) {
                        return false;
                    }
                }
                return true;
            }
            if (!j(s2Var.c(r12))) {
                return false;
            }
            r12++;
        }
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> c() {
        boolean z10 = this.f3237c;
        s2 s2Var = this.f3235a;
        return z10 ? new g1(((x2) s2Var.entrySet()).iterator()) : ((x2) s2Var.entrySet()).iterator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        s2 s2Var;
        n0 n0Var = new n0();
        int r12 = 0;
        while (true) {
            s2Var = this.f3235a;
            if (r12 >= s2Var.e()) {
                break;
            }
            Map.Entry entryC = s2Var.c(r12);
            n0Var.e((q0) entryC.getKey(), entryC.getValue());
            r12++;
        }
        for (Map.Entry entry : s2Var.f()) {
            n0Var.e((q0) entry.getKey(), entry.getValue());
        }
        n0Var.f3237c = this.f3237c;
        return n0Var;
    }

    public final void e(FieldDescriptorType fielddescriptortype, Object obj) {
        fielddescriptortype.j();
        fielddescriptortype.k();
        f(null, obj);
        if (obj instanceof e1) {
            this.f3237c = true;
        }
        this.f3235a.put(fielddescriptortype, obj);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof n0) {
            return this.f3235a.equals(((n0) obj).f3235a);
        }
        return false;
    }

    public final int g() {
        s2 s2Var;
        int r02 = 0;
        int r12 = 0;
        while (true) {
            s2Var = this.f3235a;
            if (r02 >= s2Var.e()) {
                break;
            }
            Map.Entry entryC = s2Var.c(r02);
            r12 += h((q0) entryC.getKey(), entryC.getValue());
            r02++;
        }
        for (Map.Entry entry : s2Var.f()) {
            r12 += h((q0) entry.getKey(), entry.getValue());
        }
        return r12;
    }

    public final int hashCode() {
        return this.f3235a.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v13, types: [com.google.android.gms.internal.clearcut.d2] */
    /* JADX WARN: Type inference failed for: r5v9, types: [com.google.android.gms.internal.clearcut.v0, java.lang.Object] */
    public final void k(Map.Entry<FieldDescriptorType, Object> entry) {
        ?? F;
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof e1) {
            int r52 = e1.f3110c;
            throw new NoSuchMethodError();
        }
        key.j();
        r3 r3VarI = key.i();
        r3 r3Var = r3.MESSAGE;
        s2 s2Var = this.f3235a;
        if (r3VarI == r3Var) {
            Object obj = s2Var.get(key);
            if (obj instanceof e1) {
                int r53 = e1.f3110c;
                throw new NoSuchMethodError();
            }
            if (obj != null) {
                if (obj instanceof d2) {
                    F = key.a();
                } else {
                    F = key.p(((x1) obj).p(), (x1) value).f();
                    boolean zI = true;
                    byte bByteValue = ((Byte) F.e(1)).byteValue();
                    if (bByteValue != 1) {
                        if (bByteValue == 0) {
                            zI = false;
                        } else {
                            j2 j2Var = j2.f3165c;
                            j2Var.getClass();
                            zI = j2Var.a(F.getClass()).i(F);
                            F.e(2);
                        }
                    }
                    if (!zI) {
                        throw new z2();
                    }
                }
                s2Var.put(key, F);
                return;
            }
        }
        s2Var.put(key, m(value));
    }

    public n0(int r22) {
        int r02 = r2.f3291g;
        s2 s2Var = new s2(0);
        this.f3235a = s2Var;
        if (this.f3236b) {
            return;
        }
        s2Var.j();
        this.f3236b = true;
    }
}
