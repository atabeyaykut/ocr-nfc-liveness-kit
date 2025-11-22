package com.google.android.gms.internal.clearcut;

import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class o1 implements p2 {

    /* renamed from: b, reason: collision with root package name */
    public static final p1 f3252b = new p1();

    /* renamed from: a, reason: collision with root package name */
    public final w1 f3253a;

    public o1() {
        w1 w1Var;
        w1[] w1VarArr = new w1[2];
        w1VarArr[0] = u0.f3319a;
        try {
            w1Var = (w1) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            w1Var = f3252b;
        }
        w1VarArr[1] = w1Var;
        q1 q1Var = new q1(w1VarArr);
        Charset charset = x0.f3344a;
        this.f3253a = q1Var;
    }

    @Override // com.google.android.gms.internal.clearcut.p2
    public final <T> o2<T> a(Class<T> cls) {
        e2 e2Var;
        j0<?> j0Var;
        k1 k1Var;
        a3<?, ?> a3Var;
        a3<?, ?> a3Var2;
        s1 s1Var;
        j0<?> j0Var2;
        k0 k0Var;
        c3 c3Var;
        Class<?> cls2;
        Class<?> cls3 = q2.f3269a;
        if (!v0.class.isAssignableFrom(cls) && (cls2 = q2.f3269a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
        v1 v1VarA = this.f3253a.a(cls);
        boolean zB = v1VarA.b();
        boolean zIsAssignableFrom = v0.class.isAssignableFrom(cls);
        if (zB) {
            if (zIsAssignableFrom) {
                return new c2(q2.f3272d, m0.f3182a, v1VarA.c());
            }
            a3<?, ?> a3Var3 = q2.f3270b;
            j0<?> j0Var3 = m0.f3183b;
            if (j0Var3 != null) {
                return new c2(a3Var3, j0Var3, v1VarA.c());
            }
            throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
        }
        if (zIsAssignableFrom) {
            if (v1VarA.a() == 1) {
                e2Var = g2.f3140b;
                k1Var = k1.f3169b;
                c3Var = q2.f3272d;
                k0Var = m0.f3182a;
            } else {
                e2Var = g2.f3140b;
                k0Var = null;
                k1Var = k1.f3169b;
                c3Var = q2.f3272d;
            }
            a3Var2 = c3Var;
            j0Var2 = k0Var;
            s1Var = u1.f3321b;
        } else {
            if (v1VarA.a() == 1) {
                e2Var = g2.f3139a;
                k1Var = k1.f3168a;
                a3Var = q2.f3270b;
                j0Var = m0.f3183b;
                if (j0Var == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
            } else {
                e2Var = g2.f3139a;
                j0Var = null;
                k1Var = k1.f3168a;
                a3Var = q2.f3271c;
            }
            a3Var2 = a3Var;
            s1Var = u1.f3320a;
            j0Var2 = j0Var;
        }
        return b2.p(v1VarA, e2Var, k1Var, a3Var2, j0Var2, s1Var);
    }
}
