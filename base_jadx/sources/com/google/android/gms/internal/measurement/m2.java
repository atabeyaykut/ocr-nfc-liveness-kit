package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class m2 extends q6<m2, k2> implements t7 {
    private static final m2 zza;
    private int zze;
    private int zzf;
    private boolean zzg;
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";

    static {
        m2 m2Var = new m2();
        zza = m2Var;
        q6.l(m2.class, m2Var);
    }

    public static m2 s() {
        return zza;
    }

    public final boolean A() {
        return (this.zze & 16) != 0;
    }

    public final boolean B() {
        return (this.zze & 8) != 0;
    }

    public final int C() {
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
            return new c8(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zze", "zzf", l2.f3606a, "zzg", "zzh", "zzi", "zzj"});
        }
        if (r83 == 3) {
            return new m2();
        }
        if (r83 == 4) {
            return new k2();
        }
        if (r83 != 5) {
            return null;
        }
        return zza;
    }

    public final String t() {
        return this.zzh;
    }

    public final String u() {
        return this.zzj;
    }

    public final String v() {
        return this.zzi;
    }

    public final boolean w() {
        return this.zzg;
    }

    public final boolean x() {
        return (this.zze & 1) != 0;
    }

    public final boolean y() {
        return (this.zze & 4) != 0;
    }

    public final boolean z() {
        return (this.zze & 2) != 0;
    }
}
