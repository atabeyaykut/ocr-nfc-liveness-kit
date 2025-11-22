package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class r2<T> implements d3<T> {

    /* renamed from: p, reason: collision with root package name */
    public static final int[] f4054p = new int[0];

    /* renamed from: q, reason: collision with root package name */
    public static final Unsafe f4055q = t3.m();

    /* renamed from: a, reason: collision with root package name */
    public final int[] f4056a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f4057b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4058c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4059d;

    /* renamed from: e, reason: collision with root package name */
    public final n2 f4060e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f4061g;

    /* renamed from: h, reason: collision with root package name */
    public final int[] f4062h;

    /* renamed from: i, reason: collision with root package name */
    public final int f4063i;

    /* renamed from: j, reason: collision with root package name */
    public final int f4064j;

    /* renamed from: k, reason: collision with root package name */
    public final u2 f4065k;

    /* renamed from: l, reason: collision with root package name */
    public final z1 f4066l;

    /* renamed from: m, reason: collision with root package name */
    public final n3<?, ?> f4067m;

    /* renamed from: n, reason: collision with root package name */
    public final y0<?> f4068n;

    /* renamed from: o, reason: collision with root package name */
    public final k2 f4069o;

    public r2(int[] r12, Object[] objArr, int r32, int r42, n2 n2Var, boolean z10, int[] r72, int r82, int r92, u2 u2Var, z1 z1Var, n3 n3Var, y0 y0Var, k2 k2Var) {
        this.f4056a = r12;
        this.f4057b = objArr;
        this.f4058c = r32;
        this.f4059d = r42;
        boolean z11 = n2Var instanceof i1;
        this.f4061g = z10;
        this.f = y0Var != null && y0Var.d(n2Var);
        this.f4062h = r72;
        this.f4063i = r82;
        this.f4064j = r92;
        this.f4065k = u2Var;
        this.f4066l = z1Var;
        this.f4067m = n3Var;
        this.f4068n = y0Var;
        this.f4060e = n2Var;
        this.f4069o = k2Var;
    }

    public static int F(long j10, Object obj) {
        return ((Integer) t3.u(j10, obj)).intValue();
    }

    public static long G(long j10, Object obj) {
        return ((Long) t3.u(j10, obj)).longValue();
    }

    public static q3 H(Object obj) {
        i1 i1Var = (i1) obj;
        q3 q3Var = i1Var.zzb;
        if (q3Var != q3.f) {
            return q3Var;
        }
        q3 q3Var2 = new q3();
        i1Var.zzb = q3Var2;
        return q3Var2;
    }

    /* JADX WARN: Removed duplicated region for block: B:179:0x0396  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.vision.r2 l(com.google.android.gms.internal.vision.l2 r33, com.google.android.gms.internal.vision.u2 r34, com.google.android.gms.internal.vision.z1 r35, com.google.android.gms.internal.vision.n3 r36, com.google.android.gms.internal.vision.y0 r37, com.google.android.gms.internal.vision.k2 r38) {
        /*
            Method dump skipped, instructions count: 1052
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.r2.l(com.google.android.gms.internal.vision.l2, com.google.android.gms.internal.vision.u2, com.google.android.gms.internal.vision.z1, com.google.android.gms.internal.vision.n3, com.google.android.gms.internal.vision.y0, com.google.android.gms.internal.vision.k2):com.google.android.gms.internal.vision.r2");
    }

    public static Field n(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + name.length() + String.valueOf(str).length() + 40);
            sb2.append("Field ");
            sb2.append(str);
            sb2.append(" for ");
            sb2.append(name);
            throw new RuntimeException(androidx.camera.camera2.internal.c.h(sb2, " not found. Known fields are ", string));
        }
    }

    public static List o(long j10, Object obj) {
        return (List) t3.u(j10, obj);
    }

    public static void p(int r12, Object obj, u0 u0Var) throws IOException {
        if (!(obj instanceof String)) {
            u0Var.e(r12, (p0) obj);
        } else {
            u0Var.f4102a.n(r12, (String) obj);
        }
    }

    public final void A(int r52, Object obj, Object obj2) {
        int r02 = E(r52);
        int r12 = this.f4056a[r52];
        long j10 = r02 & 1048575;
        if (u(r12, r52, obj2)) {
            Object objU = u(r12, r52, obj) ? t3.u(j10, obj) : null;
            Object objU2 = t3.u(j10, obj2);
            if (objU != null && objU2 != null) {
                t3.j(j10, obj, m1.c(objU, objU2));
                y(r12, r52, obj);
            } else if (objU2 != null) {
                t3.j(j10, obj, objU2);
                y(r12, r52, obj);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x038f  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03f5  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0402  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x040f  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x041c  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0429  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x026a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void B(java.lang.Object r22, com.google.android.gms.internal.vision.u0 r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.r2.B(java.lang.Object, com.google.android.gms.internal.vision.u0):void");
    }

    public final n1 C(int r22) {
        return (n1) this.f4057b[((r22 / 3) << 1) + 1];
    }

    public final boolean D(int r12, Object obj, Object obj2) {
        return v(r12, obj) == v(r12, obj2);
    }

    public final int E(int r22) {
        return this.f4056a[r22 + 1];
    }

    @Override // com.google.android.gms.internal.vision.d3
    public final void a(T t10) {
        int[] r12;
        int r22;
        int r02 = this.f4063i;
        while (true) {
            r12 = this.f4062h;
            r22 = this.f4064j;
            if (r02 >= r22) {
                break;
            }
            long jE = E(r12[r02]) & 1048575;
            Object objU = t3.u(jE, t10);
            if (objU != null) {
                t3.j(jE, t10, this.f4069o.f(objU));
            }
            r02++;
        }
        int length = r12.length;
        while (r22 < length) {
            this.f4066l.b(r12[r22], t10);
            r22++;
        }
        this.f4067m.h(t10);
        if (this.f) {
            this.f4068n.g(t10);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x03b2, code lost:
    
        if (u(r14, r5, r19) != false) goto L322;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x03d2, code lost:
    
        if (u(r14, r5, r19) != false) goto L333;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x03da, code lost:
    
        if (u(r14, r5, r19) != false) goto L336;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x03fa, code lost:
    
        if (u(r14, r5, r19) != false) goto L347;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x0402, code lost:
    
        if (u(r14, r5, r19) != false) goto L350;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x0609, code lost:
    
        if ((r2 & r11) != 0) goto L322;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x060b, code lost:
    
        r2 = com.google.android.gms.internal.vision.t0.z(r14, (com.google.android.gms.internal.vision.n2) r8.getObject(r19, r3), m(r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x0635, code lost:
    
        if ((r2 & r11) != 0) goto L333;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x0637, code lost:
    
        r2 = com.google.android.gms.internal.vision.t0.P(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x063d, code lost:
    
        if ((r2 & r11) != 0) goto L336;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x063f, code lost:
    
        r2 = com.google.android.gms.internal.vision.t0.S(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x065d, code lost:
    
        if ((r2 & r11) != 0) goto L347;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x065f, code lost:
    
        r2 = r8.getObject(r19, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x0665, code lost:
    
        if ((r2 & r11) != 0) goto L350;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x0667, code lost:
    
        r2 = com.google.android.gms.internal.vision.e3.a(r14, m(r5), r8.getObject(r19, r3));
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01ca A[PHI: r11
      0x01ca: PHI (r11v101 int) = 
      (r11v64 int)
      (r11v67 int)
      (r11v70 int)
      (r11v73 int)
      (r11v76 int)
      (r11v79 int)
      (r11v82 int)
      (r11v85 int)
      (r11v88 int)
      (r11v91 int)
      (r11v94 int)
      (r11v97 int)
      (r11v100 int)
      (r11v104 int)
     binds: [B:112:0x01c8, B:109:0x01bb, B:106:0x01ae, B:103:0x01a1, B:100:0x0194, B:97:0x0187, B:94:0x017a, B:91:0x016d, B:88:0x015f, B:85:0x0151, B:82:0x0143, B:79:0x0135, B:76:0x0127, B:73:0x0119] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x02f8 A[PHI: r11
      0x02f8: PHI (r11v139 java.lang.Object) = (r11v22 java.lang.Object), (r11v135 java.lang.Object), (r11v142 java.lang.Object) binds: [B:161:0x02f6, B:44:0x00a3, B:154:0x02d1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0300 A[PHI: r11
      0x0300: PHI (r11v131 java.lang.Object) = (r11v22 java.lang.Object), (r11v135 java.lang.Object) binds: [B:161:0x02f6, B:44:0x00a3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:306:0x055b A[PHI: r2
      0x055b: PHI (r2v128 int) = 
      (r2v91 int)
      (r2v94 int)
      (r2v97 int)
      (r2v100 int)
      (r2v103 int)
      (r2v106 int)
      (r2v109 int)
      (r2v112 int)
      (r2v115 int)
      (r2v118 int)
      (r2v121 int)
      (r2v124 int)
      (r2v127 int)
      (r2v131 int)
     binds: [B:305:0x0559, B:302:0x054c, B:299:0x053f, B:296:0x0532, B:293:0x0525, B:290:0x0518, B:287:0x050b, B:284:0x04fe, B:281:0x04f0, B:278:0x04e2, B:275:0x04d4, B:272:0x04c6, B:269:0x04b8, B:266:0x04aa] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:355:0x067f A[PHI: r2
      0x067f: PHI (r2v164 java.lang.Object) = (r2v36 java.lang.Object), (r2v160 java.lang.Object), (r2v167 java.lang.Object) binds: [B:354:0x067d, B:237:0x0412, B:347:0x065f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:356:0x0686 A[PHI: r2
      0x0686: PHI (r2v156 java.lang.Object) = (r2v36 java.lang.Object), (r2v160 java.lang.Object) binds: [B:354:0x067d, B:237:0x0412] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.vision.d3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int b(T r19) {
        /*
            Method dump skipped, instructions count: 2148
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.r2.b(java.lang.Object):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00f1 A[PHI: r4
      0x00f1: PHI (r4v13 java.lang.Object) = (r4v11 java.lang.Object), (r4v17 java.lang.Object) binds: [B:67:0x00ef, B:62:0x00dd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f6  */
    @Override // com.google.android.gms.internal.vision.d3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int c(T r10) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.r2.c(java.lang.Object):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01b3  */
    @Override // com.google.android.gms.internal.vision.d3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(T r11, T r12) {
        /*
            Method dump skipped, instructions count: 622
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.r2.d(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00a4  */
    @Override // com.google.android.gms.internal.vision.d3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean e(T r14) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.r2.e(java.lang.Object):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03f8  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0410  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0438  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x044c  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0474  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x04b6  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x04ca  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x04de  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x04f2  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0505  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0518  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x052b  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x053e  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0551  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002a  */
    @Override // com.google.android.gms.internal.vision.d3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(java.lang.Object r18, com.google.android.gms.internal.vision.u0 r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.r2.f(java.lang.Object, com.google.android.gms.internal.vision.u0):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x030b, code lost:
    
        if (r0 == r10) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0352, code lost:
    
        if (r0 == r15) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x036e, code lost:
    
        r9 = r16;
        r13 = r19;
        r10 = r27;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v25, types: [int] */
    @Override // com.google.android.gms.internal.vision.d3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(T r30, byte[] r31, int r32, int r33, com.google.android.gms.internal.vision.l0 r34) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 990
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.r2.g(java.lang.Object, byte[], int, int, com.google.android.gms.internal.vision.l0):void");
    }

    @Override // com.google.android.gms.internal.vision.d3
    public final T h() {
        return (T) this.f4065k.a(this.f4060e);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009f A[PHI: r2
      0x009f: PHI (r2v31 int) = (r2v22 int), (r2v23 int), (r2v37 int) binds: [B:33:0x00bb, B:26:0x009b, B:11:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00be A[PHI: r2 r3
      0x00be: PHI (r2v34 int) = (r2v22 int), (r2v37 int) binds: [B:33:0x00bb, B:11:0x004c] A[DONT_GENERATE, DONT_INLINE]
      0x00be: PHI (r3v21 java.lang.Object) = (r3v8 java.lang.Object), (r3v26 java.lang.Object) binds: [B:33:0x00bb, B:11:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int i(T r17, byte[] r18, int r19, int r20, int r21, int r22, int r23, int r24, int r25, long r26, int r28, com.google.android.gms.internal.vision.l0 r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.r2.i(java.lang.Object, byte[], int, int, int, int, int, int, int, long, int, com.google.android.gms.internal.vision.l0):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0270, code lost:
    
        if (r30.f4023b != 0) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0273, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0274, code lost:
    
        r12.l(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0277, code lost:
    
        if (r4 >= r20) goto L280;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0279, code lost:
    
        r6 = com.google.android.gms.internal.vision.k0.i(r18, r4, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x027f, code lost:
    
        if (r21 != r30.f4022a) goto L281;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0281, code lost:
    
        r4 = com.google.android.gms.internal.vision.k0.k(r18, r6, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0289, code lost:
    
        if (r30.f4023b == 0) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x028b, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x0149, code lost:
    
        r12.add(com.google.android.gms.internal.vision.p0.f4044b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x01b8, code lost:
    
        r12.add("");
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x0274, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x013e, code lost:
    
        if (r4 == 0) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0141, code lost:
    
        r12.add(com.google.android.gms.internal.vision.p0.o(r18, r1, r4));
        r1 = r1 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0149, code lost:
    
        if (r1 >= r20) goto L259;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x014b, code lost:
    
        r4 = com.google.android.gms.internal.vision.k0.i(r18, r1, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0151, code lost:
    
        if (r21 != r30.f4022a) goto L260;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0153, code lost:
    
        r1 = com.google.android.gms.internal.vision.k0.i(r18, r4, r30);
        r4 = r30.f4022a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0159, code lost:
    
        if (r4 < 0) goto L261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x015d, code lost:
    
        if (r4 > (r18.length - r1)) goto L262;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x015f, code lost:
    
        if (r4 != 0) goto L263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0161, code lost:
    
        r12.add(com.google.android.gms.internal.vision.p0.f4044b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x016b, code lost:
    
        throw com.google.android.gms.internal.vision.q1.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0170, code lost:
    
        throw com.google.android.gms.internal.vision.q1.b();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01ba  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:104:0x01d0 -> B:96:0x01b4). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:122:0x020e -> B:112:0x01e8). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:160:0x0289 -> B:154:0x0273). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:76:0x015f -> B:68:0x0141). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int j(T r17, byte[] r18, int r19, int r20, int r21, int r22, int r23, int r24, long r25, int r27, long r28, com.google.android.gms.internal.vision.l0 r30) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1030
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.r2.j(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.vision.l0):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:157:0x04a9, code lost:
    
        if (r6 == r3) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x04ab, code lost:
    
        r28.putInt(r11, r6, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x04b1, code lost:
    
        r4 = r7.f4063i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x04b5, code lost:
    
        if (r4 >= r7.f4064j) goto L221;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x04b7, code lost:
    
        r5 = r7.f4062h[r4];
        r6 = r24[r5];
        r6 = com.google.android.gms.internal.vision.t3.u(r7.E(r5) & r3, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x04c7, code lost:
    
        if (r6 != null) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x04ca, code lost:
    
        r8 = r7.C(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x04ce, code lost:
    
        if (r8 != null) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x04d1, code lost:
    
        r9 = r7.f4069o;
        r6 = r9.c(r6);
        r9.b(r7.x(r5));
        r5 = r6.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x04ea, code lost:
    
        if (r5.hasNext() == false) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x04ec, code lost:
    
        r6 = (java.util.Map.Entry) r5.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0500, code lost:
    
        if (r8.f(((java.lang.Integer) r6.getValue()).intValue()) == false) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0503, code lost:
    
        r7.f4067m.a();
        r6.getKey();
        r6.getValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x050e, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x050f, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0512, code lost:
    
        if (r1 != 0) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0516, code lost:
    
        if (r0 != r34) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x051d, code lost:
    
        throw com.google.android.gms.internal.vision.q1.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0520, code lost:
    
        if (r0 > r34) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0522, code lost:
    
        if (r2 != r1) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0524, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x0529, code lost:
    
        throw com.google.android.gms.internal.vision.q1.c();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int k(T r31, byte[] r32, int r33, int r34, int r35, com.google.android.gms.internal.vision.l0 r36) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.r2.k(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.vision.l0):int");
    }

    public final d3 m(int r42) {
        int r43 = (r42 / 3) << 1;
        Object[] objArr = this.f4057b;
        d3 d3Var = (d3) objArr[r43];
        if (d3Var != null) {
            return d3Var;
        }
        d3<T> d3VarA = a3.f3885c.a((Class) objArr[r43 + 1]);
        objArr[r43] = d3VarA;
        return d3VarA;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    @Override // com.google.android.gms.internal.vision.d3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.r2.q(java.lang.Object, java.lang.Object):void");
    }

    public final void r(int r42, Object obj, Object obj2) {
        long jE = E(r42) & 1048575;
        if (v(r42, obj2)) {
            Object objU = t3.u(jE, obj);
            Object objU2 = t3.u(jE, obj2);
            if (objU != null && objU2 != null) {
                t3.j(jE, obj, m1.c(objU, objU2));
                z(r42, obj);
            } else if (objU2 != null) {
                t3.j(jE, obj, objU2);
                z(r42, obj);
            }
        }
    }

    public final void s(u0 u0Var, int r32, Object obj, int r52) throws IOException {
        if (obj != null) {
            Object objX = x(r52);
            k2 k2Var = this.f4069o;
            k2Var.b(objX);
            i2 i2VarA = k2Var.a(obj);
            u0Var.getClass();
            Iterator it = i2VarA.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                u0Var.f4102a.i(r32, 2);
                entry.getKey();
                entry.getValue();
                throw null;
            }
        }
    }

    public final void t(Object obj, byte[] bArr, int r72, int r82, int r92, long j10, l0 l0Var) throws IOException {
        Object objX = x(r92);
        Unsafe unsafe = f4055q;
        Object object = unsafe.getObject(obj, j10);
        k2 k2Var = this.f4069o;
        if (k2Var.e(object)) {
            i2 i2VarK = k2Var.k();
            k2Var.d((Object) i2VarK, object);
            unsafe.putObject(obj, j10, i2VarK);
            object = i2VarK;
        }
        k2Var.b(objX);
        k2Var.c(object);
        int i10 = k0.i(bArr, r72, l0Var);
        int r6 = l0Var.f4022a;
        if (r6 >= 0 && r6 <= r82 - i10) {
            throw null;
        }
        throw q1.a();
    }

    public final boolean u(int r32, int r42, Object obj) {
        return t3.b((long) (this.f4056a[r42 + 2] & 1048575), obj) == r32;
    }

    public final boolean v(int r10, Object obj) {
        int r02 = this.f4056a[r10 + 2];
        long j10 = r02 & 1048575;
        if (j10 != 1048575) {
            return ((1 << (r02 >>> 20)) & t3.b(j10, obj)) != 0;
        }
        int r102 = E(r10);
        long j11 = r102 & 1048575;
        switch ((r102 & 267386880) >>> 20) {
            case 0:
                return t3.t(j11, obj) != 0.0d;
            case 1:
                return t3.q(j11, obj) != 0.0f;
            case 2:
                return t3.l(j11, obj) != 0;
            case 3:
                return t3.l(j11, obj) != 0;
            case 4:
                return t3.b(j11, obj) != 0;
            case 5:
                return t3.l(j11, obj) != 0;
            case 6:
                return t3.b(j11, obj) != 0;
            case 7:
                return t3.p(j11, obj);
            case 8:
                Object objU = t3.u(j11, obj);
                if (objU instanceof String) {
                    return !((String) objU).isEmpty();
                }
                if (objU instanceof p0) {
                    return !p0.f4044b.equals(objU);
                }
                throw new IllegalArgumentException();
            case 9:
                return t3.u(j11, obj) != null;
            case 10:
                return !p0.f4044b.equals(t3.u(j11, obj));
            case 11:
                return t3.b(j11, obj) != 0;
            case 12:
                return t3.b(j11, obj) != 0;
            case 13:
                return t3.b(j11, obj) != 0;
            case 14:
                return t3.l(j11, obj) != 0;
            case 15:
                return t3.b(j11, obj) != 0;
            case 16:
                return t3.l(j11, obj) != 0;
            case 17:
                return t3.u(j11, obj) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final int w(int r6, int r72) {
        int[] r02 = this.f4056a;
        int length = (r02.length / 3) - 1;
        while (r72 <= length) {
            int r22 = (length + r72) >>> 1;
            int r32 = r22 * 3;
            int r42 = r02[r32];
            if (r6 == r42) {
                return r32;
            }
            if (r6 < r42) {
                length = r22 - 1;
            } else {
                r72 = r22 + 1;
            }
        }
        return -1;
    }

    public final Object x(int r22) {
        return this.f4057b[(r22 / 3) << 1];
    }

    public final void y(int r32, int r42, Object obj) {
        t3.i(r32, this.f4056a[r42 + 2] & 1048575, obj);
    }

    public final void z(int r6, Object obj) {
        int r62 = this.f4056a[r6 + 2];
        long j10 = 1048575 & r62;
        if (j10 == 1048575) {
            return;
        }
        t3.i((1 << (r62 >>> 20)) | t3.b(j10, obj), j10, obj);
    }
}
