package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
public final class m1 extends k1 {
    @Override // com.google.android.gms.internal.clearcut.k1
    public final void a(long j10, Object obj) {
        ((a1) g3.w(j10, obj)).s();
    }

    @Override // com.google.android.gms.internal.clearcut.k1
    public final void b(long j10, Object obj, Object obj2) {
        a1 a1VarW = (a1) g3.w(j10, obj);
        a1 a1Var = (a1) g3.w(j10, obj2);
        int size = a1VarW.size();
        int size2 = a1Var.size();
        if (size > 0 && size2 > 0) {
            if (!a1VarW.q()) {
                a1VarW = a1VarW.W(size2 + size);
            }
            a1VarW.addAll(a1Var);
        }
        if (size > 0) {
            a1Var = a1VarW;
        }
        g3.j(j10, obj, a1Var);
    }
}
