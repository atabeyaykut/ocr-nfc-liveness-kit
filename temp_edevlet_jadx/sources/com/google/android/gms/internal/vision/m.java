package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;

/* loaded from: classes.dex */
public final class m extends i1<m, b> implements p2 {
    private static final m zzi;
    private static volatile z2<m> zzj;
    private int zzc;
    private int zzd;
    private long zze;
    private long zzf;
    private long zzg;
    private long zzh;

    public enum a implements l1 {
        FORMAT_UNKNOWN(0),
        FORMAT_LUMINANCE(1),
        FORMAT_RGB8(2),
        FORMAT_MONOCHROME(3);


        /* renamed from: a, reason: collision with root package name */
        public final int f4034a;

        a(int r32) {
            this.f4034a = r32;
        }

        @Override // com.google.android.gms.internal.vision.l1
        public final int a() {
            return this.f4034a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f4034a + " name=" + name() + '>';
        }
    }

    public static final class b extends i1.b<m, b> implements p2 {
        public b() {
            super(m.zzi);
        }
    }

    static {
        m mVar = new m();
        zzi = mVar;
        i1.m(m.class, mVar);
    }

    public static void o(m mVar, long j10) {
        mVar.zzc |= 2;
        mVar.zze = j10;
    }

    public static b p() {
        return (b) ((i1.b) zzi.i(5));
    }

    public static void s(m mVar, long j10) {
        mVar.zzc |= 4;
        mVar.zzf = j10;
    }

    public static void t(m mVar, long j10) {
        mVar.zzc |= 8;
        mVar.zzg = j10;
    }

    public static void u(m mVar, long j10) {
        mVar.zzc |= 16;
        mVar.zzh = j10;
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [com.google.android.gms.internal.vision.i1$a, com.google.android.gms.internal.vision.z2<com.google.android.gms.internal.vision.m>] */
    @Override // com.google.android.gms.internal.vision.i1
    public final Object i(int r42) {
        z2<m> z2Var;
        switch (t.f4084a[r42 - 1]) {
            case 1:
                return new m();
            case 2:
                return new b();
            case 3:
                return new b3(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0004\u0005ဂ\u0003", new Object[]{"zzc", "zzd", z.f4125a, "zze", "zzf", "zzh", "zzg"});
            case 4:
                return zzi;
            case 5:
                z2<m> z2Var2 = zzj;
                z2<m> z2Var3 = z2Var2;
                if (z2Var2 == null) {
                    synchronized (m.class) {
                        z2<m> z2Var4 = zzj;
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
