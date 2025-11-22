package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;

/* loaded from: classes.dex */
public final class i extends i1<i, b> implements p2 {
    private static final i zzl;
    private static volatile z2<i> zzm;
    private int zzc;
    private String zzd = "";
    private String zze = "";
    private r1<String> zzf;
    private int zzg;
    private String zzh;
    private long zzi;
    private long zzj;
    private r1<q> zzk;

    public enum a implements l1 {
        RESULT_UNKNOWN(0),
        RESULT_SUCCESS(1),
        RESULT_FAIL(2),
        RESULT_SKIPPED(3);


        /* renamed from: a, reason: collision with root package name */
        public final int f3989a;

        a(int r32) {
            this.f3989a = r32;
        }

        @Override // com.google.android.gms.internal.vision.l1
        public final int a() {
            return this.f3989a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f3989a + " name=" + name() + '>';
        }
    }

    public static final class b extends i1.b<i, b> implements p2 {
        public b() {
            super(i.zzl);
        }
    }

    static {
        i iVar = new i();
        zzl = iVar;
        i1.m(i.class, iVar);
    }

    public i() {
        c3<Object> c3Var = c3.f3919d;
        this.zzf = c3Var;
        this.zzh = "";
        this.zzk = c3Var;
    }

    public static void o(i iVar, long j10) {
        iVar.zzc |= 16;
        iVar.zzi = j10;
    }

    public static void p(i iVar, Iterable iterable) {
        r1<q> r1Var = iVar.zzk;
        if (!r1Var.a()) {
            int size = r1Var.size();
            iVar.zzk = r1Var.f(size == 0 ? 10 : size << 1);
        }
        f0.c(iterable, iVar.zzk);
    }

    public static void q(i iVar, String str) {
        iVar.getClass();
        str.getClass();
        iVar.zzc |= 1;
        iVar.zzd = str;
    }

    public static b s() {
        return (b) ((i1.b) zzl.i(5));
    }

    public static void u(i iVar, long j10) {
        iVar.zzc |= 32;
        iVar.zzj = j10;
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [com.google.android.gms.internal.vision.i1$a, com.google.android.gms.internal.vision.z2<com.google.android.gms.internal.vision.i>] */
    @Override // com.google.android.gms.internal.vision.i1
    public final Object i(int r42) {
        z2<i> z2Var;
        switch (t.f4084a[r42 - 1]) {
            case 1:
                return new i();
            case 2:
                return new b();
            case 3:
                return new b3(zzl, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0002\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003\u001a\u0004ဌ\u0002\u0005ဈ\u0003\u0006ဂ\u0004\u0007ဂ\u0005\b\u001b", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", v.f4105a, "zzh", "zzi", "zzj", "zzk", q.class});
            case 4:
                return zzl;
            case 5:
                z2<i> z2Var2 = zzm;
                z2<i> z2Var3 = z2Var2;
                if (z2Var2 == null) {
                    synchronized (i.class) {
                        z2<i> z2Var4 = zzm;
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
