package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class f4 extends q6<f4, x2> implements t7 {
    private static final f4 zza;
    private int zze;
    private w6<i4> zzf = b8.f3397d;
    private c4 zzg;

    static {
        f4 f4Var = new f4();
        zza = f4Var;
        q6.l(f4.class, f4Var);
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r6) {
        int r62 = r6 - 1;
        if (r62 == 0) {
            return (byte) 1;
        }
        int r12 = 0;
        if (r62 == 2) {
            return new c8(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"zze", "zzf", i4.class, "zzg"});
        }
        if (r62 == 3) {
            return new f4();
        }
        if (r62 == 4) {
            return new x2(r12);
        }
        if (r62 != 5) {
            return null;
        }
        return zza;
    }

    public final c4 r() {
        c4 c4Var = this.zzg;
        return c4Var == null ? c4.t() : c4Var;
    }

    public final w6 t() {
        return this.zzf;
    }
}
