package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;

/* loaded from: classes.dex */
public final class o extends i1<o, a> implements p2 {
    private static final o zzf;
    private static volatile z2<o> zzg;
    private int zzc;
    private long zzd;
    private long zze;

    public static final class a extends i1.b<o, a> implements p2 {
        public a() {
            super(o.zzf);
        }
    }

    static {
        o oVar = new o();
        zzf = oVar;
        i1.m(o.class, oVar);
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [com.google.android.gms.internal.vision.i1$a, com.google.android.gms.internal.vision.z2<com.google.android.gms.internal.vision.o>] */
    @Override // com.google.android.gms.internal.vision.i1
    public final Object i(int r42) {
        z2<o> z2Var;
        switch (t.f4084a[r42 - 1]) {
            case 1:
                return new o();
            case 2:
                return new a();
            case 3:
                return new b3(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001", new Object[]{"zzc", "zzd", "zze"});
            case 4:
                return zzf;
            case 5:
                z2<o> z2Var2 = zzg;
                z2<o> z2Var3 = z2Var2;
                if (z2Var2 == null) {
                    synchronized (o.class) {
                        z2<o> z2Var4 = zzg;
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
