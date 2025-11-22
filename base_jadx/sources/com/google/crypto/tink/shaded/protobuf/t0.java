package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.e;
import com.google.crypto.tink.shaded.protobuf.z;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import sun.misc.Unsafe;

/* loaded from: classes2.dex */
public final class t0<T> implements e1<T> {

    /* renamed from: r, reason: collision with root package name */
    public static final int[] f4362r = new int[0];

    /* renamed from: s, reason: collision with root package name */
    public static final Unsafe f4363s = n1.o();

    /* renamed from: a, reason: collision with root package name */
    public final int[] f4364a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f4365b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4366c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4367d;

    /* renamed from: e, reason: collision with root package name */
    public final q0 f4368e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f4369g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f4370h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f4371i;

    /* renamed from: j, reason: collision with root package name */
    public final int[] f4372j;

    /* renamed from: k, reason: collision with root package name */
    public final int f4373k;

    /* renamed from: l, reason: collision with root package name */
    public final int f4374l;

    /* renamed from: m, reason: collision with root package name */
    public final v0 f4375m;

    /* renamed from: n, reason: collision with root package name */
    public final g0 f4376n;

    /* renamed from: o, reason: collision with root package name */
    public final j1<?, ?> f4377o;

    /* renamed from: p, reason: collision with root package name */
    public final q<?> f4378p;

    /* renamed from: q, reason: collision with root package name */
    public final l0 f4379q;

    public t0(int[] r12, Object[] objArr, int r32, int r42, q0 q0Var, boolean z10, int[] r72, int r82, int r92, v0 v0Var, g0 g0Var, j1 j1Var, q qVar, l0 l0Var) {
        this.f4364a = r12;
        this.f4365b = objArr;
        this.f4366c = r32;
        this.f4367d = r42;
        this.f4369g = q0Var instanceof x;
        this.f4370h = z10;
        this.f = qVar != null && qVar.e(q0Var);
        this.f4371i = false;
        this.f4372j = r72;
        this.f4373k = r82;
        this.f4374l = r92;
        this.f4375m = v0Var;
        this.f4376n = g0Var;
        this.f4377o = j1Var;
        this.f4378p = qVar;
        this.f4368e = q0Var;
        this.f4379q = l0Var;
    }

    public static Field I(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            StringBuilder sbL = android.support.v4.media.a.l("Field ", str, " for ");
            sbL.append(cls.getName());
            sbL.append(" not found. Known fields are ");
            sbL.append(Arrays.toString(declaredFields));
            throw new RuntimeException(sbL.toString());
        }
    }

    public static void P(int r12, Object obj, m mVar) throws IOException {
        if (!(obj instanceof String)) {
            mVar.b(r12, (i) obj);
        } else {
            mVar.f4320a.K(r12, (String) obj);
        }
    }

    public static k1 p(Object obj) {
        x xVar = (x) obj;
        k1 k1Var = xVar.unknownFields;
        if (k1Var != k1.f) {
            return k1Var;
        }
        k1 k1Var2 = new k1();
        xVar.unknownFields = k1Var2;
        return k1Var2;
    }

    public static List u(long j10, Object obj) {
        return (List) n1.n(j10, obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:182:0x03b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.crypto.tink.shaded.protobuf.t0<T> w(com.google.crypto.tink.shaded.protobuf.c1 r36, com.google.crypto.tink.shaded.protobuf.v0 r37, com.google.crypto.tink.shaded.protobuf.g0 r38, com.google.crypto.tink.shaded.protobuf.j1<?, ?> r39, com.google.crypto.tink.shaded.protobuf.q<?> r40, com.google.crypto.tink.shaded.protobuf.l0 r41) {
        /*
            Method dump skipped, instructions count: 1058
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.t0.w(com.google.crypto.tink.shaded.protobuf.c1, com.google.crypto.tink.shaded.protobuf.v0, com.google.crypto.tink.shaded.protobuf.g0, com.google.crypto.tink.shaded.protobuf.j1, com.google.crypto.tink.shaded.protobuf.q, com.google.crypto.tink.shaded.protobuf.l0):com.google.crypto.tink.shaded.protobuf.t0");
    }

    public static int x(long j10, Object obj) {
        return ((Integer) n1.n(j10, obj)).intValue();
    }

    public static long y(long j10, Object obj) {
        return ((Long) n1.n(j10, obj)).longValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a1 A[PHI: r2
      0x00a1: PHI (r2v30 int) = (r2v22 int), (r2v23 int), (r2v36 int) binds: [B:34:0x00bd, B:27:0x009d, B:11:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c0 A[PHI: r2 r3
      0x00c0: PHI (r2v33 int) = (r2v22 int), (r2v36 int) binds: [B:34:0x00bd, B:11:0x004c] A[DONT_GENERATE, DONT_INLINE]
      0x00c0: PHI (r3v21 java.lang.Object) = (r3v8 java.lang.Object), (r3v26 java.lang.Object) binds: [B:34:0x00bd, B:11:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int A(T r17, byte[] r18, int r19, int r20, int r21, int r22, int r23, int r24, int r25, long r26, int r28, com.google.crypto.tink.shaded.protobuf.e.a r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.t0.A(java.lang.Object, byte[], int, int, int, int, int, int, int, long, int, com.google.crypto.tink.shaded.protobuf.e$a):int");
    }

    public final int B(T t10, byte[] bArr, int r31, int r32, int r33, e.a aVar) throws IOException {
        Unsafe unsafe;
        t0<T> t0Var;
        Object obj;
        T t11;
        int r34;
        int r02;
        int r22;
        int r20;
        int r24;
        int r17;
        int r82;
        int r72;
        int r18;
        int r21;
        int r15;
        int r42;
        int r52;
        int r10;
        int r43;
        long j10;
        long jC;
        int r83;
        long j11;
        int r12;
        int r53;
        int r03;
        int r35;
        long j12;
        boolean z10;
        int r04;
        long j13;
        long j14;
        int r36;
        t0<T> t0Var2 = this;
        T t12 = t10;
        byte[] bArr2 = bArr;
        int r13 = r32;
        e.a aVar2 = aVar;
        Unsafe unsafe2 = f4363s;
        int r05 = r31;
        int r14 = r33;
        int r23 = -1;
        int r37 = 0;
        int r44 = 0;
        int r6 = -1;
        int r73 = 0;
        while (true) {
            if (r05 < r13) {
                int r45 = r05 + 1;
                int r06 = bArr2[r05];
                if (r06 < 0) {
                    r45 = e.G(r06, bArr2, r45, aVar2);
                    r06 = aVar2.f4252a;
                }
                int r102 = r06 >>> 3;
                int r84 = r06 & 7;
                int r54 = t0Var2.f4367d;
                int r182 = r06;
                int r07 = t0Var2.f4366c;
                int r19 = r14;
                if (r102 > r23) {
                    r34 = (r102 < r07 || r102 > r54) ? -1 : t0Var2.L(r102, r37 / 3);
                    r02 = -1;
                } else {
                    r34 = (r102 < r07 || r102 > r54) ? -1 : t0Var2.L(r102, 0);
                    r02 = -1;
                }
                if (r34 == r02) {
                    r22 = r45;
                    r20 = r6;
                    r24 = r73;
                    unsafe = unsafe2;
                    r17 = r102;
                    r82 = r182;
                    r72 = r19;
                    obj = null;
                    r18 = 0;
                } else {
                    int[] r25 = t0Var2.f4364a;
                    int r08 = r25[r34 + 1];
                    int r16 = (r08 & 267386880) >>> 20;
                    long j15 = r08 & 1048575;
                    if (r16 <= 17) {
                        int r26 = r25[r34 + 2];
                        int r222 = 1 << (r26 >>> 20);
                        int r27 = r26 & 1048575;
                        if (r27 != r6) {
                            if (r6 != -1) {
                                unsafe2.putInt(t12, r6, r73);
                            }
                            r73 = unsafe2.getInt(t12, r27);
                            r6 = r27;
                        }
                        switch (r16) {
                            case 0:
                                r52 = r45;
                                r17 = r102;
                                r21 = r182;
                                r10 = r34;
                                bArr2 = bArr;
                                r13 = r32;
                                if (r84 == 1) {
                                    n1.t(t12, j15, e.d(r52, bArr2));
                                    r43 = r52 + 8;
                                    r05 = r43;
                                    r73 |= r222;
                                    r14 = r33;
                                    r37 = r10;
                                    r23 = r17;
                                    r44 = r21;
                                    break;
                                } else {
                                    r42 = r52;
                                    unsafe = unsafe2;
                                    r18 = r10;
                                    r22 = r42;
                                    r20 = r6;
                                    r24 = r73;
                                    r82 = r21;
                                    obj = null;
                                    r72 = r33;
                                    break;
                                }
                            case 1:
                                r52 = r45;
                                r17 = r102;
                                r21 = r182;
                                r10 = r34;
                                bArr2 = bArr;
                                r13 = r32;
                                if (r84 == 5) {
                                    n1.u(t12, j15, e.k(r52, bArr2));
                                    r43 = r52 + 4;
                                    r05 = r43;
                                    r73 |= r222;
                                    r14 = r33;
                                    r37 = r10;
                                    r23 = r17;
                                    r44 = r21;
                                    break;
                                } else {
                                    r42 = r52;
                                    unsafe = unsafe2;
                                    r18 = r10;
                                    r22 = r42;
                                    r20 = r6;
                                    r24 = r73;
                                    r82 = r21;
                                    obj = null;
                                    r72 = r33;
                                    break;
                                }
                            case 2:
                            case 3:
                                r52 = r45;
                                r17 = r102;
                                r21 = r182;
                                r10 = r34;
                                j10 = j15;
                                bArr2 = bArr;
                                r13 = r32;
                                if (r84 == 0) {
                                    int r09 = e.J(bArr2, r52, aVar2);
                                    jC = aVar2.f4253b;
                                    r83 = r09;
                                    unsafe2.putLong(t10, j10, jC);
                                    r73 |= r222;
                                    r05 = r83;
                                    r14 = r33;
                                    r37 = r10;
                                    r23 = r17;
                                    r44 = r21;
                                    break;
                                } else {
                                    r42 = r52;
                                    unsafe = unsafe2;
                                    r18 = r10;
                                    r22 = r42;
                                    r20 = r6;
                                    r24 = r73;
                                    r82 = r21;
                                    obj = null;
                                    r72 = r33;
                                    break;
                                }
                            case 4:
                            case 11:
                                r52 = r45;
                                r17 = r102;
                                r21 = r182;
                                r10 = r34;
                                j11 = j15;
                                bArr2 = bArr;
                                r13 = r32;
                                if (r84 == 0) {
                                    r05 = e.H(bArr2, r52, aVar2);
                                    r12 = aVar2.f4252a;
                                    unsafe2.putInt(t12, j11, r12);
                                    r73 |= r222;
                                    r14 = r33;
                                    r37 = r10;
                                    r23 = r17;
                                    r44 = r21;
                                    break;
                                } else {
                                    r42 = r52;
                                    unsafe = unsafe2;
                                    r18 = r10;
                                    r22 = r42;
                                    r20 = r6;
                                    r24 = r73;
                                    r82 = r21;
                                    obj = null;
                                    r72 = r33;
                                    break;
                                }
                            case 5:
                            case 14:
                                r17 = r102;
                                r53 = r182;
                                bArr2 = bArr;
                                r13 = r32;
                                r10 = r34;
                                if (r84 == 1) {
                                    r21 = r53;
                                    unsafe2.putLong(t10, j15, e.i(r45, bArr2));
                                    r43 = r45 + 8;
                                    r05 = r43;
                                    r73 |= r222;
                                    r14 = r33;
                                    r37 = r10;
                                    r23 = r17;
                                    r44 = r21;
                                    break;
                                } else {
                                    r21 = r53;
                                    r52 = r45;
                                    r42 = r52;
                                    unsafe = unsafe2;
                                    r18 = r10;
                                    r22 = r42;
                                    r20 = r6;
                                    r24 = r73;
                                    r82 = r21;
                                    obj = null;
                                    r72 = r33;
                                    break;
                                }
                            case 6:
                            case 13:
                                r17 = r102;
                                r53 = r182;
                                bArr2 = bArr;
                                r13 = r32;
                                r10 = r34;
                                if (r84 == 5) {
                                    unsafe2.putInt(t12, j15, e.g(r45, bArr2));
                                    r03 = r45 + 4;
                                    r35 = r03;
                                    r04 = r73 | r222;
                                    r73 = r04;
                                    r05 = r35;
                                    r21 = r53;
                                    r14 = r33;
                                    r37 = r10;
                                    r23 = r17;
                                    r44 = r21;
                                    break;
                                } else {
                                    r21 = r53;
                                    r52 = r45;
                                    r42 = r52;
                                    unsafe = unsafe2;
                                    r18 = r10;
                                    r22 = r42;
                                    r20 = r6;
                                    r24 = r73;
                                    r82 = r21;
                                    obj = null;
                                    r72 = r33;
                                    break;
                                }
                            case 7:
                                r17 = r102;
                                r53 = r182;
                                bArr2 = bArr;
                                r13 = r32;
                                r10 = r34;
                                if (r84 == 0) {
                                    r35 = e.J(bArr2, r45, aVar2);
                                    if (aVar2.f4253b != 0) {
                                        j12 = j15;
                                        z10 = true;
                                    } else {
                                        j12 = j15;
                                        z10 = false;
                                    }
                                    n1.p(t12, j12, z10);
                                    r04 = r73 | r222;
                                    r73 = r04;
                                    r05 = r35;
                                    r21 = r53;
                                    r14 = r33;
                                    r37 = r10;
                                    r23 = r17;
                                    r44 = r21;
                                    break;
                                } else {
                                    r21 = r53;
                                    r52 = r45;
                                    r42 = r52;
                                    unsafe = unsafe2;
                                    r18 = r10;
                                    r22 = r42;
                                    r20 = r6;
                                    r24 = r73;
                                    r82 = r21;
                                    obj = null;
                                    r72 = r33;
                                    break;
                                }
                            case 8:
                                r17 = r102;
                                j13 = j15;
                                r53 = r182;
                                bArr2 = bArr;
                                r13 = r32;
                                r10 = r34;
                                if (r84 == 2) {
                                    r03 = (r08 & PKIFailureInfo.duplicateCertReq) == 0 ? e.B(bArr2, r45, aVar2) : e.E(bArr2, r45, aVar2);
                                    unsafe2.putObject(t12, j13, objC);
                                    r35 = r03;
                                    r04 = r73 | r222;
                                    r73 = r04;
                                    r05 = r35;
                                    r21 = r53;
                                    r14 = r33;
                                    r37 = r10;
                                    r23 = r17;
                                    r44 = r21;
                                    break;
                                } else {
                                    r21 = r53;
                                    r52 = r45;
                                    r42 = r52;
                                    unsafe = unsafe2;
                                    r18 = r10;
                                    r22 = r42;
                                    r20 = r6;
                                    r24 = r73;
                                    r82 = r21;
                                    obj = null;
                                    r72 = r33;
                                    break;
                                }
                            case 9:
                                r17 = r102;
                                j13 = j15;
                                r53 = r182;
                                bArr2 = bArr;
                                r10 = r34;
                                if (r84 == 2) {
                                    r13 = r32;
                                    r03 = e.o(t0Var2.o(r10), bArr2, r45, r13, aVar2);
                                    Object objC = (r73 & r222) == 0 ? aVar2.f4254c : z.c(unsafe2.getObject(t12, j13), aVar2.f4254c);
                                    unsafe2.putObject(t12, j13, objC);
                                    r35 = r03;
                                    r04 = r73 | r222;
                                    r73 = r04;
                                    r05 = r35;
                                    r21 = r53;
                                    r14 = r33;
                                    r37 = r10;
                                    r23 = r17;
                                    r44 = r21;
                                    break;
                                } else {
                                    r21 = r53;
                                    r52 = r45;
                                    r42 = r52;
                                    unsafe = unsafe2;
                                    r18 = r10;
                                    r22 = r42;
                                    r20 = r6;
                                    r24 = r73;
                                    r82 = r21;
                                    obj = null;
                                    r72 = r33;
                                    break;
                                }
                            case 10:
                                r17 = r102;
                                r53 = r182;
                                bArr2 = bArr;
                                r10 = r34;
                                if (r84 == 2) {
                                    r05 = e.b(bArr2, r45, aVar2);
                                    unsafe2.putObject(t12, j15, aVar2.f4254c);
                                    r13 = r32;
                                    r21 = r53;
                                    r73 |= r222;
                                    r14 = r33;
                                    r37 = r10;
                                    r23 = r17;
                                    r44 = r21;
                                    break;
                                } else {
                                    r21 = r53;
                                    r52 = r45;
                                    r42 = r52;
                                    unsafe = unsafe2;
                                    r18 = r10;
                                    r22 = r42;
                                    r20 = r6;
                                    r24 = r73;
                                    r82 = r21;
                                    obj = null;
                                    r72 = r33;
                                    break;
                                }
                            case 12:
                                r17 = r102;
                                j14 = j15;
                                r53 = r182;
                                bArr2 = bArr;
                                r10 = r34;
                                if (r84 != 0) {
                                    r21 = r53;
                                    r52 = r45;
                                    r42 = r52;
                                    unsafe = unsafe2;
                                    r18 = r10;
                                    r22 = r42;
                                    r20 = r6;
                                    r24 = r73;
                                    r82 = r21;
                                    obj = null;
                                    r72 = r33;
                                    break;
                                } else {
                                    r05 = e.H(bArr2, r45, aVar2);
                                    r36 = aVar2.f4252a;
                                    z.b bVarM = t0Var2.m(r10);
                                    if (bVarM != null && !bVarM.a()) {
                                        p(t10).b(r53, Long.valueOf(r36));
                                        r13 = r32;
                                        r21 = r53;
                                        r14 = r33;
                                        r37 = r10;
                                        r23 = r17;
                                        r44 = r21;
                                        break;
                                    }
                                    r13 = r32;
                                    r21 = r53;
                                    long j16 = j14;
                                    r12 = r36;
                                    j11 = j16;
                                    unsafe2.putInt(t12, j11, r12);
                                    r73 |= r222;
                                    r14 = r33;
                                    r37 = r10;
                                    r23 = r17;
                                    r44 = r21;
                                }
                                break;
                            case 15:
                                r17 = r102;
                                j14 = j15;
                                r53 = r182;
                                bArr2 = bArr;
                                r10 = r34;
                                if (r84 == 0) {
                                    r05 = e.H(bArr2, r45, aVar2);
                                    r36 = j.b(aVar2.f4252a);
                                    r13 = r32;
                                    r21 = r53;
                                    long j162 = j14;
                                    r12 = r36;
                                    j11 = j162;
                                    unsafe2.putInt(t12, j11, r12);
                                    r73 |= r222;
                                    r14 = r33;
                                    r37 = r10;
                                    r23 = r17;
                                    r44 = r21;
                                    break;
                                } else {
                                    r21 = r53;
                                    r52 = r45;
                                    r42 = r52;
                                    unsafe = unsafe2;
                                    r18 = r10;
                                    r22 = r42;
                                    r20 = r6;
                                    r24 = r73;
                                    r82 = r21;
                                    obj = null;
                                    r72 = r33;
                                    break;
                                }
                            case 16:
                                r17 = r102;
                                r53 = r182;
                                r10 = r34;
                                if (r84 == 0) {
                                    bArr2 = bArr;
                                    r13 = r32;
                                    r83 = e.J(bArr2, r45, aVar2);
                                    r21 = r53;
                                    jC = j.c(aVar2.f4253b);
                                    j10 = j15;
                                    unsafe2.putLong(t10, j10, jC);
                                    r73 |= r222;
                                    r05 = r83;
                                    r14 = r33;
                                    r37 = r10;
                                    r23 = r17;
                                    r44 = r21;
                                    break;
                                } else {
                                    r21 = r53;
                                    r52 = r45;
                                    r42 = r52;
                                    unsafe = unsafe2;
                                    r18 = r10;
                                    r22 = r42;
                                    r20 = r6;
                                    r24 = r73;
                                    r82 = r21;
                                    obj = null;
                                    r72 = r33;
                                    break;
                                }
                            case 17:
                                if (r84 == 3) {
                                    int r55 = (r102 << 3) | 4;
                                    r17 = r102;
                                    r10 = r34;
                                    r05 = e.m(t0Var2.o(r34), bArr, r45, r32, r55, aVar);
                                    unsafe2.putObject(t12, j15, (r73 & r222) == 0 ? aVar2.f4254c : z.c(unsafe2.getObject(t12, j15), aVar2.f4254c));
                                    bArr2 = bArr;
                                    r13 = r32;
                                    r73 |= r222;
                                    r21 = r182;
                                    r14 = r33;
                                    r37 = r10;
                                    r23 = r17;
                                    r44 = r21;
                                    break;
                                } else {
                                    r17 = r102;
                                    r10 = r34;
                                    r52 = r45;
                                    r21 = r182;
                                    r42 = r52;
                                    unsafe = unsafe2;
                                    r18 = r10;
                                    r22 = r42;
                                    r20 = r6;
                                    r24 = r73;
                                    r82 = r21;
                                    obj = null;
                                    r72 = r33;
                                    break;
                                }
                            default:
                                r52 = r45;
                                r17 = r102;
                                r21 = r182;
                                r10 = r34;
                                r42 = r52;
                                unsafe = unsafe2;
                                r18 = r10;
                                r22 = r42;
                                r20 = r6;
                                r24 = r73;
                                r82 = r21;
                                obj = null;
                                r72 = r33;
                                break;
                        }
                    } else {
                        int r56 = r45;
                        r17 = r102;
                        r21 = r182;
                        int r103 = r34;
                        bArr2 = bArr;
                        r13 = r32;
                        if (r16 != 27) {
                            r20 = r6;
                            if (r16 <= 49) {
                                r24 = r73;
                                unsafe = unsafe2;
                                r18 = r103;
                                r42 = D(t10, bArr, r56, r32, r21, r17, r84, r103, r08, r16, j15, aVar);
                                if (r42 != r56) {
                                    r05 = r42;
                                }
                                r6 = r20;
                                r73 = r24;
                                r22 = r42;
                                r20 = r6;
                                r24 = r73;
                                r82 = r21;
                                obj = null;
                                r72 = r33;
                            } else {
                                r15 = r56;
                                r24 = r73;
                                unsafe = unsafe2;
                                r18 = r103;
                                if (r16 != 50) {
                                    obj = null;
                                    r05 = A(t10, bArr, r15, r32, r21, r17, r84, r08, r16, j15, r18, aVar);
                                    if (r05 == r15) {
                                        r72 = r33;
                                        r22 = r05;
                                        r82 = r21;
                                    }
                                } else if (r84 == 2) {
                                    z(t10, bArr, r15, r32, r18, j15, aVar);
                                    throw null;
                                }
                            }
                            t0Var2 = this;
                            t12 = t10;
                            bArr2 = bArr;
                            r13 = r32;
                            r14 = r33;
                            aVar2 = aVar;
                            r23 = r17;
                            r37 = r18;
                            r6 = r20;
                            r44 = r21;
                            r73 = r24;
                            unsafe2 = unsafe;
                        } else if (r84 == 2) {
                            z.c cVarF = (z.c) unsafe2.getObject(t12, j15);
                            if (!cVarF.o0()) {
                                int size = cVarF.size();
                                cVarF = cVarF.F(size == 0 ? 10 : size * 2);
                                unsafe2.putObject(t12, j15, cVarF);
                            }
                            r05 = e.p(t0Var2.o(r103), r21, bArr, r56, r32, cVarF, aVar);
                            r14 = r33;
                            r37 = r103;
                            r23 = r17;
                            r6 = r6;
                            r44 = r21;
                        } else {
                            r20 = r6;
                            r15 = r56;
                            r24 = r73;
                            unsafe = unsafe2;
                            r18 = r103;
                        }
                        r42 = r15;
                        r6 = r20;
                        r73 = r24;
                        r22 = r42;
                        r20 = r6;
                        r24 = r73;
                        r82 = r21;
                        obj = null;
                        r72 = r33;
                    }
                }
                if (r82 != r72 || r72 == 0) {
                    r05 = (!this.f || aVar.f4255d == p.a()) ? e.F(r82, bArr, r22, r32, p(t10), aVar) : e.f(r82, bArr, r22, r32, t10, this.f4368e, aVar);
                    t12 = t10;
                    bArr2 = bArr;
                    r13 = r32;
                    r14 = r72;
                    r44 = r82;
                    t0Var2 = this;
                    aVar2 = aVar;
                    r23 = r17;
                    r37 = r18;
                    r6 = r20;
                    r73 = r24;
                    unsafe2 = unsafe;
                } else {
                    t0Var = this;
                    r05 = r22;
                    r14 = r72;
                    r44 = r82;
                    r6 = r20;
                    r73 = r24;
                }
            } else {
                unsafe = unsafe2;
                t0Var = t0Var2;
                obj = null;
            }
        }
        if (r6 != -1) {
            t11 = t10;
            unsafe.putInt(t11, r6, r73);
        } else {
            t11 = t10;
        }
        for (int r28 = t0Var.f4373k; r28 < t0Var.f4374l; r28++) {
            t0Var.l(t11, t0Var.f4372j[r28], obj, t0Var.f4377o);
        }
        if (r14 == 0) {
            if (r05 != r32) {
                throw a0.e();
            }
        } else if (r05 > r32 || r44 != r14) {
            throw a0.e();
        }
        return r05;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x01e3, code lost:
    
        if (r1 != r9) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01e6, code lost:
    
        r16 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00f9, code lost:
    
        if (r3 == 0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01a4, code lost:
    
        if (r1 != r9) goto L104;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x0061. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void C(java.lang.Object r30, byte[] r31, int r32, int r33, com.google.crypto.tink.shaded.protobuf.e.a r34) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.t0.C(java.lang.Object, byte[], int, int, com.google.crypto.tink.shaded.protobuf.e$a):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int D(T t10, byte[] bArr, int r16, int r17, int r18, int r19, int r20, int r21, long j10, int r24, long j11, e.a aVar) throws IOException {
        int I;
        Unsafe unsafe = f4363s;
        z.c cVarF = (z.c) unsafe.getObject(t10, j11);
        if (!cVarF.o0()) {
            int size = cVarF.size();
            cVarF = cVarF.F(size == 0 ? 10 : size * 2);
            unsafe.putObject(t10, j11, cVarF);
        }
        switch (r24) {
            case 18:
            case 35:
                if (r20 == 2) {
                    return e.r(bArr, r16, cVarF, aVar);
                }
                if (r20 == 1) {
                    return e.e(r18, bArr, r16, r17, cVarF, aVar);
                }
                break;
            case 19:
            case 36:
                if (r20 == 2) {
                    return e.u(bArr, r16, cVarF, aVar);
                }
                if (r20 == 5) {
                    return e.l(r18, bArr, r16, r17, cVarF, aVar);
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (r20 == 2) {
                    return e.y(bArr, r16, cVarF, aVar);
                }
                if (r20 == 0) {
                    return e.K(r18, bArr, r16, r17, cVarF, aVar);
                }
                break;
            case 22:
            case 29:
            case 39:
            case 43:
                if (r20 == 2) {
                    return e.x(bArr, r16, cVarF, aVar);
                }
                if (r20 == 0) {
                    return e.I(r18, bArr, r16, r17, cVarF, aVar);
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (r20 == 2) {
                    return e.t(bArr, r16, cVarF, aVar);
                }
                if (r20 == 1) {
                    return e.j(r18, bArr, r16, r17, cVarF, aVar);
                }
                break;
            case 24:
            case 31:
            case 41:
            case 45:
                if (r20 == 2) {
                    return e.s(bArr, r16, cVarF, aVar);
                }
                if (r20 == 5) {
                    return e.h(r18, bArr, r16, r17, cVarF, aVar);
                }
                break;
            case 25:
            case 42:
                if (r20 == 2) {
                    return e.q(bArr, r16, cVarF, aVar);
                }
                if (r20 == 0) {
                    return e.a(r18, bArr, r16, r17, cVarF, aVar);
                }
                break;
            case 26:
                if (r20 == 2) {
                    long j12 = j10 & 536870912;
                    z.c cVar = cVarF;
                    return j12 == 0 ? e.C(r18, bArr, r16, r17, cVar, aVar) : e.D(r18, bArr, r16, r17, cVar, aVar);
                }
                break;
            case 27:
                if (r20 == 2) {
                    return e.p(o(r21), r18, bArr, r16, r17, cVarF, aVar);
                }
                break;
            case 28:
                if (r20 == 2) {
                    return e.c(r18, bArr, r16, r17, cVarF, aVar);
                }
                break;
            case 30:
            case 44:
                if (r20 == 2) {
                    I = e.x(bArr, r16, cVarF, aVar);
                } else if (r20 == 0) {
                    I = e.I(r18, bArr, r16, r17, cVarF, aVar);
                }
                x xVar = (x) t10;
                k1 k1Var = xVar.unknownFields;
                if (k1Var == k1.f) {
                    k1Var = null;
                }
                k1 k1Var2 = (k1) f1.z(r19, cVarF, m(r21), k1Var, this.f4377o);
                if (k1Var2 != null) {
                    xVar.unknownFields = k1Var2;
                }
                return I;
            case 33:
            case 47:
                if (r20 == 2) {
                    return e.v(bArr, r16, cVarF, aVar);
                }
                if (r20 == 0) {
                    return e.z(r18, bArr, r16, r17, cVarF, aVar);
                }
                break;
            case 34:
            case 48:
                if (r20 == 2) {
                    return e.w(bArr, r16, cVarF, aVar);
                }
                if (r20 == 0) {
                    return e.A(r18, bArr, r16, r17, cVarF, aVar);
                }
                break;
            case 49:
                if (r20 == 3) {
                    return e.n(o(r21), r18, bArr, r16, r17, cVarF, aVar);
                }
                break;
        }
        return r16;
    }

    public final <E> void E(Object obj, long j10, d1 d1Var, e1<E> e1Var, p pVar) throws IOException {
        d1Var.J(this.f4376n.c(j10, obj), e1Var, pVar);
    }

    public final <E> void F(Object obj, int r42, d1 d1Var, e1<E> e1Var, p pVar) throws IOException {
        d1Var.g(this.f4376n.c(r42 & 1048575, obj), e1Var, pVar);
    }

    public final void G(Object obj, int r42, d1 d1Var) throws IOException {
        long j10;
        Object objC;
        if ((536870912 & r42) != 0) {
            j10 = r42 & 1048575;
            objC = d1Var.L();
        } else {
            int r43 = r42 & 1048575;
            if (this.f4369g) {
                j10 = r43;
                objC = d1Var.y();
            } else {
                j10 = r43;
                objC = d1Var.C();
            }
        }
        n1.x(j10, obj, objC);
    }

    public final void H(Object obj, int r52, d1 d1Var) throws IOException {
        boolean z10 = (536870912 & r52) != 0;
        g0 g0Var = this.f4376n;
        int r53 = r52 & 1048575;
        if (z10) {
            d1Var.B(g0Var.c(r53, obj));
        } else {
            d1Var.A(g0Var.c(r53, obj));
        }
    }

    public final void J(int r42, Object obj) {
        if (this.f4370h) {
            return;
        }
        int r43 = this.f4364a[r42 + 2];
        long j10 = r43 & 1048575;
        n1.v(n1.l(j10, obj) | (1 << (r43 >>> 20)), j10, obj);
    }

    public final void K(int r32, int r42, Object obj) {
        n1.v(r32, this.f4364a[r42 + 2] & 1048575, obj);
    }

    public final int L(int r6, int r72) {
        int[] r02 = this.f4364a;
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

    public final int M(int r22) {
        return this.f4364a[r22 + 1];
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
    public final void N(java.lang.Object r21, com.google.crypto.tink.shaded.protobuf.m r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.t0.N(java.lang.Object, com.google.crypto.tink.shaded.protobuf.m):void");
    }

    public final void O(m mVar, int r32, Object obj, int r52) throws IOException {
        if (obj != null) {
            Object objN = n(r52);
            l0 l0Var = this.f4379q;
            l0Var.c(objN);
            k0 k0VarH = l0Var.h(obj);
            l lVar = mVar.f4320a;
            lVar.getClass();
            Iterator it = k0VarH.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                lVar.L(r32, 2);
                entry.getKey();
                entry.getValue();
                throw null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0057  */
    @Override // com.google.crypto.tink.shaded.protobuf.e1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(T r9, T r10) {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.t0.a(java.lang.Object, java.lang.Object):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x01ba  */
    @Override // com.google.crypto.tink.shaded.protobuf.e1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(T r11, T r12) {
        /*
            Method dump skipped, instructions count: 630
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.t0.b(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.crypto.tink.shaded.protobuf.e1
    public final T c() {
        return (T) this.f4375m.a(this.f4368e);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00f1 A[PHI: r4
      0x00f1: PHI (r4v13 java.lang.Object) = (r4v11 java.lang.Object), (r4v17 java.lang.Object) binds: [B:67:0x00ef, B:62:0x00dd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f6  */
    @Override // com.google.crypto.tink.shaded.protobuf.e1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int d(T r10) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.t0.d(java.lang.Object):int");
    }

    @Override // com.google.crypto.tink.shaded.protobuf.e1
    public final void e(T t10) {
        int[] r12;
        int r22;
        int r02 = this.f4373k;
        while (true) {
            r12 = this.f4372j;
            r22 = this.f4374l;
            if (r02 >= r22) {
                break;
            }
            long jM = M(r12[r02]) & 1048575;
            Object objN = n1.n(jM, t10);
            if (objN != null) {
                n1.x(jM, t10, this.f4379q.b(objN));
            }
            r02++;
        }
        int length = r12.length;
        while (r22 < length) {
            this.f4376n.a(r12[r22], t10);
            r22++;
        }
        this.f4377o.j(t10);
        if (this.f) {
            this.f4378p.f(t10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a6  */
    @Override // com.google.crypto.tink.shaded.protobuf.e1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean f(T r15) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.t0.f(java.lang.Object):boolean");
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
    @Override // com.google.crypto.tink.shaded.protobuf.e1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(java.lang.Object r18, com.google.crypto.tink.shaded.protobuf.m r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.t0.g(java.lang.Object, com.google.crypto.tink.shaded.protobuf.m):void");
    }

    @Override // com.google.crypto.tink.shaded.protobuf.e1
    public final void h(T t10, byte[] bArr, int r11, int r12, e.a aVar) throws IOException {
        if (this.f4370h) {
            C(t10, bArr, r11, r12, aVar);
        } else {
            B(t10, bArr, r11, r12, 0, aVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:166:0x03e4 A[Catch: all -> 0x03ff, TryCatch #5 {all -> 0x03ff, blocks: (B:24:0x0052, B:31:0x0067, B:158:0x03cc, B:164:0x03df, B:166:0x03e4, B:167:0x03e9), top: B:192:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0406 A[LOOP:3: B:179:0x0404->B:180:0x0406, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0410  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x03ef A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0016 A[SYNTHETIC] */
    @Override // com.google.crypto.tink.shaded.protobuf.e1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i(T r20, com.google.crypto.tink.shaded.protobuf.d1 r21, com.google.crypto.tink.shaded.protobuf.p r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 1186
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.t0.i(java.lang.Object, com.google.crypto.tink.shaded.protobuf.d1, com.google.crypto.tink.shaded.protobuf.p):void");
    }

    @Override // com.google.crypto.tink.shaded.protobuf.e1
    public final int j(T t10) {
        return this.f4370h ? r(t10) : q(t10);
    }

    public final boolean k(int r12, Object obj, Object obj2) {
        return s(r12, obj) == s(r12, obj2);
    }

    public final void l(Object obj, int r42, Object obj2, j1 j1Var) {
        z.b bVarM;
        int r02 = this.f4364a[r42];
        Object objN = n1.n(M(r42) & 1048575, obj);
        if (objN == null || (bVarM = m(r42)) == null) {
            return;
        }
        l0 l0Var = this.f4379q;
        k0 k0VarE = l0Var.e(objN);
        l0Var.c(n(r42));
        for (Map.Entry entry : k0VarE.entrySet()) {
            ((Integer) entry.getValue()).intValue();
            if (!bVarM.a()) {
                if (obj2 == null) {
                    j1Var.m();
                }
                entry.getKey();
                entry.getValue();
                throw null;
            }
        }
    }

    public final z.b m(int r22) {
        return (z.b) this.f4365b[((r22 / 3) * 2) + 1];
    }

    public final Object n(int r22) {
        return this.f4365b[(r22 / 3) * 2];
    }

    public final e1 o(int r42) {
        int r43 = (r42 / 3) * 2;
        Object[] objArr = this.f4365b;
        e1 e1Var = (e1) objArr[r43];
        if (e1Var != null) {
            return e1Var;
        }
        e1<T> e1VarA = a1.f4224c.a((Class) objArr[r43 + 1]);
        objArr[r43] = e1VarA;
        return e1VarA;
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x020d A[PHI: r3
      0x020d: PHI (r3v104 int) = 
      (r3v67 int)
      (r3v70 int)
      (r3v73 int)
      (r3v76 int)
      (r3v79 int)
      (r3v82 int)
      (r3v85 int)
      (r3v88 int)
      (r3v91 int)
      (r3v94 int)
      (r3v97 int)
      (r3v100 int)
      (r3v103 int)
      (r3v108 int)
     binds: [B:134:0x020b, B:130:0x01fc, B:126:0x01ed, B:122:0x01de, B:118:0x01cf, B:114:0x01c0, B:110:0x01b1, B:106:0x01a1, B:102:0x0191, B:98:0x0181, B:94:0x0171, B:90:0x0161, B:86:0x0151, B:82:0x0141] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x034d A[PHI: r3
      0x034d: PHI (r3v133 java.lang.Object) = (r3v19 java.lang.Object), (r3v141 java.lang.Object) binds: [B:184:0x034b, B:52:0x00c5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0354 A[PHI: r3
      0x0354: PHI (r3v138 java.lang.Object) = (r3v19 java.lang.Object), (r3v141 java.lang.Object) binds: [B:184:0x034b, B:52:0x00c5] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int q(T r19) {
        /*
            Method dump skipped, instructions count: 1118
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.t0.q(java.lang.Object):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x01e2 A[PHI: r5
      0x01e2: PHI (r5v42 int) = 
      (r5v5 int)
      (r5v8 int)
      (r5v11 int)
      (r5v14 int)
      (r5v17 int)
      (r5v20 int)
      (r5v23 int)
      (r5v26 int)
      (r5v29 int)
      (r5v32 int)
      (r5v35 int)
      (r5v38 int)
      (r5v41 int)
      (r5v46 int)
     binds: [B:126:0x01e0, B:122:0x01d1, B:118:0x01c2, B:114:0x01b3, B:110:0x01a4, B:106:0x0195, B:102:0x0186, B:98:0x0176, B:94:0x0166, B:90:0x0156, B:86:0x0146, B:82:0x0136, B:78:0x0126, B:74:0x0116] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x031b A[PHI: r3
      0x031b: PHI (r3v83 java.lang.Object) = (r3v15 java.lang.Object), (r3v91 java.lang.Object) binds: [B:176:0x0319, B:44:0x009c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0322 A[PHI: r3
      0x0322: PHI (r3v87 java.lang.Object) = (r3v15 java.lang.Object), (r3v91 java.lang.Object) binds: [B:176:0x0319, B:44:0x009c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int r(T r11) {
        /*
            Method dump skipped, instructions count: 1068
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.t0.r(java.lang.Object):int");
    }

    public final boolean s(int r72, Object obj) {
        boolean zEquals;
        if (!this.f4370h) {
            int r73 = this.f4364a[r72 + 2];
            return (n1.l((long) (r73 & 1048575), obj) & (1 << (r73 >>> 20))) != 0;
        }
        int r74 = M(r72);
        long j10 = r74 & 1048575;
        switch ((r74 & 267386880) >>> 20) {
            case 0:
                return n1.j(j10, obj) != 0.0d;
            case 1:
                return n1.k(j10, obj) != 0.0f;
            case 2:
                return n1.m(j10, obj) != 0;
            case 3:
                return n1.m(j10, obj) != 0;
            case 4:
                return n1.l(j10, obj) != 0;
            case 5:
                return n1.m(j10, obj) != 0;
            case 6:
                return n1.l(j10, obj) != 0;
            case 7:
                return n1.f(j10, obj);
            case 8:
                Object objN = n1.n(j10, obj);
                if (objN instanceof String) {
                    zEquals = ((String) objN).isEmpty();
                    break;
                } else {
                    if (!(objN instanceof i)) {
                        throw new IllegalArgumentException();
                    }
                    zEquals = i.f4287b.equals(objN);
                    break;
                }
            case 9:
                return n1.n(j10, obj) != null;
            case 10:
                zEquals = i.f4287b.equals(n1.n(j10, obj));
                break;
            case 11:
                return n1.l(j10, obj) != 0;
            case 12:
                return n1.l(j10, obj) != 0;
            case 13:
                return n1.l(j10, obj) != 0;
            case 14:
                return n1.m(j10, obj) != 0;
            case 15:
                return n1.l(j10, obj) != 0;
            case 16:
                return n1.m(j10, obj) != 0;
            case 17:
                return n1.n(j10, obj) != null;
            default:
                throw new IllegalArgumentException();
        }
        return !zEquals;
    }

    public final boolean t(int r32, int r42, Object obj) {
        return n1.l((long) (this.f4364a[r42 + 2] & 1048575), obj) == r32;
    }

    public final <K, V> void v(Object obj, int r52, Object obj2, p pVar, d1 d1Var) throws IOException {
        long jM = M(r52) & 1048575;
        Object objN = n1.n(jM, obj);
        l0 l0Var = this.f4379q;
        if (objN == null) {
            objN = l0Var.d();
            n1.x(jM, obj, objN);
        } else if (l0Var.g(objN)) {
            k0 k0VarD = l0Var.d();
            l0Var.a(k0VarD, objN);
            n1.x(jM, obj, k0VarD);
            objN = k0VarD;
        }
        l0Var.e(objN);
        l0Var.c(obj2);
        d1Var.m();
    }

    public final void z(Object obj, byte[] bArr, int r72, int r82, int r92, long j10, e.a aVar) throws IOException {
        Object objN = n(r92);
        Unsafe unsafe = f4363s;
        Object object = unsafe.getObject(obj, j10);
        l0 l0Var = this.f4379q;
        if (l0Var.g(object)) {
            k0 k0VarD = l0Var.d();
            l0Var.a(k0VarD, object);
            unsafe.putObject(obj, j10, k0VarD);
            object = k0VarD;
        }
        l0Var.c(objN);
        l0Var.e(object);
        int r52 = e.H(bArr, r72, aVar);
        int r6 = aVar.f4252a;
        if (r6 >= 0 && r6 <= r82 - r52) {
            throw null;
        }
        throw a0.f();
    }
}
