package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;

/* loaded from: classes.dex */
public final class k extends i1<k, a> implements p2 {
    private static final k zzj;
    private static volatile z2<k> zzk;
    private int zzc;
    private float zzd;
    private float zze;
    private float zzf;
    private float zzg;
    private float zzh;
    private float zzi;

    public static final class a extends i1.b<k, a> implements p2 {
        public a() {
            super(k.zzj);
        }
    }

    static {
        k kVar = new k();
        zzj = kVar;
        i1.m(k.class, kVar);
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [com.google.android.gms.internal.vision.i1$a, com.google.android.gms.internal.vision.z2<com.google.android.gms.internal.vision.k>] */
    @Override // com.google.android.gms.internal.vision.i1
    public final Object i(int r42) {
        z2<k> z2Var;
        switch (t.f4084a[r42 - 1]) {
            case 1:
                return new k();
            case 2:
                return new a();
            case 3:
                return new b3(zzj, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ခ\u0000\u0002ခ\u0001\u0003ခ\u0002\u0004ခ\u0003\u0005ခ\u0004\u0006ခ\u0005", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
            case 4:
                return zzj;
            case 5:
                z2<k> z2Var2 = zzk;
                z2<k> z2Var3 = z2Var2;
                if (z2Var2 == null) {
                    synchronized (k.class) {
                        z2<k> z2Var4 = zzk;
                        z2Var = z2Var4;
                        if (z2Var4 == null) {
                            ?? aVar = new i1.a();
                            zzk = aVar;
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
