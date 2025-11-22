package mb;

import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f10269a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10270b;

    /* renamed from: c, reason: collision with root package name */
    public int f10271c = 0;

    /* renamed from: d, reason: collision with root package name */
    public final OutputStream f10272d;

    public static class a extends IOException {
        public a() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }
    }

    public e(byte[] bArr, OutputStream outputStream) {
        this.f10272d = outputStream;
        this.f10269a = bArr;
        this.f10270b = bArr.length;
    }

    public static int a(int r02, int r12) {
        return c(r12) + h(r02);
    }

    public static int b(int r02, int r12) {
        return c(r12) + h(r02);
    }

    public static int c(int r02) {
        if (r02 >= 0) {
            return f(r02);
        }
        return 10;
    }

    public static int d(int r12, p pVar) {
        int r13 = h(r12);
        int r22 = pVar.c();
        return f(r22) + r22 + r13;
    }

    public static int e(p pVar) {
        int r12 = pVar.c();
        return f(r12) + r12;
    }

    public static int f(int r12) {
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

    public static int g(long j10) {
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (((-16384) & j10) == 0) {
            return 2;
        }
        if (((-2097152) & j10) == 0) {
            return 3;
        }
        if (((-268435456) & j10) == 0) {
            return 4;
        }
        if (((-34359738368L) & j10) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j10) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j10) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j10) == 0) {
            return 8;
        }
        return (j10 & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int h(int r02) {
        return f((r02 << 3) | 0);
    }

    public static e j(OutputStream outputStream, int r22) {
        return new e(new byte[r22], outputStream);
    }

    public final void i() throws IOException {
        if (this.f10272d != null) {
            k();
        }
    }

    public final void k() throws IOException {
        OutputStream outputStream = this.f10272d;
        if (outputStream == null) {
            throw new a();
        }
        outputStream.write(this.f10269a, 0, this.f10271c);
        this.f10271c = 0;
    }

    public final void l(int r22, int r32) throws IOException {
        x(r22, 0);
        n(r32);
    }

    public final void m(int r22, int r32) throws IOException {
        x(r22, 0);
        n(r32);
    }

    public final void n(int r32) throws IOException {
        if (r32 >= 0) {
            v(r32);
        } else {
            w(r32);
        }
    }

    public final void o(int r22, p pVar) throws IOException {
        x(r22, 2);
        p(pVar);
    }

    public final void p(p pVar) throws IOException {
        v(pVar.c());
        pVar.d(this);
    }

    public final void q(int r32) throws IOException {
        byte b10 = (byte) r32;
        if (this.f10271c == this.f10270b) {
            k();
        }
        int r02 = this.f10271c;
        this.f10271c = r02 + 1;
        this.f10269a[r02] = b10;
    }

    public final void r(c cVar) throws IOException {
        int size = cVar.size();
        int r12 = this.f10271c;
        int r22 = this.f10270b;
        int r32 = r22 - r12;
        byte[] bArr = this.f10269a;
        if (r32 >= size) {
            cVar.m(0, r12, bArr, size);
            this.f10271c += size;
            return;
        }
        cVar.m(0, r12, bArr, r32);
        int r13 = r32 + 0;
        int r02 = size - r32;
        this.f10271c = r22;
        k();
        if (r02 <= r22) {
            cVar.m(r13, 0, bArr, r02);
            this.f10271c = r02;
        } else {
            if (r13 < 0) {
                throw new IndexOutOfBoundsException(androidx.appcompat.widget.v.c(30, "Source offset < 0: ", r13));
            }
            if (r02 < 0) {
                throw new IndexOutOfBoundsException(androidx.appcompat.widget.v.c(23, "Length < 0: ", r02));
            }
            int r23 = r13 + r02;
            if (r23 > cVar.size()) {
                throw new IndexOutOfBoundsException(androidx.appcompat.widget.v.c(39, "Source end offset exceeded: ", r23));
            }
            if (r02 > 0) {
                cVar.G(this.f10272d, r13, r02);
            }
        }
    }

    public final void s(byte[] bArr) throws IOException {
        int length = bArr.length;
        int r12 = this.f10271c;
        int r22 = this.f10270b;
        int r32 = r22 - r12;
        byte[] bArr2 = this.f10269a;
        if (r32 >= length) {
            System.arraycopy(bArr, 0, bArr2, r12, length);
            this.f10271c += length;
            return;
        }
        System.arraycopy(bArr, 0, bArr2, r12, r32);
        int r13 = r32 + 0;
        int r02 = length - r32;
        this.f10271c = r22;
        k();
        if (r02 > r22) {
            this.f10272d.write(bArr, r13, r02);
        } else {
            System.arraycopy(bArr, r13, bArr2, 0, r02);
            this.f10271c = r02;
        }
    }

    public final void t(int r22) throws IOException {
        q(r22 & 255);
        q((r22 >> 8) & 255);
        q((r22 >> 16) & 255);
        q((r22 >> 24) & 255);
    }

    public final void u(long j10) throws IOException {
        q(((int) j10) & 255);
        q(((int) (j10 >> 8)) & 255);
        q(((int) (j10 >> 16)) & 255);
        q(((int) (j10 >> 24)) & 255);
        q(((int) (j10 >> 32)) & 255);
        q(((int) (j10 >> 40)) & 255);
        q(((int) (j10 >> 48)) & 255);
        q(((int) (j10 >> 56)) & 255);
    }

    public final void v(int r22) throws IOException {
        while ((r22 & (-128)) != 0) {
            q((r22 & CertificateBody.profileType) | 128);
            r22 >>>= 7;
        }
        q(r22);
    }

    public final void w(long j10) throws IOException {
        while (((-128) & j10) != 0) {
            q((((int) j10) & CertificateBody.profileType) | 128);
            j10 >>>= 7;
        }
        q((int) j10);
    }

    public final void x(int r12, int r22) throws IOException {
        v((r12 << 3) | r22);
    }
}
