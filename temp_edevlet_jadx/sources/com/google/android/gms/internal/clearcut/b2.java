package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class b2<T> implements o2<T> {

    /* renamed from: q, reason: collision with root package name */
    public static final Unsafe f3034q = g3.l();

    /* renamed from: a, reason: collision with root package name */
    public final int[] f3035a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f3036b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3037c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3038d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3039e;
    public final x1 f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f3040g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f3041h;

    /* renamed from: i, reason: collision with root package name */
    public final int[] f3042i;

    /* renamed from: j, reason: collision with root package name */
    public final int[] f3043j;

    /* renamed from: k, reason: collision with root package name */
    public final int[] f3044k;

    /* renamed from: l, reason: collision with root package name */
    public final e2 f3045l;

    /* renamed from: m, reason: collision with root package name */
    public final k1 f3046m;

    /* renamed from: n, reason: collision with root package name */
    public final a3<?, ?> f3047n;

    /* renamed from: o, reason: collision with root package name */
    public final j0<?> f3048o;

    /* renamed from: p, reason: collision with root package name */
    public final s1 f3049p;

    public b2(int[] r12, Object[] objArr, int r32, int r42, int r52, x1 x1Var, boolean z10, int[] r82, int[] r92, int[] r10, e2 e2Var, k1 k1Var, a3 a3Var, j0 j0Var, s1 s1Var) {
        this.f3035a = r12;
        this.f3036b = objArr;
        this.f3037c = r32;
        this.f3038d = r42;
        this.f3039e = r52;
        boolean z11 = x1Var instanceof v0;
        this.f3041h = z10;
        this.f3040g = j0Var != null && j0Var.f(x1Var);
        this.f3042i = r82;
        this.f3043j = r92;
        this.f3044k = r10;
        this.f3045l = e2Var;
        this.f3046m = k1Var;
        this.f3047n = a3Var;
        this.f3048o = j0Var;
        this.f = x1Var;
        this.f3049p = s1Var;
    }

    public static List G(long j10, Object obj) {
        return (List) g3.w(j10, obj);
    }

    public static int H(long j10, Object obj) {
        return ((Integer) g3.w(j10, obj)).intValue();
    }

    public static long I(long j10, Object obj) {
        return ((Long) g3.w(j10, obj)).longValue();
    }

    public static int j(o2<?> o2Var, int r32, byte[] bArr, int r52, int r6, a1<?> a1Var, t tVar) throws IOException {
        int r53 = l(o2Var, bArr, r52, r6, tVar);
        while (true) {
            a1Var.add(tVar.f3314c);
            if (r53 >= r6) {
                break;
            }
            int r02 = s.e(bArr, r53, tVar);
            if (r32 != tVar.f3312a) {
                break;
            }
            r53 = l(o2Var, bArr, r02, r6, tVar);
        }
        return r53;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int k(o2 o2Var, byte[] bArr, int r10, int r11, int r12, t tVar) throws IOException {
        b2 b2Var = (b2) o2Var;
        Object objC = b2Var.c();
        int r92 = b2Var.o(objC, bArr, r10, r11, r12, tVar);
        b2Var.a(objC);
        tVar.f3314c = objC;
        return r92;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int l(o2 o2Var, byte[] bArr, int r82, int r92, t tVar) throws IOException {
        int r02 = r82 + 1;
        int r83 = bArr[r82];
        if (r83 < 0) {
            r02 = s.d(r83, bArr, r02, tVar);
            r83 = tVar.f3312a;
        }
        int r32 = r02;
        if (r83 < 0 || r83 > r92 - r32) {
            throw b1.a();
        }
        Object objC = o2Var.c();
        int r84 = r83 + r32;
        o2Var.g(objC, bArr, r32, r84, tVar);
        o2Var.a(objC);
        tVar.f3314c = objC;
        return r84;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01ac A[EDGE_INSN: B:109:0x01ac->B:105:0x01ac BREAK  A[LOOP:0: B:22:0x004a->B:103:0x019c], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0181  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.clearcut.b2 p(com.google.android.gms.internal.clearcut.v1 r22, com.google.android.gms.internal.clearcut.e2 r23, com.google.android.gms.internal.clearcut.k1 r24, com.google.android.gms.internal.clearcut.a3 r25, com.google.android.gms.internal.clearcut.j0 r26, com.google.android.gms.internal.clearcut.s1 r27) {
        /*
            Method dump skipped, instructions count: 462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.b2.p(com.google.android.gms.internal.clearcut.v1, com.google.android.gms.internal.clearcut.e2, com.google.android.gms.internal.clearcut.k1, com.google.android.gms.internal.clearcut.a3, com.google.android.gms.internal.clearcut.j0, com.google.android.gms.internal.clearcut.s1):com.google.android.gms.internal.clearcut.b2");
    }

    public static void q(int r12, Object obj, f0 f0Var) throws IOException {
        if (!(obj instanceof String)) {
            f0Var.d(r12, (x) obj);
        } else {
            f0Var.f3115a.n(r12, (String) obj);
        }
    }

    public final int A(int r82) {
        int r12 = this.f3037c;
        if (r82 >= r12) {
            int[] r22 = this.f3035a;
            int r32 = this.f3039e;
            if (r82 < r32) {
                int r13 = (r82 - r12) << 2;
                if (r22[r13] == r82) {
                    return r13;
                }
                return -1;
            }
            if (r82 <= this.f3038d) {
                int r33 = r32 - r12;
                int length = (r22.length / 4) - 1;
                while (r33 <= length) {
                    int r42 = (length + r33) >>> 1;
                    int r52 = r42 << 2;
                    int r6 = r22[r52];
                    if (r82 == r6) {
                        return r52;
                    }
                    if (r82 < r6) {
                        length = r42 - 1;
                    } else {
                        r33 = r42 + 1;
                    }
                }
            }
        }
        return -1;
    }

    public final void B(int r32, int r42, Object obj) {
        g3.i(r32, this.f3035a[r42 + 2] & 1048575, obj);
    }

    public final void C(int r42, Object obj) {
        if (this.f3041h) {
            return;
        }
        int r43 = this.f3035a[r42 + 2];
        long j10 = r43 & 1048575;
        g3.i(g3.r(j10, obj) | (1 << (r43 >>> 20)), j10, obj);
    }

    public final void D(int r52, Object obj, Object obj2) {
        int r02 = z(r52);
        int r12 = this.f3035a[r52];
        long j10 = r02 & 1048575;
        if (u(r12, r52, obj2)) {
            Object objW = g3.w(j10, obj);
            Object objW2 = g3.w(j10, obj2);
            if (objW != null && objW2 != null) {
                g3.j(j10, obj, x0.a(objW, objW2));
                B(r12, r52, obj);
            } else if (objW2 != null) {
                g3.j(j10, obj, objW2);
                B(r12, r52, obj);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x035e  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x03f9  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x028b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void E(java.lang.Object r21, com.google.android.gms.internal.clearcut.f0 r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.b2.E(java.lang.Object, com.google.android.gms.internal.clearcut.f0):void");
    }

    public final boolean F(int r12, Object obj, Object obj2) {
        return v(r12, obj) == v(r12, obj2);
    }

    @Override // com.google.android.gms.internal.clearcut.o2
    public final void a(T t10) {
        int[] r12 = this.f3043j;
        if (r12 != null) {
            for (int r02 : r12) {
                long jZ = z(r02) & 1048575;
                Object objW = g3.w(jZ, t10);
                if (objW != null) {
                    g3.j(jZ, t10, this.f3049p.p(objW));
                }
            }
        }
        int[] r13 = this.f3044k;
        if (r13 != null) {
            for (int r03 : r13) {
                this.f3046m.a(r03, t10);
            }
        }
        this.f3047n.c(t10);
        if (this.f3040g) {
            this.f3048o.e(t10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01a3  */
    @Override // com.google.android.gms.internal.clearcut.o2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(T r11, T r12) {
        /*
            Method dump skipped, instructions count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.b2.b(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.clearcut.o2
    public final T c() {
        return (T) this.f3045l.a(this.f);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00f1 A[PHI: r4
      0x00f1: PHI (r4v13 java.lang.Object) = (r4v11 java.lang.Object), (r4v17 java.lang.Object) binds: [B:67:0x00ef, B:62:0x00dd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f6  */
    @Override // com.google.android.gms.internal.clearcut.o2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int d(T r10) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.b2.d(java.lang.Object):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    @Override // com.google.android.gms.internal.clearcut.o2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.b2.e(java.lang.Object, java.lang.Object):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x03b3, code lost:
    
        if (u(r14, r10, r18) != false) goto L322;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x03d3, code lost:
    
        if (u(r14, r10, r18) != false) goto L333;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x03db, code lost:
    
        if (u(r14, r10, r18) != false) goto L336;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x03fb, code lost:
    
        if (u(r14, r10, r18) != false) goto L347;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x0403, code lost:
    
        if (u(r14, r10, r18) != false) goto L350;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x060a, code lost:
    
        if ((r2 & r12) != 0) goto L322;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x060c, code lost:
    
        r2 = com.google.android.gms.internal.clearcut.e0.A(r14, (com.google.android.gms.internal.clearcut.x1) r8.getObject(r18, r3), w(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x0637, code lost:
    
        if ((r2 & r12) != 0) goto L333;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x0639, code lost:
    
        r2 = com.google.android.gms.internal.clearcut.e0.M(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x0640, code lost:
    
        if ((r2 & r12) != 0) goto L336;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x0642, code lost:
    
        r2 = com.google.android.gms.internal.clearcut.e0.R(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x0663, code lost:
    
        if ((r2 & r12) != 0) goto L347;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x0665, code lost:
    
        r2 = r8.getObject(r18, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x066b, code lost:
    
        if ((r2 & r12) != 0) goto L350;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x066d, code lost:
    
        r2 = com.google.android.gms.internal.clearcut.q2.k(r14, w(r10), r8.getObject(r18, r3));
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01c9 A[PHI: r11
      0x01c9: PHI (r11v100 int) = 
      (r11v63 int)
      (r11v66 int)
      (r11v69 int)
      (r11v72 int)
      (r11v75 int)
      (r11v78 int)
      (r11v81 int)
      (r11v84 int)
      (r11v87 int)
      (r11v90 int)
      (r11v93 int)
      (r11v96 int)
      (r11v99 int)
      (r11v103 int)
     binds: [B:112:0x01c7, B:109:0x01ba, B:106:0x01ad, B:103:0x01a0, B:100:0x0193, B:97:0x0186, B:94:0x0179, B:91:0x016c, B:88:0x015e, B:85:0x0150, B:82:0x0142, B:79:0x0134, B:76:0x0126, B:73:0x0118] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x02f7 A[PHI: r11
      0x02f7: PHI (r11v138 java.lang.Object) = (r11v21 java.lang.Object), (r11v134 java.lang.Object), (r11v141 java.lang.Object) binds: [B:161:0x02f5, B:44:0x00a3, B:154:0x02d0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02ff A[PHI: r11
      0x02ff: PHI (r11v130 java.lang.Object) = (r11v21 java.lang.Object), (r11v134 java.lang.Object) binds: [B:161:0x02f5, B:44:0x00a3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:306:0x055b A[PHI: r2
      0x055b: PHI (r2v124 int) = 
      (r2v87 int)
      (r2v90 int)
      (r2v93 int)
      (r2v96 int)
      (r2v99 int)
      (r2v102 int)
      (r2v105 int)
      (r2v108 int)
      (r2v111 int)
      (r2v114 int)
      (r2v117 int)
      (r2v120 int)
      (r2v123 int)
      (r2v128 int)
     binds: [B:305:0x0559, B:302:0x054c, B:299:0x053f, B:296:0x0532, B:293:0x0525, B:290:0x0518, B:287:0x050b, B:284:0x04fe, B:281:0x04f0, B:278:0x04e2, B:275:0x04d4, B:272:0x04c6, B:269:0x04b8, B:266:0x04aa] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:355:0x0685 A[PHI: r2
      0x0685: PHI (r2v161 java.lang.Object) = (r2v32 java.lang.Object), (r2v157 java.lang.Object), (r2v164 java.lang.Object) binds: [B:354:0x0683, B:237:0x0413, B:347:0x0665] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:356:0x068c A[PHI: r2
      0x068c: PHI (r2v153 java.lang.Object) = (r2v32 java.lang.Object), (r2v157 java.lang.Object) binds: [B:354:0x0683, B:237:0x0413] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:384:0x06e5  */
    @Override // com.google.android.gms.internal.clearcut.o2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int f(T r18) {
        /*
            Method dump skipped, instructions count: 2092
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.b2.f(java.lang.Object):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0167, code lost:
    
        if (r0 == r15) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01a3, code lost:
    
        if (r0 == r15) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01a5, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01b5  */
    /* JADX WARN: Type inference failed for: r1v28, types: [int] */
    /* JADX WARN: Type inference failed for: r23v0, types: [T, java.lang.Object] */
    @Override // com.google.android.gms.internal.clearcut.o2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(T r23, byte[] r24, int r25, int r26, com.google.android.gms.internal.clearcut.t r27) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.b2.g(java.lang.Object, byte[], int, int, com.google.android.gms.internal.clearcut.t):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0366  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0378  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x040e  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x045e  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0472  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x049c  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x04b4  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x04dc  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x04f0  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0503  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0516  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0529  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x053c  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x054f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    @Override // com.google.android.gms.internal.clearcut.o2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(java.lang.Object r18, com.google.android.gms.internal.clearcut.f0 r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.b2.h(java.lang.Object, com.google.android.gms.internal.clearcut.f0):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00e4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0107 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.clearcut.o2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean i(T r18) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.b2.i(java.lang.Object):boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d5 A[PHI: r2
      0x00d5: PHI (r2v32 int) = (r2v21 int), (r2v38 int) binds: [B:38:0x00d3, B:11:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d9 A[PHI: r2 r3
      0x00d9: PHI (r2v35 int) = (r2v21 int), (r2v38 int) binds: [B:38:0x00d3, B:11:0x004c] A[DONT_GENERATE, DONT_INLINE]
      0x00d9: PHI (r3v23 java.lang.Object) = (r3v8 java.lang.Object), (r3v28 java.lang.Object) binds: [B:38:0x00d3, B:11:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m(T r17, byte[] r18, int r19, int r20, int r21, int r22, int r23, int r24, int r25, long r26, int r28, com.google.android.gms.internal.clearcut.t r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.b2.m(java.lang.Object, byte[], int, int, int, int, int, int, int, long, int, com.google.android.gms.internal.clearcut.t):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0232, code lost:
    
        if (r30.f3313b != 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0235, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0236, code lost:
    
        r12.l(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0239, code lost:
    
        if (r4 >= r20) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x023b, code lost:
    
        r6 = com.google.android.gms.internal.clearcut.s.e(r18, r4, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0241, code lost:
    
        if (r21 != r30.f3312a) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0243, code lost:
    
        r4 = com.google.android.gms.internal.clearcut.s.h(r18, r6, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x024b, code lost:
    
        if (r30.f3313b == 0) goto L251;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x024d, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x0141, code lost:
    
        r12.add(com.google.android.gms.internal.clearcut.x.f3341b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x0194, code lost:
    
        r12.add("");
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x0236, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0136, code lost:
    
        if (r4 == 0) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0139, code lost:
    
        r12.add(com.google.android.gms.internal.clearcut.x.u(r18, r1, r4));
        r1 = r1 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0141, code lost:
    
        if (r1 >= r20) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0143, code lost:
    
        r4 = com.google.android.gms.internal.clearcut.s.e(r18, r1, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0149, code lost:
    
        if (r21 != r30.f3312a) goto L234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x014b, code lost:
    
        r1 = com.google.android.gms.internal.clearcut.s.e(r18, r4, r30);
        r4 = r30.f3312a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0151, code lost:
    
        if (r4 != 0) goto L235;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0153, code lost:
    
        r12.add(com.google.android.gms.internal.clearcut.x.f3341b);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01cc  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:100:0x01da -> B:91:0x01b6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:134:0x024b -> B:128:0x0235). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x0151 -> B:65:0x0139). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:88:0x01aa -> B:81:0x0190). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int n(T r17, byte[] r18, int r19, int r20, int r21, int r22, int r23, int r24, long r25, int r27, long r28, com.google.android.gms.internal.clearcut.t r30) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 968
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.b2.n(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.clearcut.t):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x031d, code lost:
    
        if (r0 == r24) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0372, code lost:
    
        if (r0 == r14) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0374, code lost:
    
        r2 = r0;
        r1 = r38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0378, code lost:
    
        r1 = r38;
        r9 = r20;
        r7 = r28;
        r8 = r29;
     */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0399 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x03a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int o(T r34, byte[] r35, int r36, int r37, int r38, com.google.android.gms.internal.clearcut.t r39) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1154
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.b2.o(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.clearcut.t):int");
    }

    public final void r(int r42, Object obj, Object obj2) {
        long jZ = z(r42) & 1048575;
        if (v(r42, obj2)) {
            Object objW = g3.w(jZ, obj);
            Object objW2 = g3.w(jZ, obj2);
            if (objW != null && objW2 != null) {
                g3.j(jZ, obj, x0.a(objW, objW2));
                C(r42, obj);
            } else if (objW2 != null) {
                g3.j(jZ, obj, objW2);
                C(r42, obj);
            }
        }
    }

    public final void s(f0 f0Var, int r22, Object obj, int r42) throws IOException {
        if (obj != null) {
            x(r42);
            s1 s1Var = this.f3049p;
            s1Var.o();
            r1 r1VarS = s1Var.s(obj);
            f0Var.getClass();
            Iterator it = r1VarS.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                f0Var.f3115a.s(r22, 2);
                entry.getKey();
                entry.getValue();
                throw null;
            }
        }
    }

    public final void t(Object obj, byte[] bArr, int r6, int r72, int r82, long j10, t tVar) throws IOException {
        x(r82);
        Unsafe unsafe = f3034q;
        Object object = unsafe.getObject(obj, j10);
        s1 s1Var = this.f3049p;
        if (s1Var.r(object)) {
            r1 r1VarF = s1Var.f();
            s1Var.q(r1VarF, object);
            unsafe.putObject(obj, j10, r1VarF);
            object = r1VarF;
        }
        s1Var.o();
        s1Var.t(object);
        int r42 = s.e(bArr, r6, tVar);
        int r52 = tVar.f3312a;
        if (r52 >= 0 && r52 <= r72 - r42) {
            throw null;
        }
        throw b1.a();
    }

    public final boolean u(int r32, int r42, Object obj) {
        return g3.r((long) (this.f3035a[r42 + 2] & 1048575), obj) == r32;
    }

    public final boolean v(int r72, Object obj) {
        if (!this.f3041h) {
            int r73 = this.f3035a[r72 + 2];
            return (g3.r((long) (r73 & 1048575), obj) & (1 << (r73 >>> 20))) != 0;
        }
        int r74 = z(r72);
        long j10 = r74 & 1048575;
        switch ((r74 & 267386880) >>> 20) {
            case 0:
                return g3.v(j10, obj) != 0.0d;
            case 1:
                return g3.u(j10, obj) != 0.0f;
            case 2:
                return g3.s(j10, obj) != 0;
            case 3:
                return g3.s(j10, obj) != 0;
            case 4:
                return g3.r(j10, obj) != 0;
            case 5:
                return g3.s(j10, obj) != 0;
            case 6:
                return g3.r(j10, obj) != 0;
            case 7:
                return g3.t(j10, obj);
            case 8:
                Object objW = g3.w(j10, obj);
                if (objW instanceof String) {
                    return !((String) objW).isEmpty();
                }
                if (objW instanceof x) {
                    return !x.f3341b.equals(objW);
                }
                throw new IllegalArgumentException();
            case 9:
                return g3.w(j10, obj) != null;
            case 10:
                return !x.f3341b.equals(g3.w(j10, obj));
            case 11:
                return g3.r(j10, obj) != 0;
            case 12:
                return g3.r(j10, obj) != 0;
            case 13:
                return g3.r(j10, obj) != 0;
            case 14:
                return g3.s(j10, obj) != 0;
            case 15:
                return g3.r(j10, obj) != 0;
            case 16:
                return g3.s(j10, obj) != 0;
            case 17:
                return g3.w(j10, obj) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final o2 w(int r42) {
        int r43 = (r42 / 4) << 1;
        Object[] objArr = this.f3036b;
        o2 o2Var = (o2) objArr[r43];
        if (o2Var != null) {
            return o2Var;
        }
        o2<T> o2VarA = j2.f3165c.a((Class) objArr[r43 + 1]);
        objArr[r43] = o2VarA;
        return o2VarA;
    }

    public final Object x(int r22) {
        return this.f3036b[(r22 / 4) << 1];
    }

    public final z0<?> y(int r22) {
        return (z0) this.f3036b[((r22 / 4) << 1) + 1];
    }

    public final int z(int r22) {
        return this.f3035a[r22 + 1];
    }
}
