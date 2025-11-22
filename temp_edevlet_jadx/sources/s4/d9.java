package s4;

import androidx.annotation.Nullable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class d9 {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public static o4.q f14954a;

    /* renamed from: b, reason: collision with root package name */
    public static final d9 f14955b = new d9();

    public static int b(int r12) {
        return (r12 + 1) * (r12 < 32 ? 4 : 2);
    }

    public static synchronized x8 c(r8 r8Var) {
        if (f14954a == null) {
            f14954a = new o4.q(1);
        }
        return (x8) f14954a.b(r8Var);
    }

    public static int d(@NullableDecl Object obj, @NullableDecl Object obj2, int r11, Object obj3, int[] r13, Object[] objArr, @NullableDecl Object[] objArr2) {
        int r22;
        int r6;
        int r02 = y.a(obj);
        int r12 = r02 & r11;
        int r23 = f(r12, obj3);
        if (r23 != 0) {
            int r42 = ~r11;
            int r03 = r02 & r42;
            int r52 = -1;
            while (true) {
                r22 = r23 - 1;
                r6 = r13[r22];
                if ((r6 & r42) != r03 || !x5.a.A(obj, objArr[r22]) || (objArr2 != null && !x5.a.A(obj2, objArr2[r22]))) {
                    int r53 = r6 & r11;
                    if (r53 == 0) {
                        break;
                    }
                    r52 = r22;
                    r23 = r53;
                } else {
                    break;
                }
            }
            int r92 = r6 & r11;
            if (r52 == -1) {
                h(r12, r92, obj3);
            } else {
                r13[r52] = (r92 & r11) | (r13[r52] & r42);
            }
            return r22;
        }
        return -1;
    }

    public static synchronized x8 e(String str) {
        x1 x1Var;
        x1Var = new x1();
        if (str == null) {
            throw new NullPointerException("Null libraryName");
        }
        x1Var.f15222b = str;
        x1Var.f15223c = Boolean.TRUE;
        x1Var.f15221a = 1;
        return c(x1Var.a());
    }

    public static int f(int r12, Object obj) {
        return obj instanceof byte[] ? ((byte[]) obj)[r12] & 255 : obj instanceof short[] ? (char) ((short[]) obj)[r12] : ((int[]) obj)[r12];
    }

    public static Object g(int r32) {
        if (r32 < 2 || r32 > 1073741824 || Integer.highestOneBit(r32) != r32) {
            throw new IllegalArgumentException(androidx.appcompat.widget.v.c(52, "must be power of 2 between 2^1 and 2^30: ", r32));
        }
        return r32 <= 256 ? new byte[r32] : r32 <= 65536 ? new short[r32] : new int[r32];
    }

    public static void h(int r12, int r22, Object obj) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[r12] = (byte) r22;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[r12] = (short) r22;
        } else {
            ((int[]) obj)[r12] = r22;
        }
    }

    public void a(u6.a aVar) {
        aVar.a(b7.class, g4.f14987a);
        aVar.a(n8.class, r5.f15149a);
        aVar.a(c7.class, h4.f15022a);
        aVar.a(f7.class, j4.f15050a);
        aVar.a(d7.class, i4.f15037a);
        aVar.a(e7.class, l4.f15060a);
        aVar.a(i6.class, s3.f15169a);
        aVar.a(h6.class, r3.f15147a);
        aVar.a(s6.class, a4.f14879a);
        aVar.a(k8.class, p5.f15124a);
        aVar.a(g6.class, q3.f15138a);
        aVar.a(f6.class, p3.f15122a);
        aVar.a(m7.class, r4.f15148a);
        aVar.a(q8.class, x3.f15229a);
        aVar.a(q6.class, y3.f15245a);
        aVar.a(o6.class, w3.f15210a);
        aVar.a(n7.class, s4.f15170a);
        aVar.a(h8.class, m5.f15077a);
        aVar.a(i8.class, n5.f15100a);
        aVar.a(k7.class, p4.f15123a);
        aVar.a(p8.class, b3.f14915a);
        aVar.a(l7.class, q4.f15139a);
        aVar.a(o7.class, t4.f15179a);
        aVar.a(r7.class, w4.f15211a);
        aVar.a(q7.class, v4.f15200a);
        aVar.a(p7.class, u4.f15190a);
        aVar.a(w7.class, b5.f14917a);
        aVar.a(x7.class, c5.f14940a);
        aVar.a(z7.class, e5.f14966a);
        aVar.a(y7.class, d5.f14953a);
        aVar.a(j7.class, o4.f15119a);
        aVar.a(a8.class, f5.f14976a);
        aVar.a(b8.class, g5.f15017a);
        aVar.a(c8.class, h5.f15023a);
        aVar.a(d8.class, i5.f15038a);
        aVar.a(f8.class, j5.f15051a);
        aVar.a(e8.class, k5.f15056a);
        aVar.a(v7.class, x4.f15230a);
        aVar.a(w6.class, e4.f14965a);
        aVar.a(t7.class, z4.f15264a);
        aVar.a(s7.class, y4.f15250a);
        aVar.a(u7.class, a5.f14889a);
        aVar.a(j8.class, o5.f15120a);
        aVar.a(o8.class, s5.f15171a);
        aVar.a(x5.class, g3.f14986a);
        aVar.a(v5.class, e3.f14964a);
        aVar.a(u5.class, d3.f14951a);
        aVar.a(w5.class, f3.f14974a);
        aVar.a(z5.class, i3.f15036a);
        aVar.a(y5.class, h3.f15021a);
        aVar.a(a6.class, k3.f15055a);
        aVar.a(b6.class, l3.f15059a);
        aVar.a(c6.class, m3.f15075a);
        aVar.a(d6.class, n3.f15098a);
        aVar.a(e6.class, o3.f15118a);
        aVar.a(b2.class, y2.f15244a);
        aVar.a(d2.class, a3.f14878a);
        aVar.a(c2.class, z2.f15262a);
        aVar.a(u6.class, c4.f14939a);
        aVar.a(j6.class, t3.f15178a);
        aVar.a(h1.class, f2.f14973a);
        aVar.a(g1.class, g2.f14985a);
        aVar.a(m6.class, u3.f15184a);
        aVar.a(k1.class, h2.f15020a);
        aVar.a(j1.class, j2.f15044a);
        aVar.a(o1.class, m2.f15074a);
        aVar.a(n1.class, n2.f15097a);
        aVar.a(m1.class, k2.f15054a);
        aVar.a(l1.class, l2.f15058a);
        aVar.a(q1.class, o2.f15117a);
        aVar.a(p1.class, p2.f15121a);
        aVar.a(s1.class, q2.f15137a);
        aVar.a(r1.class, r2.f15146a);
        aVar.a(a2.class, w2.f15206a);
        aVar.a(z1.class, x2.f15224a);
        aVar.a(u1.class, s2.f15168a);
        aVar.a(t1.class, t2.f15177a);
        aVar.a(w1.class, u2.f15183a);
        aVar.a(v1.class, v2.f15198a);
        aVar.a(l8.class, q5.f15140a);
        aVar.a(t6.class, b4.f14916a);
        aVar.a(x6.class, f4.f14975a);
        aVar.a(t5.class, c3.f14938a);
        aVar.a(r6.class, z3.f15263a);
        aVar.a(v6.class, d4.f14952a);
        aVar.a(n6.class, v3.f15199a);
        aVar.a(i7.class, n4.f15099a);
        aVar.a(h7.class, m4.f15076a);
        aVar.a(f1.class, e2.f14963a);
    }
}
