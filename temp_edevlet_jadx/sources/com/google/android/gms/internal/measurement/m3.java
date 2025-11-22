package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class m3 extends q6<m3, k2> implements t7 {
    private static final m3 zza;
    private int zze;
    private String zzf = "";
    private String zzg = "";
    private b3 zzh;

    static {
        m3 m3Var = new m3();
        zza = m3Var;
        q6.l(m3.class, m3Var);
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r6) {
        int r62 = r6 - 1;
        if (r62 == 0) {
            return (byte) 1;
        }
        int r12 = 0;
        if (r62 == 2) {
            return new c8(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဉ\u0002", new Object[]{"zze", "zzf", "zzg", "zzh"});
        }
        if (r62 == 3) {
            return new m3();
        }
        if (r62 == 4) {
            return new k2(r12);
        }
        if (r62 != 5) {
            return null;
        }
        return zza;
    }
}
