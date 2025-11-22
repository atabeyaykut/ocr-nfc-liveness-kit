package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;

/* loaded from: classes.dex */
public final class r extends i1<r, a> implements p2 {
    private static final r zzi;
    private static volatile z2<r> zzj;
    private int zzc;
    private h zzd;
    private n zze;
    private l zzf;
    private int zzg;
    private boolean zzh;

    public static final class a extends i1.b<r, a> implements p2 {
        public a() {
            super(r.zzi);
        }
    }

    static {
        r rVar = new r();
        zzi = rVar;
        i1.m(r.class, rVar);
    }

    public static void o(r rVar, l lVar) {
        rVar.getClass();
        rVar.zzf = lVar;
        rVar.zzc |= 4;
    }

    public static a p() {
        return (a) ((i1.b) zzi.i(5));
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [com.google.android.gms.internal.vision.i1$a, com.google.android.gms.internal.vision.z2<com.google.android.gms.internal.vision.r>] */
    @Override // com.google.android.gms.internal.vision.i1
    public final Object i(int r42) {
        z2<r> z2Var;
        switch (t.f4084a[r42 - 1]) {
            case 1:
                return new r();
            case 2:
                return new a();
            case 3:
                return new b3(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004င\u0003\u0005ဇ\u0004", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzi;
            case 5:
                z2<r> z2Var2 = zzj;
                z2<r> z2Var3 = z2Var2;
                if (z2Var2 == null) {
                    synchronized (r.class) {
                        z2<r> z2Var4 = zzj;
                        z2Var = z2Var4;
                        if (z2Var4 == null) {
                            ?? aVar = new i1.a();
                            zzj = aVar;
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
