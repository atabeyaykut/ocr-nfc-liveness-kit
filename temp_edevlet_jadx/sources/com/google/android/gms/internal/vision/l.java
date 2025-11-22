package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class l extends i1<l, a> implements p2 {
    private static final l zzg;
    private static volatile z2<l> zzh;
    private int zzc;
    private m zzd;
    private o zze;
    private r1<i> zzf = c3.f3919d;

    public static final class a extends i1.b<l, a> implements p2 {
        public a() {
            super(l.zzg);
        }
    }

    static {
        l lVar = new l();
        zzg = lVar;
        i1.m(l.class, lVar);
    }

    public static void o(l lVar, m mVar) {
        lVar.getClass();
        lVar.zzd = mVar;
        lVar.zzc |= 1;
    }

    public static void p(l lVar, ArrayList arrayList) {
        r1<i> r1Var = lVar.zzf;
        if (!r1Var.a()) {
            int size = r1Var.size();
            lVar.zzf = r1Var.f(size == 0 ? 10 : size << 1);
        }
        f0.c(arrayList, lVar.zzf);
    }

    public static a q() {
        return (a) ((i1.b) zzg.i(5));
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [com.google.android.gms.internal.vision.i1$a, com.google.android.gms.internal.vision.z2<com.google.android.gms.internal.vision.l>] */
    @Override // com.google.android.gms.internal.vision.i1
    public final Object i(int r42) {
        z2<l> z2Var;
        switch (t.f4084a[r42 - 1]) {
            case 1:
                return new l();
            case 2:
                return new a();
            case 3:
                return new b3(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\u001b", new Object[]{"zzc", "zzd", "zze", "zzf", i.class});
            case 4:
                return zzg;
            case 5:
                z2<l> z2Var2 = zzh;
                z2<l> z2Var3 = z2Var2;
                if (z2Var2 == null) {
                    synchronized (l.class) {
                        z2<l> z2Var4 = zzh;
                        z2Var = z2Var4;
                        if (z2Var4 == null) {
                            ?? aVar = new i1.a();
                            zzh = aVar;
                            z2Var = aVar;
                        }
                    }
                    z2Var3 = z2Var;
                }
                return z2Var3;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
