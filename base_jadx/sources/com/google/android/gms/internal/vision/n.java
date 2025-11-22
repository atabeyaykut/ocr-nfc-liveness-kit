package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;

/* loaded from: classes.dex */
public final class n extends i1<n, a> implements p2 {
    private static final n zzj;
    private static volatile z2<n> zzk;
    private int zzc;
    private long zze;
    private d zzf;
    private j zzh;
    private e zzi;
    private String zzd = "";
    private String zzg = "";

    public static final class a extends i1.b<n, a> implements p2 {
        public a() {
            super(n.zzj);
        }
    }

    static {
        n nVar = new n();
        zzj = nVar;
        i1.m(n.class, nVar);
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [com.google.android.gms.internal.vision.i1$a, com.google.android.gms.internal.vision.z2<com.google.android.gms.internal.vision.n>] */
    @Override // com.google.android.gms.internal.vision.i1
    public final Object i(int r42) {
        z2<n> z2Var;
        switch (t.f4084a[r42 - 1]) {
            case 1:
                return new n();
            case 2:
                return new a();
            case 3:
                return new b3(zzj, "\u0001\u0006\u0000\u0001\u0001\u0011\u0006\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဉ\u0002\u0006ဈ\u0003\u0010ဉ\u0004\u0011ဉ\u0005", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
            case 4:
                return zzj;
            case 5:
                z2<n> z2Var2 = zzk;
                z2<n> z2Var3 = z2Var2;
                if (z2Var2 == null) {
                    synchronized (n.class) {
                        z2<n> z2Var4 = zzk;
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
