package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;

/* loaded from: classes.dex */
public final class d extends i1<d, a> implements p2 {
    private static final d zzf;
    private static volatile z2<d> zzg;
    private int zzc;
    private String zzd = "";
    private String zze = "";

    public static final class a extends i1.b<d, a> implements p2 {
        public a() {
            super(d.zzf);
        }
    }

    static {
        d dVar = new d();
        zzf = dVar;
        i1.m(d.class, dVar);
    }

    public static void o(d dVar, String str) {
        dVar.getClass();
        str.getClass();
        dVar.zzc |= 1;
        dVar.zzd = str;
    }

    public static a p() {
        return (a) ((i1.b) zzf.i(5));
    }

    public static void s(d dVar, String str) {
        dVar.getClass();
        dVar.zzc |= 2;
        dVar.zze = str;
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [com.google.android.gms.internal.vision.i1$a, com.google.android.gms.internal.vision.z2<com.google.android.gms.internal.vision.d>] */
    @Override // com.google.android.gms.internal.vision.i1
    public final Object i(int r42) {
        z2<d> z2Var;
        switch (t.f4084a[r42 - 1]) {
            case 1:
                return new d();
            case 2:
                return new a();
            case 3:
                return new b3(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzc", "zzd", "zze"});
            case 4:
                return zzf;
            case 5:
                z2<d> z2Var2 = zzg;
                z2<d> z2Var3 = z2Var2;
                if (z2Var2 == null) {
                    synchronized (d.class) {
                        z2<d> z2Var4 = zzg;
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
