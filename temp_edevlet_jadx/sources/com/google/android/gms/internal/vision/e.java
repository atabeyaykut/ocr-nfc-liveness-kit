package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;

/* loaded from: classes.dex */
public final class e extends i1<e, a> implements p2 {
    private static final o1<Integer, a0> zzd = new x3();
    private static final e zze;
    private static volatile z2<e> zzf;
    private p1 zzc = k1.f4018d;

    public static final class a extends i1.b<e, a> implements p2 {
        public a() {
            super(e.zze);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.vision.o1<java.lang.Integer, com.google.android.gms.internal.vision.a0>, com.google.android.gms.internal.vision.x3] */
    static {
        e eVar = new e();
        zze = eVar;
        i1.m(e.class, eVar);
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [com.google.android.gms.internal.vision.i1$a, com.google.android.gms.internal.vision.z2<com.google.android.gms.internal.vision.e>] */
    @Override // com.google.android.gms.internal.vision.i1
    public final Object i(int r42) {
        z2<e> z2Var;
        switch (t.f4084a[r42 - 1]) {
            case 1:
                return new e();
            case 2:
                return new a();
            case 3:
                return new b3(zze, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001e", new Object[]{"zzc", c0.f3912a});
            case 4:
                return zze;
            case 5:
                z2<e> z2Var2 = zzf;
                z2<e> z2Var3 = z2Var2;
                if (z2Var2 == null) {
                    synchronized (e.class) {
                        z2<e> z2Var4 = zzf;
                        z2Var = z2Var4;
                        if (z2Var4 == null) {
                            ?? aVar = new i1.a();
                            zzf = aVar;
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
