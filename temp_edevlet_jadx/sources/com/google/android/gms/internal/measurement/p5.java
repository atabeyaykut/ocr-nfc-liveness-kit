package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import net.sf.scuba.smartcards.ISO7816;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.jmrtd.PassportService;

/* loaded from: classes.dex */
public final class p5 {
    public static int a(byte[] bArr, int r32, o5 o5Var) throws z6 {
        int r33 = m(bArr, r32, o5Var);
        int r02 = o5Var.f3659a;
        if (r02 < 0) {
            throw z6.b();
        }
        if (r02 > bArr.length - r33) {
            throw z6.d();
        }
        if (r02 == 0) {
            o5Var.f3661c = v5.f3791b;
            return r33;
        }
        o5Var.f3661c = v5.A(bArr, r33, r02);
        return r33 + r02;
    }

    public static f b(f fVar, s3 s3Var, o oVar, Boolean bool, Boolean bool2) {
        f fVar2 = new f();
        Iterator<Integer> itC = fVar.C();
        while (itC.hasNext()) {
            int r22 = itC.next().intValue();
            if (fVar.H(r22)) {
                p pVarA = oVar.a(s3Var, Arrays.asList(fVar.z(r22), new i(Double.valueOf(r22)), fVar));
                if (pVarA.l().equals(bool)) {
                    return fVar2;
                }
                if (bool2 == null || pVarA.l().equals(bool2)) {
                    fVar2.G(r22, pVarA);
                }
            }
        }
        return fVar2;
    }

    public static int c(int r22, byte[] bArr) {
        return ((bArr[r22 + 3] & 255) << 24) | (bArr[r22] & 255) | ((bArr[r22 + 1] & 255) << 8) | ((bArr[r22 + 2] & 255) << 16);
    }

    public static int d(d8 d8Var, byte[] bArr, int r10, int r11, int r12, o5 o5Var) throws IOException {
        v7 v7Var = (v7) d8Var;
        Object objE = v7Var.e();
        int r92 = v7Var.x(objE, bArr, r10, r11, r12, o5Var);
        v7Var.d(objE);
        o5Var.f3661c = objE;
        return r92;
    }

    public static p e(f fVar, s3 s3Var, ArrayList arrayList, boolean z10) {
        p pVarA;
        c5.w.c0("reduce", 1, arrayList);
        c5.w.d0("reduce", 2, arrayList);
        p pVarB = s3Var.b((p) arrayList.get(0));
        if (!(pVarB instanceof j)) {
            throw new IllegalArgumentException("Callback should be a method");
        }
        if (arrayList.size() == 2) {
            pVarA = s3Var.b((p) arrayList.get(1));
            if (pVarA instanceof h) {
                throw new IllegalArgumentException("Failed to parse initial value");
            }
        } else {
            if (fVar.y() == 0) {
                throw new IllegalStateException("Empty array with no initial value error");
            }
            pVarA = null;
        }
        j jVar = (j) pVarB;
        int r42 = fVar.y();
        int r52 = z10 ? 0 : r42 - 1;
        int r43 = z10 ? r42 - 1 : 0;
        int r6 = true == z10 ? 1 : -1;
        if (pVarA == null) {
            pVarA = fVar.z(r52);
            r52 += r6;
        }
        while ((r43 - r52) * r6 >= 0) {
            if (fVar.H(r52)) {
                pVarA = jVar.a(s3Var, Arrays.asList(pVarA, fVar.z(r52), new i(Double.valueOf(r52)), fVar));
                if (pVarA instanceof h) {
                    throw new IllegalStateException("Reduce operation failed");
                }
                r52 += r6;
            } else {
                r52 += r6;
            }
        }
        return pVarA;
    }

    public static int f(d8 d8Var, byte[] bArr, int r82, int r92, o5 o5Var) throws IOException {
        int r02 = r82 + 1;
        int r83 = bArr[r82];
        if (r83 < 0) {
            r02 = n(r83, bArr, r02, o5Var);
            r83 = o5Var.f3659a;
        }
        int r32 = r02;
        if (r83 < 0 || r83 > r92 - r32) {
            throw z6.d();
        }
        Object objE = d8Var.e();
        int r84 = r83 + r32;
        d8Var.f(objE, bArr, r32, r84, o5Var);
        d8Var.d(objE);
        o5Var.f3661c = objE;
        return r84;
    }

    public static int g(d8 d8Var, int r32, byte[] bArr, int r52, int r6, w6 w6Var, o5 o5Var) throws IOException {
        int r53 = f(d8Var, bArr, r52, r6, o5Var);
        while (true) {
            w6Var.add(o5Var.f3661c);
            if (r53 >= r6) {
                break;
            }
            int r02 = m(bArr, r53, o5Var);
            if (r32 != o5Var.f3659a) {
                break;
            }
            r53 = f(d8Var, bArr, r02, r6, o5Var);
        }
        return r53;
    }

    public static boolean h(byte b10) {
        return b10 > -65;
    }

    public static int i(byte[] bArr, int r32, w6 w6Var, o5 o5Var) throws IOException {
        r6 r6Var = (r6) w6Var;
        int r33 = m(bArr, r32, o5Var);
        int r02 = o5Var.f3659a + r33;
        while (r33 < r02) {
            r33 = m(bArr, r33, o5Var);
            r6Var.l(o5Var.f3659a);
        }
        if (r33 == r02) {
            return r33;
        }
        throw z6.d();
    }

    public static int j(byte[] bArr, int r42, o5 o5Var) throws z6 {
        int r43 = m(bArr, r42, o5Var);
        int r02 = o5Var.f3659a;
        if (r02 < 0) {
            throw z6.b();
        }
        if (r02 == 0) {
            o5Var.f3661c = "";
            return r43;
        }
        o5Var.f3661c = new String(bArr, r43, r02, x6.f3835a);
        return r43 + r02;
    }

    public static int k(byte[] bArr, int r12, o5 o5Var) throws z6 {
        int r122 = m(bArr, r12, o5Var);
        int r02 = o5Var.f3659a;
        if (r02 < 0) {
            throw z6.b();
        }
        if (r02 == 0) {
            o5Var.f3661c = "";
            return r122;
        }
        vd.d dVar = a9.f3376a;
        int length = bArr.length;
        if ((r122 | r02 | ((length - r122) - r02)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(r122), Integer.valueOf(r02)));
        }
        int r13 = r122 + r02;
        char[] cArr = new char[r02];
        int r22 = 0;
        while (r122 < r13) {
            byte b10 = bArr[r122];
            if (!(b10 >= 0)) {
                break;
            }
            r122++;
            cArr[r22] = (char) b10;
            r22++;
        }
        while (r122 < r13) {
            int r52 = r122 + 1;
            byte b11 = bArr[r122];
            if (b11 >= 0) {
                int r6 = r22 + 1;
                cArr[r22] = (char) b11;
                r122 = r52;
                while (true) {
                    r22 = r6;
                    if (r122 >= r13) {
                        break;
                    }
                    byte b12 = bArr[r122];
                    if (!(b12 >= 0)) {
                        break;
                    }
                    r122++;
                    r6 = r22 + 1;
                    cArr[r22] = (char) b12;
                }
            } else if (b11 < -32) {
                if (r52 >= r13) {
                    throw z6.a();
                }
                int r62 = r52 + 1;
                int r72 = r22 + 1;
                byte b13 = bArr[r52];
                if (b11 < -62 || h(b13)) {
                    throw z6.a();
                }
                cArr[r22] = (char) (((b11 & 31) << 6) | (b13 & 63));
                r122 = r62;
                r22 = r72;
            } else {
                if (b11 < -16) {
                    if (r52 >= r13 - 1) {
                        throw z6.a();
                    }
                    int r73 = r52 + 1;
                    int r82 = r73 + 1;
                    int r92 = r22 + 1;
                    byte b14 = bArr[r52];
                    byte b15 = bArr[r73];
                    if (!h(b14)) {
                        if (b11 == -32) {
                            if (b14 >= -96) {
                                b11 = ISO7816.INS_CREATE_FILE;
                            }
                        }
                        if (b11 == -19) {
                            if (b14 < -96) {
                                b11 = -19;
                            }
                        }
                        if (!h(b15)) {
                            cArr[r22] = (char) (((b11 & PassportService.SFI_DG15) << 12) | ((b14 & 63) << 6) | (b15 & 63));
                            r122 = r82;
                            r22 = r92;
                        }
                    }
                    throw z6.a();
                }
                if (r52 >= r13 - 2) {
                    throw z6.a();
                }
                int r63 = r52 + 1;
                int r74 = r63 + 1;
                int r83 = r74 + 1;
                byte b16 = bArr[r52];
                byte b17 = bArr[r63];
                byte b18 = bArr[r74];
                if (h(b16) || (((b16 + ISO7816.INS_MANAGE_CHANNEL) + (b11 << 28)) >> 30) != 0 || h(b17) || h(b18)) {
                    throw z6.a();
                }
                int r123 = ((b11 & 7) << 18) | ((b16 & 63) << 12) | ((b17 & 63) << 6) | (b18 & 63);
                cArr[r22] = (char) ((r123 >>> 10) + 55232);
                cArr[r22 + 1] = (char) ((r123 & 1023) + 56320);
                r22 += 2;
                r122 = r83;
            }
        }
        o5Var.f3661c = new String(cArr, 0, r22);
        return r13;
    }

    public static int l(int r92, byte[] bArr, int r11, int r12, p8 p8Var, o5 o5Var) throws z6 {
        if ((r92 >>> 3) == 0) {
            throw new z6("Protocol message contained an invalid tag (zero).");
        }
        int r02 = r92 & 7;
        if (r02 == 0) {
            int r10 = p(bArr, r11, o5Var);
            p8Var.c(r92, Long.valueOf(o5Var.f3660b));
            return r10;
        }
        if (r02 == 1) {
            p8Var.c(r92, Long.valueOf(q(r11, bArr)));
            return r11 + 8;
        }
        if (r02 == 2) {
            int r112 = m(bArr, r11, o5Var);
            int r122 = o5Var.f3659a;
            if (r122 < 0) {
                throw z6.b();
            }
            if (r122 > bArr.length - r112) {
                throw z6.d();
            }
            p8Var.c(r92, r122 == 0 ? v5.f3791b : v5.A(bArr, r112, r122));
            return r112 + r122;
        }
        if (r02 != 3) {
            if (r02 != 5) {
                throw new z6("Protocol message contained an invalid tag (zero).");
            }
            p8Var.c(r92, Integer.valueOf(c(r11, bArr)));
            return r11 + 4;
        }
        int r03 = (r92 & (-8)) | 4;
        p8 p8VarB = p8.b();
        int r13 = 0;
        while (true) {
            if (r11 >= r12) {
                break;
            }
            int r32 = m(bArr, r11, o5Var);
            int r113 = o5Var.f3659a;
            r13 = r113;
            if (r113 == r03) {
                r11 = r32;
                break;
            }
            int r14 = l(r13, bArr, r32, r12, p8VarB, o5Var);
            r13 = r113;
            r11 = r14;
        }
        if (r11 > r12 || r13 != r03) {
            throw z6.c();
        }
        p8Var.c(r92, p8VarB);
        return r11;
    }

    public static int m(byte[] bArr, int r22, o5 o5Var) {
        int r02 = r22 + 1;
        byte b10 = bArr[r22];
        if (b10 < 0) {
            return n(b10, bArr, r02, o5Var);
        }
        o5Var.f3659a = b10;
        return r02;
    }

    public static int n(int r12, byte[] bArr, int r32, o5 o5Var) {
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
                                o5Var.f3659a = r15;
                                return r03;
                            }
                            r33 = r03;
                        }
                    }
                }
            }
            o5Var.f3659a = r14 | r22;
            return r33;
        }
        r23 = b10 << 7;
        o5Var.f3659a = r13 | r23;
        return r02;
    }

    public static int o(int r22, byte[] bArr, int r42, int r52, w6 w6Var, o5 o5Var) {
        r6 r6Var = (r6) w6Var;
        int r43 = m(bArr, r42, o5Var);
        while (true) {
            r6Var.l(o5Var.f3659a);
            if (r43 >= r52) {
                break;
            }
            int r02 = m(bArr, r43, o5Var);
            if (r22 != o5Var.f3659a) {
                break;
            }
            r43 = m(bArr, r02, o5Var);
        }
        return r43;
    }

    public static int p(byte[] bArr, int r10, o5 o5Var) {
        int r02 = r10 + 1;
        long j10 = bArr[r10];
        if (j10 >= 0) {
            o5Var.f3660b = j10;
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
        o5Var.f3660b = j11;
        return r102;
    }

    public static long q(int r72, byte[] bArr) {
        return ((bArr[r72 + 7] & 255) << 56) | (bArr[r72] & 255) | ((bArr[r72 + 1] & 255) << 8) | ((bArr[r72 + 2] & 255) << 16) | ((bArr[r72 + 3] & 255) << 24) | ((bArr[r72 + 4] & 255) << 32) | ((bArr[r72 + 5] & 255) << 40) | ((bArr[r72 + 6] & 255) << 48);
    }
}
