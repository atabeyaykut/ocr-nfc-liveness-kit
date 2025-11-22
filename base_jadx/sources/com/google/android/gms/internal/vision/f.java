package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;

/* loaded from: classes.dex */
public final class f extends i1<f, a> implements p2 {
    private static final f zzg;
    private static volatile z2<f> zzh;
    private int zzc;
    private int zzd;
    private int zze;
    private String zzf = "";

    public static final class a extends i1.b<f, a> implements p2 {
        public a() {
            super(f.zzg);
        }
    }

    static {
        f fVar = new f();
        zzg = fVar;
        i1.m(f.class, fVar);
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [com.google.android.gms.internal.vision.i1$a, com.google.android.gms.internal.vision.z2<com.google.android.gms.internal.vision.f>] */
    @Override // com.google.android.gms.internal.vision.i1
    public final Object i(int r42) {
        z2<f> z2Var;
        switch (t.f4084a[r42 - 1]) {
            case 1:
                return new f();
            case 2:
                return new a();
            case 3:
                return new b3(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003ဈ\u0002", new Object[]{"zzc", "zzd", c0.f3912a, "zze", d0.f3940a, "zzf"});
            case 4:
                return zzg;
            case 5:
                z2<f> z2Var2 = zzh;
                z2<f> z2Var3 = z2Var2;
                if (z2Var2 == null) {
                    synchronized (f.class) {
                        z2<f> z2Var4 = zzh;
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
