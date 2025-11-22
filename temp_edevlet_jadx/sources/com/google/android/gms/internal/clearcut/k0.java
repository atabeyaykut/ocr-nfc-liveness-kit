package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.v0;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes.dex */
public final class k0 extends j0<v0.d> {
    @Override // com.google.android.gms.internal.clearcut.j0
    public final n0<v0.d> a(Object obj) {
        return ((v0.c) obj).zzjv;
    }

    @Override // com.google.android.gms.internal.clearcut.j0
    public final void b(Map.Entry entry) {
        ((v0.d) entry.getKey()).getClass();
    }

    @Override // com.google.android.gms.internal.clearcut.j0
    public final void c(Map.Entry entry) throws IOException {
        v0.d dVar = (v0.d) entry.getKey();
        int[] r02 = l0.f3172a;
        dVar.getClass();
        throw null;
    }

    @Override // com.google.android.gms.internal.clearcut.j0
    public final n0<v0.d> d(Object obj) {
        v0.c cVar = (v0.c) obj;
        n0<v0.d> n0Var = cVar.zzjv;
        if (!n0Var.f3236b) {
            return n0Var;
        }
        n0<v0.d> n0Var2 = (n0) n0Var.clone();
        cVar.zzjv = n0Var2;
        return n0Var2;
    }

    @Override // com.google.android.gms.internal.clearcut.j0
    public final void e(Object obj) {
        n0<v0.d> n0Var = ((v0.c) obj).zzjv;
        if (n0Var.f3236b) {
            return;
        }
        n0Var.f3235a.j();
        n0Var.f3236b = true;
    }

    @Override // com.google.android.gms.internal.clearcut.j0
    public final boolean f(x1 x1Var) {
        return x1Var instanceof v0.c;
    }
}
