package com.google.android.gms.internal.measurement;

import java.util.List;

/* loaded from: classes.dex */
public final class y3 extends q6<y3, x3> implements t7 {
    private static final y3 zza;
    private int zze;
    private int zzf;
    private v6 zzg = h7.f3535d;

    static {
        y3 y3Var = new y3();
        zza = y3Var;
        q6.l(y3.class, y3Var);
    }

    public static x3 u() {
        return zza.m();
    }

    public static /* synthetic */ void x(y3 y3Var, int r22) {
        y3Var.zze |= 1;
        y3Var.zzf = r22;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void y(y3 y3Var, List list) {
        v6 v6Var = y3Var.zzg;
        if (!((m5) v6Var).f3627a) {
            y3Var.zzg = q6.p(v6Var);
        }
        l5.f(list, y3Var.zzg);
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r52) {
        int r53 = r52 - 1;
        if (r53 == 0) {
            return (byte) 1;
        }
        int r12 = 0;
        if (r53 == 2) {
            return new c8(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001င\u0000\u0002\u0014", new Object[]{"zze", "zzf", "zzg"});
        }
        if (r53 == 3) {
            return new y3();
        }
        if (r53 == 4) {
            return new x3(r12);
        }
        if (r53 != 5) {
            return null;
        }
        return zza;
    }

    public final int r() {
        return this.zzg.size();
    }

    public final int s() {
        return this.zzf;
    }

    public final long t(int r42) {
        h7 h7Var = (h7) this.zzg;
        h7Var.o(r42);
        return h7Var.f3536b[r42];
    }

    public final v6 w() {
        return this.zzg;
    }

    public final boolean z() {
        return (this.zze & 1) != 0;
    }
}
