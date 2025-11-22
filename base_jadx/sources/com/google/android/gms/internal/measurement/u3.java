package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class u3 extends q6<u3, r3> implements t7 {
    private static final u3 zza;
    private int zze;
    private int zzf = 1;
    private w6<j3> zzg = b8.f3397d;

    static {
        u3 u3Var = new u3();
        zza = u3Var;
        q6.l(u3.class, u3Var);
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r72) {
        int r73 = r72 - 1;
        if (r73 == 0) {
            return (byte) 1;
        }
        int r12 = 0;
        if (r73 == 2) {
            return new c8(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဌ\u0000\u0002\u001b", new Object[]{"zze", "zzf", t3.f3774a, "zzg", j3.class});
        }
        if (r73 == 3) {
            return new u3();
        }
        if (r73 == 4) {
            return new r3(r12);
        }
        if (r73 != 5) {
            return null;
        }
        return zza;
    }
}
