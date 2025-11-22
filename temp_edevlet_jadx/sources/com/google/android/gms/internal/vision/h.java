package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;

/* loaded from: classes.dex */
public final class h extends i1<h, a> implements p2 {
    private static final h zzl;
    private static volatile z2<h> zzm;
    private int zzc;
    private boolean zze;
    private int zzf;
    private long zzg;
    private long zzh;
    private long zzi;
    private boolean zzk;
    private String zzd = "";
    private String zzj = "";

    public static final class a extends i1.b<h, a> implements p2 {
        public a() {
            super(h.zzl);
        }
    }

    public enum b implements l1 {
        REASON_UNKNOWN(0),
        REASON_MISSING(1),
        REASON_UPGRADE(2),
        REASON_INVALID(3);


        /* renamed from: a, reason: collision with root package name */
        public final int f3976a;

        b(int r32) {
            this.f3976a = r32;
        }

        @Override // com.google.android.gms.internal.vision.l1
        public final int a() {
            return this.f3976a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + b.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f3976a + " name=" + name() + '>';
        }
    }

    static {
        h hVar = new h();
        zzl = hVar;
        i1.m(h.class, hVar);
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [com.google.android.gms.internal.vision.i1$a, com.google.android.gms.internal.vision.z2<com.google.android.gms.internal.vision.h>] */
    @Override // com.google.android.gms.internal.vision.i1
    public final Object i(int r42) {
        z2<h> z2Var;
        switch (t.f4084a[r42 - 1]) {
            case 1:
                return new h();
            case 2:
                return new a();
            case 3:
                return new b3(zzl, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဌ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဈ\u0006\bဇ\u0007", new Object[]{"zzc", "zzd", "zze", "zzf", u.f4101a, "zzg", "zzh", "zzi", "zzj", "zzk"});
            case 4:
                return zzl;
            case 5:
                z2<h> z2Var2 = zzm;
                z2<h> z2Var3 = z2Var2;
                if (z2Var2 == null) {
                    synchronized (h.class) {
                        z2<h> z2Var4 = zzm;
                        z2Var = z2Var4;
                        if (z2Var4 == null) {
                            ?? aVar = new i1.a();
                            zzm = aVar;
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
