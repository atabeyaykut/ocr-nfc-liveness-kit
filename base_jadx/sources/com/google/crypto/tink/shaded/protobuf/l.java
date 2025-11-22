package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.o1;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes2.dex */
public abstract class l extends g {

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f4315b = Logger.getLogger(l.class.getName());

    /* renamed from: c, reason: collision with root package name */
    public static final boolean f4316c = n1.f;

    /* renamed from: a, reason: collision with root package name */
    public m f4317a;

    public static class a extends l {

        /* renamed from: d, reason: collision with root package name */
        public final byte[] f4318d;

        /* renamed from: e, reason: collision with root package name */
        public final int f4319e;
        public int f;

        public a(byte[] bArr, int r6) {
            int r32 = 0 + r6;
            if ((0 | r6 | (bArr.length - r32)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(r6)));
            }
            this.f4318d = bArr;
            this.f = 0;
            this.f4319e = r32;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.l
        public final void A(int r22, i iVar) throws IOException {
            L(r22, 2);
            S(iVar);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.l
        public final void B(int r22, int r32) throws IOException {
            L(r22, 5);
            C(r32);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.l
        public final void C(int r52) throws IOException {
            try {
                byte[] bArr = this.f4318d;
                int r12 = this.f;
                int r22 = r12 + 1;
                bArr[r12] = (byte) (r52 & 255);
                int r13 = r22 + 1;
                bArr[r22] = (byte) ((r52 >> 8) & 255);
                int r23 = r13 + 1;
                bArr[r13] = (byte) ((r52 >> 16) & 255);
                this.f = r23 + 1;
                bArr[r23] = (byte) ((r52 >> 24) & 255);
            } catch (IndexOutOfBoundsException e10) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.f4319e), 1), e10);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.l
        public final void D(int r22, long j10) throws IOException {
            L(r22, 1);
            E(j10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.l
        public final void E(long j10) throws IOException {
            try {
                byte[] bArr = this.f4318d;
                int r12 = this.f;
                int r22 = r12 + 1;
                bArr[r12] = (byte) (((int) j10) & 255);
                int r13 = r22 + 1;
                bArr[r22] = (byte) (((int) (j10 >> 8)) & 255);
                int r23 = r13 + 1;
                bArr[r13] = (byte) (((int) (j10 >> 16)) & 255);
                int r14 = r23 + 1;
                bArr[r23] = (byte) (((int) (j10 >> 24)) & 255);
                int r24 = r14 + 1;
                bArr[r14] = (byte) (((int) (j10 >> 32)) & 255);
                int r15 = r24 + 1;
                bArr[r24] = (byte) (((int) (j10 >> 40)) & 255);
                int r25 = r15 + 1;
                bArr[r15] = (byte) (((int) (j10 >> 48)) & 255);
                this.f = r25 + 1;
                bArr[r25] = (byte) (((int) (j10 >> 56)) & 255);
            } catch (IndexOutOfBoundsException e10) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.f4319e), 1), e10);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.l
        public final void F(int r22, int r32) throws IOException {
            L(r22, 0);
            G(r32);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.l
        public final void G(int r32) throws IOException {
            if (r32 >= 0) {
                N(r32);
            } else {
                P(r32);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.l
        public final void H(int r32, q0 q0Var, e1 e1Var) throws IOException {
            L(r32, 2);
            com.google.crypto.tink.shaded.protobuf.a aVar = (com.google.crypto.tink.shaded.protobuf.a) q0Var;
            int r02 = aVar.a();
            if (r02 == -1) {
                r02 = e1Var.j(aVar);
                aVar.j(r02);
            }
            N(r02);
            e1Var.g(q0Var, this.f4317a);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.l
        public final void I(int r42, q0 q0Var) throws IOException {
            L(1, 3);
            M(2, r42);
            L(3, 2);
            T(q0Var);
            L(1, 4);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.l
        public final void J(int r42, i iVar) throws IOException {
            L(1, 3);
            M(2, r42);
            A(3, iVar);
            L(1, 4);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.l
        public final void K(int r22, String str) throws IOException {
            L(r22, 2);
            U(str);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.l
        public final void L(int r12, int r22) throws IOException {
            N((r12 << 3) | r22);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.l
        public final void M(int r22, int r32) throws IOException {
            L(r22, 0);
            N(r32);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0053 A[PHI: r6
          0x0053: PHI (r6v8 int) = (r6v7 int), (r6v9 int), (r6v10 int) binds: [B:12:0x0029, B:15:0x003d, B:18:0x0051] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // com.google.crypto.tink.shaded.protobuf.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void N(int r6) throws java.io.IOException {
            /*
                r5 = this;
                boolean r0 = com.google.crypto.tink.shaded.protobuf.l.f4316c
                int r1 = r5.f4319e
                byte[] r2 = r5.f4318d
                if (r0 == 0) goto L72
                boolean r0 = com.google.crypto.tink.shaded.protobuf.d.a()
                if (r0 != 0) goto L72
                int r0 = r5.f
                int r3 = r1 - r0
                r4 = 5
                if (r3 < r4) goto L72
                r1 = r6 & (-128(0xffffffffffffff80, float:NaN))
                if (r1 != 0) goto L1a
            L19:
                goto L6c
            L1a:
                int r1 = r0 + 1
                r5.f = r1
                long r0 = (long) r0
                r3 = r6 | 128(0x80, float:1.8E-43)
                byte r3 = (byte) r3
                com.google.crypto.tink.shaded.protobuf.n1.q(r2, r0, r3)
                int r6 = r6 >>> 7
                r0 = r6 & (-128(0xffffffffffffff80, float:NaN))
                if (r0 != 0) goto L2c
                goto L53
            L2c:
                int r0 = r5.f
                int r1 = r0 + 1
                r5.f = r1
                long r0 = (long) r0
                r3 = r6 | 128(0x80, float:1.8E-43)
                byte r3 = (byte) r3
                com.google.crypto.tink.shaded.protobuf.n1.q(r2, r0, r3)
                int r6 = r6 >>> 7
                r0 = r6 & (-128(0xffffffffffffff80, float:NaN))
                if (r0 != 0) goto L40
                goto L53
            L40:
                int r0 = r5.f
                int r1 = r0 + 1
                r5.f = r1
                long r0 = (long) r0
                r3 = r6 | 128(0x80, float:1.8E-43)
                byte r3 = (byte) r3
                com.google.crypto.tink.shaded.protobuf.n1.q(r2, r0, r3)
                int r6 = r6 >>> 7
                r0 = r6 & (-128(0xffffffffffffff80, float:NaN))
                if (r0 != 0) goto L5b
            L53:
                int r0 = r5.f
                goto L19
            L56:
                byte r6 = (byte) r6
                com.google.crypto.tink.shaded.protobuf.n1.q(r2, r0, r6)
                return
            L5b:
                int r0 = r5.f
                int r1 = r0 + 1
                r5.f = r1
                long r0 = (long) r0
                r3 = r6 | 128(0x80, float:1.8E-43)
                byte r3 = (byte) r3
                com.google.crypto.tink.shaded.protobuf.n1.q(r2, r0, r3)
                int r6 = r6 >>> 7
                int r0 = r5.f
            L6c:
                int r1 = r0 + 1
                r5.f = r1
                long r0 = (long) r0
                goto L56
            L72:
                r0 = r6 & (-128(0xffffffffffffff80, float:NaN))
                if (r0 != 0) goto L80
                int r0 = r5.f     // Catch: java.lang.IndexOutOfBoundsException -> L90
                int r3 = r0 + 1
                r5.f = r3     // Catch: java.lang.IndexOutOfBoundsException -> L90
                byte r6 = (byte) r6     // Catch: java.lang.IndexOutOfBoundsException -> L90
                r2[r0] = r6     // Catch: java.lang.IndexOutOfBoundsException -> L90
                return
            L80:
                int r0 = r5.f     // Catch: java.lang.IndexOutOfBoundsException -> L90
                int r3 = r0 + 1
                r5.f = r3     // Catch: java.lang.IndexOutOfBoundsException -> L90
                r3 = r6 & 127(0x7f, float:1.78E-43)
                r3 = r3 | 128(0x80, float:1.8E-43)
                byte r3 = (byte) r3     // Catch: java.lang.IndexOutOfBoundsException -> L90
                r2[r0] = r3     // Catch: java.lang.IndexOutOfBoundsException -> L90
                int r6 = r6 >>> 7
                goto L72
            L90:
                r6 = move-exception
                com.google.crypto.tink.shaded.protobuf.l$b r0 = new com.google.crypto.tink.shaded.protobuf.l$b
                r2 = 3
                java.lang.Object[] r2 = new java.lang.Object[r2]
                int r3 = r5.f
                java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
                r4 = 0
                r2[r4] = r3
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                r3 = 1
                r2[r3] = r1
                r1 = 2
                java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
                r2[r1] = r3
                java.lang.String r1 = "Pos: %d, limit: %d, len: %d"
                java.lang.String r1 = java.lang.String.format(r1, r2)
                r0.<init>(r1, r6)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.l.a.N(int):void");
        }

        @Override // com.google.crypto.tink.shaded.protobuf.l
        public final void O(int r22, long j10) throws IOException {
            L(r22, 0);
            P(j10);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.l
        public final void P(long j10) throws IOException {
            boolean z10 = l.f4316c;
            int r22 = this.f4319e;
            byte[] bArr = this.f4318d;
            if (z10 && r22 - this.f >= 10) {
                while ((j10 & (-128)) != 0) {
                    int r02 = this.f;
                    this.f = r02 + 1;
                    n1.q(bArr, r02, (byte) ((((int) j10) & CertificateBody.profileType) | 128));
                    j10 >>>= 7;
                }
                int r03 = this.f;
                this.f = r03 + 1;
                n1.q(bArr, r03, (byte) j10);
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

        public final int Q() {
            return this.f4319e - this.f;
        }

        public final void R(byte[] bArr, int r52, int r6) throws IOException {
            try {
                System.arraycopy(bArr, r52, this.f4318d, this.f, r6);
                this.f += r6;
            } catch (IndexOutOfBoundsException e10) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.f4319e), Integer.valueOf(r6)), e10);
            }
        }

        public final void S(i iVar) throws IOException {
            N(iVar.size());
            iVar.D(this);
        }

        public final void T(q0 q0Var) throws IOException {
            N(q0Var.c());
            q0Var.d(this);
        }

        public final void U(String str) throws IOException {
            int r12;
            int r02 = this.f;
            try {
                int r13 = l.v(str.length() * 3);
                int r22 = l.v(str.length());
                int r32 = this.f4319e;
                byte[] bArr = this.f4318d;
                if (r22 == r13) {
                    int r14 = r02 + r22;
                    this.f = r14;
                    r12 = o1.f4337a.b(str, bArr, r14, r32 - r14);
                    this.f = r02;
                    N((r12 - r02) - r22);
                } else {
                    N(o1.a(str));
                    int r15 = this.f;
                    r12 = o1.f4337a.b(str, bArr, r15, r32 - r15);
                }
                this.f = r12;
            } catch (o1.d e10) {
                this.f = r02;
                l.f4315b.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e10);
                byte[] bytes = str.getBytes(z.f4405a);
                try {
                    N(bytes.length);
                    R(bytes, 0, bytes.length);
                } catch (b e11) {
                    throw e11;
                } catch (IndexOutOfBoundsException e12) {
                    throw new b(e12);
                }
            } catch (IndexOutOfBoundsException e13) {
                throw new b(e13);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.g
        public final void a(byte[] bArr, int r22, int r32) throws IOException {
            R(bArr, r22, r32);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.l
        public final void y(byte b10) throws IOException {
            try {
                byte[] bArr = this.f4318d;
                int r12 = this.f;
                this.f = r12 + 1;
                bArr[r12] = b10;
            } catch (IndexOutOfBoundsException e10) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f), Integer.valueOf(this.f4319e), 1), e10);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.l
        public final void z(int r22, boolean z10) throws IOException {
            L(r22, 0);
            y(z10 ? (byte) 1 : (byte) 0);
        }
    }

    public static class b extends IOException {
        public b(IndexOutOfBoundsException indexOutOfBoundsException) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", indexOutOfBoundsException);
        }

        public b(String str, IndexOutOfBoundsException indexOutOfBoundsException) {
            super(androidx.browser.browseractions.b.e("CodedOutputStream was writing to a flat byte array and ran out of space.: ", str), indexOutOfBoundsException);
        }
    }

    public static int b(int r02) {
        return t(r02) + 1;
    }

    public static int c(int r12, i iVar) {
        int r13 = t(r12);
        int size = iVar.size();
        return v(size) + size + r13;
    }

    public static int d(int r02) {
        return t(r02) + 8;
    }

    public static int e(int r02, int r12) {
        return k(r12) + t(r02);
    }

    public static int f(int r02) {
        return t(r02) + 4;
    }

    public static int g(int r02) {
        return t(r02) + 8;
    }

    public static int h(int r02) {
        return t(r02) + 4;
    }

    @Deprecated
    public static int i(int r22, q0 q0Var, e1 e1Var) {
        int r23 = t(r22) * 2;
        com.google.crypto.tink.shaded.protobuf.a aVar = (com.google.crypto.tink.shaded.protobuf.a) q0Var;
        int r02 = aVar.a();
        if (r02 == -1) {
            r02 = e1Var.j(aVar);
            aVar.j(r02);
        }
        return r02 + r23;
    }

    public static int j(int r02, int r12) {
        return k(r12) + t(r02);
    }

    public static int k(int r02) {
        if (r02 >= 0) {
            return v(r02);
        }
        return 10;
    }

    public static int l(int r02, long j10) {
        return x(j10) + t(r02);
    }

    public static int m(d0 d0Var) {
        int size = d0Var.f4251b != null ? d0Var.f4251b.size() : d0Var.f4250a != null ? d0Var.f4250a.c() : 0;
        return v(size) + size;
    }

    public static int n(int r02) {
        return t(r02) + 4;
    }

    public static int o(int r02) {
        return t(r02) + 8;
    }

    public static int p(int r12, int r22) {
        return v((r22 >> 31) ^ (r22 << 1)) + t(r12);
    }

    public static int q(int r32, long j10) {
        return x((j10 >> 63) ^ (j10 << 1)) + t(r32);
    }

    public static int r(int r02, String str) {
        return s(str) + t(r02);
    }

    public static int s(String str) {
        int length;
        try {
            length = o1.a(str);
        } catch (o1.d unused) {
            length = str.getBytes(z.f4405a).length;
        }
        return v(length) + length;
    }

    public static int t(int r02) {
        return v((r02 << 3) | 0);
    }

    public static int u(int r02, int r12) {
        return v(r12) + t(r02);
    }

    public static int v(int r12) {
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

    public static int w(int r02, long j10) {
        return x(j10) + t(r02);
    }

    public static int x(long j10) {
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

    public abstract void A(int r12, i iVar) throws IOException;

    public abstract void B(int r12, int r22) throws IOException;

    public abstract void C(int r12) throws IOException;

    public abstract void D(int r12, long j10) throws IOException;

    public abstract void E(long j10) throws IOException;

    public abstract void F(int r12, int r22) throws IOException;

    public abstract void G(int r12) throws IOException;

    public abstract void H(int r12, q0 q0Var, e1 e1Var) throws IOException;

    public abstract void I(int r12, q0 q0Var) throws IOException;

    public abstract void J(int r12, i iVar) throws IOException;

    public abstract void K(int r12, String str) throws IOException;

    public abstract void L(int r12, int r22) throws IOException;

    public abstract void M(int r12, int r22) throws IOException;

    public abstract void N(int r12) throws IOException;

    public abstract void O(int r12, long j10) throws IOException;

    public abstract void P(long j10) throws IOException;

    public abstract void y(byte b10) throws IOException;

    public abstract void z(int r12, boolean z10) throws IOException;
}
