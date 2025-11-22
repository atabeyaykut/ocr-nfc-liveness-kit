package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class j3 extends q6<j3, i3> implements t7 {
    private static final j3 zza;
    private int zze;
    private String zzf = "";
    private long zzg;

    static {
        j3 j3Var = new j3();
        zza = j3Var;
        q6.l(j3.class, j3Var);
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r52) {
        int r53 = r52 - 1;
        if (r53 == 0) {
            return (byte) 1;
        }
        int r12 = 0;
        if (r53 == 2) {
            return new c8(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        if (r53 == 3) {
            return new j3();
        }
        if (r53 == 4) {
            return new i3(r12);
        }
        if (r53 != 5) {
            return null;
        }
        return zza;
    }
}
