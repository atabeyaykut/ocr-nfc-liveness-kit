package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class e4 extends q6<e4, d4> implements t7 {
    private static final e4 zza;
    private int zze;
    private String zzf = "";
    private w6<i4> zzg = b8.f3397d;

    static {
        e4 e4Var = new e4();
        zza = e4Var;
        q6.l(e4.class, e4Var);
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r6) {
        int r62 = r6 - 1;
        if (r62 == 0) {
            return (byte) 1;
        }
        if (r62 == 2) {
            return new c8(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b", new Object[]{"zze", "zzf", "zzg", i4.class});
        }
        if (r62 == 3) {
            return new e4();
        }
        if (r62 == 4) {
            return new d4();
        }
        if (r62 != 5) {
            return null;
        }
        return zza;
    }

    public final String s() {
        return this.zzf;
    }

    public final w6 t() {
        return this.zzg;
    }
}
