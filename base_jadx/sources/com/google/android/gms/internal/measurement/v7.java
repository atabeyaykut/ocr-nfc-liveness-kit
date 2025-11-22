package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class v7<T> implements d8<T> {

    /* renamed from: n, reason: collision with root package name */
    public static final int[] f3793n = new int[0];

    /* renamed from: o, reason: collision with root package name */
    public static final Unsafe f3794o = y8.k();

    /* renamed from: a, reason: collision with root package name */
    public final int[] f3795a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f3796b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3797c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3798d;

    /* renamed from: e, reason: collision with root package name */
    public final s7 f3799e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f3800g;

    /* renamed from: h, reason: collision with root package name */
    public final int[] f3801h;

    /* renamed from: i, reason: collision with root package name */
    public final int f3802i;

    /* renamed from: j, reason: collision with root package name */
    public final int f3803j;

    /* renamed from: k, reason: collision with root package name */
    public final g7 f3804k;

    /* renamed from: l, reason: collision with root package name */
    public final o8<?, ?> f3805l;

    /* renamed from: m, reason: collision with root package name */
    public final e6<?> f3806m;

    public v7(int[] r12, Object[] objArr, int r32, int r42, s7 s7Var, boolean z10, int[] r72, int r82, int r92, g7 g7Var, o8 o8Var, e6 e6Var, n7 n7Var) {
        this.f3795a = r12;
        this.f3796b = objArr;
        this.f3797c = r32;
        this.f3798d = r42;
        this.f3800g = z10;
        this.f = e6Var != null && e6Var.c(s7Var);
        this.f3801h = r72;
        this.f3802i = r82;
        this.f3803j = r92;
        this.f3804k = g7Var;
        this.f3805l = o8Var;
        this.f3806m = e6Var;
        this.f3799e = s7Var;
    }

    public static int C(long j10, Object obj) {
        return ((Integer) y8.j(j10, obj)).intValue();
    }

    public static long j(long j10, Object obj) {
        return ((Long) y8.j(j10, obj)).longValue();
    }

    public static Field m(Class<?> cls, String str) {
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
            StringBuilder sb2 = new StringBuilder(android.support.v4.media.a.a(String.valueOf(str).length(), 40, name.length(), String.valueOf(string).length()));
            sb2.append("Field ");
            sb2.append(str);
            sb2.append(" for ");
            sb2.append(name);
            throw new RuntimeException(androidx.camera.camera2.internal.c.h(sb2, " not found. Known fields are ", string));
        }
    }

    public static final void w(int r12, Object obj, a6 a6Var) throws IOException {
        if (!(obj instanceof String)) {
            a6Var.f(r12, (v5) obj);
        } else {
            a6Var.f3361a.R(r12, (String) obj);
        }
    }

    public static p8 y(Object obj) {
        q6 q6Var = (q6) obj;
        p8 p8Var = q6Var.zzc;
        if (p8Var != p8.f) {
            return p8Var;
        }
        p8 p8VarB = p8.b();
        q6Var.zzc = p8VarB;
        return p8VarB;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x027d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.measurement.v7 z(com.google.android.gms.internal.measurement.c8 r33, com.google.android.gms.internal.measurement.g7 r34, com.google.android.gms.internal.measurement.o8 r35, com.google.android.gms.internal.measurement.e6 r36, com.google.android.gms.internal.measurement.n7 r37) {
        /*
            Method dump skipped, instructions count: 998
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.v7.z(com.google.android.gms.internal.measurement.c8, com.google.android.gms.internal.measurement.g7, com.google.android.gms.internal.measurement.o8, com.google.android.gms.internal.measurement.e6, com.google.android.gms.internal.measurement.n7):com.google.android.gms.internal.measurement.v7");
    }

    public final int A(T t10) {
        int r82;
        long j10;
        int r83;
        Object object;
        int r32;
        int r22;
        int r23;
        int r24;
        int I;
        int r84;
        Object object2;
        int r25;
        int r33 = 1048575;
        int r42 = 0;
        int r52 = 0;
        int r6 = 1048575;
        int r72 = 0;
        while (true) {
            int[] r85 = this.f3795a;
            if (r42 >= r85.length) {
                o8<?, ?> o8Var = this.f3805l;
                int r26 = o8Var.a(o8Var.c(t10)) + r52;
                if (!this.f) {
                    return r26;
                }
                this.f3806m.a(t10);
                throw null;
            }
            int r92 = a(r42);
            int r10 = r85[r42];
            int r11 = (r92 >>> 20) & 255;
            Unsafe unsafe = f3794o;
            if (r11 <= 17) {
                int r86 = r85[r42 + 2];
                int r12 = r86 & r33;
                r82 = 1 << (r86 >>> 20);
                if (r12 != r6) {
                    r72 = unsafe.getInt(t10, r12);
                    r6 = r12;
                }
            } else {
                r82 = 0;
            }
            long j11 = r92 & r33;
            switch (r11) {
                case 0:
                    if ((r72 & r82) == 0) {
                        break;
                    }
                    r24 = z5.G(r10 << 3) + 8;
                    r52 += r24;
                    break;
                case 1:
                    if ((r72 & r82) == 0) {
                        break;
                    }
                    r24 = z5.G(r10 << 3) + 4;
                    r52 += r24;
                    break;
                case 2:
                    if ((r82 & r72) == 0) {
                        break;
                    }
                    j10 = unsafe.getLong(t10, j11);
                    r83 = z5.G(r10 << 3);
                    r24 = z5.H(j10) + r83;
                    r52 += r24;
                    break;
                case 3:
                    if ((r82 & r72) == 0) {
                        break;
                    }
                    j10 = unsafe.getLong(t10, j11);
                    r83 = z5.G(r10 << 3);
                    r24 = z5.H(j10) + r83;
                    r52 += r24;
                    break;
                case 4:
                    if ((r82 & r72) == 0) {
                        break;
                    }
                    int r27 = unsafe.getInt(t10, j11);
                    r32 = z5.G(r10 << 3);
                    r22 = z5.Y(r27);
                    r24 = r22 + r32;
                    r52 += r24;
                    break;
                case 5:
                    if ((r72 & r82) == 0) {
                        break;
                    }
                    r24 = z5.G(r10 << 3) + 8;
                    r52 += r24;
                    break;
                case 6:
                    if ((r72 & r82) == 0) {
                        break;
                    }
                    r24 = z5.G(r10 << 3) + 4;
                    r52 += r24;
                    break;
                case 7:
                    if ((r72 & r82) == 0) {
                        break;
                    }
                    r24 = z5.G(r10 << 3) + 1;
                    r52 += r24;
                    break;
                case 8:
                    if ((r82 & r72) == 0) {
                        break;
                    } else {
                        object = unsafe.getObject(t10, j11);
                        if (!(object instanceof v5)) {
                            r32 = z5.G(r10 << 3);
                            r22 = z5.Z((String) object);
                            r24 = r22 + r32;
                            r52 += r24;
                            break;
                        }
                        int r34 = z5.G(r10 << 3);
                        int r28 = ((v5) object).m();
                        r52 += z5.G(r28) + r28 + r34;
                        break;
                    }
                case 9:
                    if ((r82 & r72) == 0) {
                        break;
                    }
                    r24 = e8.J(r10, k(r42), unsafe.getObject(t10, j11));
                    r52 += r24;
                    break;
                case 10:
                    if ((r82 & r72) == 0) {
                        break;
                    } else {
                        object = unsafe.getObject(t10, j11);
                        int r342 = z5.G(r10 << 3);
                        int r282 = ((v5) object).m();
                        r52 += z5.G(r282) + r282 + r342;
                        break;
                    }
                case 11:
                    if ((r82 & r72) == 0) {
                        break;
                    } else {
                        r23 = unsafe.getInt(t10, j11);
                        r32 = z5.G(r10 << 3);
                        r22 = z5.G(r23);
                        r24 = r22 + r32;
                        r52 += r24;
                        break;
                    }
                case 12:
                    if ((r82 & r72) == 0) {
                        break;
                    }
                    int r272 = unsafe.getInt(t10, j11);
                    r32 = z5.G(r10 << 3);
                    r22 = z5.Y(r272);
                    r24 = r22 + r32;
                    r52 += r24;
                    break;
                case 13:
                    if ((r72 & r82) == 0) {
                        break;
                    }
                    r24 = z5.G(r10 << 3) + 4;
                    r52 += r24;
                    break;
                case 14:
                    if ((r72 & r82) == 0) {
                        break;
                    }
                    r24 = z5.G(r10 << 3) + 8;
                    r52 += r24;
                    break;
                case 15:
                    if ((r82 & r72) == 0) {
                        break;
                    } else {
                        int r29 = unsafe.getInt(t10, j11);
                        r32 = z5.G(r10 << 3);
                        r23 = (r29 >> 31) ^ (r29 + r29);
                        r22 = z5.G(r23);
                        r24 = r22 + r32;
                        r52 += r24;
                        break;
                    }
                case 16:
                    if ((r82 & r72) == 0) {
                        break;
                    } else {
                        long j12 = unsafe.getLong(t10, j11);
                        r83 = z5.G(r10 << 3);
                        j10 = (j12 >> 63) ^ (j12 + j12);
                        r24 = z5.H(j10) + r83;
                        r52 += r24;
                        break;
                    }
                case 17:
                    if ((r82 & r72) == 0) {
                        break;
                    }
                    r24 = z5.X(r10, (s7) unsafe.getObject(t10, j11), k(r42));
                    r52 += r24;
                    break;
                case 18:
                case 23:
                case 32:
                    r24 = e8.C(r10, (List) unsafe.getObject(t10, j11));
                    r52 += r24;
                    break;
                case 19:
                case 24:
                case 31:
                    r24 = e8.A(r10, (List) unsafe.getObject(t10, j11));
                    r52 += r24;
                    break;
                case 20:
                    r24 = e8.H(r10, (List) unsafe.getObject(t10, j11));
                    r52 += r24;
                    break;
                case 21:
                    r24 = e8.S(r10, (List) unsafe.getObject(t10, j11));
                    r52 += r24;
                    break;
                case 22:
                    r24 = e8.F(r10, (List) unsafe.getObject(t10, j11));
                    r52 += r24;
                    break;
                case 25:
                    r24 = e8.t(r10, (List) unsafe.getObject(t10, j11));
                    r52 += r24;
                    break;
                case 26:
                    r24 = e8.P(r10, (List) unsafe.getObject(t10, j11));
                    r52 += r24;
                    break;
                case 27:
                    r24 = e8.K(r10, (List) unsafe.getObject(t10, j11), k(r42));
                    r52 += r24;
                    break;
                case 28:
                    r24 = e8.x(r10, (List) unsafe.getObject(t10, j11));
                    r52 += r24;
                    break;
                case 29:
                    r24 = e8.Q(r10, (List) unsafe.getObject(t10, j11));
                    r52 += r24;
                    break;
                case 30:
                    r24 = e8.y(r10, (List) unsafe.getObject(t10, j11));
                    r52 += r24;
                    break;
                case 33:
                    r24 = e8.L(r10, (List) unsafe.getObject(t10, j11));
                    r52 += r24;
                    break;
                case 34:
                    r24 = e8.N(r10, (List) unsafe.getObject(t10, j11));
                    r52 += r24;
                    break;
                case 35:
                    I = e8.D((List) unsafe.getObject(t10, j11));
                    if (I <= 0) {
                        break;
                    }
                    r84 = z5.G(I) + z5.a0(r10) + I;
                    r52 += r84;
                    break;
                case 36:
                    I = e8.B((List) unsafe.getObject(t10, j11));
                    if (I <= 0) {
                        break;
                    }
                    r84 = z5.G(I) + z5.a0(r10) + I;
                    r52 += r84;
                    break;
                case 37:
                    I = e8.I((List) unsafe.getObject(t10, j11));
                    if (I <= 0) {
                        break;
                    }
                    r84 = z5.G(I) + z5.a0(r10) + I;
                    r52 += r84;
                    break;
                case 38:
                    I = e8.T((List) unsafe.getObject(t10, j11));
                    if (I <= 0) {
                        break;
                    }
                    r84 = z5.G(I) + z5.a0(r10) + I;
                    r52 += r84;
                    break;
                case 39:
                    I = e8.G((List) unsafe.getObject(t10, j11));
                    if (I <= 0) {
                        break;
                    }
                    r84 = z5.G(I) + z5.a0(r10) + I;
                    r52 += r84;
                    break;
                case 40:
                    I = e8.D((List) unsafe.getObject(t10, j11));
                    if (I <= 0) {
                        break;
                    }
                    r84 = z5.G(I) + z5.a0(r10) + I;
                    r52 += r84;
                    break;
                case 41:
                    I = e8.B((List) unsafe.getObject(t10, j11));
                    if (I <= 0) {
                        break;
                    }
                    r84 = z5.G(I) + z5.a0(r10) + I;
                    r52 += r84;
                    break;
                case 42:
                    I = e8.w((List) unsafe.getObject(t10, j11));
                    if (I <= 0) {
                        break;
                    }
                    r84 = z5.G(I) + z5.a0(r10) + I;
                    r52 += r84;
                    break;
                case 43:
                    I = e8.R((List) unsafe.getObject(t10, j11));
                    if (I <= 0) {
                        break;
                    }
                    r84 = z5.G(I) + z5.a0(r10) + I;
                    r52 += r84;
                    break;
                case 44:
                    I = e8.z((List) unsafe.getObject(t10, j11));
                    if (I <= 0) {
                        break;
                    }
                    r84 = z5.G(I) + z5.a0(r10) + I;
                    r52 += r84;
                    break;
                case 45:
                    I = e8.B((List) unsafe.getObject(t10, j11));
                    if (I <= 0) {
                        break;
                    }
                    r84 = z5.G(I) + z5.a0(r10) + I;
                    r52 += r84;
                    break;
                case 46:
                    I = e8.D((List) unsafe.getObject(t10, j11));
                    if (I <= 0) {
                        break;
                    }
                    r84 = z5.G(I) + z5.a0(r10) + I;
                    r52 += r84;
                    break;
                case 47:
                    I = e8.M((List) unsafe.getObject(t10, j11));
                    if (I <= 0) {
                        break;
                    }
                    r84 = z5.G(I) + z5.a0(r10) + I;
                    r52 += r84;
                    break;
                case 48:
                    I = e8.O((List) unsafe.getObject(t10, j11));
                    if (I <= 0) {
                        break;
                    }
                    r84 = z5.G(I) + z5.a0(r10) + I;
                    r52 += r84;
                    break;
                case 49:
                    r24 = e8.E(r10, (List) unsafe.getObject(t10, j11), k(r42));
                    r52 += r24;
                    break;
                case 50:
                    n7.a(unsafe.getObject(t10, j11), l(r42));
                    break;
                case 51:
                    if (!u(r10, r42, t10)) {
                        break;
                    }
                    r24 = z5.G(r10 << 3) + 8;
                    r52 += r24;
                    break;
                case 52:
                    if (!u(r10, r42, t10)) {
                        break;
                    }
                    r24 = z5.G(r10 << 3) + 4;
                    r52 += r24;
                    break;
                case 53:
                    if (!u(r10, r42, t10)) {
                        break;
                    }
                    j10 = j(j11, t10);
                    r83 = z5.G(r10 << 3);
                    r24 = z5.H(j10) + r83;
                    r52 += r24;
                    break;
                case 54:
                    if (!u(r10, r42, t10)) {
                        break;
                    }
                    j10 = j(j11, t10);
                    r83 = z5.G(r10 << 3);
                    r24 = z5.H(j10) + r83;
                    r52 += r24;
                    break;
                case 55:
                    if (!u(r10, r42, t10)) {
                        break;
                    }
                    int r210 = C(j11, t10);
                    r32 = z5.G(r10 << 3);
                    r22 = z5.Y(r210);
                    r24 = r22 + r32;
                    r52 += r24;
                    break;
                case 56:
                    if (!u(r10, r42, t10)) {
                        break;
                    }
                    r24 = z5.G(r10 << 3) + 8;
                    r52 += r24;
                    break;
                case 57:
                    if (!u(r10, r42, t10)) {
                        break;
                    }
                    r24 = z5.G(r10 << 3) + 4;
                    r52 += r24;
                    break;
                case 58:
                    if (!u(r10, r42, t10)) {
                        break;
                    }
                    r24 = z5.G(r10 << 3) + 1;
                    r52 += r24;
                    break;
                case 59:
                    if (!u(r10, r42, t10)) {
                        break;
                    } else {
                        object2 = unsafe.getObject(t10, j11);
                        if (!(object2 instanceof v5)) {
                            r32 = z5.G(r10 << 3);
                            r22 = z5.Z((String) object2);
                            r24 = r22 + r32;
                            r52 += r24;
                            break;
                        }
                        int r35 = z5.G(r10 << 3);
                        int r211 = ((v5) object2).m();
                        r84 = z5.G(r211) + r211 + r35;
                        r52 += r84;
                        break;
                    }
                case 60:
                    if (!u(r10, r42, t10)) {
                        break;
                    }
                    r24 = e8.J(r10, k(r42), unsafe.getObject(t10, j11));
                    r52 += r24;
                    break;
                case 61:
                    if (!u(r10, r42, t10)) {
                        break;
                    } else {
                        object2 = unsafe.getObject(t10, j11);
                        int r352 = z5.G(r10 << 3);
                        int r2112 = ((v5) object2).m();
                        r84 = z5.G(r2112) + r2112 + r352;
                        r52 += r84;
                        break;
                    }
                case 62:
                    if (!u(r10, r42, t10)) {
                        break;
                    } else {
                        r25 = C(j11, t10);
                        r32 = z5.G(r10 << 3);
                        r22 = z5.G(r25);
                        r24 = r22 + r32;
                        r52 += r24;
                        break;
                    }
                case 63:
                    if (!u(r10, r42, t10)) {
                        break;
                    }
                    int r2102 = C(j11, t10);
                    r32 = z5.G(r10 << 3);
                    r22 = z5.Y(r2102);
                    r24 = r22 + r32;
                    r52 += r24;
                    break;
                case 64:
                    if (!u(r10, r42, t10)) {
                        break;
                    }
                    r24 = z5.G(r10 << 3) + 4;
                    r52 += r24;
                    break;
                case 65:
                    if (!u(r10, r42, t10)) {
                        break;
                    }
                    r24 = z5.G(r10 << 3) + 8;
                    r52 += r24;
                    break;
                case 66:
                    if (!u(r10, r42, t10)) {
                        break;
                    } else {
                        int r212 = C(j11, t10);
                        r32 = z5.G(r10 << 3);
                        r25 = (r212 >> 31) ^ (r212 + r212);
                        r22 = z5.G(r25);
                        r24 = r22 + r32;
                        r52 += r24;
                        break;
                    }
                case 67:
                    if (!u(r10, r42, t10)) {
                        break;
                    } else {
                        long j13 = j(j11, t10);
                        r83 = z5.G(r10 << 3);
                        j10 = (j13 >> 63) ^ (j13 + j13);
                        r24 = z5.H(j10) + r83;
                        r52 += r24;
                        break;
                    }
                case 68:
                    if (!u(r10, r42, t10)) {
                        break;
                    }
                    r24 = z5.X(r10, (s7) unsafe.getObject(t10, j11), k(r42));
                    r52 += r24;
                    break;
            }
            r42 += 3;
            r33 = 1048575;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:160:0x02fc, code lost:
    
        if ((r2 instanceof com.google.android.gms.internal.measurement.v5) != false) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0313, code lost:
    
        r3 = com.google.android.gms.internal.measurement.z5.G(r5 << 3);
        r2 = com.google.android.gms.internal.measurement.z5.Z((java.lang.String) r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0090, code lost:
    
        if ((r2 instanceof com.google.android.gms.internal.measurement.v5) != false) goto L161;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int B(T r9) {
        /*
            Method dump skipped, instructions count: 1068
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.v7.B(java.lang.Object):int");
    }

    public final void D(Object obj, int r52, long j10) throws IOException {
        Object objL = l(r52);
        Unsafe unsafe = f3794o;
        Object object = unsafe.getObject(obj, j10);
        if (!((m7) object).d()) {
            m7 m7VarC = m7.b().c();
            n7.b(m7VarC, object);
            unsafe.putObject(obj, j10, m7VarC);
        }
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00cc A[PHI: r2
      0x00cc: PHI (r2v32 int) = (r2v22 int), (r2v38 int) binds: [B:37:0x00ca, B:10:0x004b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00cf A[PHI: r2 r3
      0x00cf: PHI (r2v35 int) = (r2v22 int), (r2v38 int) binds: [B:37:0x00ca, B:10:0x004b] A[DONT_GENERATE, DONT_INLINE]
      0x00cf: PHI (r3v23 java.lang.Object) = (r3v8 java.lang.Object), (r3v28 java.lang.Object) binds: [B:37:0x00ca, B:10:0x004b] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int E(T r17, byte[] r18, int r19, int r20, int r21, int r22, int r23, int r24, int r25, long r26, int r28, com.google.android.gms.internal.measurement.o5 r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.v7.E(java.lang.Object, byte[], int, int, int, int, int, int, int, long, int, com.google.android.gms.internal.measurement.o5):int");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:35:0x009f. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r34v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v32, types: [int] */
    public final void F(Object obj, byte[] bArr, int r36, int r37, o5 o5Var) throws IOException {
        byte b10;
        int r11;
        int r12;
        int r13;
        int r22;
        int r17;
        Object obj2;
        int r21;
        int r15;
        int r27;
        Unsafe unsafe;
        int r29;
        int r28;
        int r19;
        int r32;
        int r132;
        int r23;
        v7<T> v7Var;
        byte[] bArr2;
        int r24;
        v7<T> v7Var2;
        int r33;
        int r362;
        int r34;
        int r92;
        int r02;
        long j10;
        long j11;
        int r14;
        Object obj3 = obj;
        o5 o5Var2 = o5Var;
        Unsafe unsafe2 = f3794o;
        v7<T> v7Var3 = this;
        byte[] bArr3 = bArr;
        int r03 = r36;
        int r72 = r37;
        Object obj4 = obj3;
        int r16 = -1;
        int r25 = 0;
        int r82 = 1048575;
        int r10 = 0;
        while (r03 < r72) {
            int r35 = r03 + 1;
            byte b11 = bArr3[r03];
            if (b11 < 0) {
                int r04 = p5.n(b11, bArr3, r35, o5Var2);
                b10 = o5Var2.f3659a;
                r35 = r04;
            } else {
                b10 = b11;
            }
            int r05 = b10 >>> 3;
            int r93 = b10 & 7;
            int r133 = v7Var3.f3798d;
            int r112 = v7Var3.f3797c;
            if (r05 > r16) {
                r13 = (r05 < r112 || r05 > r133) ? -1 : v7Var3.H(r05, r25 / 3);
                r22 = -1;
                r11 = 0;
            } else {
                if (r05 < r112 || r05 > r133) {
                    r11 = 0;
                    r12 = -1;
                } else {
                    r11 = 0;
                    r12 = v7Var3.H(r05, 0);
                }
                r13 = r12;
                r22 = -1;
            }
            if (r13 == r22) {
                r21 = r05;
                r23 = r35;
                unsafe = unsafe2;
            } else {
                int[] r26 = v7Var3.f3795a;
                int r18 = r26[r13 + 1];
                int r113 = (r18 >>> 20) & 255;
                long j12 = r18 & 1048575;
                if (r113 <= 17) {
                    int r06 = r26[r13 + 2];
                    int r232 = 1 << (r06 >>> 20);
                    int r210 = 1048575;
                    int r07 = r06 & 1048575;
                    if (r07 != r82) {
                        if (r82 != 1048575) {
                            unsafe2.putInt(obj4, r82, r10);
                            r210 = 1048575;
                        }
                        r24 = r35;
                        if (r07 != r210) {
                            r10 = unsafe2.getInt(obj4, r07);
                        }
                        r82 = r07;
                    } else {
                        r24 = r35;
                    }
                    switch (r113) {
                        case 0:
                            v7Var2 = v7Var3;
                            r33 = r24;
                            r21 = r05;
                            r362 = r82;
                            obj2 = obj4;
                            if (r93 == 1) {
                                y8.n(obj2, j12, Double.longBitsToDouble(p5.q(r33, bArr3)));
                                r34 = r33 + 8;
                                r92 = r34;
                                r10 |= r232;
                                r17 = r362;
                                r03 = r92;
                                v7Var = v7Var2;
                                bArr2 = bArr3;
                                obj4 = obj2;
                                v7Var3 = v7Var;
                                bArr3 = bArr2;
                                unsafe = unsafe2;
                                r25 = r13;
                                r82 = r17;
                                break;
                            }
                            r82 = r362;
                            r23 = r33;
                            unsafe = unsafe2;
                            r11 = r13;
                            break;
                        case 1:
                            v7Var2 = v7Var3;
                            r33 = r24;
                            r21 = r05;
                            r362 = r82;
                            obj2 = obj4;
                            if (r93 == 5) {
                                y8.o(obj2, j12, Float.intBitsToFloat(p5.c(r33, bArr3)));
                                r34 = r33 + 4;
                                r92 = r34;
                                r10 |= r232;
                                r17 = r362;
                                r03 = r92;
                                v7Var = v7Var2;
                                bArr2 = bArr3;
                                obj4 = obj2;
                                v7Var3 = v7Var;
                                bArr3 = bArr2;
                                unsafe = unsafe2;
                                r25 = r13;
                                r82 = r17;
                                break;
                            }
                            r82 = r362;
                            r23 = r33;
                            unsafe = unsafe2;
                            r11 = r13;
                            break;
                        case 2:
                        case 3:
                            v7Var2 = v7Var3;
                            r33 = r24;
                            r21 = r05;
                            r362 = r82;
                            obj2 = obj4;
                            if (r93 == 0) {
                                r92 = p5.p(bArr3, r33, o5Var2);
                                unsafe2.putLong((Object) obj, j12, o5Var2.f3660b);
                                r10 |= r232;
                                r17 = r362;
                                r03 = r92;
                                v7Var = v7Var2;
                                bArr2 = bArr3;
                                obj4 = obj2;
                                v7Var3 = v7Var;
                                bArr3 = bArr2;
                                unsafe = unsafe2;
                                r25 = r13;
                                r82 = r17;
                                break;
                            }
                            r82 = r362;
                            r23 = r33;
                            unsafe = unsafe2;
                            r11 = r13;
                            break;
                        case 4:
                        case 11:
                            v7Var2 = v7Var3;
                            r33 = r24;
                            r21 = r05;
                            r362 = r82;
                            obj2 = obj4;
                            if (r93 == 0) {
                                r02 = p5.m(bArr3, r33, o5Var2);
                                unsafe2.putInt(obj2, j12, o5Var2.f3659a);
                                r92 = r02;
                                r10 |= r232;
                                r17 = r362;
                                r03 = r92;
                                v7Var = v7Var2;
                                bArr2 = bArr3;
                                obj4 = obj2;
                                v7Var3 = v7Var;
                                bArr3 = bArr2;
                                unsafe = unsafe2;
                                r25 = r13;
                                r82 = r17;
                                break;
                            }
                            r82 = r362;
                            r23 = r33;
                            unsafe = unsafe2;
                            r11 = r13;
                            break;
                        case 5:
                        case 14:
                            v7Var2 = v7Var3;
                            r33 = r24;
                            r21 = r05;
                            r362 = r82;
                            obj2 = obj4;
                            if (r93 == 1) {
                                unsafe2.putLong((Object) obj, j12, p5.q(r33, bArr3));
                                r34 = r33 + 8;
                                r92 = r34;
                                r10 |= r232;
                                r17 = r362;
                                r03 = r92;
                                v7Var = v7Var2;
                                bArr2 = bArr3;
                                obj4 = obj2;
                                v7Var3 = v7Var;
                                bArr3 = bArr2;
                                unsafe = unsafe2;
                                r25 = r13;
                                r82 = r17;
                                break;
                            }
                            r33 = r33;
                            r82 = r362;
                            r23 = r33;
                            unsafe = unsafe2;
                            r11 = r13;
                            break;
                        case 6:
                        case 13:
                            v7Var2 = v7Var3;
                            r33 = r24;
                            r21 = r05;
                            r362 = r82;
                            obj2 = obj4;
                            if (r93 == 5) {
                                unsafe2.putInt(obj2, j12, p5.c(r33, bArr3));
                                r34 = r33 + 4;
                                r92 = r34;
                                r10 |= r232;
                                r17 = r362;
                                r03 = r92;
                                v7Var = v7Var2;
                                bArr2 = bArr3;
                                obj4 = obj2;
                                v7Var3 = v7Var;
                                bArr3 = bArr2;
                                unsafe = unsafe2;
                                r25 = r13;
                                r82 = r17;
                                break;
                            }
                            r33 = r33;
                            r82 = r362;
                            r23 = r33;
                            unsafe = unsafe2;
                            r11 = r13;
                            break;
                        case 7:
                            v7Var2 = v7Var3;
                            r33 = r24;
                            r21 = r05;
                            r362 = r82;
                            obj2 = obj4;
                            if (r93 == 0) {
                                r02 = p5.p(bArr3, r33, o5Var2);
                                y8.m(obj2, j12, o5Var2.f3660b != 0);
                                r92 = r02;
                                r10 |= r232;
                                r17 = r362;
                                r03 = r92;
                                v7Var = v7Var2;
                                bArr2 = bArr3;
                                obj4 = obj2;
                                v7Var3 = v7Var;
                                bArr3 = bArr2;
                                unsafe = unsafe2;
                                r25 = r13;
                                r82 = r17;
                                break;
                            }
                            r82 = r362;
                            r23 = r33;
                            unsafe = unsafe2;
                            r11 = r13;
                            break;
                        case 8:
                            v7Var2 = v7Var3;
                            r33 = r24;
                            r21 = r05;
                            r362 = r82;
                            obj2 = obj4;
                            j10 = j12;
                            if (r93 == 2) {
                                r02 = (r18 & PKIFailureInfo.duplicateCertReq) == 0 ? p5.j(bArr3, r33, o5Var2) : p5.k(bArr3, r33, o5Var2);
                                unsafe2.putObject(obj2, j10, objC);
                                r92 = r02;
                                r10 |= r232;
                                r17 = r362;
                                r03 = r92;
                                v7Var = v7Var2;
                                bArr2 = bArr3;
                                obj4 = obj2;
                                v7Var3 = v7Var;
                                bArr3 = bArr2;
                                unsafe = unsafe2;
                                r25 = r13;
                                r82 = r17;
                                break;
                            }
                            r82 = r362;
                            r23 = r33;
                            unsafe = unsafe2;
                            r11 = r13;
                            break;
                        case 9:
                            v7Var2 = v7Var3;
                            r33 = r24;
                            r21 = r05;
                            r362 = r82;
                            obj2 = obj4;
                            j10 = j12;
                            if (r93 == 2) {
                                r02 = p5.f(v7Var2.k(r13), bArr3, r33, r72, o5Var2);
                                Object object = unsafe2.getObject(obj2, j10);
                                Object objC = object == null ? o5Var2.f3661c : x6.c(object, o5Var2.f3661c);
                                unsafe2.putObject(obj2, j10, objC);
                                r92 = r02;
                                r10 |= r232;
                                r17 = r362;
                                r03 = r92;
                                v7Var = v7Var2;
                                bArr2 = bArr3;
                                obj4 = obj2;
                                v7Var3 = v7Var;
                                bArr3 = bArr2;
                                unsafe = unsafe2;
                                r25 = r13;
                                r82 = r17;
                                break;
                            }
                            r82 = r362;
                            r23 = r33;
                            unsafe = unsafe2;
                            r11 = r13;
                            break;
                        case 10:
                            v7Var2 = v7Var3;
                            r33 = r24;
                            r21 = r05;
                            r362 = r82;
                            obj2 = obj4;
                            j10 = j12;
                            if (r93 == 2) {
                                r02 = p5.a(bArr3, r33, o5Var2);
                                unsafe2.putObject(obj2, j10, objC);
                                r92 = r02;
                                r10 |= r232;
                                r17 = r362;
                                r03 = r92;
                                v7Var = v7Var2;
                                bArr2 = bArr3;
                                obj4 = obj2;
                                v7Var3 = v7Var;
                                bArr3 = bArr2;
                                unsafe = unsafe2;
                                r25 = r13;
                                r82 = r17;
                                break;
                            }
                            r82 = r362;
                            r23 = r33;
                            unsafe = unsafe2;
                            r11 = r13;
                            break;
                        case 12:
                            v7Var2 = v7Var3;
                            r33 = r24;
                            r21 = r05;
                            r362 = r82;
                            obj2 = obj4;
                            j11 = j12;
                            if (r93 == 0) {
                                r02 = p5.m(bArr3, r33, o5Var2);
                                r14 = o5Var2.f3659a;
                                unsafe2.putInt(obj2, j11, r14);
                                r92 = r02;
                                r10 |= r232;
                                r17 = r362;
                                r03 = r92;
                                v7Var = v7Var2;
                                bArr2 = bArr3;
                                obj4 = obj2;
                                v7Var3 = v7Var;
                                bArr3 = bArr2;
                                unsafe = unsafe2;
                                r25 = r13;
                                r82 = r17;
                                break;
                            }
                            r82 = r362;
                            r23 = r33;
                            unsafe = unsafe2;
                            r11 = r13;
                            break;
                        case 15:
                            v7Var2 = v7Var3;
                            r33 = r24;
                            r21 = r05;
                            r362 = r82;
                            obj2 = obj4;
                            j11 = j12;
                            if (r93 == 0) {
                                r02 = p5.m(bArr3, r33, o5Var2);
                                r14 = x5.a.B(o5Var2.f3659a);
                                unsafe2.putInt(obj2, j11, r14);
                                r92 = r02;
                                r10 |= r232;
                                r17 = r362;
                                r03 = r92;
                                v7Var = v7Var2;
                                bArr2 = bArr3;
                                obj4 = obj2;
                                v7Var3 = v7Var;
                                bArr3 = bArr2;
                                unsafe = unsafe2;
                                r25 = r13;
                                r82 = r17;
                                break;
                            }
                            r82 = r362;
                            r23 = r33;
                            unsafe = unsafe2;
                            r11 = r13;
                            break;
                        case 16:
                            if (r93 == 0) {
                                r92 = p5.p(bArr3, r24, o5Var2);
                                r21 = r05;
                                v7Var2 = v7Var3;
                                r362 = r82;
                                obj2 = obj4;
                                unsafe2.putLong((Object) obj, j12, x5.a.E(o5Var2.f3660b));
                                r10 |= r232;
                                r17 = r362;
                                r03 = r92;
                                v7Var = v7Var2;
                                bArr2 = bArr3;
                                obj4 = obj2;
                                v7Var3 = v7Var;
                                bArr3 = bArr2;
                                unsafe = unsafe2;
                                r25 = r13;
                                r82 = r17;
                                break;
                            }
                        default:
                            r21 = r05;
                            r362 = r82;
                            r33 = r24;
                            r82 = r362;
                            r23 = r33;
                            unsafe = unsafe2;
                            r11 = r13;
                            break;
                    }
                } else {
                    v7<T> v7Var4 = v7Var3;
                    r17 = r82;
                    obj2 = obj4;
                    r21 = r05;
                    if (r113 == 27) {
                        if (r93 == 2) {
                            w6 w6VarV = (w6) unsafe2.getObject(obj2, j12);
                            if (!w6VarV.c()) {
                                int size = w6VarV.size();
                                w6VarV = w6VarV.v(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj2, j12, w6VarV);
                            }
                            v7Var = v7Var4;
                            bArr2 = bArr3;
                            r03 = p5.g(v7Var4.k(r13), b10, bArr, r35, r37, w6VarV, o5Var);
                            obj4 = obj2;
                            v7Var3 = v7Var;
                            bArr3 = bArr2;
                            unsafe = unsafe2;
                            r25 = r13;
                            r82 = r17;
                        } else {
                            r15 = r35;
                            r27 = r10;
                            unsafe = unsafe2;
                            r29 = r13;
                            r28 = r17;
                        }
                    } else if (r113 <= 49) {
                        int r6 = r35;
                        r28 = r17;
                        r27 = r10;
                        unsafe = unsafe2;
                        int r292 = r13;
                        r03 = G(obj, bArr, r35, r37, b10, r21, r93, r13, r18, r113, j12, o5Var);
                        if (r03 != r6) {
                            obj3 = obj;
                            r19 = r292;
                            r132 = r19;
                            r10 = r27;
                            r82 = r28;
                            v7Var3 = this;
                            bArr3 = bArr;
                            r72 = r37;
                            r25 = r132;
                            obj4 = obj3;
                        } else {
                            obj3 = obj;
                            r32 = r03;
                            r19 = r292;
                            r23 = r32;
                            r11 = r19;
                            r10 = r27;
                            r82 = r28;
                        }
                    } else {
                        r15 = r35;
                        r27 = r10;
                        unsafe = unsafe2;
                        r29 = r13;
                        r28 = r17;
                        if (r113 != 50) {
                            obj3 = obj;
                            r19 = r29;
                            r03 = E(obj, bArr, r15, r37, b10, r21, r93, r18, r113, j12, r29, o5Var);
                            if (r03 == r15) {
                                r32 = r03;
                                r23 = r32;
                                r11 = r19;
                                r10 = r27;
                                r82 = r28;
                            }
                            r132 = r19;
                            r10 = r27;
                            r82 = r28;
                            v7Var3 = this;
                            bArr3 = bArr;
                            r72 = r37;
                            r25 = r132;
                            obj4 = obj3;
                        } else if (r93 == 2) {
                            D(obj, r29, j12);
                            throw null;
                        }
                    }
                    r32 = r15;
                    r19 = r29;
                    obj3 = obj;
                    r23 = r32;
                    r11 = r19;
                    r10 = r27;
                    r82 = r28;
                }
                o5Var2 = o5Var;
                r16 = r21;
                unsafe2 = unsafe;
            }
            r03 = p5.l(b10, bArr, r23, r37, y(obj), o5Var);
            r132 = r11;
            v7Var3 = this;
            bArr3 = bArr;
            r72 = r37;
            r25 = r132;
            obj4 = obj3;
            o5Var2 = o5Var;
            r16 = r21;
            unsafe2 = unsafe;
        }
        int r272 = r10;
        Unsafe unsafe3 = unsafe2;
        if (r82 != 1048575) {
            unsafe3.putInt(obj3, r82, r272);
        }
        if (r03 != r37) {
            throw z6.c();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:150:0x0258, code lost:
    
        if (r30.f3660b != 0) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x025b, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x025c, code lost:
    
        r12.l(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x025f, code lost:
    
        if (r4 >= r20) goto L294;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0261, code lost:
    
        r6 = com.google.android.gms.internal.measurement.p5.m(r18, r4, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0267, code lost:
    
        if (r21 == r30.f3659a) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x026a, code lost:
    
        r4 = com.google.android.gms.internal.measurement.p5.p(r18, r6, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0272, code lost:
    
        if (r30.f3660b == 0) goto L296;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0274, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0276, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x012d, code lost:
    
        r12.add(com.google.android.gms.internal.measurement.v5.f3791b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x019f, code lost:
    
        r12.add("");
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x025c, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0122, code lost:
    
        if (r4 == 0) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0125, code lost:
    
        r12.add(com.google.android.gms.internal.measurement.v5.A(r18, r1, r4));
        r1 = r1 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x012d, code lost:
    
        if (r1 >= r20) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x012f, code lost:
    
        r4 = com.google.android.gms.internal.measurement.p5.m(r18, r1, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0135, code lost:
    
        if (r21 == r30.f3659a) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0138, code lost:
    
        r1 = com.google.android.gms.internal.measurement.p5.m(r18, r4, r30);
        r4 = r30.f3659a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x013e, code lost:
    
        if (r4 < 0) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0142, code lost:
    
        if (r4 > (r18.length - r1)) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0144, code lost:
    
        if (r4 != 0) goto L277;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0146, code lost:
    
        r12.add(com.google.android.gms.internal.measurement.v5.f3791b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0150, code lost:
    
        throw com.google.android.gms.internal.measurement.z6.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0155, code lost:
    
        throw com.google.android.gms.internal.measurement.z6.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0156, code lost:
    
        return r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01a1  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:102:0x01b7 -> B:94:0x019b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:120:0x01f5 -> B:110:0x01cf). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:159:0x0272 -> B:152:0x025b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x0144 -> B:62:0x0125). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int G(T r17, byte[] r18, int r19, int r20, int r21, int r22, int r23, int r24, long r25, int r27, long r28, com.google.android.gms.internal.measurement.o5 r30) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1068
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.v7.G(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.measurement.o5):int");
    }

    public final int H(int r72, int r82) {
        int[] r02 = this.f3795a;
        int length = (r02.length / 3) - 1;
        while (r82 <= length) {
            int r32 = (length + r82) >>> 1;
            int r42 = r32 * 3;
            int r52 = r02[r42];
            if (r72 == r52) {
                return r42;
            }
            if (r72 < r52) {
                length = r32 - 1;
            } else {
                r82 = r32 + 1;
            }
        }
        return -1;
    }

    public final int a(int r22) {
        return this.f3795a[r22 + 1];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00ea A[PHI: r4
      0x00ea: PHI (r4v14 java.lang.Object) = (r4v11 java.lang.Object), (r4v18 java.lang.Object) binds: [B:66:0x00e8, B:62:0x00d6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00ef  */
    @Override // com.google.android.gms.internal.measurement.d8
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int b(T r9) {
        /*
            Method dump skipped, instructions count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.v7.b(java.lang.Object):int");
    }

    @Override // com.google.android.gms.internal.measurement.d8
    public final int c(T t10) {
        return this.f3800g ? B(t10) : A(t10);
    }

    @Override // com.google.android.gms.internal.measurement.d8
    public final void d(T t10) {
        int[] r12;
        int r22;
        int r02 = this.f3802i;
        while (true) {
            r12 = this.f3801h;
            r22 = this.f3803j;
            if (r02 >= r22) {
                break;
            }
            long jA = a(r12[r02]) & 1048575;
            Object objJ = y8.j(jA, t10);
            if (objJ != null) {
                ((m7) objJ).f3630a = false;
                y8.r(jA, t10, objJ);
            }
            r02++;
        }
        int length = r12.length;
        while (r22 < length) {
            this.f3804k.a(r12[r22], t10);
            r22++;
        }
        this.f3805l.g(t10);
        if (this.f) {
            this.f3806m.b(t10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.d8
    public final T e() {
        return (T) ((q6) this.f3799e).q(4);
    }

    @Override // com.google.android.gms.internal.measurement.d8
    public final void f(T t10, byte[] bArr, int r11, int r12, o5 o5Var) throws IOException {
        if (this.f3800g) {
            F(t10, bArr, r11, r12, o5Var);
        } else {
            x(t10, bArr, r11, r12, 0, o5Var);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002f  */
    @Override // com.google.android.gms.internal.measurement.d8
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(T r6, T r7) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.v7.g(java.lang.Object, java.lang.Object):void");
    }

    @Override // com.google.android.gms.internal.measurement.d8
    public final boolean h(T t10, T t11) {
        int[] r02 = this.f3795a;
        int length = r02.length;
        for (int r32 = 0; r32 < length; r32 += 3) {
            int r42 = a(r32);
            long j10 = r42 & 1048575;
            switch ((r42 >>> 20) & 255) {
                case 0:
                    if (!s(r32, t10, t11) || Double.doubleToLongBits(y8.e(j10, t10)) != Double.doubleToLongBits(y8.e(j10, t11))) {
                        return false;
                    }
                    break;
                case 1:
                    if (!s(r32, t10, t11) || Float.floatToIntBits(y8.f(j10, t10)) != Float.floatToIntBits(y8.f(j10, t11))) {
                        return false;
                    }
                    break;
                    break;
                case 2:
                    if (!s(r32, t10, t11) || y8.h(j10, t10) != y8.h(j10, t11)) {
                        return false;
                    }
                    break;
                    break;
                case 3:
                    if (!s(r32, t10, t11) || y8.h(j10, t10) != y8.h(j10, t11)) {
                        return false;
                    }
                    break;
                    break;
                case 4:
                    if (!s(r32, t10, t11) || y8.g(j10, t10) != y8.g(j10, t11)) {
                        return false;
                    }
                    break;
                    break;
                case 5:
                    if (!s(r32, t10, t11) || y8.h(j10, t10) != y8.h(j10, t11)) {
                        return false;
                    }
                    break;
                case 6:
                    if (!s(r32, t10, t11) || y8.g(j10, t10) != y8.g(j10, t11)) {
                        return false;
                    }
                    break;
                    break;
                case 7:
                    if (!s(r32, t10, t11) || y8.t(j10, t10) != y8.t(j10, t11)) {
                        return false;
                    }
                    break;
                    break;
                case 8:
                    if (!s(r32, t10, t11) || !e8.b(y8.j(j10, t10), y8.j(j10, t11))) {
                        return false;
                    }
                    break;
                case 9:
                    if (!s(r32, t10, t11) || !e8.b(y8.j(j10, t10), y8.j(j10, t11))) {
                        return false;
                    }
                    break;
                case 10:
                    if (!s(r32, t10, t11) || !e8.b(y8.j(j10, t10), y8.j(j10, t11))) {
                        return false;
                    }
                    break;
                    break;
                case 11:
                    if (!s(r32, t10, t11) || y8.g(j10, t10) != y8.g(j10, t11)) {
                        return false;
                    }
                    break;
                case 12:
                    if (!s(r32, t10, t11) || y8.g(j10, t10) != y8.g(j10, t11)) {
                        return false;
                    }
                    break;
                case 13:
                    if (!s(r32, t10, t11) || y8.g(j10, t10) != y8.g(j10, t11)) {
                        return false;
                    }
                    break;
                case 14:
                    if (!s(r32, t10, t11) || y8.h(j10, t10) != y8.h(j10, t11)) {
                        return false;
                    }
                    break;
                case 15:
                    if (!s(r32, t10, t11) || y8.g(j10, t10) != y8.g(j10, t11)) {
                        return false;
                    }
                    break;
                case 16:
                    if (!s(r32, t10, t11) || y8.h(j10, t10) != y8.h(j10, t11)) {
                        return false;
                    }
                    break;
                case 17:
                    if (!s(r32, t10, t11) || !e8.b(y8.j(j10, t10), y8.j(j10, t11))) {
                        return false;
                    }
                    break;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                case 50:
                    if (!e8.b(y8.j(j10, t10), y8.j(j10, t11))) {
                        return false;
                    }
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long j11 = r02[r32 + 2] & 1048575;
                    if (y8.g(j11, t10) != y8.g(j11, t11) || !e8.b(y8.j(j10, t10), y8.j(j10, t11))) {
                        return false;
                    }
                    break;
                    break;
            }
        }
        o8<?, ?> o8Var = this.f3805l;
        if (!o8Var.c(t10).equals(o8Var.c(t11))) {
            return false;
        }
        if (!this.f) {
            return true;
        }
        e6<?> e6Var = this.f3806m;
        e6Var.a(t10);
        e6Var.a(t11);
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0366  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x037b  */
    @Override // com.google.android.gms.internal.measurement.d8
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i(T r12, com.google.android.gms.internal.measurement.a6 r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.v7.i(java.lang.Object, com.google.android.gms.internal.measurement.a6):void");
    }

    public final d8 k(int r42) {
        int r43 = r42 / 3;
        int r44 = r43 + r43;
        Object[] objArr = this.f3796b;
        d8 d8Var = (d8) objArr[r44];
        if (d8Var != null) {
            return d8Var;
        }
        d8<T> d8VarA = a8.f3373c.a((Class) objArr[r44 + 1]);
        objArr[r44] = d8VarA;
        return d8VarA;
    }

    public final Object l(int r22) {
        int r23 = r22 / 3;
        return this.f3796b[r23 + r23];
    }

    public final void n(int r42, Object obj, Object obj2) {
        long jA = a(r42) & 1048575;
        if (t(r42, obj2)) {
            Object objJ = y8.j(jA, obj);
            Object objJ2 = y8.j(jA, obj2);
            if (objJ != null && objJ2 != null) {
                objJ2 = x6.c(objJ, objJ2);
            } else if (objJ2 == null) {
                return;
            }
            y8.r(jA, obj, objJ2);
            q(r42, obj);
        }
    }

    public final void o(int r52, Object obj, Object obj2) {
        int r02 = a(r52);
        int r12 = this.f3795a[r52];
        long j10 = r02 & 1048575;
        if (u(r12, r52, obj2)) {
            Object objJ = u(r12, r52, obj) ? y8.j(j10, obj) : null;
            Object objJ2 = y8.j(j10, obj2);
            if (objJ != null && objJ2 != null) {
                objJ2 = x6.c(objJ, objJ2);
            } else if (objJ2 == null) {
                return;
            }
            y8.r(j10, obj, objJ2);
            r(r12, r52, obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0099  */
    @Override // com.google.android.gms.internal.measurement.d8
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean p(T r15) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.v7.p(java.lang.Object):boolean");
    }

    public final void q(int r6, Object obj) {
        int r62 = this.f3795a[r6 + 2];
        long j10 = 1048575 & r62;
        if (j10 == 1048575) {
            return;
        }
        y8.p((1 << (r62 >>> 20)) | y8.g(j10, obj), j10, obj);
    }

    public final void r(int r32, int r42, Object obj) {
        y8.p(r32, this.f3795a[r42 + 2] & 1048575, obj);
    }

    public final boolean s(int r12, Object obj, Object obj2) {
        return t(r12, obj) == t(r12, obj2);
    }

    public final boolean t(int r10, Object obj) {
        int r02 = this.f3795a[r10 + 2];
        long j10 = r02 & 1048575;
        if (j10 != 1048575) {
            return (y8.g(j10, obj) & (1 << (r02 >>> 20))) != 0;
        }
        int r102 = a(r10);
        long j11 = r102 & 1048575;
        switch ((r102 >>> 20) & 255) {
            case 0:
                return Double.doubleToRawLongBits(y8.e(j11, obj)) != 0;
            case 1:
                return Float.floatToRawIntBits(y8.f(j11, obj)) != 0;
            case 2:
                return y8.h(j11, obj) != 0;
            case 3:
                return y8.h(j11, obj) != 0;
            case 4:
                return y8.g(j11, obj) != 0;
            case 5:
                return y8.h(j11, obj) != 0;
            case 6:
                return y8.g(j11, obj) != 0;
            case 7:
                return y8.t(j11, obj);
            case 8:
                Object objJ = y8.j(j11, obj);
                if (objJ instanceof String) {
                    return !((String) objJ).isEmpty();
                }
                if (objJ instanceof v5) {
                    return !v5.f3791b.equals(objJ);
                }
                throw new IllegalArgumentException();
            case 9:
                return y8.j(j11, obj) != null;
            case 10:
                return !v5.f3791b.equals(y8.j(j11, obj));
            case 11:
                return y8.g(j11, obj) != 0;
            case 12:
                return y8.g(j11, obj) != 0;
            case 13:
                return y8.g(j11, obj) != 0;
            case 14:
                return y8.h(j11, obj) != 0;
            case 15:
                return y8.g(j11, obj) != 0;
            case 16:
                return y8.h(j11, obj) != 0;
            case 17:
                return y8.j(j11, obj) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final boolean u(int r32, int r42, Object obj) {
        return y8.g((long) (this.f3795a[r42 + 2] & 1048575), obj) == r32;
    }

    public final void v(T t10, a6 a6Var) throws IOException {
        int r42;
        if (this.f) {
            this.f3806m.a(t10);
            throw null;
        }
        int[] r32 = this.f3795a;
        int length = r32.length;
        int r6 = 1048575;
        int r82 = 0;
        int r92 = 1048575;
        int r10 = 0;
        while (r82 < length) {
            int r11 = a(r82);
            int r12 = r32[r82];
            int r13 = (r11 >>> 20) & 255;
            Unsafe unsafe = f3794o;
            if (r13 <= 17) {
                int r14 = r32[r82 + 2];
                int r43 = r14 & r6;
                if (r43 != r92) {
                    r10 = unsafe.getInt(t10, r43);
                    r92 = r43;
                }
                r42 = 1 << (r14 >>> 20);
            } else {
                r42 = 0;
            }
            long j10 = r11 & r6;
            switch (r13) {
                case 0:
                    if ((r42 & r10) != 0) {
                        a6Var.g(r12, y8.e(j10, t10));
                        continue;
                    }
                    r82 += 3;
                    r6 = 1048575;
                case 1:
                    if ((r42 & r10) != 0) {
                        a6Var.k(y8.f(j10, t10), r12);
                    } else {
                        continue;
                    }
                    r82 += 3;
                    r6 = 1048575;
                case 2:
                    if ((r42 & r10) != 0) {
                        a6Var.n(r12, unsafe.getLong(t10, j10));
                    } else {
                        continue;
                    }
                    r82 += 3;
                    r6 = 1048575;
                case 3:
                    if ((r42 & r10) != 0) {
                        a6Var.d(r12, unsafe.getLong(t10, j10));
                    } else {
                        continue;
                    }
                    r82 += 3;
                    r6 = 1048575;
                case 4:
                    if ((r42 & r10) != 0) {
                        a6Var.m(r12, unsafe.getInt(t10, j10));
                    } else {
                        continue;
                    }
                    r82 += 3;
                    r6 = 1048575;
                case 5:
                    if ((r42 & r10) != 0) {
                        a6Var.j(r12, unsafe.getLong(t10, j10));
                    } else {
                        continue;
                    }
                    r82 += 3;
                    r6 = 1048575;
                case 6:
                    if ((r42 & r10) != 0) {
                        a6Var.i(r12, unsafe.getInt(t10, j10));
                    } else {
                        continue;
                    }
                    r82 += 3;
                    r6 = 1048575;
                case 7:
                    if ((r42 & r10) != 0) {
                        a6Var.e(r12, y8.t(j10, t10));
                    } else {
                        continue;
                    }
                    r82 += 3;
                    r6 = 1048575;
                case 8:
                    if ((r42 & r10) != 0) {
                        w(r12, unsafe.getObject(t10, j10), a6Var);
                    } else {
                        continue;
                    }
                    r82 += 3;
                    r6 = 1048575;
                case 9:
                    if ((r42 & r10) != 0) {
                        a6Var.o(r12, k(r82), unsafe.getObject(t10, j10));
                    } else {
                        continue;
                    }
                    r82 += 3;
                    r6 = 1048575;
                case 10:
                    if ((r42 & r10) != 0) {
                        a6Var.f(r12, (v5) unsafe.getObject(t10, j10));
                    } else {
                        continue;
                    }
                    r82 += 3;
                    r6 = 1048575;
                case 11:
                    if ((r42 & r10) != 0) {
                        a6Var.c(r12, unsafe.getInt(t10, j10));
                    } else {
                        continue;
                    }
                    r82 += 3;
                    r6 = 1048575;
                case 12:
                    if ((r42 & r10) != 0) {
                        a6Var.h(r12, unsafe.getInt(t10, j10));
                    } else {
                        continue;
                    }
                    r82 += 3;
                    r6 = 1048575;
                case 13:
                    if ((r42 & r10) != 0) {
                        a6Var.p(r12, unsafe.getInt(t10, j10));
                    } else {
                        continue;
                    }
                    r82 += 3;
                    r6 = 1048575;
                case 14:
                    if ((r42 & r10) != 0) {
                        a6Var.q(r12, unsafe.getLong(t10, j10));
                    } else {
                        continue;
                    }
                    r82 += 3;
                    r6 = 1048575;
                case 15:
                    if ((r42 & r10) != 0) {
                        a6Var.a(r12, unsafe.getInt(t10, j10));
                    } else {
                        continue;
                    }
                    r82 += 3;
                    r6 = 1048575;
                case 16:
                    if ((r42 & r10) != 0) {
                        a6Var.b(r12, unsafe.getLong(t10, j10));
                    } else {
                        continue;
                    }
                    r82 += 3;
                    r6 = 1048575;
                case 17:
                    if ((r42 & r10) != 0) {
                        a6Var.l(r12, k(r82), unsafe.getObject(t10, j10));
                    } else {
                        continue;
                    }
                    r82 += 3;
                    r6 = 1048575;
                case 18:
                    e8.e(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, false);
                    continue;
                    r82 += 3;
                    r6 = 1048575;
                case 19:
                    e8.i(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, false);
                    continue;
                    r82 += 3;
                    r6 = 1048575;
                case 20:
                    e8.l(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, false);
                    continue;
                    r82 += 3;
                    r6 = 1048575;
                case 21:
                    e8.u(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, false);
                    continue;
                    r82 += 3;
                    r6 = 1048575;
                case 22:
                    e8.k(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, false);
                    continue;
                    r82 += 3;
                    r6 = 1048575;
                case 23:
                    e8.h(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, false);
                    continue;
                    r82 += 3;
                    r6 = 1048575;
                case 24:
                    e8.g(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, false);
                    continue;
                    r82 += 3;
                    r6 = 1048575;
                case 25:
                    e8.c(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, false);
                    continue;
                    r82 += 3;
                    r6 = 1048575;
                case 26:
                    e8.r(r32[r82], (List) unsafe.getObject(t10, j10), a6Var);
                    break;
                case 27:
                    e8.m(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, k(r82));
                    break;
                case 28:
                    e8.d(r32[r82], (List) unsafe.getObject(t10, j10), a6Var);
                    break;
                case 29:
                    e8.s(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, false);
                    break;
                case 30:
                    e8.f(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, false);
                    break;
                case 31:
                    e8.n(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, false);
                    break;
                case 32:
                    e8.o(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, false);
                    break;
                case 33:
                    e8.p(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, false);
                    break;
                case 34:
                    e8.q(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, false);
                    break;
                case 35:
                    e8.e(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, true);
                    break;
                case 36:
                    e8.i(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, true);
                    break;
                case 37:
                    e8.l(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, true);
                    break;
                case 38:
                    e8.u(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, true);
                    break;
                case 39:
                    e8.k(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, true);
                    break;
                case 40:
                    e8.h(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, true);
                    break;
                case 41:
                    e8.g(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, true);
                    break;
                case 42:
                    e8.c(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, true);
                    break;
                case 43:
                    e8.s(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, true);
                    break;
                case 44:
                    e8.f(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, true);
                    break;
                case 45:
                    e8.n(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, true);
                    break;
                case 46:
                    e8.o(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, true);
                    break;
                case 47:
                    e8.p(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, true);
                    break;
                case 48:
                    e8.q(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, true);
                    break;
                case 49:
                    e8.j(r32[r82], (List) unsafe.getObject(t10, j10), a6Var, k(r82));
                    break;
                case 50:
                    if (unsafe.getObject(t10, j10) != null) {
                        throw null;
                    }
                    break;
                case 51:
                    if (u(r12, r82, t10)) {
                        a6Var.g(r12, ((Double) y8.j(j10, t10)).doubleValue());
                        break;
                    }
                    break;
                case 52:
                    if (u(r12, r82, t10)) {
                        a6Var.k(((Float) y8.j(j10, t10)).floatValue(), r12);
                        break;
                    }
                    break;
                case 53:
                    if (u(r12, r82, t10)) {
                        a6Var.n(r12, j(j10, t10));
                        break;
                    }
                    break;
                case 54:
                    if (u(r12, r82, t10)) {
                        a6Var.d(r12, j(j10, t10));
                        break;
                    }
                    break;
                case 55:
                    if (u(r12, r82, t10)) {
                        a6Var.m(r12, C(j10, t10));
                        break;
                    }
                    break;
                case 56:
                    if (u(r12, r82, t10)) {
                        a6Var.j(r12, j(j10, t10));
                        break;
                    }
                    break;
                case 57:
                    if (u(r12, r82, t10)) {
                        a6Var.i(r12, C(j10, t10));
                        break;
                    }
                    break;
                case 58:
                    if (u(r12, r82, t10)) {
                        a6Var.e(r12, ((Boolean) y8.j(j10, t10)).booleanValue());
                        break;
                    }
                    break;
                case 59:
                    if (u(r12, r82, t10)) {
                        w(r12, unsafe.getObject(t10, j10), a6Var);
                        break;
                    }
                    break;
                case 60:
                    if (u(r12, r82, t10)) {
                        a6Var.o(r12, k(r82), unsafe.getObject(t10, j10));
                        break;
                    }
                    break;
                case 61:
                    if (u(r12, r82, t10)) {
                        a6Var.f(r12, (v5) unsafe.getObject(t10, j10));
                        break;
                    }
                    break;
                case 62:
                    if (u(r12, r82, t10)) {
                        a6Var.c(r12, C(j10, t10));
                        break;
                    }
                    break;
                case 63:
                    if (u(r12, r82, t10)) {
                        a6Var.h(r12, C(j10, t10));
                        break;
                    }
                    break;
                case 64:
                    if (u(r12, r82, t10)) {
                        a6Var.p(r12, C(j10, t10));
                        break;
                    }
                    break;
                case 65:
                    if (u(r12, r82, t10)) {
                        a6Var.q(r12, j(j10, t10));
                        break;
                    }
                    break;
                case 66:
                    if (u(r12, r82, t10)) {
                        a6Var.a(r12, C(j10, t10));
                        break;
                    }
                    break;
                case 67:
                    if (u(r12, r82, t10)) {
                        a6Var.b(r12, j(j10, t10));
                        break;
                    }
                    break;
                case 68:
                    if (u(r12, r82, t10)) {
                        a6Var.l(r12, k(r82), unsafe.getObject(t10, j10));
                        break;
                    }
                    break;
            }
            r82 += 3;
            r6 = 1048575;
        }
        o8<?, ?> o8Var = this.f3805l;
        o8Var.i(o8Var.c(t10), a6Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:130:0x0439, code lost:
    
        if (r0 != r15) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x049a, code lost:
    
        if (r0 != r15) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x049c, code lost:
    
        r12 = r35;
        r1 = r39;
        r10 = r40;
        r8 = r17;
        r16 = r21;
        r5 = r22;
        r11 = r27;
        r7 = r30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x04ae, code lost:
    
        r6 = r39;
        r2 = r0;
        r8 = r17;
        r9 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0535, code lost:
    
        if (r5 == 1048575) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0537, code lost:
    
        r32.putInt(r12, r5, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x053d, code lost:
    
        r3 = r14.f3802i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0541, code lost:
    
        if (r3 >= r14.f3803j) goto L235;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0543, code lost:
    
        r4 = r14.f3801h[r3];
        r5 = r31[r4];
        r5 = com.google.android.gms.internal.measurement.y8.j(r14.a(r4) & 1048575, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0553, code lost:
    
        if (r5 != null) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0556, code lost:
    
        r6 = r4 / 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x055f, code lost:
    
        if (((com.google.android.gms.internal.measurement.t6) r20[(r6 + r6) + 1]) != null) goto L236;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0561, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0564, code lost:
    
        r5 = (com.google.android.gms.internal.measurement.m7) r5;
        r0 = (com.google.android.gms.internal.measurement.l7) r14.l(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x056c, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x056f, code lost:
    
        if (r1 != 0) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0571, code lost:
    
        if (r0 != r38) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0578, code lost:
    
        throw com.google.android.gms.internal.measurement.z6.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0579, code lost:
    
        if (r0 > r38) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x057b, code lost:
    
        if (r8 != r1) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x057d, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0582, code lost:
    
        throw com.google.android.gms.internal.measurement.z6.c();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int x(T r35, byte[] r36, int r37, int r38, int r39, com.google.android.gms.internal.measurement.o5 r40) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.v7.x(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.o5):int");
    }
}
