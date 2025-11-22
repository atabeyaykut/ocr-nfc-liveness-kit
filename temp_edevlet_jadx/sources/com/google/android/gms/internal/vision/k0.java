package com.google.android.gms.internal.vision;

import java.io.IOException;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes.dex */
public final class k0 {
    public static int a(int r22, byte[] bArr) {
        return ((bArr[r22 + 3] & 255) << 24) | (bArr[r22] & 255) | ((bArr[r22 + 1] & 255) << 8) | ((bArr[r22 + 2] & 255) << 16);
    }

    public static int b(int r32, byte[] bArr, int r52, int r6, l0 l0Var) throws q1 {
        if ((r32 >>> 3) == 0) {
            throw new q1("Protocol message contained an invalid tag (zero).");
        }
        int r02 = r32 & 7;
        if (r02 == 0) {
            return k(bArr, r52, l0Var);
        }
        if (r02 == 1) {
            return r52 + 8;
        }
        if (r02 == 2) {
            return i(bArr, r52, l0Var) + l0Var.f4022a;
        }
        if (r02 != 3) {
            if (r02 == 5) {
                return r52 + 4;
            }
            throw new q1("Protocol message contained an invalid tag (zero).");
        }
        int r33 = (r32 & (-8)) | 4;
        int r03 = 0;
        while (r52 < r6) {
            r52 = i(bArr, r52, l0Var);
            r03 = l0Var.f4022a;
            if (r03 == r33) {
                break;
            }
            r52 = b(r03, bArr, r52, r6, l0Var);
        }
        if (r52 > r6 || r03 != r33) {
            throw q1.c();
        }
        return r52;
    }

    public static int c(int r22, byte[] bArr, int r42, int r52, r1<?> r1Var, l0 l0Var) {
        k1 k1Var = (k1) r1Var;
        int i10 = i(bArr, r42, l0Var);
        while (true) {
            k1Var.l(l0Var.f4022a);
            if (i10 >= r52) {
                break;
            }
            int i11 = i(bArr, i10, l0Var);
            if (r22 != l0Var.f4022a) {
                break;
            }
            i10 = i(bArr, i11, l0Var);
        }
        return i10;
    }

    public static int d(int r92, byte[] bArr, int r11, int r12, q3 q3Var, l0 l0Var) throws q1 {
        if ((r92 >>> 3) == 0) {
            throw new q1("Protocol message contained an invalid tag (zero).");
        }
        int r02 = r92 & 7;
        if (r02 == 0) {
            int r10 = k(bArr, r11, l0Var);
            q3Var.a(r92, Long.valueOf(l0Var.f4023b));
            return r10;
        }
        if (r02 == 1) {
            q3Var.a(r92, Long.valueOf(l(r11, bArr)));
            return r11 + 8;
        }
        if (r02 == 2) {
            int i10 = i(bArr, r11, l0Var);
            int r122 = l0Var.f4022a;
            if (r122 < 0) {
                throw q1.b();
            }
            if (r122 > bArr.length - i10) {
                throw q1.a();
            }
            q3Var.a(r92, r122 == 0 ? p0.f4044b : p0.o(bArr, i10, r122));
            return i10 + r122;
        }
        if (r02 != 3) {
            if (r02 != 5) {
                throw new q1("Protocol message contained an invalid tag (zero).");
            }
            q3Var.a(r92, Integer.valueOf(a(r11, bArr)));
            return r11 + 4;
        }
        q3 q3Var2 = new q3();
        int r13 = (r92 & (-8)) | 4;
        int r22 = 0;
        while (true) {
            if (r11 >= r12) {
                break;
            }
            int i11 = i(bArr, r11, l0Var);
            int r112 = l0Var.f4022a;
            r22 = r112;
            if (r112 == r13) {
                r11 = i11;
                break;
            }
            int r23 = d(r22, bArr, i11, r12, q3Var2, l0Var);
            r22 = r112;
            r11 = r23;
        }
        if (r11 > r12 || r22 != r13) {
            throw q1.c();
        }
        q3Var.a(r92, q3Var2);
        return r11;
    }

    public static int e(int r12, byte[] bArr, int r32, l0 l0Var) {
        int r22;
        int r23;
        int r13 = r12 & CertificateBody.profileType;
        int r02 = r32 + 1;
        byte b10 = bArr[r32];
        if (b10 < 0) {
            int r14 = r13 | ((b10 & 127) << 7);
            int r33 = r02 + 1;
            byte b11 = bArr[r02];
            if (b11 >= 0) {
                r22 = b11 << 14;
            } else {
                r13 = r14 | ((b11 & 127) << 14);
                r02 = r33 + 1;
                byte b12 = bArr[r33];
                if (b12 >= 0) {
                    r23 = b12 << 21;
                } else {
                    r14 = r13 | ((b12 & 127) << 21);
                    r33 = r02 + 1;
                    byte b13 = bArr[r02];
                    if (b13 >= 0) {
                        r22 = b13 << 28;
                    } else {
                        int r15 = r14 | ((b13 & 127) << 28);
                        while (true) {
                            int r03 = r33 + 1;
                            if (bArr[r33] >= 0) {
                                l0Var.f4022a = r15;
                                return r03;
                            }
                            r33 = r03;
                        }
                    }
                }
            }
            l0Var.f4022a = r14 | r22;
            return r33;
        }
        r23 = b10 << 7;
        l0Var.f4022a = r13 | r23;
        return r02;
    }

    public static int f(d3<?> d3Var, int r32, byte[] bArr, int r52, int r6, r1<?> r1Var, l0 l0Var) throws IOException {
        int r53 = h(d3Var, bArr, r52, r6, l0Var);
        while (true) {
            r1Var.add(l0Var.f4024c);
            if (r53 >= r6) {
                break;
            }
            int i10 = i(bArr, r53, l0Var);
            if (r32 != l0Var.f4022a) {
                break;
            }
            r53 = h(d3Var, bArr, i10, r6, l0Var);
        }
        return r53;
    }

    public static int g(d3 d3Var, byte[] bArr, int r10, int r11, int r12, l0 l0Var) throws IOException {
        r2 r2Var = (r2) d3Var;
        Object objH = r2Var.h();
        int r92 = r2Var.k(objH, bArr, r10, r11, r12, l0Var);
        r2Var.a(objH);
        l0Var.f4024c = objH;
        return r92;
    }

    public static int h(d3 d3Var, byte[] bArr, int r82, int r92, l0 l0Var) throws IOException {
        int r02 = r82 + 1;
        int r83 = bArr[r82];
        if (r83 < 0) {
            r02 = e(r83, bArr, r02, l0Var);
            r83 = l0Var.f4022a;
        }
        int r32 = r02;
        if (r83 < 0 || r83 > r92 - r32) {
            throw q1.a();
        }
        Object objH = d3Var.h();
        int r84 = r83 + r32;
        d3Var.g(objH, bArr, r32, r84, l0Var);
        d3Var.a(objH);
        l0Var.f4024c = objH;
        return r84;
    }

    public static int i(byte[] bArr, int r22, l0 l0Var) {
        int r02 = r22 + 1;
        byte b10 = bArr[r22];
        if (b10 < 0) {
            return e(b10, bArr, r02, l0Var);
        }
        l0Var.f4022a = b10;
        return r02;
    }

    public static int j(byte[] bArr, int r32, r1<?> r1Var, l0 l0Var) throws IOException {
        k1 k1Var = (k1) r1Var;
        int i10 = i(bArr, r32, l0Var);
        int r02 = l0Var.f4022a + i10;
        while (i10 < r02) {
            i10 = i(bArr, i10, l0Var);
            k1Var.l(l0Var.f4022a);
        }
        if (i10 == r02) {
            return i10;
        }
        throw q1.a();
    }

    public static int k(byte[] bArr, int r10, l0 l0Var) {
        int r02 = r10 + 1;
        long j10 = bArr[r10];
        if (j10 >= 0) {
            l0Var.f4023b = j10;
            return r02;
        }
        int r102 = r02 + 1;
        byte b10 = bArr[r02];
        long j11 = (j10 & 127) | ((b10 & 127) << 7);
        int r32 = 7;
        while (b10 < 0) {
            int r03 = r102 + 1;
            r32 += 7;
            j11 |= (r10 & 127) << r32;
            b10 = bArr[r102];
            r102 = r03;
        }
        l0Var.f4023b = j11;
        return r102;
    }

    public static long l(int r72, byte[] bArr) {
        return ((bArr[r72 + 7] & 255) << 56) | (bArr[r72] & 255) | ((bArr[r72 + 1] & 255) << 8) | ((bArr[r72 + 2] & 255) << 16) | ((bArr[r72 + 3] & 255) << 24) | ((bArr[r72 + 4] & 255) << 32) | ((bArr[r72 + 5] & 255) << 40) | ((bArr[r72 + 6] & 255) << 48);
    }

    public static double m(int r02, byte[] bArr) {
        return Double.longBitsToDouble(l(r02, bArr));
    }

    public static int n(byte[] bArr, int r42, l0 l0Var) throws q1 {
        int i10 = i(bArr, r42, l0Var);
        int r02 = l0Var.f4022a;
        if (r02 < 0) {
            throw q1.b();
        }
        if (r02 == 0) {
            l0Var.f4024c = "";
            return i10;
        }
        l0Var.f4024c = new String(bArr, i10, r02, m1.f4035a);
        return i10 + r02;
    }

    public static float o(int r02, byte[] bArr) {
        return Float.intBitsToFloat(a(r02, bArr));
    }

    public static int p(byte[] bArr, int r32, l0 l0Var) throws q1 {
        int i10 = i(bArr, r32, l0Var);
        int r02 = l0Var.f4022a;
        if (r02 < 0) {
            throw q1.b();
        }
        if (r02 == 0) {
            l0Var.f4024c = "";
            return i10;
        }
        l0Var.f4024c = w3.f4119a.e(bArr, i10, r02);
        return i10 + r02;
    }

    public static int q(byte[] bArr, int r32, l0 l0Var) throws q1 {
        int i10 = i(bArr, r32, l0Var);
        int r02 = l0Var.f4022a;
        if (r02 < 0) {
            throw q1.b();
        }
        if (r02 > bArr.length - i10) {
            throw q1.a();
        }
        if (r02 == 0) {
            l0Var.f4024c = p0.f4044b;
            return i10;
        }
        l0Var.f4024c = p0.o(bArr, i10, r02);
        return i10 + r02;
    }
}
