package com.google.android.gms.internal.measurement;

import java.util.Map;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class t2 {

    /* renamed from: a, reason: collision with root package name */
    public final x f3770a;

    /* renamed from: b, reason: collision with root package name */
    public final s3 f3771b;

    /* renamed from: c, reason: collision with root package name */
    public final s3 f3772c;

    /* renamed from: d, reason: collision with root package name */
    public final w5 f3773d;

    public t2() {
        x xVar = new x(0);
        this.f3770a = xVar;
        s3 s3Var = new s3((s3) null, xVar);
        this.f3772c = s3Var;
        this.f3771b = s3Var.a();
        w5 w5Var = new w5();
        this.f3773d = w5Var;
        s3Var.f("require", new rc(w5Var));
        ((Map) w5Var.f3816a).put("internal.platform", new Callable() { // from class: com.google.android.gms.internal.measurement.a2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new lb();
            }
        });
        s3Var.f("runtime.counter", new i(Double.valueOf(0.0d)));
    }

    public final p a(s3 s3Var, i4... i4VarArr) {
        p pVarX0 = p.f3668i;
        for (i4 i4Var : i4VarArr) {
            pVarX0 = b8.f.x0(i4Var);
            c5.w.U(this.f3772c);
            if ((pVarX0 instanceof q) || (pVarX0 instanceof o)) {
                pVarX0 = this.f3770a.a(s3Var, pVarX0);
            }
        }
        return pVarX0;
    }
}
