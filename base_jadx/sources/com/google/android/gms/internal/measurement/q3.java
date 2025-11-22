package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Arrays;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: classes.dex */
public final class q3 extends q6<q3, p3> implements t7 {
    public static final /* synthetic */ int zza = 0;
    private static final q3 zze;
    private boolean zzA;
    private String zzB;
    private long zzC;
    private int zzD;
    private String zzE;
    private String zzF;
    private boolean zzG;
    private w6<d3> zzH;
    private String zzI;
    private int zzJ;
    private int zzK;
    private int zzL;
    private String zzM;
    private long zzN;
    private long zzO;
    private String zzP;
    private String zzQ;
    private int zzR;
    private String zzS;
    private u3 zzT;
    private u6 zzU;
    private long zzV;
    private long zzW;
    private String zzX;
    private String zzY;
    private int zzZ;
    private boolean zzaa;
    private String zzab;
    private boolean zzac;
    private m3 zzad;
    private int zzf;
    private int zzg;
    private int zzh;
    private w6<h3> zzi;
    private w6<a4> zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private String zzp;
    private String zzq;
    private String zzr;
    private String zzs;
    private int zzt;
    private String zzu;
    private String zzv;
    private String zzw;
    private long zzx;
    private long zzy;
    private String zzz;

    static {
        q3 q3Var = new q3();
        zze = q3Var;
        q6.l(q3.class, q3Var);
    }

    public q3() {
        b8<Object> b8Var = b8.f3397d;
        this.zzi = b8Var;
        this.zzj = b8Var;
        this.zzp = "";
        this.zzq = "";
        this.zzr = "";
        this.zzs = "";
        this.zzu = "";
        this.zzv = "";
        this.zzw = "";
        this.zzz = "";
        this.zzB = "";
        this.zzE = "";
        this.zzF = "";
        this.zzH = b8Var;
        this.zzI = "";
        this.zzM = "";
        this.zzP = "";
        this.zzQ = "";
        this.zzS = "";
        this.zzU = r6.f3714d;
        this.zzX = "";
        this.zzY = "";
        this.zzab = "";
    }

    public static /* synthetic */ void A0(q3 q3Var, long j10) {
        q3Var.zzf |= 4;
        q3Var.zzl = j10;
    }

    public static /* synthetic */ void B0(q3 q3Var, long j10) {
        q3Var.zzf |= 8;
        q3Var.zzm = j10;
    }

    public static /* synthetic */ void C0(q3 q3Var, long j10) {
        q3Var.zzf |= 16;
        q3Var.zzn = j10;
    }

    public static /* synthetic */ void D0(q3 q3Var) {
        q3Var.zzf &= -17;
        q3Var.zzn = 0L;
    }

    public static /* synthetic */ void E0(q3 q3Var, long j10) {
        q3Var.zzf |= 32;
        q3Var.zzo = j10;
    }

    public static /* synthetic */ void F0(q3 q3Var) {
        q3Var.zzf &= -33;
        q3Var.zzo = 0L;
    }

    public static /* synthetic */ void G0(q3 q3Var) {
        q3Var.zzf |= 64;
        q3Var.zzp = "android";
    }

    public static /* synthetic */ void H(q3 q3Var, long j10) {
        q3Var.zzf |= 1073741824;
        q3Var.zzO = j10;
    }

    public static /* synthetic */ void H0(q3 q3Var, String str) {
        str.getClass();
        q3Var.zzf |= 128;
        q3Var.zzq = str;
    }

    public static /* synthetic */ void I(q3 q3Var) {
        q3Var.zzf &= Integer.MAX_VALUE;
        q3Var.zzP = zze.zzP;
    }

    public static /* synthetic */ void I0(q3 q3Var, String str) {
        str.getClass();
        q3Var.zzf |= 256;
        q3Var.zzr = str;
    }

    public static /* synthetic */ void J(q3 q3Var, int r22) {
        q3Var.zzg |= 2;
        q3Var.zzR = r22;
    }

    public static /* synthetic */ void J0(q3 q3Var, String str) {
        str.getClass();
        q3Var.zzf |= 512;
        q3Var.zzs = str;
    }

    public static /* synthetic */ void K(q3 q3Var, int r12, h3 h3Var) {
        q3Var.R0();
        q3Var.zzi.set(r12, h3Var);
    }

    public static /* synthetic */ void K0(q3 q3Var, int r22) {
        q3Var.zzf |= 1024;
        q3Var.zzt = r22;
    }

    public static /* synthetic */ void L(q3 q3Var, String str) {
        str.getClass();
        q3Var.zzg |= 4;
        q3Var.zzS = str;
    }

    public static /* synthetic */ void L0(q3 q3Var, String str) {
        str.getClass();
        q3Var.zzf |= 2048;
        q3Var.zzu = str;
    }

    public static void M(q3 q3Var, ArrayList arrayList) {
        w6 w6Var = q3Var.zzU;
        if (!((m5) w6Var).f3627a) {
            int size = w6Var.size();
            int r12 = size == 0 ? 10 : size + size;
            r6 r6Var = (r6) w6Var;
            if (r12 < r6Var.f3716c) {
                throw new IllegalArgumentException();
            }
            q3Var.zzU = new r6(Arrays.copyOf(r6Var.f3715b, r12), r6Var.f3716c);
        }
        l5.f(arrayList, q3Var.zzU);
    }

    public static /* synthetic */ void M0(q3 q3Var, String str) {
        str.getClass();
        q3Var.zzf |= 4096;
        q3Var.zzv = str;
    }

    public static /* synthetic */ void N(q3 q3Var, h3 h3Var) {
        q3Var.R0();
        q3Var.zzi.add(h3Var);
    }

    public static /* synthetic */ void N0(q3 q3Var, String str) {
        str.getClass();
        q3Var.zzf |= 8192;
        q3Var.zzw = str;
    }

    public static /* synthetic */ void O(q3 q3Var, long j10) {
        q3Var.zzg |= 16;
        q3Var.zzV = j10;
    }

    public static /* synthetic */ void O0(q3 q3Var, long j10) {
        q3Var.zzf |= 16384;
        q3Var.zzx = j10;
    }

    public static /* synthetic */ void P(q3 q3Var, long j10) {
        q3Var.zzg |= 32;
        q3Var.zzW = j10;
    }

    public static /* synthetic */ void P0(q3 q3Var) {
        q3Var.zzf |= 32768;
        q3Var.zzy = 46000L;
    }

    public static /* synthetic */ void R(q3 q3Var, String str) {
        str.getClass();
        q3Var.zzf |= 65536;
        q3Var.zzz = str;
    }

    public static /* synthetic */ void S(q3 q3Var) {
        q3Var.zzf &= -65537;
        q3Var.zzz = zze.zzz;
    }

    public static /* synthetic */ void T(q3 q3Var, boolean z10) {
        q3Var.zzf |= 131072;
        q3Var.zzA = z10;
    }

    public static /* synthetic */ void U(q3 q3Var) {
        q3Var.zzf &= -131073;
        q3Var.zzA = false;
    }

    public static /* synthetic */ void V(q3 q3Var, String str) {
        q3Var.zzf |= 262144;
        q3Var.zzB = str;
    }

    public static /* synthetic */ void W(q3 q3Var) {
        q3Var.zzf &= -262145;
        q3Var.zzB = zze.zzB;
    }

    public static /* synthetic */ void X(q3 q3Var, long j10) {
        q3Var.zzf |= 524288;
        q3Var.zzC = j10;
    }

    public static /* synthetic */ void Y(q3 q3Var, int r32) {
        q3Var.zzf |= 1048576;
        q3Var.zzD = r32;
    }

    public static /* synthetic */ void Z(q3 q3Var, String str) {
        q3Var.zzf |= 2097152;
        q3Var.zzE = str;
    }

    public static /* synthetic */ void a0(q3 q3Var) {
        q3Var.zzf &= -2097153;
        q3Var.zzE = zze.zzE;
    }

    public static /* synthetic */ void b0(q3 q3Var, String str) {
        str.getClass();
        q3Var.zzf |= 4194304;
        q3Var.zzF = str;
    }

    public static /* synthetic */ void c0(q3 q3Var) {
        q3Var.zzf |= 8388608;
        q3Var.zzG = false;
    }

    public static /* synthetic */ void d0(q3 q3Var, ArrayList arrayList) {
        w6<d3> w6Var = q3Var.zzH;
        if (!w6Var.c()) {
            q3Var.zzH = q6.j(w6Var);
        }
        l5.f(arrayList, q3Var.zzH);
    }

    public static void e0(q3 q3Var) {
        q3Var.zzH = b8.f3397d;
    }

    public static /* synthetic */ void f0(q3 q3Var, String str) {
        q3Var.zzf |= 16777216;
        q3Var.zzI = str;
    }

    public static /* synthetic */ void g0(q3 q3Var, int r32) {
        q3Var.zzf |= 33554432;
        q3Var.zzJ = r32;
    }

    public static /* synthetic */ void h0(q3 q3Var) {
        q3Var.zzf |= 1;
        q3Var.zzh = 1;
    }

    public static /* synthetic */ void i0(q3 q3Var) {
        q3Var.zzf &= -268435457;
        q3Var.zzM = zze.zzM;
    }

    public static /* synthetic */ void j0(q3 q3Var, long j10) {
        q3Var.zzf |= PKIFailureInfo.duplicateCertReq;
        q3Var.zzN = j10;
    }

    public static /* synthetic */ void r0(q3 q3Var, String str) {
        str.getClass();
        q3Var.zzg |= 64;
        q3Var.zzX = str;
    }

    public static /* synthetic */ void s0(q3 q3Var, String str) {
        q3Var.zzg |= 128;
        q3Var.zzY = str;
    }

    public static /* synthetic */ void t0(q3 q3Var, ArrayList arrayList) {
        q3Var.R0();
        l5.f(arrayList, q3Var.zzi);
    }

    public static void u0(q3 q3Var) {
        q3Var.zzi = b8.f3397d;
    }

    public static /* synthetic */ void v0(q3 q3Var, int r12) {
        q3Var.R0();
        q3Var.zzi.remove(r12);
    }

    public static /* synthetic */ void w0(q3 q3Var, int r12, a4 a4Var) {
        q3Var.S0();
        q3Var.zzj.set(r12, a4Var);
    }

    public static /* synthetic */ void x0(q3 q3Var, a4 a4Var) {
        q3Var.S0();
        q3Var.zzj.add(a4Var);
    }

    public static /* synthetic */ void y0(q3 q3Var, int r12) {
        q3Var.S0();
        q3Var.zzj.remove(r12);
    }

    public static p3 y1() {
        return zze.m();
    }

    public static /* synthetic */ void z0(q3 q3Var, long j10) {
        q3Var.zzf |= 2;
        q3Var.zzk = j10;
    }

    public final String A() {
        return this.zzq;
    }

    public final a4 A1(int r22) {
        return this.zzj.get(r22);
    }

    public final String B() {
        return this.zzp;
    }

    public final String B1() {
        return this.zzS;
    }

    public final String C() {
        return this.zzz;
    }

    public final String C1() {
        return this.zzv;
    }

    public final String D() {
        return this.zzs;
    }

    public final String D1() {
        return this.zzB;
    }

    public final w6 E() {
        return this.zzH;
    }

    public final w6 F() {
        return this.zzi;
    }

    public final w6 G() {
        return this.zzj;
    }

    public final int Q() {
        return this.zzJ;
    }

    public final int Q0() {
        return this.zzD;
    }

    public final void R0() {
        w6<h3> w6Var = this.zzi;
        if (w6Var.c()) {
            return;
        }
        this.zzi = q6.j(w6Var);
    }

    public final void S0() {
        w6<a4> w6Var = this.zzj;
        if (w6Var.c()) {
            return;
        }
        this.zzj = q6.j(w6Var);
    }

    public final boolean T0() {
        return (this.zzf & 524288) != 0;
    }

    public final boolean U0() {
        return (this.zzg & 16) != 0;
    }

    public final boolean V0() {
        return (this.zzf & 8) != 0;
    }

    public final boolean W0() {
        return (this.zzf & 16384) != 0;
    }

    public final boolean X0() {
        return (this.zzf & 131072) != 0;
    }

    public final boolean Y0() {
        return (this.zzf & 32) != 0;
    }

    public final boolean Z0() {
        return (this.zzf & 16) != 0;
    }

    public final boolean a1() {
        return (this.zzf & 1) != 0;
    }

    public final boolean b1() {
        return (this.zzg & 2) != 0;
    }

    public final boolean c1() {
        return (this.zzf & 8388608) != 0;
    }

    public final boolean d1() {
        return (this.zzf & 4) != 0;
    }

    public final boolean e1() {
        return (this.zzf & 1024) != 0;
    }

    public final boolean f1() {
        return (this.zzf & 2) != 0;
    }

    public final boolean g1() {
        return (this.zzf & 32768) != 0;
    }

    public final int h1() {
        return this.zzi.size();
    }

    public final int i1() {
        return this.zzh;
    }

    public final int j1() {
        return this.zzR;
    }

    public final boolean k0() {
        return this.zzA;
    }

    public final int k1() {
        return this.zzt;
    }

    public final boolean l0() {
        return this.zzG;
    }

    public final int l1() {
        return this.zzj.size();
    }

    public final boolean m0() {
        return (this.zzf & 1073741824) != 0;
    }

    public final long m1() {
        return this.zzO;
    }

    public final boolean n0() {
        return (this.zzf & 33554432) != 0;
    }

    public final long n1() {
        return this.zzN;
    }

    public final boolean o0() {
        return (this.zzf & 1048576) != 0;
    }

    public final long o1() {
        return this.zzC;
    }

    public final boolean p0() {
        return (this.zzf & PKIFailureInfo.duplicateCertReq) != 0;
    }

    public final long p1() {
        return this.zzV;
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r82) {
        int r83 = r82 - 1;
        if (r83 == 0) {
            return (byte) 1;
        }
        int r12 = 0;
        if (r83 == 2) {
            return new c8(zze, "\u00011\u0000\u0002\u0001;1\u0000\u0004\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5ဌ(7ဇ)9ဈ*:ဇ+;ဉ,", new Object[]{"zzf", "zzg", "zzh", "zzi", h3.class, "zzj", a4.class, "zzk", "zzl", "zzm", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzF", "zzn", "zzG", "zzH", d3.class, "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzU", "zzV", "zzW", "zzX", "zzY", "zzZ", z2.f3855a, "zzaa", "zzab", "zzac", "zzad"});
        }
        if (r83 == 3) {
            return new q3();
        }
        if (r83 == 4) {
            return new p3(r12);
        }
        if (r83 != 5) {
            return null;
        }
        return zze;
    }

    public final boolean q0() {
        return (this.zzg & 128) != 0;
    }

    public final long q1() {
        return this.zzm;
    }

    public final String r() {
        return this.zzu;
    }

    public final long r1() {
        return this.zzx;
    }

    public final String s() {
        return this.zzw;
    }

    public final long s1() {
        return this.zzo;
    }

    public final String t() {
        return this.zzY;
    }

    public final long t1() {
        return this.zzn;
    }

    public final String u() {
        return this.zzr;
    }

    public final long u1() {
        return this.zzl;
    }

    public final String v() {
        return this.zzP;
    }

    public final long v1() {
        return this.zzk;
    }

    public final String w() {
        return this.zzI;
    }

    public final long w1() {
        return this.zzy;
    }

    public final String x() {
        return this.zzX;
    }

    public final h3 x1(int r22) {
        return this.zzi.get(r22);
    }

    public final String y() {
        return this.zzF;
    }

    public final String z() {
        return this.zzE;
    }
}
