package com.google.android.gms.internal.measurement;

import java.util.List;

/* loaded from: classes.dex */
public final class w2 extends q6<w2, v2> implements t7 {
    private static final w2 zza;
    private int zze;
    private long zzf;
    private String zzg = "";
    private int zzh;
    private w6<y2> zzi;
    private w6<u2> zzj;
    private w6<f2> zzk;
    private String zzl;
    private boolean zzm;
    private w6<f4> zzn;

    static {
        w2 w2Var = new w2();
        zza = w2Var;
        q6.l(w2.class, w2Var);
    }

    public w2() {
        b8<Object> b8Var = b8.f3397d;
        this.zzi = b8Var;
        this.zzj = b8Var;
        this.zzk = b8Var;
        this.zzl = "";
        this.zzn = b8Var;
    }

    public static /* synthetic */ void C(w2 w2Var, int r32, u2 u2Var) {
        w6<u2> w6Var = w2Var.zzj;
        if (!w6Var.c()) {
            w2Var.zzj = q6.j(w6Var);
        }
        w2Var.zzj.set(r32, u2Var);
    }

    public static void D(w2 w2Var) {
        w2Var.zzk = b8.f3397d;
    }

    public static v2 v() {
        return zza.m();
    }

    public static w2 x() {
        return zza;
    }

    public final w6 A() {
        return this.zzn;
    }

    public final List<y2> B() {
        return this.zzi;
    }

    public final boolean E() {
        return this.zzm;
    }

    public final boolean F() {
        return (this.zze & 2) != 0;
    }

    public final boolean G() {
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
            return new c8(zza, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0004\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", y2.class, "zzj", u2.class, "zzk", f2.class, "zzl", "zzm", "zzn", f4.class});
        }
        if (r83 == 3) {
            return new w2();
        }
        if (r83 == 4) {
            return new v2(r12);
        }
        if (r83 != 5) {
            return null;
        }
        return zza;
    }

    public final int r() {
        return this.zzn.size();
    }

    public final int s() {
        return this.zzj.size();
    }

    public final long t() {
        return this.zzf;
    }

    public final u2 u(int r22) {
        return this.zzj.get(r22);
    }

    public final String y() {
        return this.zzg;
    }

    public final w6 z() {
        return this.zzk;
    }
}
