package com.google.android.gms.internal.measurement;

import java.util.List;

/* loaded from: classes.dex */
public final class i4 extends q6<i4, g4> implements t7 {
    private static final i4 zza;
    private int zze;
    private int zzf;
    private w6<i4> zzg = b8.f3397d;
    private String zzh = "";
    private String zzi = "";
    private boolean zzj;
    private double zzk;

    static {
        i4 i4Var = new i4();
        zza = i4Var;
        q6.l(i4.class, i4Var);
    }

    public final int A() {
        int r22;
        int r02 = this.zzf;
        if (r02 != 0) {
            r22 = 2;
            if (r02 != 1) {
                if (r02 != 2) {
                    r22 = 4;
                    if (r02 != 3) {
                        r22 = r02 != 4 ? 0 : 5;
                    }
                } else {
                    r22 = 3;
                }
            }
        } else {
            r22 = 1;
        }
        if (r22 == 0) {
            return 1;
        }
        return r22;
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r82) {
        int r83 = r82 - 1;
        if (r83 == 0) {
            return (byte) 1;
        }
        if (r83 == 2) {
            return new c8(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဌ\u0000\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zze", "zzf", h4.f3531a, "zzg", i4.class, "zzh", "zzi", "zzj", "zzk"});
        }
        if (r83 == 3) {
            return new i4();
        }
        if (r83 == 4) {
            return new g4();
        }
        if (r83 != 5) {
            return null;
        }
        return zza;
    }

    public final double r() {
        return this.zzk;
    }

    public final String t() {
        return this.zzh;
    }

    public final String u() {
        return this.zzi;
    }

    public final List<i4> v() {
        return this.zzg;
    }

    public final boolean w() {
        return this.zzj;
    }

    public final boolean x() {
        return (this.zze & 8) != 0;
    }

    public final boolean y() {
        return (this.zze & 16) != 0;
    }

    public final boolean z() {
        return (this.zze & 4) != 0;
    }
}
