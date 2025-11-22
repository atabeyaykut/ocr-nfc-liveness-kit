package com.google.android.gms.internal.vision;

/* loaded from: classes.dex */
public final class d2 extends z1 {
    @Override // com.google.android.gms.internal.vision.z1
    public final void a(long j10, Object obj, Object obj2) {
        r1 r1VarF = (r1) t3.u(j10, obj);
        r1 r1Var = (r1) t3.u(j10, obj2);
        int size = r1VarF.size();
        int size2 = r1Var.size();
        if (size > 0 && size2 > 0) {
            if (!r1VarF.a()) {
                r1VarF = r1VarF.f(size2 + size);
            }
            r1VarF.addAll(r1Var);
        }
        if (size > 0) {
            r1Var = r1VarF;
        }
        t3.j(j10, obj, r1Var);
    }

    @Override // com.google.android.gms.internal.vision.z1
    public final void b(long j10, Object obj) {
        ((r1) t3.u(j10, obj)).b();
    }
}
