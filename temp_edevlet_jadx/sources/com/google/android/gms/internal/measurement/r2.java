package com.google.android.gms.internal.measurement;

import java.util.List;

/* loaded from: classes.dex */
public final class r2 extends q6<r2, p2> implements t7 {
    private static final r2 zza;
    private int zze;
    private int zzf;
    private boolean zzh;
    private String zzg = "";
    private w6<String> zzi = b8.f3397d;

    static {
        r2 r2Var = new r2();
        zza = r2Var;
        q6.l(r2.class, r2Var);
    }

    public static r2 t() {
        return zza;
    }

    public final int A() {
        int r02 = c5.u.r(this.zzf);
        if (r02 == 0) {
            return 1;
        }
        return r02;
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r82) {
        int r83 = r82 - 1;
        if (r83 == 0) {
            return (byte) 1;
        }
        if (r83 == 2) {
            return new c8(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zze", "zzf", q2.f3692a, "zzg", "zzh", "zzi"});
        }
        if (r83 == 3) {
            return new r2();
        }
        if (r83 == 4) {
            return new p2();
        }
        if (r83 != 5) {
            return null;
        }
        return zza;
    }

    public final int r() {
        return this.zzi.size();
    }

    public final String u() {
        return this.zzg;
    }

    public final List<String> v() {
        return this.zzi;
    }

    public final boolean w() {
        return this.zzh;
    }

    public final boolean x() {
        return (this.zze & 4) != 0;
    }

    public final boolean y() {
        return (this.zze & 2) != 0;
    }

    public final boolean z() {
        return (this.zze & 1) != 0;
    }
}
