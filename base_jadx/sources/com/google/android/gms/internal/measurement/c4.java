package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class c4 extends q6<c4, b4> implements t7 {
    private static final c4 zza;
    private w6<e4> zze = b8.f3397d;

    static {
        c4 c4Var = new c4();
        zza = c4Var;
        q6.l(c4.class, c4Var);
    }

    public static c4 t() {
        return zza;
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r42) {
        int r43 = r42 - 1;
        if (r43 == 0) {
            return (byte) 1;
        }
        if (r43 == 2) {
            return new c8(zza, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zze", e4.class});
        }
        if (r43 == 3) {
            return new c4();
        }
        if (r43 == 4) {
            return new b4();
        }
        if (r43 != 5) {
            return null;
        }
        return zza;
    }

    public final int r() {
        return this.zze.size();
    }

    public final w6 u() {
        return this.zze;
    }
}
