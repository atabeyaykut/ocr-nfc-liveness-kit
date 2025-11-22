package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class b3 extends q6<b3, a3> implements t7 {
    private static final b3 zza;
    private int zze;
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";
    private String zzk = "";
    private String zzl = "";

    static {
        b3 b3Var = new b3();
        zza = b3Var;
        q6.l(b3.class, b3Var);
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r82) {
        int r83 = r82 - 1;
        if (r83 == 0) {
            return (byte) 1;
        }
        if (r83 == 2) {
            return new c8(zza, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl"});
        }
        if (r83 == 3) {
            return new b3();
        }
        if (r83 == 4) {
            return new a3();
        }
        if (r83 != 5) {
            return null;
        }
        return zza;
    }
}
