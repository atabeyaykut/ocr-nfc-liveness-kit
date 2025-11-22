package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;

/* loaded from: classes.dex */
public final class p extends i1<p, a> implements p2 {
    private static final p zzf;
    private static volatile z2<p> zzg;
    private int zzc;
    private int zzd;
    private int zze;

    public static final class a extends i1.b<p, a> implements p2 {
        public a() {
            super(p.zzf);
        }
    }

    static {
        p pVar = new p();
        zzf = pVar;
        i1.m(p.class, pVar);
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [com.google.android.gms.internal.vision.i1$a, com.google.android.gms.internal.vision.z2<com.google.android.gms.internal.vision.p>] */
    @Override // com.google.android.gms.internal.vision.i1
    public final Object i(int r42) {
        z2<p> z2Var;
        switch (t.f4084a[r42 - 1]) {
            case 1:
                return new p();
            case 2:
                return new a();
            case 3:
                return new b3(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zzc", "zzd", "zze"});
            case 4:
                return zzf;
            case 5:
                z2<p> z2Var2 = zzg;
                z2<p> z2Var3 = z2Var2;
                if (z2Var2 == null) {
                    synchronized (p.class) {
                        z2<p> z2Var4 = zzg;
                        z2Var = z2Var4;
                        if (z2Var4 == null) {
                            ?? aVar = new i1.a();
                            zzg = aVar;
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
