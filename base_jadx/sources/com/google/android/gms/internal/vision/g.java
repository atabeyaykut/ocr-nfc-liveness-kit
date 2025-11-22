package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;

/* loaded from: classes.dex */
public final class g extends i1<g, a> implements p2 {
    private static final g zzd;
    private static volatile z2<g> zze;
    private r1<p> zzc = c3.f3919d;

    public static final class a extends i1.b<g, a> implements p2 {
        public a() {
            super(g.zzd);
        }
    }

    static {
        g gVar = new g();
        zzd = gVar;
        i1.m(g.class, gVar);
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [com.google.android.gms.internal.vision.i1$a, com.google.android.gms.internal.vision.z2<com.google.android.gms.internal.vision.g>] */
    @Override // com.google.android.gms.internal.vision.i1
    public final Object i(int r42) {
        z2<g> z2Var;
        switch (t.f4084a[r42 - 1]) {
            case 1:
                return new g();
            case 2:
                return new a();
            case 3:
                return new b3(zzd, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", p.class});
            case 4:
                return zzd;
            case 5:
                z2<g> z2Var2 = zze;
                z2<g> z2Var3 = z2Var2;
                if (z2Var2 == null) {
                    synchronized (g.class) {
                        z2<g> z2Var4 = zze;
                        z2Var = z2Var4;
                        if (z2Var4 == null) {
                            ?? aVar = new i1.a();
                            zze = aVar;
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
