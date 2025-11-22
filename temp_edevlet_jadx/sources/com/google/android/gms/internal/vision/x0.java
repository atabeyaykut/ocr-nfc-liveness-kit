package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes.dex */
public final class x0 extends y0<i1.e> {
    @Override // com.google.android.gms.internal.vision.y0
    public final c1<i1.e> a(Object obj) {
        return ((i1.c) obj).zzc;
    }

    @Override // com.google.android.gms.internal.vision.y0
    public final i1.d b(w0 w0Var, n2 n2Var, int r32) {
        return w0Var.a(r32, n2Var);
    }

    @Override // com.google.android.gms.internal.vision.y0
    public final void c(Map.Entry entry) {
        ((i1.e) entry.getKey()).getClass();
    }

    @Override // com.google.android.gms.internal.vision.y0
    public final boolean d(n2 n2Var) {
        return n2Var instanceof i1.c;
    }

    @Override // com.google.android.gms.internal.vision.y0
    public final void e(Map.Entry entry) throws IOException {
        ((i1.e) entry.getKey()).getClass();
        int[] r12 = a1.f3884a;
        throw null;
    }

    @Override // com.google.android.gms.internal.vision.y0
    public final c1<i1.e> f(Object obj) {
        return ((i1.c) obj).o();
    }

    @Override // com.google.android.gms.internal.vision.y0
    public final void g(Object obj) {
        c1<i1.e> c1Var = ((i1.c) obj).zzc;
        if (c1Var.f3915b) {
            return;
        }
        c1Var.f3914a.c();
        c1Var.f3915b = true;
    }
}
