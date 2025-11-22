package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes.dex */
public abstract class e0 extends w {

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f3095b = Logger.getLogger(e0.class.getName());

    /* renamed from: c, reason: collision with root package name */
    public static final boolean f3096c = g3.f;

    /* renamed from: a, reason: collision with root package name */
    public f0 f3097a;

    public static class a extends e0 {

        /* renamed from: d, reason: collision with root package name */
        public final byte[] f3098d;

        /* renamed from: e, reason: collision with root package name */
        public final int f3099e;
        public final int f;

        /* renamed from: g, reason: collision with root package name */
        public int f3100g;

        public a(byte[] bArr, int r52, int r6) {
            if (bArr == null) {
                throw new NullPointerException("buffer");
            }
            int r22 = r52 + r6;
            if ((r52 | r6 | (bArr.length - r22)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(r52), Integer.valueOf(r6)));
            }
            this.f3098d = bArr;
            this.f3099e = r52;
            this.f3100g = r52;
            this.f = r22;
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void B(int r22, int r32) throws IOException {
            s(r22, 0);
            T(r32);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void C(int r22, long j10) throws IOException {
            s(r22, 1);
            F(j10);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void E(int r22, int r32) throws IOException {
            s(r22, 0);
            U(r32);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void F(long j10) throws IOException {
            try {
                byte[] bArr = this.f3098d;
                int r12 = this.f3100g;
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
                this.f3100g = r25 + 1;
                bArr[r25] = (byte) (j10 >> 56);
            } catch (IndexOutOfBoundsException e10) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3100g), Integer.valueOf(this.f), 1), e10);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void J(int r22, int r32) throws IOException {
            s(r22, 5);
            V(r32);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void T(int r32) throws IOException {
            if (r32 >= 0) {
                U(r32);
            } else {
                w(r32);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void U(int r6) throws IOException {
            boolean z10 = e0.f3096c;
            int r12 = this.f;
            byte[] bArr = this.f3098d;
            if (z10 && r12 - this.f3100g >= 10) {
                while ((r6 & (-128)) != 0) {
                    int r02 = this.f3100g;
                    this.f3100g = r02 + 1;
                    g3.h(bArr, r02, (byte) ((r6 & CertificateBody.profileType) | 128));
                    r6 >>>= 7;
                }
                int r03 = this.f3100g;
                this.f3100g = r03 + 1;
                g3.h(bArr, r03, (byte) r6);
                return;
            }
            while ((r6 & (-128)) != 0) {
                try {
                    int r04 = this.f3100g;
                    this.f3100g = r04 + 1;
                    bArr[r04] = (byte) ((r6 & CertificateBody.profileType) | 128);
                    r6 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3100g), Integer.valueOf(r12), 1), e10);
                }
            }
            int r05 = this.f3100g;
            this.f3100g = r05 + 1;
            bArr[r05] = (byte) r6;
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void V(int r52) throws IOException {
            try {
                byte[] bArr = this.f3098d;
                int r12 = this.f3100g;
                int r22 = r12 + 1;
                bArr[r12] = (byte) r52;
                int r13 = r22 + 1;
                bArr[r22] = (byte) (r52 >> 8);
                int r23 = r13 + 1;
                bArr[r13] = (byte) (r52 >> 16);
                this.f3100g = r23 + 1;
                bArr[r23] = r52 >> 24;
            } catch (IndexOutOfBoundsException e10) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3100g), Integer.valueOf(this.f), 1), e10);
            }
        }

        public final void Z(x xVar) throws IOException {
            U(xVar.size());
            xVar.m(this);
        }

        @Override // com.google.android.gms.internal.clearcut.w
        public final void a(byte[] bArr, int r22, int r32) throws IOException {
            g(bArr, r22, r32);
        }

        public final void a0(x1 x1Var) throws IOException {
            U(x1Var.s());
            x1Var.q(this);
        }

        public final void b0(String str) throws IOException {
            int r02 = this.f3100g;
            try {
                int r12 = e0.Y(str.length() * 3);
                int r22 = e0.Y(str.length());
                int r32 = this.f;
                byte[] bArr = this.f3098d;
                if (r22 != r12) {
                    U(i3.a(str));
                    int r13 = this.f3100g;
                    this.f3100g = i3.f3160a.c(str, bArr, r13, r32 - r13);
                    return;
                }
                int r14 = r02 + r22;
                this.f3100g = r14;
                int r15 = i3.f3160a.c(str, bArr, r14, r32 - r14);
                this.f3100g = r02;
                U((r15 - r02) - r22);
                this.f3100g = r15;
            } catch (k3 e10) {
                this.f3100g = r02;
                o(str, e10);
            } catch (IndexOutOfBoundsException e11) {
                throw new c(e11);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public void f() {
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void g(byte[] bArr, int r52, int r6) throws IOException {
            try {
                System.arraycopy(bArr, r52, this.f3098d, this.f3100g, r6);
                this.f3100g += r6;
            } catch (IndexOutOfBoundsException e10) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3100g), Integer.valueOf(this.f), Integer.valueOf(r6)), e10);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void i(byte b10) throws IOException {
            try {
                byte[] bArr = this.f3098d;
                int r12 = this.f3100g;
                this.f3100g = r12 + 1;
                bArr[r12] = b10;
            } catch (IndexOutOfBoundsException e10) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3100g), Integer.valueOf(this.f), 1), e10);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void j(int r22, long j10) throws IOException {
            s(r22, 0);
            w(j10);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void k(int r22, x xVar) throws IOException {
            s(r22, 2);
            Z(xVar);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void l(int r22, x1 x1Var) throws IOException {
            s(r22, 2);
            a0(x1Var);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void m(int r32, x1 x1Var, o2 o2Var) throws IOException {
            s(r32, 2);
            n nVar = (n) x1Var;
            int r02 = nVar.d();
            if (r02 == -1) {
                r02 = o2Var.f(nVar);
                nVar.a(r02);
            }
            U(r02);
            o2Var.h(x1Var, this.f3097a);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void n(int r22, String str) throws IOException {
            s(r22, 2);
            b0(str);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final int p() {
            return this.f - this.f3100g;
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void s(int r12, int r22) throws IOException {
            U((r12 << 3) | r22);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void t(int r42, x xVar) throws IOException {
            s(1, 3);
            E(2, r42);
            k(3, xVar);
            s(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void u(int r42, x1 x1Var) throws IOException {
            s(1, 3);
            E(2, r42);
            l(3, x1Var);
            s(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void v(int r22, boolean z10) throws IOException {
            s(r22, 0);
            i(z10 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void w(long j10) throws IOException {
            boolean z10 = e0.f3096c;
            int r22 = this.f;
            byte[] bArr = this.f3098d;
            if (z10 && r22 - this.f3100g >= 10) {
                while ((j10 & (-128)) != 0) {
                    int r02 = this.f3100g;
                    this.f3100g = r02 + 1;
                    g3.h(bArr, r02, (byte) ((((int) j10) & CertificateBody.profileType) | 128));
                    j10 >>>= 7;
                }
                int r03 = this.f3100g;
                this.f3100g = r03 + 1;
                g3.h(bArr, r03, (byte) j10);
                return;
            }
            while ((j10 & (-128)) != 0) {
                try {
                    int r04 = this.f3100g;
                    this.f3100g = r04 + 1;
                    bArr[r04] = (byte) ((((int) j10) & CertificateBody.profileType) | 128);
                    j10 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3100g), Integer.valueOf(r22), 1), e10);
                }
            }
            int r05 = this.f3100g;
            this.f3100g = r05 + 1;
            bArr[r05] = (byte) j10;
        }
    }

    public static final class b extends a {

        /* renamed from: h, reason: collision with root package name */
        public final ByteBuffer f3101h;

        /* renamed from: i, reason: collision with root package name */
        public final int f3102i;

        public b(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), byteBuffer.remaining());
            this.f3101h = byteBuffer;
            this.f3102i = byteBuffer.position();
        }

        @Override // com.google.android.gms.internal.clearcut.e0.a, com.google.android.gms.internal.clearcut.e0
        public final void f() {
            this.f3101h.position((this.f3100g - this.f3099e) + this.f3102i);
        }
    }

    public static class c extends IOException {
        public c(RuntimeException runtimeException) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", runtimeException);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public c(String str) {
            String strValueOf = String.valueOf(str);
            super(strValueOf.length() != 0 ? "CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(strValueOf) : new String("CodedOutputStream was writing to a flat byte array and ran out of space.: "));
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public c(String str, IndexOutOfBoundsException indexOutOfBoundsException) {
            String strValueOf = String.valueOf(str);
            super(strValueOf.length() != 0 ? "CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(strValueOf) : new String("CodedOutputStream was writing to a flat byte array and ran out of space.: "), indexOutOfBoundsException);
        }
    }

    public static final class d extends e0 {

        /* renamed from: d, reason: collision with root package name */
        public final ByteBuffer f3103d;

        /* renamed from: e, reason: collision with root package name */
        public final ByteBuffer f3104e;

        public d(ByteBuffer byteBuffer) {
            this.f3103d = byteBuffer;
            this.f3104e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            byteBuffer.position();
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void B(int r22, int r32) throws IOException {
            s(r22, 0);
            T(r32);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void C(int r22, long j10) throws IOException {
            s(r22, 1);
            F(j10);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void E(int r22, int r32) throws IOException {
            s(r22, 0);
            U(r32);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void F(long j10) throws IOException {
            try {
                this.f3104e.putLong(j10);
            } catch (BufferOverflowException e10) {
                throw new c(e10);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void J(int r22, int r32) throws IOException {
            s(r22, 5);
            V(r32);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void T(int r32) throws IOException {
            if (r32 >= 0) {
                U(r32);
            } else {
                w(r32);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void U(int r32) throws IOException {
            while (true) {
                int r02 = r32 & (-128);
                ByteBuffer byteBuffer = this.f3104e;
                if (r02 == 0) {
                    byteBuffer.put((byte) r32);
                    return;
                }
                try {
                    byteBuffer.put((byte) ((r32 & CertificateBody.profileType) | 128));
                    r32 >>>= 7;
                } catch (BufferOverflowException e10) {
                    throw new c(e10);
                }
                throw new c(e10);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void V(int r22) throws IOException {
            try {
                this.f3104e.putInt(r22);
            } catch (BufferOverflowException e10) {
                throw new c(e10);
            }
        }

        public final void Z(x xVar) throws IOException {
            U(xVar.size());
            xVar.m(this);
        }

        @Override // com.google.android.gms.internal.clearcut.w
        public final void a(byte[] bArr, int r22, int r32) throws IOException {
            g(bArr, r22, r32);
        }

        public final void a0(x1 x1Var) throws IOException {
            U(x1Var.s());
            x1Var.q(this);
        }

        public final void b0(String str) throws IOException {
            ByteBuffer byteBuffer = this.f3104e;
            int r12 = byteBuffer.position();
            try {
                int r22 = e0.Y(str.length() * 3);
                int r32 = e0.Y(str.length());
                if (r32 != r22) {
                    U(i3.a(str));
                    try {
                        i3.b(str, byteBuffer);
                        return;
                    } catch (IndexOutOfBoundsException e10) {
                        throw new c(e10);
                    }
                }
                int r23 = byteBuffer.position() + r32;
                byteBuffer.position(r23);
                try {
                    i3.b(str, byteBuffer);
                    int r33 = byteBuffer.position();
                    byteBuffer.position(r12);
                    U(r33 - r23);
                    byteBuffer.position(r33);
                } catch (IndexOutOfBoundsException e11) {
                    throw new c(e11);
                }
            } catch (k3 e12) {
                byteBuffer.position(r12);
                o(str, e12);
            } catch (IllegalArgumentException e13) {
                throw new c(e13);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void f() {
            this.f3103d.position(this.f3104e.position());
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void g(byte[] bArr, int r32, int r42) throws IOException {
            try {
                this.f3104e.put(bArr, r32, r42);
            } catch (IndexOutOfBoundsException e10) {
                throw new c(e10);
            } catch (BufferOverflowException e11) {
                throw new c(e11);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void i(byte b10) throws IOException {
            try {
                this.f3104e.put(b10);
            } catch (BufferOverflowException e10) {
                throw new c(e10);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void j(int r22, long j10) throws IOException {
            s(r22, 0);
            w(j10);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void k(int r22, x xVar) throws IOException {
            s(r22, 2);
            Z(xVar);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void l(int r22, x1 x1Var) throws IOException {
            s(r22, 2);
            a0(x1Var);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void m(int r32, x1 x1Var, o2 o2Var) throws IOException {
            s(r32, 2);
            n nVar = (n) x1Var;
            int r02 = nVar.d();
            if (r02 == -1) {
                r02 = o2Var.f(nVar);
                nVar.a(r02);
            }
            U(r02);
            o2Var.h(x1Var, this.f3097a);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void n(int r22, String str) throws IOException {
            s(r22, 2);
            b0(str);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final int p() {
            return this.f3104e.remaining();
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void s(int r12, int r22) throws IOException {
            U((r12 << 3) | r22);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void t(int r42, x xVar) throws IOException {
            s(1, 3);
            E(2, r42);
            k(3, xVar);
            s(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void u(int r42, x1 x1Var) throws IOException {
            s(1, 3);
            E(2, r42);
            l(3, x1Var);
            s(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void v(int r22, boolean z10) throws IOException {
            s(r22, 0);
            i(z10 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void w(long j10) throws IOException {
            while (true) {
                long j11 = (-128) & j10;
                ByteBuffer byteBuffer = this.f3104e;
                if (j11 == 0) {
                    byteBuffer.put((byte) j10);
                    return;
                }
                try {
                    byteBuffer.put((byte) ((((int) j10) & CertificateBody.profileType) | 128));
                    j10 >>>= 7;
                } catch (BufferOverflowException e10) {
                    throw new c(e10);
                }
                throw new c(e10);
            }
        }
    }

    public static final class e extends e0 {

        /* renamed from: d, reason: collision with root package name */
        public final ByteBuffer f3105d;

        /* renamed from: e, reason: collision with root package name */
        public final ByteBuffer f3106e;
        public final long f;

        /* renamed from: g, reason: collision with root package name */
        public final long f3107g;

        /* renamed from: h, reason: collision with root package name */
        public final long f3108h;

        /* renamed from: i, reason: collision with root package name */
        public long f3109i;

        public e(ByteBuffer byteBuffer) {
            this.f3105d = byteBuffer;
            this.f3106e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            long jK = g3.f3144d.k(g3.f3147h, byteBuffer);
            this.f = jK;
            long jPosition = byteBuffer.position() + jK;
            long jLimit = jK + byteBuffer.limit();
            this.f3107g = jLimit;
            this.f3108h = jLimit - 10;
            this.f3109i = jPosition;
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void B(int r22, int r32) throws IOException {
            s(r22, 0);
            T(r32);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void C(int r22, long j10) throws IOException {
            s(r22, 1);
            F(j10);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void E(int r22, int r32) throws IOException {
            s(r22, 0);
            U(r32);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void F(long j10) throws IOException {
            this.f3106e.putLong((int) (this.f3109i - this.f), j10);
            this.f3109i += 8;
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void J(int r22, int r32) throws IOException {
            s(r22, 5);
            V(r32);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void T(int r32) throws IOException {
            if (r32 >= 0) {
                U(r32);
            } else {
                w(r32);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void U(int r82) throws IOException {
            long j10;
            if (this.f3109i <= this.f3108h) {
                while ((r82 & (-128)) != 0) {
                    long j11 = this.f3109i;
                    this.f3109i = j11 + 1;
                    g3.b(j11, (byte) ((r82 & CertificateBody.profileType) | 128));
                    r82 >>>= 7;
                }
                j10 = this.f3109i;
            } else {
                while (true) {
                    j10 = this.f3109i;
                    long j12 = this.f3107g;
                    if (j10 >= j12) {
                        throw new c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f3109i), Long.valueOf(j12), 1));
                    }
                    if ((r82 & (-128)) == 0) {
                        break;
                    }
                    this.f3109i = j10 + 1;
                    g3.b(j10, (byte) ((r82 & CertificateBody.profileType) | 128));
                    r82 >>>= 7;
                }
            }
            this.f3109i = 1 + j10;
            g3.b(j10, (byte) r82);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void V(int r52) throws IOException {
            this.f3106e.putInt((int) (this.f3109i - this.f), r52);
            this.f3109i += 4;
        }

        public final void Z(x xVar) throws IOException {
            U(xVar.size());
            xVar.m(this);
        }

        @Override // com.google.android.gms.internal.clearcut.w
        public final void a(byte[] bArr, int r22, int r32) throws IOException {
            g(bArr, r22, r32);
        }

        public final void a0(x1 x1Var) throws IOException {
            U(x1Var.s());
            x1Var.q(this);
        }

        public final void b0(String str) throws IOException {
            ByteBuffer byteBuffer = this.f3106e;
            long j10 = this.f;
            long j11 = this.f3109i;
            try {
                int r52 = e0.Y(str.length() * 3);
                int r6 = e0.Y(str.length());
                if (r6 != r52) {
                    int r53 = i3.a(str);
                    U(r53);
                    byteBuffer.position((int) (this.f3109i - j10));
                    i3.b(str, byteBuffer);
                    this.f3109i += r53;
                    return;
                }
                int r54 = ((int) (this.f3109i - j10)) + r6;
                byteBuffer.position(r54);
                i3.b(str, byteBuffer);
                int r62 = byteBuffer.position() - r54;
                U(r62);
                this.f3109i += r62;
            } catch (k3 e10) {
                this.f3109i = j11;
                byteBuffer.position((int) (j11 - j10));
                o(str, e10);
            } catch (IllegalArgumentException e11) {
                throw new c(e11);
            } catch (IndexOutOfBoundsException e12) {
                throw new c(e12);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void f() {
            this.f3105d.position((int) (this.f3109i - this.f));
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void g(byte[] bArr, int r15, int r16) throws IOException {
            long j10 = this.f3107g;
            if (bArr != null && r15 >= 0 && r16 >= 0 && bArr.length - r16 >= r15) {
                long j11 = r16;
                long j12 = j10 - j11;
                long j13 = this.f3109i;
                if (j12 >= j13) {
                    g3.f3144d.g(bArr, r15, j13, j11);
                    this.f3109i += j11;
                    return;
                }
            }
            if (bArr != null) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f3109i), Long.valueOf(j10), Integer.valueOf(r16)));
            }
            throw new NullPointerException("value");
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void i(byte b10) throws IOException {
            long j10 = this.f3109i;
            long j11 = this.f3107g;
            if (j10 >= j11) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f3109i), Long.valueOf(j11), 1));
            }
            this.f3109i = 1 + j10;
            g3.b(j10, b10);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void j(int r22, long j10) throws IOException {
            s(r22, 0);
            w(j10);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void k(int r22, x xVar) throws IOException {
            s(r22, 2);
            Z(xVar);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void l(int r22, x1 x1Var) throws IOException {
            s(r22, 2);
            a0(x1Var);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void m(int r32, x1 x1Var, o2 o2Var) throws IOException {
            s(r32, 2);
            n nVar = (n) x1Var;
            int r02 = nVar.d();
            if (r02 == -1) {
                r02 = o2Var.f(nVar);
                nVar.a(r02);
            }
            U(r02);
            o2Var.h(x1Var, this.f3097a);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void n(int r22, String str) throws IOException {
            s(r22, 2);
            b0(str);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final int p() {
            return (int) (this.f3107g - this.f3109i);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void s(int r12, int r22) throws IOException {
            U((r12 << 3) | r22);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void t(int r42, x xVar) throws IOException {
            s(1, 3);
            E(2, r42);
            k(3, xVar);
            s(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void u(int r42, x1 x1Var) throws IOException {
            s(1, 3);
            E(2, r42);
            l(3, x1Var);
            s(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void v(int r22, boolean z10) throws IOException {
            s(r22, 0);
            i(z10 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.clearcut.e0
        public final void w(long j10) throws IOException {
            long j11;
            if (this.f3109i <= this.f3108h) {
                while (true) {
                    long j12 = j10 & (-128);
                    j11 = this.f3109i;
                    if (j12 == 0) {
                        break;
                    }
                    this.f3109i = j11 + 1;
                    g3.b(j11, (byte) ((((int) j10) & CertificateBody.profileType) | 128));
                    j10 >>>= 7;
                }
            } else {
                while (true) {
                    j11 = this.f3109i;
                    long j13 = this.f3107g;
                    if (j11 >= j13) {
                        throw new c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f3109i), Long.valueOf(j13), 1));
                    }
                    if ((j10 & (-128)) == 0) {
                        break;
                    }
                    this.f3109i = j11 + 1;
                    g3.b(j11, (byte) ((((int) j10) & CertificateBody.profileType) | 128));
                    j10 >>>= 7;
                }
            }
            this.f3109i = 1 + j11;
            g3.b(j11, (byte) j10);
        }
    }

    @Deprecated
    public static int A(int r22, x1 x1Var, o2 o2Var) {
        int r23 = W(r22) << 1;
        n nVar = (n) x1Var;
        int r02 = nVar.d();
        if (r02 == -1) {
            r02 = o2Var.f(nVar);
            nVar.a(r02);
        }
        return r23 + r02;
    }

    public static int D(int r02, long j10) {
        return I(j10) + W(r02);
    }

    public static int G(int r02, long j10) {
        return I(j10) + W(r02);
    }

    public static int H(int r32, long j10) {
        return I((j10 >> 63) ^ (j10 << 1)) + W(r32);
    }

    public static int I(long j10) {
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

    public static int K(int r02) {
        return W(r02) + 8;
    }

    public static int L(int r02, int r12) {
        return X(r12) + W(r02);
    }

    public static int M(int r02) {
        return W(r02) + 8;
    }

    public static int N(int r02, int r12) {
        return Y(r12) + W(r02);
    }

    public static int O(String str) {
        int length;
        try {
            length = i3.a(str);
        } catch (k3 unused) {
            length = str.getBytes(x0.f3344a).length;
        }
        return Y(length) + length;
    }

    public static int P(int r12, int r22) {
        return Y((r22 >> 31) ^ (r22 << 1)) + W(r12);
    }

    public static int Q(int r02) {
        return W(r02) + 4;
    }

    public static int R(int r02) {
        return W(r02) + 4;
    }

    public static int S(int r02, int r12) {
        return X(r12) + W(r02);
    }

    public static int W(int r02) {
        return Y(r02 << 3);
    }

    public static int X(int r02) {
        if (r02 >= 0) {
            return Y(r02);
        }
        return 10;
    }

    public static int Y(int r12) {
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

    public static int h(h1 h1Var) {
        int r12 = h1Var.a();
        return Y(r12) + r12;
    }

    public static int q(int r02) {
        return W(r02) + 8;
    }

    public static int r(int r02, String str) {
        return O(str) + W(r02);
    }

    public static int x(int r02) {
        return W(r02) + 4;
    }

    public static int y(int r02) {
        return W(r02) + 1;
    }

    public static int z(int r12, x xVar) {
        int r13 = W(r12);
        int size = xVar.size();
        return Y(size) + size + r13;
    }

    public abstract void B(int r12, int r22) throws IOException;

    public abstract void C(int r12, long j10) throws IOException;

    public abstract void E(int r12, int r22) throws IOException;

    public abstract void F(long j10) throws IOException;

    public abstract void J(int r12, int r22) throws IOException;

    public abstract void T(int r12) throws IOException;

    public abstract void U(int r12) throws IOException;

    public abstract void V(int r12) throws IOException;

    public abstract void f() throws IOException;

    public abstract void g(byte[] bArr, int r22, int r32) throws IOException;

    public abstract void i(byte b10) throws IOException;

    public abstract void j(int r12, long j10) throws IOException;

    public abstract void k(int r12, x xVar) throws IOException;

    public abstract void l(int r12, x1 x1Var) throws IOException;

    public abstract void m(int r12, x1 x1Var, o2 o2Var) throws IOException;

    public abstract void n(int r12, String str) throws IOException;

    public final void o(String str, k3 k3Var) throws IOException {
        f3095b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) k3Var);
        byte[] bytes = str.getBytes(x0.f3344a);
        try {
            U(bytes.length);
            a(bytes, 0, bytes.length);
        } catch (c e10) {
            throw e10;
        } catch (IndexOutOfBoundsException e11) {
            throw new c(e11);
        }
    }

    public abstract int p();

    public abstract void s(int r12, int r22) throws IOException;

    public abstract void t(int r12, x xVar) throws IOException;

    public abstract void u(int r12, x1 x1Var) throws IOException;

    public abstract void v(int r12, boolean z10) throws IOException;

    public abstract void w(long j10) throws IOException;
}
