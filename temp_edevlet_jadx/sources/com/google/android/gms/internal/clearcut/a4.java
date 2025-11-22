package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.v0;
import java.io.IOException;

/* loaded from: classes.dex */
public final class a4 extends v0<a4, a> implements z1 {
    private static volatile h2<a4> zzbg;
    private static final a4 zzbir;
    private a1<b> zzbiq = k2.f3170c;

    public static final class a extends v0.a<a4, a> implements z1 {
        public a() {
            super(a4.zzbir);
        }
    }

    public static final class b extends v0<b, a> implements z1 {
        private static volatile h2<b> zzbg;
        private static final b zzbiv;
        private int zzbb;
        private String zzbis = "";
        private long zzbit;
        private long zzbiu;
        private int zzya;

        public static final class a extends v0.a<b, a> implements z1 {
            public a() {
                super(b.zzbiv);
            }
        }

        static {
            b bVar = new b();
            zzbiv = bVar;
            v0.g(b.class, bVar);
        }

        public static void j(b bVar, long j10) {
            bVar.zzbb |= 4;
            bVar.zzbit = j10;
        }

        public static void k(b bVar, String str) {
            bVar.getClass();
            str.getClass();
            bVar.zzbb |= 2;
            bVar.zzbis = str;
        }

        public static void l(b bVar, long j10) {
            bVar.zzbb |= 8;
            bVar.zzbiu = j10;
        }

        public static a v() {
            return (a) ((v0.a) zzbiv.e(5));
        }

        /* JADX WARN: Type inference failed for: r4v13, types: [com.google.android.gms.internal.clearcut.h2<com.google.android.gms.internal.clearcut.a4$b>, com.google.android.gms.internal.clearcut.v0$b] */
        @Override // com.google.android.gms.internal.clearcut.v0
        public final Object e(int r42) {
            h2<b> h2Var;
            switch (b4.f3055a[r42 - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a();
                case 3:
                    return new l2(zzbiv, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001\u0004\u0000\u0002\b\u0001\u0003\u0002\u0002\u0004\u0002\u0003", new Object[]{"zzbb", "zzya", "zzbis", "zzbit", "zzbiu"});
                case 4:
                    return zzbiv;
                case 5:
                    h2<b> h2Var2 = zzbg;
                    h2<b> h2Var3 = h2Var2;
                    if (h2Var2 == null) {
                        synchronized (b.class) {
                            h2<b> h2Var4 = zzbg;
                            h2Var = h2Var4;
                            if (h2Var4 == null) {
                                ?? bVar = new v0.b();
                                zzbg = bVar;
                                h2Var = bVar;
                            }
                        }
                        h2Var3 = h2Var;
                    }
                    return h2Var3;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final int i() {
            return this.zzya;
        }

        public final boolean m() {
            return (this.zzbb & 1) == 1;
        }

        public final String o() {
            return this.zzbis;
        }

        public final long t() {
            return this.zzbit;
        }

        public final long u() {
            return this.zzbiu;
        }
    }

    static {
        a4 a4Var = new a4();
        zzbir = a4Var;
        v0.g(a4.class, a4Var);
    }

    public static a4 j() {
        return zzbir;
    }

    public static a4 l(byte[] bArr) throws b1 {
        v0 v0Var = (v0) zzbir.e(4);
        try {
            j2 j2Var = j2.f3165c;
            j2Var.getClass();
            j2Var.a(v0Var.getClass()).g(v0Var, bArr, 0, bArr.length, new t());
            j2Var.a(v0Var.getClass()).a(v0Var);
            if (v0Var.zzex != 0) {
                throw new RuntimeException();
            }
            boolean zI = true;
            byte bByteValue = ((Byte) v0Var.e(1)).byteValue();
            if (bByteValue != 1) {
                if (bByteValue == 0) {
                    zI = false;
                } else {
                    zI = j2Var.a(v0Var.getClass()).i(v0Var);
                    v0Var.e(2);
                }
            }
            if (zI) {
                return (a4) v0Var;
            }
            throw new b1(new z2().getMessage());
        } catch (IOException e10) {
            if (e10.getCause() instanceof b1) {
                throw ((b1) e10.getCause());
            }
            throw new b1(e10.getMessage());
        } catch (IndexOutOfBoundsException unused) {
            throw b1.a();
        }
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [com.google.android.gms.internal.clearcut.h2<com.google.android.gms.internal.clearcut.a4>, com.google.android.gms.internal.clearcut.v0$b] */
    @Override // com.google.android.gms.internal.clearcut.v0
    public final Object e(int r42) {
        h2<a4> h2Var;
        switch (b4.f3055a[r42 - 1]) {
            case 1:
                return new a4();
            case 2:
                return new a();
            case 3:
                return new l2(zzbir, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzbiq", b.class});
            case 4:
                return zzbir;
            case 5:
                h2<a4> h2Var2 = zzbg;
                h2<a4> h2Var3 = h2Var2;
                if (h2Var2 == null) {
                    synchronized (a4.class) {
                        h2<a4> h2Var4 = zzbg;
                        h2Var = h2Var4;
                        if (h2Var4 == null) {
                            ?? bVar = new v0.b();
                            zzbg = bVar;
                            h2Var = bVar;
                        }
                    }
                    h2Var3 = h2Var;
                }
                return h2Var3;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final a1 i() {
        return this.zzbiq;
    }
}
