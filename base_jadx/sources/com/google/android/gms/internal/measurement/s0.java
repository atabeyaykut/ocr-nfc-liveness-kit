package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class s0 {

    /* renamed from: a, reason: collision with root package name */
    public final t2 f3724a;

    /* renamed from: b, reason: collision with root package name */
    public s3 f3725b;

    /* renamed from: c, reason: collision with root package name */
    public final c f3726c;

    /* renamed from: d, reason: collision with root package name */
    public final qd.f f3727d;

    public s0() {
        t2 t2Var = new t2();
        this.f3724a = t2Var;
        this.f3725b = t2Var.f3771b.a();
        this.f3726c = new c();
        this.f3727d = new qd.f();
        a aVar = new a(0, this);
        w5 w5Var = t2Var.f3773d;
        ((Map) w5Var.f3816a).put("internal.registerCallback", aVar);
        ((Map) w5Var.f3816a).put("internal.eventLogger", new Callable() { // from class: com.google.android.gms.internal.measurement.a0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new s6(this.f3359a.f3726c);
            }
        });
    }

    public final void a(f4 f4Var) throws n1 {
        j jVar;
        t2 t2Var = this.f3724a;
        try {
            this.f3725b = t2Var.f3771b.a();
            if (t2Var.a(this.f3725b, (i4[]) f4Var.t().toArray(new i4[0])) instanceof h) {
                throw new IllegalStateException("Program loading failed");
            }
            for (e4 e4Var : f4Var.r().u()) {
                w6 w6VarT = e4Var.t();
                String strS = e4Var.s();
                Iterator<E> it = w6VarT.iterator();
                while (it.hasNext()) {
                    p pVarA = t2Var.a(this.f3725b, (i4) it.next());
                    if (!(pVarA instanceof m)) {
                        throw new IllegalArgumentException("Invalid rule definition");
                    }
                    s3 s3Var = this.f3725b;
                    if (s3Var.g(strS)) {
                        p pVarD = s3Var.d(strS);
                        if (!(pVarD instanceof j)) {
                            String strValueOf = String.valueOf(strS);
                            throw new IllegalStateException(strValueOf.length() != 0 ? "Invalid function name: ".concat(strValueOf) : new String("Invalid function name: "));
                        }
                        jVar = (j) pVarD;
                    } else {
                        jVar = null;
                    }
                    if (jVar == null) {
                        String strValueOf2 = String.valueOf(strS);
                        throw new IllegalStateException(strValueOf2.length() != 0 ? "Rule function is undefined: ".concat(strValueOf2) : new String("Rule function is undefined: "));
                    }
                    jVar.a(this.f3725b, Collections.singletonList(pVarA));
                }
            }
        } catch (Throwable th2) {
            throw new n1(th2);
        }
    }

    public final boolean b(b bVar) throws n1 {
        c cVar = this.f3726c;
        try {
            cVar.f3404a = bVar;
            cVar.f3405b = bVar.clone();
            cVar.f3406c.clear();
            this.f3724a.f3772c.f("runtime.counter", new i(Double.valueOf(0.0d)));
            this.f3727d.e(this.f3725b.a(), cVar);
            if (!(!cVar.f3405b.equals(cVar.f3404a))) {
                if (!(!cVar.f3406c.isEmpty())) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th2) {
            throw new n1(th2);
        }
    }
}
