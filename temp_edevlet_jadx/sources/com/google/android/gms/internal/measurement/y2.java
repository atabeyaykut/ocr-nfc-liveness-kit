package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class y2 extends q6<y2, x2> implements t7 {
    private static final y2 zza;
    private int zze;
    private String zzf = "";
    private String zzg = "";

    static {
        y2 y2Var = new y2();
        zza = y2Var;
        q6.l(y2.class, y2Var);
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r52) {
        int r53 = r52 - 1;
        if (r53 == 0) {
            return (byte) 1;
        }
        if (r53 == 2) {
            return new c8(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        if (r53 == 3) {
            return new y2();
        }
        if (r53 == 4) {
            return new x2();
        }
        if (r53 != 5) {
            return null;
        }
        return zza;
    }

    public final String s() {
        return this.zzf;
    }

    public final String t() {
        return this.zzg;
    }
}
