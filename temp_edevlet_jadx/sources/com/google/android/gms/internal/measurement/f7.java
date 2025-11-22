package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class f7 extends g7 {
    @Override // com.google.android.gms.internal.measurement.g7
    public final void a(long j10, Object obj) {
        ((w6) y8.j(j10, obj)).b();
    }

    @Override // com.google.android.gms.internal.measurement.g7
    public final void b(long j10, Object obj, Object obj2) {
        w6 w6VarV = (w6) y8.j(j10, obj);
        w6 w6Var = (w6) y8.j(j10, obj2);
        int size = w6VarV.size();
        int size2 = w6Var.size();
        if (size > 0 && size2 > 0) {
            if (!w6VarV.c()) {
                w6VarV = w6VarV.v(size2 + size);
            }
            w6VarV.addAll(w6Var);
        }
        if (size > 0) {
            w6Var = w6VarV;
        }
        y8.r(j10, obj, w6Var);
    }
}
