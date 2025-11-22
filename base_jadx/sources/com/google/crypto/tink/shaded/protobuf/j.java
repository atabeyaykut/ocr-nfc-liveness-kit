package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.i;
import java.io.IOException;
import net.sf.scuba.smartcards.ISOFileInfo;

/* loaded from: classes2.dex */
public abstract class j {

    /* renamed from: a, reason: collision with root package name */
    public int f4295a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4296b = 100;

    /* renamed from: c, reason: collision with root package name */
    public k f4297c;

    public static final class a extends j {

        /* renamed from: d, reason: collision with root package name */
        public final byte[] f4298d;

        /* renamed from: e, reason: collision with root package name */
        public int f4299e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public int f4300g;

        /* renamed from: h, reason: collision with root package name */
        public final int f4301h;

        /* renamed from: i, reason: collision with root package name */
        public int f4302i;

        /* renamed from: j, reason: collision with root package name */
        public int f4303j = Integer.MAX_VALUE;

        public a(byte[] bArr, int r22, int r32, boolean z10) {
            this.f4298d = bArr;
            this.f4299e = r32 + r22;
            this.f4300g = r22;
            this.f4301h = r22;
        }

        public final int A() throws IOException {
            int r02 = this.f4300g;
            if (this.f4299e - r02 < 4) {
                throw a0.f();
            }
            this.f4300g = r02 + 4;
            byte[] bArr = this.f4298d;
            return ((bArr[r02 + 3] & 255) << 24) | (bArr[r02] & 255) | ((bArr[r02 + 1] & 255) << 8) | ((bArr[r02 + 2] & 255) << 16);
        }

        public final long B() throws IOException {
            int r02 = this.f4300g;
            if (this.f4299e - r02 < 8) {
                throw a0.f();
            }
            this.f4300g = r02 + 8;
            byte[] bArr = this.f4298d;
            return ((bArr[r02 + 7] & 255) << 56) | (bArr[r02] & 255) | ((bArr[r02 + 1] & 255) << 8) | ((bArr[r02 + 2] & 255) << 16) | ((bArr[r02 + 3] & 255) << 24) | ((bArr[r02 + 4] & 255) << 32) | ((bArr[r02 + 5] & 255) << 40) | ((bArr[r02 + 6] & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
        
            if (r3[r2] < 0) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int C() throws java.io.IOException {
            /*
                r5 = this;
                int r0 = r5.f4300g
                int r1 = r5.f4299e
                if (r1 != r0) goto L7
                goto L6a
            L7:
                int r2 = r0 + 1
                byte[] r3 = r5.f4298d
                r0 = r3[r0]
                if (r0 < 0) goto L12
                r5.f4300g = r2
                return r0
            L12:
                int r1 = r1 - r2
                r4 = 9
                if (r1 >= r4) goto L18
                goto L6a
            L18:
                int r1 = r2 + 1
                r2 = r3[r2]
                int r2 = r2 << 7
                r0 = r0 ^ r2
                if (r0 >= 0) goto L24
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L70
            L24:
                int r2 = r1 + 1
                r1 = r3[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L31
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L2f:
                r1 = r2
                goto L70
            L31:
                int r1 = r2 + 1
                r2 = r3[r2]
                int r2 = r2 << 21
                r0 = r0 ^ r2
                if (r0 >= 0) goto L3f
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L70
            L3f:
                int r2 = r1 + 1
                r1 = r3[r1]
                int r4 = r1 << 28
                r0 = r0 ^ r4
                r4 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r4
                if (r1 >= 0) goto L2f
                int r1 = r2 + 1
                r2 = r3[r2]
                if (r2 >= 0) goto L70
                int r2 = r1 + 1
                r1 = r3[r1]
                if (r1 >= 0) goto L2f
                int r1 = r2 + 1
                r2 = r3[r2]
                if (r2 >= 0) goto L70
                int r2 = r1 + 1
                r1 = r3[r1]
                if (r1 >= 0) goto L2f
                int r1 = r2 + 1
                r2 = r3[r2]
                if (r2 >= 0) goto L70
            L6a:
                long r0 = r5.E()
                int r1 = (int) r0
                return r1
            L70:
                r5.f4300g = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.j.a.C():int");
        }

        public final long D() throws IOException {
            long j10;
            long j11;
            long j12;
            int r02;
            int r03 = this.f4300g;
            int r12 = this.f4299e;
            if (r12 != r03) {
                int r22 = r03 + 1;
                byte[] bArr = this.f4298d;
                byte b10 = bArr[r03];
                if (b10 >= 0) {
                    this.f4300g = r22;
                    return b10;
                }
                if (r12 - r22 >= 9) {
                    int r13 = r22 + 1;
                    int r04 = b10 ^ (bArr[r22] << 7);
                    if (r04 >= 0) {
                        int r23 = r13 + 1;
                        int r05 = r04 ^ (bArr[r13] << 14);
                        if (r05 >= 0) {
                            j10 = r05 ^ 16256;
                        } else {
                            r13 = r23 + 1;
                            int r06 = r05 ^ (bArr[r23] << 21);
                            if (r06 >= 0) {
                                long j13 = r06;
                                int r07 = r13 + 1;
                                long j14 = (bArr[r13] << 28) ^ j13;
                                if (j14 >= 0) {
                                    j11 = j14 ^ 266354560;
                                    r13 = r07;
                                } else {
                                    int r6 = r07 + 1;
                                    long j15 = j14 ^ (bArr[r07] << 35);
                                    if (j15 < 0) {
                                        j12 = -34093383808L;
                                    } else {
                                        r23 = r6 + 1;
                                        long j16 = j15 ^ (bArr[r6] << 42);
                                        if (j16 >= 0) {
                                            j10 = j16 ^ 4363953127296L;
                                        } else {
                                            r6 = r23 + 1;
                                            j15 = j16 ^ (bArr[r23] << 49);
                                            if (j15 < 0) {
                                                j12 = -558586000294016L;
                                            } else {
                                                r23 = r6 + 1;
                                                j10 = (j15 ^ (bArr[r6] << 56)) ^ 71499008037633920L;
                                                if (j10 < 0) {
                                                    r6 = r23 + 1;
                                                    if (bArr[r23] >= 0) {
                                                        j11 = j10;
                                                        r13 = r6;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    j11 = j12 ^ j15;
                                    r13 = r6;
                                }
                                this.f4300g = r13;
                                return j11;
                            }
                            r02 = r06 ^ (-2080896);
                        }
                        r13 = r23;
                        j11 = j10;
                        this.f4300g = r13;
                        return j11;
                    }
                    r02 = r04 ^ (-128);
                    j11 = r02;
                    this.f4300g = r13;
                    return j11;
                }
            }
            return E();
        }

        public final long E() throws IOException {
            long j10 = 0;
            for (int r22 = 0; r22 < 64; r22 += 7) {
                int r32 = this.f4300g;
                if (r32 == this.f4299e) {
                    throw a0.f();
                }
                this.f4300g = r32 + 1;
                j10 |= (r3 & 127) << r22;
                if ((this.f4298d[r32] & ISOFileInfo.DATA_BYTES1) == 0) {
                    return j10;
                }
            }
            throw a0.c();
        }

        public final void F(int r32) throws IOException {
            if (r32 >= 0) {
                int r02 = this.f4299e;
                int r12 = this.f4300g;
                if (r32 <= r02 - r12) {
                    this.f4300g = r12 + r32;
                    return;
                }
            }
            if (r32 >= 0) {
                throw a0.f();
            }
            throw a0.d();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final void a(int r22) throws a0 {
            if (this.f4302i != r22) {
                throw new a0("Protocol message end-group tag did not match expected tag.");
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final int d() {
            return this.f4300g - this.f4301h;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final boolean e() throws IOException {
            return this.f4300g == this.f4299e;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final void f(int r32) {
            this.f4303j = r32;
            int r02 = this.f4299e + this.f;
            this.f4299e = r02;
            int r12 = r02 - this.f4301h;
            if (r12 <= r32) {
                this.f = 0;
                return;
            }
            int r13 = r12 - r32;
            this.f = r13;
            this.f4299e = r02 - r13;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final int g(int r52) throws a0 {
            if (r52 < 0) {
                throw a0.d();
            }
            int r02 = this.f4300g;
            int r12 = this.f4301h;
            int r03 = (r02 - r12) + r52;
            int r53 = this.f4303j;
            if (r03 > r53) {
                throw a0.f();
            }
            this.f4303j = r03;
            int r22 = this.f4299e + this.f;
            this.f4299e = r22;
            int r13 = r22 - r12;
            if (r13 > r03) {
                int r14 = r13 - r03;
                this.f = r14;
                this.f4299e = r22 - r14;
            } else {
                this.f = 0;
            }
            return r53;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final boolean h() throws IOException {
            return D() != 0;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
        @Override // com.google.crypto.tink.shaded.protobuf.j
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.google.crypto.tink.shaded.protobuf.i.f i() throws java.io.IOException {
            /*
                r4 = this;
                int r0 = r4.C()
                byte[] r1 = r4.f4298d
                if (r0 <= 0) goto L19
                int r2 = r4.f4299e
                int r3 = r4.f4300g
                int r2 = r2 - r3
                if (r0 > r2) goto L19
                com.google.crypto.tink.shaded.protobuf.i$f r1 = com.google.crypto.tink.shaded.protobuf.i.m(r1, r3, r0)
                int r2 = r4.f4300g
                int r2 = r2 + r0
                r4.f4300g = r2
                return r1
            L19:
                if (r0 != 0) goto L1e
                com.google.crypto.tink.shaded.protobuf.i$f r0 = com.google.crypto.tink.shaded.protobuf.i.f4287b
                return r0
            L1e:
                if (r0 <= 0) goto L2f
                int r2 = r4.f4299e
                int r3 = r4.f4300g
                int r2 = r2 - r3
                if (r0 > r2) goto L2f
                int r0 = r0 + r3
                r4.f4300g = r0
                byte[] r0 = java.util.Arrays.copyOfRange(r1, r3, r0)
                goto L35
            L2f:
                if (r0 > 0) goto L42
                if (r0 != 0) goto L3d
                byte[] r0 = com.google.crypto.tink.shaded.protobuf.z.f4406b
            L35:
                com.google.crypto.tink.shaded.protobuf.i$f r1 = com.google.crypto.tink.shaded.protobuf.i.f4287b
                com.google.crypto.tink.shaded.protobuf.i$f r1 = new com.google.crypto.tink.shaded.protobuf.i$f
                r1.<init>(r0)
                return r1
            L3d:
                com.google.crypto.tink.shaded.protobuf.a0 r0 = com.google.crypto.tink.shaded.protobuf.a0.d()
                throw r0
            L42:
                com.google.crypto.tink.shaded.protobuf.a0 r0 = com.google.crypto.tink.shaded.protobuf.a0.f()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.j.a.i():com.google.crypto.tink.shaded.protobuf.i$f");
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final double j() throws IOException {
            return Double.longBitsToDouble(B());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final int k() throws IOException {
            return C();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final int l() throws IOException {
            return A();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final long m() throws IOException {
            return B();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final float n() throws IOException {
            return Float.intBitsToFloat(A());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final int o() throws IOException {
            return C();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final long p() throws IOException {
            return D();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final int q() throws IOException {
            return A();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final long r() throws IOException {
            return B();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final int s() throws IOException {
            return j.b(C());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final long t() throws IOException {
            return j.c(D());
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final String u() throws IOException {
            int r02 = C();
            if (r02 > 0) {
                int r12 = this.f4299e;
                int r22 = this.f4300g;
                if (r02 <= r12 - r22) {
                    String str = new String(this.f4298d, r22, r02, z.f4405a);
                    this.f4300g += r02;
                    return str;
                }
            }
            if (r02 == 0) {
                return "";
            }
            if (r02 < 0) {
                throw a0.d();
            }
            throw a0.f();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final String v() throws IOException {
            int r02 = C();
            if (r02 > 0) {
                int r12 = this.f4299e;
                int r22 = this.f4300g;
                if (r02 <= r12 - r22) {
                    String strA = o1.f4337a.a(this.f4298d, r22, r02);
                    this.f4300g += r02;
                    return strA;
                }
            }
            if (r02 == 0) {
                return "";
            }
            if (r02 <= 0) {
                throw a0.d();
            }
            throw a0.f();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final int w() throws IOException {
            if (e()) {
                this.f4302i = 0;
                return 0;
            }
            int r02 = C();
            this.f4302i = r02;
            if ((r02 >>> 3) != 0) {
                return r02;
            }
            throw new a0("Protocol message contained an invalid tag (zero).");
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final int x() throws IOException {
            return C();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final long y() throws IOException {
            return D();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.j
        public final boolean z(int r6) throws IOException {
            int r62;
            int r02;
            int r03 = r6 & 7;
            int r12 = 0;
            if (r03 == 0) {
                int r63 = this.f4299e - this.f4300g;
                byte[] bArr = this.f4298d;
                if (r63 >= 10) {
                    while (r12 < 10) {
                        int r64 = this.f4300g;
                        this.f4300g = r64 + 1;
                        if (bArr[r64] < 0) {
                            r12++;
                        }
                    }
                    throw a0.c();
                }
                while (r12 < 10) {
                    int r65 = this.f4300g;
                    if (r65 == this.f4299e) {
                        throw a0.f();
                    }
                    this.f4300g = r65 + 1;
                    if (bArr[r65] < 0) {
                        r12++;
                    }
                }
                throw a0.c();
                return true;
            }
            if (r03 == 1) {
                r62 = 8;
            } else {
                if (r03 != 2) {
                    if (r03 == 3) {
                        do {
                            r02 = w();
                            if (r02 == 0) {
                                break;
                            }
                        } while (z(r02));
                        a(((r6 >>> 3) << 3) | 4);
                        return true;
                    }
                    if (r03 == 4) {
                        return false;
                    }
                    if (r03 == 5) {
                        F(4);
                        return true;
                    }
                    int r66 = a0.f4223a;
                    throw new a0.a();
                }
                r62 = C();
            }
            F(r62);
            return true;
        }
    }

    public static int b(int r12) {
        return (-(r12 & 1)) ^ (r12 >>> 1);
    }

    public static long c(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    public abstract void a(int r12) throws a0;

    public abstract int d();

    public abstract boolean e() throws IOException;

    public abstract void f(int r12);

    public abstract int g(int r12) throws a0;

    public abstract boolean h() throws IOException;

    public abstract i.f i() throws IOException;

    public abstract double j() throws IOException;

    public abstract int k() throws IOException;

    public abstract int l() throws IOException;

    public abstract long m() throws IOException;

    public abstract float n() throws IOException;

    public abstract int o() throws IOException;

    public abstract long p() throws IOException;

    public abstract int q() throws IOException;

    public abstract long r() throws IOException;

    public abstract int s() throws IOException;

    public abstract long t() throws IOException;

    public abstract String u() throws IOException;

    public abstract String v() throws IOException;

    public abstract int w() throws IOException;

    public abstract int x() throws IOException;

    public abstract long y() throws IOException;

    public abstract boolean z(int r12) throws IOException;
}
