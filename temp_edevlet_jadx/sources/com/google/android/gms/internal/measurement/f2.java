package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class f2 extends q6<f2, e2> implements t7 {
    private static final f2 zza;
    private int zze;
    private int zzf;
    private w6<o2> zzg;
    private w6<h2> zzh;
    private boolean zzi;
    private boolean zzj;

    static {
        f2 f2Var = new f2();
        zza = f2Var;
        q6.l(f2.class, f2Var);
    }

    public f2() {
        b8<Object> b8Var = b8.f3397d;
        this.zzg = b8Var;
        this.zzh = b8Var;
    }

    public static /* synthetic */ void A(f2 f2Var, int r32, h2 h2Var) {
        w6<h2> w6Var = f2Var.zzh;
        if (!w6Var.c()) {
            f2Var.zzh = q6.j(w6Var);
        }
        f2Var.zzh.set(r32, h2Var);
    }

    public static /* synthetic */ void z(f2 f2Var, int r32, o2 o2Var) {
        w6<o2> w6Var = f2Var.zzg;
        if (!w6Var.c()) {
            f2Var.zzg = q6.j(w6Var);
        }
        f2Var.zzg.set(r32, o2Var);
    }

    public final boolean B() {
        return (this.zze & 1) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r82) {
        int r83 = r82 - 1;
        if (r83 == 0) {
            return (byte) 1;
        }
        int r12 = 0;
        if (r83 == 2) {
            return new c8(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zze", "zzf", "zzg", o2.class, "zzh", h2.class, "zzi", "zzj"});
        }
        if (r83 == 3) {
            return new f2();
        }
        if (r83 == 4) {
            return new e2(r12);
        }
        if (r83 != 5) {
            return null;
        }
        return zza;
    }

    public final int r() {
        return this.zzf;
    }

    public final int s() {
        return this.zzh.size();
    }

    public final int t() {
        return this.zzg.size();
    }

    public final h2 v(int r22) {
        return this.zzh.get(r22);
    }

    public final o2 w(int r22) {
        return this.zzg.get(r22);
    }

    public final w6 x() {
        return this.zzh;
    }

    public final w6 y() {
        return this.zzg;
    }
}
