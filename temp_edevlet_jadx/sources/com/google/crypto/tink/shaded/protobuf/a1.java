package com.google.crypto.tink.shaded.protobuf;

import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class a1 {

    /* renamed from: c, reason: collision with root package name */
    public static final a1 f4224c = new a1();

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f4226b = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final i0 f4225a = new i0();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10, types: [com.google.crypto.tink.shaded.protobuf.u0] */
    /* JADX WARN: Type inference failed for: r4v8, types: [com.google.crypto.tink.shaded.protobuf.u0] */
    public final <T> e1<T> a(Class<T> cls) {
        v0 v0Var;
        g0 g0Var;
        j1<?, ?> j1Var;
        q<?> qVar;
        l0 l0Var;
        t0 t0VarW;
        t0 u0Var;
        Class<?> cls2;
        Charset charset = z.f4405a;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f4226b;
        e1<T> e1Var = (e1) concurrentHashMap.get(cls);
        if (e1Var != null) {
            return e1Var;
        }
        i0 i0Var = this.f4225a;
        i0Var.getClass();
        Class<?> cls3 = f1.f4259a;
        if (!x.class.isAssignableFrom(cls) && (cls2 = f1.f4259a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
        o0 o0VarA = i0Var.f4293a.a(cls);
        if (o0VarA.a()) {
            if (x.class.isAssignableFrom(cls)) {
                u0Var = new u0(f1.f4262d, s.f4356a, o0VarA.b());
            } else {
                j1<?, ?> j1Var2 = f1.f4260b;
                q<?> qVar2 = s.f4357b;
                if (qVar2 == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                u0Var = new u0(j1Var2, qVar2, o0VarA.b());
            }
            t0VarW = u0Var;
        } else {
            if (x.class.isAssignableFrom(cls)) {
                if (o0VarA.c() == 1) {
                    v0Var = x0.f4402b;
                    g0Var = g0.f4264b;
                    j1Var = f1.f4262d;
                    qVar = s.f4356a;
                } else {
                    v0Var = x0.f4402b;
                    g0Var = g0.f4264b;
                    j1Var = f1.f4262d;
                    qVar = null;
                }
                l0Var = n0.f4327b;
            } else {
                if (o0VarA.c() == 1) {
                    v0Var = x0.f4401a;
                    g0Var = g0.f4263a;
                    j1<?, ?> j1Var3 = f1.f4260b;
                    q<?> qVar3 = s.f4357b;
                    if (qVar3 == null) {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                    j1Var = j1Var3;
                    qVar = qVar3;
                } else {
                    v0Var = x0.f4401a;
                    g0Var = g0.f4263a;
                    j1Var = f1.f4261c;
                    qVar = null;
                }
                l0Var = n0.f4326a;
            }
            v0 v0Var2 = v0Var;
            g0 g0Var2 = g0Var;
            j1<?, ?> j1Var4 = j1Var;
            q<?> qVar4 = qVar;
            l0 l0Var2 = l0Var;
            int[] r22 = t0.f4362r;
            if (!(o0VarA instanceof c1)) {
                throw null;
            }
            t0VarW = t0.w((c1) o0VarA, v0Var2, g0Var2, j1Var4, qVar4, l0Var2);
        }
        e1<T> e1Var2 = (e1) concurrentHashMap.putIfAbsent(cls, t0VarW);
        return e1Var2 != null ? e1Var2 : t0VarW;
    }
}
