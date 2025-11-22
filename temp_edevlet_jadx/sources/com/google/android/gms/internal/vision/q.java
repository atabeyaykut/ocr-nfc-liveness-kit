package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;

/* loaded from: classes.dex */
public final class q extends i1<q, a> implements p2 {
    private static final q zzh;
    private static volatile z2<q> zzi;
    private int zzc;
    private g zzd;
    private int zze;
    private k zzf;
    private f zzg;

    public static final class a extends i1.b<q, a> implements p2 {
        public a() {
            super(q.zzh);
        }
    }

    static {
        q qVar = new q();
        zzh = qVar;
        i1.m(q.class, qVar);
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [com.google.android.gms.internal.vision.i1$a, com.google.android.gms.internal.vision.z2<com.google.android.gms.internal.vision.q>] */
    @Override // com.google.android.gms.internal.vision.i1
    public final Object i(int r42) {
        z2<q> z2Var;
        switch (t.f4084a[r42 - 1]) {
            case 1:
                return new q();
            case 2:
                return new a();
            case 3:
                return new b3(zzh, "\u0001\u0004\u0000\u0001\u0001\u0011\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002င\u0001\u0010ဉ\u0002\u0011ဉ\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
            case 4:
                return zzh;
            case 5:
                z2<q> z2Var2 = zzi;
                z2<q> z2Var3 = z2Var2;
                if (z2Var2 == null) {
                    synchronized (q.class) {
                        z2<q> z2Var4 = zzi;
                        z2Var = z2Var4;
                        if (z2Var4 == null) {
                            ?? aVar = new i1.a();
                            zzi = aVar;
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
