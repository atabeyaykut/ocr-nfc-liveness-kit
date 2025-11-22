package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class o3 extends q6<o3, n3> implements t7 {
    private static final o3 zza;
    private w6<q3> zze = b8.f3397d;

    static {
        o3 o3Var = new o3();
        zza = o3Var;
        q6.l(o3.class, o3Var);
    }

    public static n3 r() {
        return zza.m();
    }

    public static /* synthetic */ void v(o3 o3Var, q3 q3Var) {
        w6<q3> w6Var = o3Var.zze;
        if (!w6Var.c()) {
            o3Var.zze = q6.j(w6Var);
        }
        o3Var.zze.add(q3Var);
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r42) {
        int r43 = r42 - 1;
        if (r43 == 0) {
            return (byte) 1;
        }
        int r12 = 0;
        if (r43 == 2) {
            return new c8(zza, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zze", q3.class});
        }
        if (r43 == 3) {
            return new o3();
        }
        if (r43 == 4) {
            return new n3(r12);
        }
        if (r43 != 5) {
            return null;
        }
        return zza;
    }

    public final q3 t() {
        return this.zze.get(0);
    }

    public final w6 u() {
        return this.zze;
    }
}
