package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.p;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.z;
import java.io.IOException;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes2.dex */
public final class e {

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public int f4252a;

        /* renamed from: b, reason: collision with root package name */
        public long f4253b;

        /* renamed from: c, reason: collision with root package name */
        public Object f4254c;

        /* renamed from: d, reason: collision with root package name */
        public final p f4255d;

        public a(p pVar) {
            pVar.getClass();
            this.f4255d = pVar;
        }
    }

    public static int A(int r22, byte[] bArr, int r42, int r52, z.c<?> cVar, a aVar) {
        h0 h0Var = (h0) cVar;
        int r43 = J(bArr, r42, aVar);
        while (true) {
            h0Var.l(j.c(aVar.f4253b));
            if (r43 >= r52) {
                break;
            }
            int r02 = H(bArr, r43, aVar);
            if (r22 != aVar.f4252a) {
                break;
            }
            r43 = J(bArr, r02, aVar);
        }
        return r43;
    }

    public static int B(byte[] bArr, int r42, a aVar) throws a0 {
        int r43 = H(bArr, r42, aVar);
        int r02 = aVar.f4252a;
        if (r02 < 0) {
            throw a0.d();
        }
        if (r02 == 0) {
            aVar.f4254c = "";
            return r43;
        }
        aVar.f4254c = new String(bArr, r43, r02, z.f4405a);
        return r43 + r02;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0018, code lost:
    
        r8.add("");
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x001a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0031 -> B:8:0x0014). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int C(int r4, byte[] r5, int r6, int r7, com.google.crypto.tink.shaded.protobuf.z.c<?> r8, com.google.crypto.tink.shaded.protobuf.e.a r9) throws com.google.crypto.tink.shaded.protobuf.a0 {
        /*
            int r6 = H(r5, r6, r9)
            int r0 = r9.f4252a
            if (r0 < 0) goto L3f
            java.lang.String r1 = ""
            if (r0 != 0) goto Ld
            goto L2d
        Ld:
            java.lang.String r2 = new java.lang.String
            java.nio.charset.Charset r3 = com.google.crypto.tink.shaded.protobuf.z.f4405a
            r2.<init>(r5, r6, r0, r3)
        L14:
            r8.add(r2)
            int r6 = r6 + r0
        L18:
            if (r6 >= r7) goto L3e
            int r0 = H(r5, r6, r9)
            int r2 = r9.f4252a
            if (r4 == r2) goto L23
            goto L3e
        L23:
            int r6 = H(r5, r0, r9)
            int r0 = r9.f4252a
            if (r0 < 0) goto L39
            if (r0 != 0) goto L31
        L2d:
            r8.add(r1)
            goto L18
        L31:
            java.lang.String r2 = new java.lang.String
            java.nio.charset.Charset r3 = com.google.crypto.tink.shaded.protobuf.z.f4405a
            r2.<init>(r5, r6, r0, r3)
            goto L14
        L39:
            com.google.crypto.tink.shaded.protobuf.a0 r4 = com.google.crypto.tink.shaded.protobuf.a0.d()
            throw r4
        L3e:
            return r6
        L3f:
            com.google.crypto.tink.shaded.protobuf.a0 r4 = com.google.crypto.tink.shaded.protobuf.a0.d()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.e.C(int, byte[], int, int, com.google.crypto.tink.shaded.protobuf.z$c, com.google.crypto.tink.shaded.protobuf.e$a):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0022  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0033 -> B:6:0x000c). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int D(int r5, byte[] r6, int r7, int r8, com.google.crypto.tink.shaded.protobuf.z.c<?> r9, com.google.crypto.tink.shaded.protobuf.e.a r10) throws com.google.crypto.tink.shaded.protobuf.a0 {
        /*
            int r7 = H(r6, r7, r10)
            int r0 = r10.f4252a
            if (r0 < 0) goto L5a
            java.lang.String r1 = ""
            if (r0 != 0) goto Le
        Lc:
            r2 = r7
            goto L36
        Le:
            int r2 = r7 + r0
            boolean r3 = com.google.crypto.tink.shaded.protobuf.o1.d(r6, r7, r2)
            if (r3 == 0) goto L55
            java.lang.String r3 = new java.lang.String
            java.nio.charset.Charset r4 = com.google.crypto.tink.shaded.protobuf.z.f4405a
            r3.<init>(r6, r7, r0, r4)
        L1d:
            r9.add(r3)
        L20:
            if (r2 >= r8) goto L54
            int r7 = H(r6, r2, r10)
            int r0 = r10.f4252a
            if (r5 == r0) goto L2b
            goto L54
        L2b:
            int r7 = H(r6, r7, r10)
            int r0 = r10.f4252a
            if (r0 < 0) goto L4f
            if (r0 != 0) goto L3a
            goto Lc
        L36:
            r9.add(r1)
            goto L20
        L3a:
            int r2 = r7 + r0
            boolean r3 = com.google.crypto.tink.shaded.protobuf.o1.d(r6, r7, r2)
            if (r3 == 0) goto L4a
            java.lang.String r3 = new java.lang.String
            java.nio.charset.Charset r4 = com.google.crypto.tink.shaded.protobuf.z.f4405a
            r3.<init>(r6, r7, r0, r4)
            goto L1d
        L4a:
            com.google.crypto.tink.shaded.protobuf.a0 r5 = com.google.crypto.tink.shaded.protobuf.a0.a()
            throw r5
        L4f:
            com.google.crypto.tink.shaded.protobuf.a0 r5 = com.google.crypto.tink.shaded.protobuf.a0.d()
            throw r5
        L54:
            return r2
        L55:
            com.google.crypto.tink.shaded.protobuf.a0 r5 = com.google.crypto.tink.shaded.protobuf.a0.a()
            throw r5
        L5a:
            com.google.crypto.tink.shaded.protobuf.a0 r5 = com.google.crypto.tink.shaded.protobuf.a0.d()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.e.D(int, byte[], int, int, com.google.crypto.tink.shaded.protobuf.z$c, com.google.crypto.tink.shaded.protobuf.e$a):int");
    }

    public static int E(byte[] bArr, int r32, a aVar) throws a0 {
        int r33 = H(bArr, r32, aVar);
        int r02 = aVar.f4252a;
        if (r02 < 0) {
            throw a0.d();
        }
        if (r02 == 0) {
            aVar.f4254c = "";
            return r33;
        }
        aVar.f4254c = o1.f4337a.a(bArr, r33, r02);
        return r33 + r02;
    }

    public static int F(int r92, byte[] bArr, int r11, int r12, k1 k1Var, a aVar) throws a0 {
        if ((r92 >>> 3) == 0) {
            throw new a0("Protocol message contained an invalid tag (zero).");
        }
        int r02 = r92 & 7;
        if (r02 == 0) {
            int r10 = J(bArr, r11, aVar);
            k1Var.b(r92, Long.valueOf(aVar.f4253b));
            return r10;
        }
        if (r02 == 1) {
            k1Var.b(r92, Long.valueOf(i(r11, bArr)));
            return r11 + 8;
        }
        if (r02 == 2) {
            int r112 = H(bArr, r11, aVar);
            int r122 = aVar.f4252a;
            if (r122 < 0) {
                throw a0.d();
            }
            if (r122 > bArr.length - r112) {
                throw a0.f();
            }
            k1Var.b(r92, r122 == 0 ? i.f4287b : i.m(bArr, r112, r122));
            return r112 + r122;
        }
        if (r02 != 3) {
            if (r02 != 5) {
                throw new a0("Protocol message contained an invalid tag (zero).");
            }
            k1Var.b(r92, Integer.valueOf(g(r11, bArr)));
            return r11 + 4;
        }
        k1 k1Var2 = new k1();
        int r13 = (r92 & (-8)) | 4;
        int r22 = 0;
        while (true) {
            if (r11 >= r12) {
                break;
            }
            int r42 = H(bArr, r11, aVar);
            int r113 = aVar.f4252a;
            r22 = r113;
            if (r113 == r13) {
                r11 = r42;
                break;
            }
            int r23 = F(r22, bArr, r42, r12, k1Var2, aVar);
            r22 = r113;
            r11 = r23;
        }
        if (r11 > r12 || r22 != r13) {
            throw a0.e();
        }
        k1Var.b(r92, k1Var2);
        return r11;
    }

    public static int G(int r12, byte[] bArr, int r32, a aVar) {
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
                                aVar.f4252a = r15;
                                return r03;
                            }
                            r33 = r03;
                        }
                    }
                }
            }
            aVar.f4252a = r14 | r22;
            return r33;
        }
        r23 = b10 << 7;
        aVar.f4252a = r13 | r23;
        return r02;
    }

    public static int H(byte[] bArr, int r22, a aVar) {
        int r02 = r22 + 1;
        byte b10 = bArr[r22];
        if (b10 < 0) {
            return G(b10, bArr, r02, aVar);
        }
        aVar.f4252a = b10;
        return r02;
    }

    public static int I(int r22, byte[] bArr, int r42, int r52, z.c<?> cVar, a aVar) {
        y yVar = (y) cVar;
        int r43 = H(bArr, r42, aVar);
        while (true) {
            yVar.l(aVar.f4252a);
            if (r43 >= r52) {
                break;
            }
            int r02 = H(bArr, r43, aVar);
            if (r22 != aVar.f4252a) {
                break;
            }
            r43 = H(bArr, r02, aVar);
        }
        return r43;
    }

    public static int J(byte[] bArr, int r10, a aVar) {
        int r02 = r10 + 1;
        long j10 = bArr[r10];
        if (j10 >= 0) {
            aVar.f4253b = j10;
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
        aVar.f4253b = j11;
        return r102;
    }

    public static int K(int r22, byte[] bArr, int r42, int r52, z.c<?> cVar, a aVar) {
        h0 h0Var = (h0) cVar;
        int r43 = J(bArr, r42, aVar);
        while (true) {
            h0Var.l(aVar.f4253b);
            if (r43 >= r52) {
                break;
            }
            int r02 = H(bArr, r43, aVar);
            if (r22 != aVar.f4252a) {
                break;
            }
            r43 = J(bArr, r02, aVar);
        }
        return r43;
    }

    public static int L(int r32, byte[] bArr, int r52, int r6, a aVar) throws a0 {
        if ((r32 >>> 3) == 0) {
            throw new a0("Protocol message contained an invalid tag (zero).");
        }
        int r02 = r32 & 7;
        if (r02 == 0) {
            return J(bArr, r52, aVar);
        }
        if (r02 == 1) {
            return r52 + 8;
        }
        if (r02 == 2) {
            return H(bArr, r52, aVar) + aVar.f4252a;
        }
        if (r02 != 3) {
            if (r02 == 5) {
                return r52 + 4;
            }
            throw new a0("Protocol message contained an invalid tag (zero).");
        }
        int r33 = (r32 & (-8)) | 4;
        int r03 = 0;
        while (r52 < r6) {
            r52 = H(bArr, r52, aVar);
            r03 = aVar.f4252a;
            if (r03 == r33) {
                break;
            }
            r52 = L(r03, bArr, r52, r6, aVar);
        }
        if (r52 > r6 || r03 != r33) {
            throw a0.e();
        }
        return r52;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        r7 = J(r6, r0, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
    
        if (r10.f4253b == 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0028, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002a, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0010, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000c, code lost:
    
        if (r10.f4253b != 0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0010, code lost:
    
        r9.l(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
    
        if (r7 >= r8) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0015, code lost:
    
        r0 = H(r6, r7, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
    
        if (r5 == r10.f4252a) goto L11;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0026 -> B:5:0x000f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(int r5, byte[] r6, int r7, int r8, com.google.crypto.tink.shaded.protobuf.z.c<?> r9, com.google.crypto.tink.shaded.protobuf.e.a r10) {
        /*
            com.google.crypto.tink.shaded.protobuf.f r9 = (com.google.crypto.tink.shaded.protobuf.f) r9
            int r7 = J(r6, r7, r10)
            long r0 = r10.f4253b
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto Lf
            goto L28
        Lf:
            r0 = 0
        L10:
            r9.l(r0)
            if (r7 >= r8) goto L2a
            int r0 = H(r6, r7, r10)
            int r1 = r10.f4252a
            if (r5 == r1) goto L1e
            goto L2a
        L1e:
            int r7 = J(r6, r0, r10)
            long r0 = r10.f4253b
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto Lf
        L28:
            r0 = 1
            goto L10
        L2a:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.e.a(int, byte[], int, int, com.google.crypto.tink.shaded.protobuf.z$c, com.google.crypto.tink.shaded.protobuf.e$a):int");
    }

    public static int b(byte[] bArr, int r32, a aVar) throws a0 {
        int r33 = H(bArr, r32, aVar);
        int r02 = aVar.f4252a;
        if (r02 < 0) {
            throw a0.d();
        }
        if (r02 > bArr.length - r33) {
            throw a0.f();
        }
        if (r02 == 0) {
            aVar.f4254c = i.f4287b;
            return r33;
        }
        aVar.f4254c = i.m(bArr, r33, r02);
        return r33 + r02;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
    
        r0 = H(r3, r4, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
    
        if (r2 == r7.f4252a) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0022, code lost:
    
        r4 = H(r3, r0, r7);
        r0 = r7.f4252a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0028, code lost:
    
        if (r0 < 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
    
        if (r0 > (r3.length - r4)) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002e, code lost:
    
        if (r0 != 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0030, code lost:
    
        r6.add(com.google.crypto.tink.shaded.protobuf.i.f4287b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003a, code lost:
    
        throw com.google.crypto.tink.shaded.protobuf.a0.f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003f, code lost:
    
        throw com.google.crypto.tink.shaded.protobuf.a0.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0040, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0017, code lost:
    
        r6.add(com.google.crypto.tink.shaded.protobuf.i.f4287b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000c, code lost:
    
        if (r0 == 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x000f, code lost:
    
        r6.add(com.google.crypto.tink.shaded.protobuf.i.m(r3, r4, r0));
        r4 = r4 + r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
    
        if (r4 >= r5) goto L31;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x002e -> B:8:0x000f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int c(int r2, byte[] r3, int r4, int r5, com.google.crypto.tink.shaded.protobuf.z.c<?> r6, com.google.crypto.tink.shaded.protobuf.e.a r7) throws com.google.crypto.tink.shaded.protobuf.a0 {
        /*
            int r4 = H(r3, r4, r7)
            int r0 = r7.f4252a
            if (r0 < 0) goto L46
            int r1 = r3.length
            int r1 = r1 - r4
            if (r0 > r1) goto L41
            if (r0 != 0) goto Lf
            goto L30
        Lf:
            com.google.crypto.tink.shaded.protobuf.i$f r1 = com.google.crypto.tink.shaded.protobuf.i.m(r3, r4, r0)
            r6.add(r1)
            int r4 = r4 + r0
        L17:
            if (r4 >= r5) goto L40
            int r0 = H(r3, r4, r7)
            int r1 = r7.f4252a
            if (r2 == r1) goto L22
            goto L40
        L22:
            int r4 = H(r3, r0, r7)
            int r0 = r7.f4252a
            if (r0 < 0) goto L3b
            int r1 = r3.length
            int r1 = r1 - r4
            if (r0 > r1) goto L36
            if (r0 != 0) goto Lf
        L30:
            com.google.crypto.tink.shaded.protobuf.i$f r0 = com.google.crypto.tink.shaded.protobuf.i.f4287b
            r6.add(r0)
            goto L17
        L36:
            com.google.crypto.tink.shaded.protobuf.a0 r2 = com.google.crypto.tink.shaded.protobuf.a0.f()
            throw r2
        L3b:
            com.google.crypto.tink.shaded.protobuf.a0 r2 = com.google.crypto.tink.shaded.protobuf.a0.d()
            throw r2
        L40:
            return r4
        L41:
            com.google.crypto.tink.shaded.protobuf.a0 r2 = com.google.crypto.tink.shaded.protobuf.a0.f()
            throw r2
        L46:
            com.google.crypto.tink.shaded.protobuf.a0 r2 = com.google.crypto.tink.shaded.protobuf.a0.d()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.e.c(int, byte[], int, int, com.google.crypto.tink.shaded.protobuf.z$c, com.google.crypto.tink.shaded.protobuf.e$a):int");
    }

    public static double d(int r02, byte[] bArr) {
        return Double.longBitsToDouble(i(r02, bArr));
    }

    public static int e(int r32, byte[] bArr, int r52, int r6, z.c<?> cVar, a aVar) {
        n nVar = (n) cVar;
        nVar.l(Double.longBitsToDouble(i(r52, bArr)));
        int r53 = r52 + 8;
        while (r53 < r6) {
            int r02 = H(bArr, r53, aVar);
            if (r32 != aVar.f4252a) {
                break;
            }
            nVar.l(Double.longBitsToDouble(i(r02, bArr)));
            r53 = r02 + 8;
        }
        return r53;
    }

    public static int f(int r6, byte[] bArr, int r82, int r92, Object obj, q0 q0Var, a aVar) throws IOException {
        p pVar = aVar.f4255d;
        pVar.getClass();
        if (pVar.f4340a.get(new p.a(r6 >>> 3, q0Var)) == null) {
            return F(r6, bArr, r82, r92, t0.p(obj), aVar);
        }
        x.c cVar = (x.c) obj;
        t<x.d> tVar = cVar.extensions;
        if (tVar.f4360b) {
            cVar.extensions = tVar.clone();
        }
        throw null;
    }

    public static int g(int r22, byte[] bArr) {
        return ((bArr[r22 + 3] & 255) << 24) | (bArr[r22] & 255) | ((bArr[r22 + 1] & 255) << 8) | ((bArr[r22 + 2] & 255) << 16);
    }

    public static int h(int r22, byte[] bArr, int r42, int r52, z.c<?> cVar, a aVar) {
        y yVar = (y) cVar;
        yVar.l(g(r42, bArr));
        int r43 = r42 + 4;
        while (r43 < r52) {
            int r02 = H(bArr, r43, aVar);
            if (r22 != aVar.f4252a) {
                break;
            }
            yVar.l(g(r02, bArr));
            r43 = r02 + 4;
        }
        return r43;
    }

    public static long i(int r72, byte[] bArr) {
        return ((bArr[r72 + 7] & 255) << 56) | (bArr[r72] & 255) | ((bArr[r72 + 1] & 255) << 8) | ((bArr[r72 + 2] & 255) << 16) | ((bArr[r72 + 3] & 255) << 24) | ((bArr[r72 + 4] & 255) << 32) | ((bArr[r72 + 5] & 255) << 40) | ((bArr[r72 + 6] & 255) << 48);
    }

    public static int j(int r32, byte[] bArr, int r52, int r6, z.c<?> cVar, a aVar) {
        h0 h0Var = (h0) cVar;
        h0Var.l(i(r52, bArr));
        int r53 = r52 + 8;
        while (r53 < r6) {
            int r02 = H(bArr, r53, aVar);
            if (r32 != aVar.f4252a) {
                break;
            }
            h0Var.l(i(r02, bArr));
            r53 = r02 + 8;
        }
        return r53;
    }

    public static float k(int r02, byte[] bArr) {
        return Float.intBitsToFloat(g(r02, bArr));
    }

    public static int l(int r22, byte[] bArr, int r42, int r52, z.c<?> cVar, a aVar) {
        v vVar = (v) cVar;
        vVar.l(Float.intBitsToFloat(g(r42, bArr)));
        int r43 = r42 + 4;
        while (r43 < r52) {
            int r02 = H(bArr, r43, aVar);
            if (r22 != aVar.f4252a) {
                break;
            }
            vVar.l(Float.intBitsToFloat(g(r02, bArr)));
            r43 = r02 + 4;
        }
        return r43;
    }

    public static int m(e1 e1Var, byte[] bArr, int r10, int r11, int r12, a aVar) throws IOException {
        t0 t0Var = (t0) e1Var;
        Object objC = t0Var.c();
        int r92 = t0Var.B(objC, bArr, r10, r11, r12, aVar);
        t0Var.e(objC);
        aVar.f4254c = objC;
        return r92;
    }

    public static int n(e1 e1Var, int r82, byte[] bArr, int r10, int r11, z.c<?> cVar, a aVar) throws IOException {
        int r02 = (r82 & (-8)) | 4;
        int r102 = m(e1Var, bArr, r10, r11, r02, aVar);
        while (true) {
            cVar.add(aVar.f4254c);
            if (r102 >= r11) {
                break;
            }
            int r32 = H(bArr, r102, aVar);
            if (r82 != aVar.f4252a) {
                break;
            }
            r102 = m(e1Var, bArr, r32, r11, r02, aVar);
        }
        return r102;
    }

    public static int o(e1 e1Var, byte[] bArr, int r82, int r92, a aVar) throws IOException {
        int r02 = r82 + 1;
        int r83 = bArr[r82];
        if (r83 < 0) {
            r02 = G(r83, bArr, r02, aVar);
            r83 = aVar.f4252a;
        }
        int r32 = r02;
        if (r83 < 0 || r83 > r92 - r32) {
            throw a0.f();
        }
        Object objC = e1Var.c();
        int r84 = r83 + r32;
        e1Var.h(objC, bArr, r32, r84, aVar);
        e1Var.e(objC);
        aVar.f4254c = objC;
        return r84;
    }

    public static int p(e1<?> e1Var, int r32, byte[] bArr, int r52, int r6, z.c<?> cVar, a aVar) throws IOException {
        int r53 = o(e1Var, bArr, r52, r6, aVar);
        while (true) {
            cVar.add(aVar.f4254c);
            if (r53 >= r6) {
                break;
            }
            int r02 = H(bArr, r53, aVar);
            if (r32 != aVar.f4252a) {
                break;
            }
            r53 = o(e1Var, bArr, r02, r6, aVar);
        }
        return r53;
    }

    public static int q(byte[] bArr, int r72, z.c<?> cVar, a aVar) throws IOException {
        f fVar = (f) cVar;
        int r73 = H(bArr, r72, aVar);
        int r02 = aVar.f4252a + r73;
        while (r73 < r02) {
            r73 = J(bArr, r73, aVar);
            fVar.l(aVar.f4253b != 0);
        }
        if (r73 == r02) {
            return r73;
        }
        throw a0.f();
    }

    public static int r(byte[] bArr, int r32, z.c<?> cVar, a aVar) throws IOException {
        n nVar = (n) cVar;
        int r33 = H(bArr, r32, aVar);
        int r52 = aVar.f4252a + r33;
        while (r33 < r52) {
            nVar.l(Double.longBitsToDouble(i(r33, bArr)));
            r33 += 8;
        }
        if (r33 == r52) {
            return r33;
        }
        throw a0.f();
    }

    public static int s(byte[] bArr, int r22, z.c<?> cVar, a aVar) throws IOException {
        y yVar = (y) cVar;
        int r23 = H(bArr, r22, aVar);
        int r42 = aVar.f4252a + r23;
        while (r23 < r42) {
            yVar.l(g(r23, bArr));
            r23 += 4;
        }
        if (r23 == r42) {
            return r23;
        }
        throw a0.f();
    }

    public static int t(byte[] bArr, int r32, z.c<?> cVar, a aVar) throws IOException {
        h0 h0Var = (h0) cVar;
        int r33 = H(bArr, r32, aVar);
        int r52 = aVar.f4252a + r33;
        while (r33 < r52) {
            h0Var.l(i(r33, bArr));
            r33 += 8;
        }
        if (r33 == r52) {
            return r33;
        }
        throw a0.f();
    }

    public static int u(byte[] bArr, int r22, z.c<?> cVar, a aVar) throws IOException {
        v vVar = (v) cVar;
        int r23 = H(bArr, r22, aVar);
        int r42 = aVar.f4252a + r23;
        while (r23 < r42) {
            vVar.l(Float.intBitsToFloat(g(r23, bArr)));
            r23 += 4;
        }
        if (r23 == r42) {
            return r23;
        }
        throw a0.f();
    }

    public static int v(byte[] bArr, int r32, z.c<?> cVar, a aVar) throws IOException {
        y yVar = (y) cVar;
        int r33 = H(bArr, r32, aVar);
        int r02 = aVar.f4252a + r33;
        while (r33 < r02) {
            r33 = H(bArr, r33, aVar);
            yVar.l(j.b(aVar.f4252a));
        }
        if (r33 == r02) {
            return r33;
        }
        throw a0.f();
    }

    public static int w(byte[] bArr, int r42, z.c<?> cVar, a aVar) throws IOException {
        h0 h0Var = (h0) cVar;
        int r43 = H(bArr, r42, aVar);
        int r02 = aVar.f4252a + r43;
        while (r43 < r02) {
            r43 = J(bArr, r43, aVar);
            h0Var.l(j.c(aVar.f4253b));
        }
        if (r43 == r02) {
            return r43;
        }
        throw a0.f();
    }

    public static int x(byte[] bArr, int r32, z.c<?> cVar, a aVar) throws IOException {
        y yVar = (y) cVar;
        int r33 = H(bArr, r32, aVar);
        int r02 = aVar.f4252a + r33;
        while (r33 < r02) {
            r33 = H(bArr, r33, aVar);
            yVar.l(aVar.f4252a);
        }
        if (r33 == r02) {
            return r33;
        }
        throw a0.f();
    }

    public static int y(byte[] bArr, int r42, z.c<?> cVar, a aVar) throws IOException {
        h0 h0Var = (h0) cVar;
        int r43 = H(bArr, r42, aVar);
        int r02 = aVar.f4252a + r43;
        while (r43 < r02) {
            r43 = J(bArr, r43, aVar);
            h0Var.l(aVar.f4253b);
        }
        if (r43 == r02) {
            return r43;
        }
        throw a0.f();
    }

    public static int z(int r22, byte[] bArr, int r42, int r52, z.c<?> cVar, a aVar) {
        y yVar = (y) cVar;
        int r43 = H(bArr, r42, aVar);
        while (true) {
            yVar.l(j.b(aVar.f4252a));
            if (r43 >= r52) {
                break;
            }
            int r02 = H(bArr, r43, aVar);
            if (r22 != aVar.f4252a) {
                break;
            }
            r43 = H(bArr, r02, aVar);
        }
        return r43;
    }
}
