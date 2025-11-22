package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes.dex */
public abstract class t0 extends m0 {

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f4085b = Logger.getLogger(t0.class.getName());

    /* renamed from: c, reason: collision with root package name */
    public static final boolean f4086c = t3.f4098e;

    /* renamed from: a, reason: collision with root package name */
    public u0 f4087a;

    public static class a extends t0 {

        /* renamed from: d, reason: collision with root package name */
        public final byte[] f4088d;

        /* renamed from: e, reason: collision with root package name */
        public final int f4089e;
        public int f;

        public a(byte[] bArr, int r52) {
            if ((r52 | 0 | (bArr.length - r52)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(r52)));
            }
            this.f4088d = bArr;
            this.f = 0;
            this.f4089e = r52;
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final void A(int r22, int r32) throws IOException {
            i(r22, 0);
            t(r32);
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final void B(int r22, long j10) throws IOException {
            i(r22, 1);
            C(j10);
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final void C(long j10) throws IOException {
            try {
                byte[] bArr = this.f4088d;
                int r12 = this.f;
                int r22 = r12 + 1;
                bArr[r12] = (byte) j10;
                int r13 = r22 + 1;
                bArr[r22] = (byte) (j10 >> 8);
                int r23 = r13 + 1;
                bArr[r13] = (byte) (j10 >> 16);
                int r14 = r23 + 1;
                bArr[r23] = (byte) (j10 >> 24);
                int r24 = r14 + 1;
                bArr[r14] = (byte) (j10 >> 32);
                int r15 = r24 + 1;
                bArr[r24] = (byte) (j10 >> 40);
                int r25 = r15 + 1;
                bArr[r15] = (byte) (j10 >> 48);
                this.f = r25 + 1;
                bArr[r25] = (byte) (j10 >> 56);
            } catch (IndexOutOfBoundsException e10) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.f4089e), 1), e10);
            }
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final void E(int r52) throws IOException {
            try {
                byte[] bArr = this.f4088d;
                int r12 = this.f;
                int r22 = r12 + 1;
                bArr[r12] = (byte) r52;
                int r13 = r22 + 1;
                bArr[r22] = (byte) (r52 >> 8);
                int r23 = r13 + 1;
                bArr[r13] = (byte) (r52 >> 16);
                this.f = r23 + 1;
                bArr[r23] = (byte) (r52 >>> 24);
            } catch (IndexOutOfBoundsException e10) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.f4089e), 1), e10);
            }
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final void I(int r22, int r32) throws IOException {
            i(r22, 5);
            E(r32);
        }

        public final void U(p0 p0Var) throws IOException {
            t(p0Var.x());
            p0Var.w(this);
        }

        public final void V(n2 n2Var) throws IOException {
            t(n2Var.r());
            n2Var.b(this);
        }

        public final void W(String str) throws IOException {
            int r02 = this.f;
            try {
                int r12 = t0.O(str.length() * 3);
                int r22 = t0.O(str.length());
                int r32 = this.f4089e;
                byte[] bArr = this.f4088d;
                if (r22 != r12) {
                    t(w3.a(str));
                    int r13 = this.f;
                    this.f = w3.f4119a.b(str, bArr, r13, r32 - r13);
                    return;
                }
                int r14 = r02 + r22;
                this.f = r14;
                int r15 = w3.f4119a.b(str, bArr, r14, r32 - r14);
                this.f = r02;
                t((r15 - r02) - r22);
                this.f = r15;
            } catch (y3 e10) {
                this.f = r02;
                t0.f4085b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e10);
                byte[] bytes = str.getBytes(m1.f4035a);
                try {
                    t(bytes.length);
                    X(bytes, 0, bytes.length);
                } catch (b e11) {
                    throw e11;
                } catch (IndexOutOfBoundsException e12) {
                    throw new b(e12);
                }
            } catch (IndexOutOfBoundsException e13) {
                throw new b(e13);
            }
        }

        public final void X(byte[] bArr, int r52, int r6) throws IOException {
            try {
                System.arraycopy(bArr, r52, this.f4088d, this.f, r6);
                this.f += r6;
            } catch (IndexOutOfBoundsException e10) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.f4089e), Integer.valueOf(r6)), e10);
            }
        }

        @Override // com.google.android.gms.internal.vision.m0
        public final void d(byte[] bArr, int r22, int r32) throws IOException {
            X(bArr, r22, r32);
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final int f() {
            return this.f4089e - this.f;
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final void g(byte b10) throws IOException {
            try {
                byte[] bArr = this.f4088d;
                int r12 = this.f;
                this.f = r12 + 1;
                bArr[r12] = b10;
            } catch (IndexOutOfBoundsException e10) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.f4089e), 1), e10);
            }
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final void h(int r32) throws IOException {
            if (r32 >= 0) {
                t(r32);
            } else {
                p(r32);
            }
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final void i(int r12, int r22) throws IOException {
            t((r12 << 3) | r22);
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final void j(int r22, long j10) throws IOException {
            i(r22, 0);
            p(j10);
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final void k(int r22, p0 p0Var) throws IOException {
            i(r22, 2);
            U(p0Var);
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final void l(int r42, n2 n2Var) throws IOException {
            i(1, 3);
            A(2, r42);
            i(3, 2);
            V(n2Var);
            i(1, 4);
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final void m(int r32, n2 n2Var, d3 d3Var) throws IOException {
            i(r32, 2);
            f0 f0Var = (f0) n2Var;
            int r02 = f0Var.e();
            if (r02 == -1) {
                r02 = d3Var.b(f0Var);
                f0Var.d(r02);
            }
            t(r02);
            d3Var.f(n2Var, this.f4087a);
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final void n(int r22, String str) throws IOException {
            i(r22, 2);
            W(str);
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final void o(int r22, boolean z10) throws IOException {
            i(r22, 0);
            g(z10 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final void p(long j10) throws IOException {
            boolean z10 = t0.f4086c;
            int r22 = this.f4089e;
            byte[] bArr = this.f4088d;
            if (z10 && r22 - this.f >= 10) {
                while ((j10 & (-128)) != 0) {
                    int r02 = this.f;
                    this.f = r02 + 1;
                    t3.h(bArr, r02, (byte) ((((int) j10) & CertificateBody.profileType) | 128));
                    j10 >>>= 7;
                }
                int r03 = this.f;
                this.f = r03 + 1;
                t3.h(bArr, r03, (byte) j10);
                return;
            }
            while ((j10 & (-128)) != 0) {
                try {
                    int r04 = this.f;
                    this.f = r04 + 1;
                    bArr[r04] = (byte) ((((int) j10) & CertificateBody.profileType) | 128);
                    j10 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(r22), 1), e10);
                }
            }
            int r05 = this.f;
            this.f = r05 + 1;
            bArr[r05] = (byte) j10;
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final void t(int r6) throws IOException {
            boolean z10 = t0.f4086c;
            int r12 = this.f4089e;
            byte[] bArr = this.f4088d;
            if (z10 && !i0.a()) {
                int r02 = this.f;
                if (r12 - r02 >= 5) {
                    if ((r6 & (-128)) != 0) {
                        this.f = r02 + 1;
                        t3.h(bArr, r02, (byte) (r6 | 128));
                        r6 >>>= 7;
                        if ((r6 & (-128)) != 0) {
                            int r03 = this.f;
                            this.f = r03 + 1;
                            t3.h(bArr, r03, (byte) (r6 | 128));
                            r6 >>>= 7;
                            if ((r6 & (-128)) != 0) {
                                int r04 = this.f;
                                this.f = r04 + 1;
                                t3.h(bArr, r04, (byte) (r6 | 128));
                                r6 >>>= 7;
                                if ((r6 & (-128)) != 0) {
                                    int r05 = this.f;
                                    this.f = r05 + 1;
                                    t3.h(bArr, r05, (byte) (r6 | 128));
                                    r6 >>>= 7;
                                }
                            }
                        }
                        r02 = this.f;
                    }
                    this.f = r02 + 1;
                    t3.h(bArr, r02, (byte) r6);
                    return;
                }
            }
            while ((r6 & (-128)) != 0) {
                try {
                    int r06 = this.f;
                    this.f = r06 + 1;
                    bArr[r06] = (byte) ((r6 & CertificateBody.profileType) | 128);
                    r6 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(r12), 1), e10);
                }
            }
            int r07 = this.f;
            this.f = r07 + 1;
            bArr[r07] = (byte) r6;
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final void u(int r22, int r32) throws IOException {
            i(r22, 0);
            h(r32);
        }

        @Override // com.google.android.gms.internal.vision.t0
        public final void v(int r42, p0 p0Var) throws IOException {
            i(1, 3);
            A(2, r42);
            k(3, p0Var);
            i(1, 4);
        }
    }

    public static class b extends IOException {
        public b(IndexOutOfBoundsException indexOutOfBoundsException) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", indexOutOfBoundsException);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public b(String str, IndexOutOfBoundsException indexOutOfBoundsException) {
            String strValueOf = String.valueOf(str);
            super(strValueOf.length() != 0 ? "CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(strValueOf) : new String("CodedOutputStream was writing to a flat byte array and ran out of space.: "), indexOutOfBoundsException);
        }
    }

    public static int D(int r02, long j10) {
        return H(j10) + O(r02 << 3);
    }

    public static int F(int r02) {
        return O(r02 << 3);
    }

    public static int G(int r02, long j10) {
        return H(j10) + O(r02 << 3);
    }

    public static int H(long j10) {
        int r02;
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (j10 < 0) {
            return 10;
        }
        if (((-34359738368L) & j10) != 0) {
            j10 >>>= 28;
            r02 = 6;
        } else {
            r02 = 2;
        }
        if (((-2097152) & j10) != 0) {
            r02 += 2;
            j10 >>>= 14;
        }
        return (j10 & (-16384)) != 0 ? r02 + 1 : r02;
    }

    public static int J(int r02) {
        if (r02 >= 0) {
            return O(r02);
        }
        return 10;
    }

    public static int K(int r02, int r12) {
        return J(r12) + O(r02 << 3);
    }

    public static int L(int r32, long j10) {
        return H((j10 >> 63) ^ (j10 << 1)) + O(r32 << 3);
    }

    public static int M(int r02) {
        return O(r02 << 3) + 8;
    }

    public static int N(int r02, int r12) {
        return O(r12) + O(r02 << 3);
    }

    public static int O(int r12) {
        if ((r12 & (-128)) == 0) {
            return 1;
        }
        if ((r12 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & r12) == 0) {
            return 3;
        }
        return (r12 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int P(int r02) {
        return O(r02 << 3) + 8;
    }

    public static int Q(int r12, int r22) {
        return O((r22 >> 31) ^ (r22 << 1)) + O(r12 << 3);
    }

    public static int R(int r02) {
        return O(r02 << 3) + 4;
    }

    public static int S(int r02) {
        return O(r02 << 3) + 4;
    }

    public static int T(int r02, int r12) {
        return J(r12) + O(r02 << 3);
    }

    public static int q(int r02) {
        return O(r02 << 3) + 8;
    }

    public static int r(int r02, String str) {
        return s(str) + O(r02 << 3);
    }

    public static int s(String str) {
        int length;
        try {
            length = w3.a(str);
        } catch (y3 unused) {
            length = str.getBytes(m1.f4035a).length;
        }
        return O(length) + length;
    }

    public static int w(int r02) {
        return O(r02 << 3) + 1;
    }

    public static int x(int r02) {
        return O(r02 << 3) + 4;
    }

    public static int y(int r12, p0 p0Var) {
        int r13 = O(r12 << 3);
        int r22 = p0Var.x();
        return O(r22) + r22 + r13;
    }

    @Deprecated
    public static int z(int r22, n2 n2Var, d3 d3Var) {
        int r23 = O(r22 << 3) << 1;
        f0 f0Var = (f0) n2Var;
        int r02 = f0Var.e();
        if (r02 == -1) {
            r02 = d3Var.b(f0Var);
            f0Var.d(r02);
        }
        return r23 + r02;
    }

    public abstract void A(int r12, int r22) throws IOException;

    public abstract void B(int r12, long j10) throws IOException;

    public abstract void C(long j10) throws IOException;

    public abstract void E(int r12) throws IOException;

    public abstract void I(int r12, int r22) throws IOException;

    public abstract int f();

    public abstract void g(byte b10) throws IOException;

    public abstract void h(int r12) throws IOException;

    public abstract void i(int r12, int r22) throws IOException;

    public abstract void j(int r12, long j10) throws IOException;

    public abstract void k(int r12, p0 p0Var) throws IOException;

    public abstract void l(int r12, n2 n2Var) throws IOException;

    public abstract void m(int r12, n2 n2Var, d3 d3Var) throws IOException;

    public abstract void n(int r12, String str) throws IOException;

    public abstract void o(int r12, boolean z10) throws IOException;

    public abstract void p(long j10) throws IOException;

    public abstract void t(int r12) throws IOException;

    public abstract void u(int r12, int r22) throws IOException;

    public abstract void v(int r12, p0 p0Var) throws IOException;
}
