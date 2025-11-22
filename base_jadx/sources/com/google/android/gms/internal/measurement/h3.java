package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class h3 extends q6<h3, g3> implements t7 {
    private static final h3 zza;
    private int zze;
    private w6<l3> zzf = b8.f3397d;
    private String zzg = "";
    private long zzh;
    private long zzi;
    private int zzj;

    static {
        h3 h3Var = new h3();
        zza = h3Var;
        q6.l(h3.class, h3Var);
    }

    public static /* synthetic */ void A(h3 h3Var, int r12, l3 l3Var) {
        h3Var.L();
        h3Var.zzf.set(r12, l3Var);
    }

    public static /* synthetic */ void B(h3 h3Var, l3 l3Var) {
        h3Var.L();
        h3Var.zzf.add(l3Var);
    }

    public static /* synthetic */ void C(h3 h3Var, Iterable iterable) {
        h3Var.L();
        l5.f(iterable, h3Var.zzf);
    }

    public static void D(h3 h3Var) {
        h3Var.zzf = b8.f3397d;
    }

    public static /* synthetic */ void E(h3 h3Var, int r12) {
        h3Var.L();
        h3Var.zzf.remove(r12);
    }

    public static /* synthetic */ void F(h3 h3Var, String str) {
        str.getClass();
        h3Var.zze |= 1;
        h3Var.zzg = str;
    }

    public static /* synthetic */ void G(long j10, h3 h3Var) {
        h3Var.zze |= 2;
        h3Var.zzh = j10;
    }

    public static /* synthetic */ void H(long j10, h3 h3Var) {
        h3Var.zze |= 4;
        h3Var.zzi = j10;
    }

    public static g3 v() {
        return zza.m();
    }

    public final boolean I() {
        return (this.zze & 8) != 0;
    }

    public final boolean J() {
        return (this.zze & 4) != 0;
    }

    public final boolean K() {
        return (this.zze & 2) != 0;
    }

    public final void L() {
        w6<l3> w6Var = this.zzf;
        if (w6Var.c()) {
            return;
        }
        this.zzf = q6.j(w6Var);
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r82) {
        int r83 = r82 - 1;
        if (r83 == 0) {
            return (byte) 1;
        }
        int r12 = 0;
        if (r83 == 2) {
            return new c8(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zze", "zzf", l3.class, "zzg", "zzh", "zzi", "zzj"});
        }
        if (r83 == 3) {
            return new h3();
        }
        if (r83 == 4) {
            return new g3(r12);
        }
        if (r83 != 5) {
            return null;
        }
        return zza;
    }

    public final int r() {
        return this.zzj;
    }

    public final int s() {
        return this.zzf.size();
    }

    public final long t() {
        return this.zzi;
    }

    public final long u() {
        return this.zzh;
    }

    public final l3 x(int r22) {
        return this.zzf.get(r22);
    }

    public final String y() {
        return this.zzg;
    }

    public final w6 z() {
        return this.zzf;
    }
}
