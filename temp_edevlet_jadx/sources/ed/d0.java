package ed;

import androidx.core.location.LocationRequestCompat;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class d0 implements g {

    /* renamed from: a, reason: collision with root package name */
    public final j0 f5300a;

    /* renamed from: b, reason: collision with root package name */
    public final e f5301b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5302c;

    public d0(j0 source) {
        kotlin.jvm.internal.h.f(source, "source");
        this.f5300a = source;
        this.f5301b = new e();
    }

    @Override // ed.g
    public final long A(h0 h0Var) throws IOException {
        e eVar;
        long j10 = 0;
        while (true) {
            j0 j0Var = this.f5300a;
            eVar = this.f5301b;
            if (j0Var.w(eVar, 8192L) == -1) {
                break;
            }
            long jD = eVar.d();
            if (jD > 0) {
                j10 += jD;
                h0Var.M(eVar, jD);
            }
        }
        long j11 = eVar.f5304b;
        if (j11 <= 0) {
            return j10;
        }
        long j12 = j10 + j11;
        h0Var.M(eVar, j11);
        return j12;
    }

    @Override // ed.g
    public final boolean G(h bytes) {
        kotlin.jvm.internal.h.f(bytes, "bytes");
        byte[] bArr = bytes.f5316a;
        int length = bArr.length;
        if (!(!this.f5302c)) {
            throw new IllegalStateException("closed".toString());
        }
        if (length >= 0 && bArr.length - 0 >= length) {
            if (length <= 0) {
                return true;
            }
            int r32 = 0;
            while (true) {
                int r42 = r32 + 1;
                long j10 = r32 + 0;
                if (!Y(1 + j10) || this.f5301b.f(j10) != bArr[r32 + 0]) {
                    break;
                }
                if (r42 >= length) {
                    return true;
                }
                r32 = r42;
            }
        }
        return false;
    }

    @Override // ed.g
    public final long H(h targetBytes) {
        kotlin.jvm.internal.h.f(targetBytes, "targetBytes");
        if (!(!this.f5302c)) {
            throw new IllegalStateException("closed".toString());
        }
        long jMax = 0;
        while (true) {
            e eVar = this.f5301b;
            long j10 = eVar.j(jMax, targetBytes);
            if (j10 != -1) {
                return j10;
            }
            long j11 = eVar.f5304b;
            if (this.f5300a.w(eVar, 8192L) == -1) {
                return -1L;
            }
            jMax = Math.max(jMax, j11);
        }
    }

    @Override // ed.g
    public final boolean I() {
        if (!(!this.f5302c)) {
            throw new IllegalStateException("closed".toString());
        }
        e eVar = this.f5301b;
        return eVar.I() && this.f5300a.w(eVar, 8192L) == -1;
    }

    @Override // ed.g
    public final String N(long j10) throws EOFException {
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Long.valueOf(j10), "limit < 0: ").toString());
        }
        long j11 = j10 == LocationRequestCompat.PASSIVE_INTERVAL ? Long.MAX_VALUE : j10 + 1;
        byte b10 = (byte) 10;
        long jA = a(b10, 0L, j11);
        e eVar = this.f5301b;
        if (jA != -1) {
            return fd.k.b(eVar, jA);
        }
        if (j11 < LocationRequestCompat.PASSIVE_INTERVAL && Y(j11) && eVar.f(j11 - 1) == ((byte) 13) && Y(1 + j11) && eVar.f(j11) == b10) {
            return fd.k.b(eVar, j11);
        }
        e eVar2 = new e();
        eVar.e(0L, Math.min(32, eVar.f5304b), eVar2);
        throw new EOFException("\\n not found: limit=" + Math.min(eVar.f5304b, j10) + " content=" + eVar2.n().t() + (char) 8230);
    }

    @Override // ed.g
    public final boolean Y(long j10) {
        e eVar;
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Long.valueOf(j10), "byteCount < 0: ").toString());
        }
        if (!(!this.f5302c)) {
            throw new IllegalStateException("closed".toString());
        }
        do {
            eVar = this.f5301b;
            if (eVar.f5304b >= j10) {
                return true;
            }
        } while (this.f5300a.w(eVar, 8192L) != -1);
        return false;
    }

    public final long a(byte b10, long j10, long j11) {
        if (!(!this.f5302c)) {
            throw new IllegalStateException("closed".toString());
        }
        long jMax = 0;
        if (!(0 <= j11)) {
            throw new IllegalArgumentException(("fromIndex=0 toIndex=" + j11).toString());
        }
        while (jMax < j11) {
            long jG = this.f5301b.g(b10, jMax, j11);
            if (jG != -1) {
                return jG;
            }
            e eVar = this.f5301b;
            long j12 = eVar.f5304b;
            if (j12 >= j11 || this.f5300a.w(eVar, 8192L) == -1) {
                return -1L;
            }
            jMax = Math.max(jMax, j12);
        }
        return -1L;
    }

    @Override // ed.g
    public final String a0() {
        return N(LocationRequestCompat.PASSIVE_INTERVAL);
    }

    public final short b() throws EOFException {
        l0(2L);
        return this.f5301b.p();
    }

    @Override // ed.g
    public final int b0() throws EOFException {
        l0(4L);
        return this.f5301b.b0();
    }

    public final String c(long j10) throws EOFException {
        l0(j10);
        return this.f5301b.s(j10);
    }

    @Override // ed.j0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f5302c) {
            return;
        }
        this.f5302c = true;
        this.f5300a.close();
        this.f5301b.b();
    }

    @Override // ed.g
    public final long g0() throws EOFException {
        l0(8L);
        return this.f5301b.g0();
    }

    @Override // ed.g
    public final e getBuffer() {
        return this.f5301b;
    }

    @Override // ed.j0
    public final k0 h() {
        return this.f5300a.h();
    }

    @Override // ed.g
    public final int h0(x options) throws EOFException {
        kotlin.jvm.internal.h.f(options, "options");
        if (!(!this.f5302c)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            e eVar = this.f5301b;
            int r22 = fd.k.c(eVar, options, true);
            if (r22 != -2) {
                if (r22 != -1) {
                    eVar.skip(options.f5359a[r22].r());
                    return r22;
                }
            } else if (this.f5300a.w(eVar, 8192L) == -1) {
                break;
            }
        }
        return -1;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f5302c;
    }

    @Override // ed.g
    public final long j0(h bytes) throws IOException {
        kotlin.jvm.internal.h.f(bytes, "bytes");
        if (!(!this.f5302c)) {
            throw new IllegalStateException("closed".toString());
        }
        long jMax = 0;
        while (true) {
            e eVar = this.f5301b;
            long jI = eVar.i(jMax, bytes);
            if (jI != -1) {
                return jI;
            }
            long j10 = eVar.f5304b;
            if (this.f5300a.w(eVar, 8192L) == -1) {
                return -1L;
            }
            jMax = Math.max(jMax, (j10 - bytes.f5316a.length) + 1);
        }
    }

    @Override // ed.g
    public final void l0(long j10) throws EOFException {
        if (!Y(j10)) {
            throw new EOFException();
        }
    }

    @Override // ed.g
    public final long p0() throws EOFException {
        e eVar;
        byte bF;
        l0(1L);
        int r02 = 0;
        while (true) {
            int r12 = r02 + 1;
            boolean zY = Y(r12);
            eVar = this.f5301b;
            if (!zY) {
                break;
            }
            bF = eVar.f(r02);
            if ((bF < ((byte) 48) || bF > ((byte) 57)) && ((bF < ((byte) 97) || bF > ((byte) 102)) && (bF < ((byte) 65) || bF > ((byte) 70)))) {
                break;
            }
            r02 = r12;
        }
        if (r02 == 0) {
            a6.a.j(16);
            a6.a.j(16);
            String string = Integer.toString(bF, 16);
            kotlin.jvm.internal.h.e(string, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            throw new NumberFormatException(kotlin.jvm.internal.h.k(string, "Expected leading [0-9a-fA-F] character but was 0x"));
        }
        return eVar.p0();
    }

    @Override // ed.g
    public final d0 peek() {
        return v.b(new a0(this));
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer sink) {
        kotlin.jvm.internal.h.f(sink, "sink");
        e eVar = this.f5301b;
        if (eVar.f5304b == 0 && this.f5300a.w(eVar, 8192L) == -1) {
            return -1;
        }
        return eVar.read(sink);
    }

    @Override // ed.g
    public final byte readByte() throws EOFException {
        l0(1L);
        return this.f5301b.readByte();
    }

    @Override // ed.g
    public final int readInt() throws EOFException {
        l0(4L);
        return this.f5301b.readInt();
    }

    @Override // ed.g
    public final short readShort() throws EOFException {
        l0(2L);
        return this.f5301b.readShort();
    }

    @Override // ed.g
    public final void skip(long j10) throws EOFException {
        if (!(!this.f5302c)) {
            throw new IllegalStateException("closed".toString());
        }
        while (j10 > 0) {
            e eVar = this.f5301b;
            if (eVar.f5304b == 0 && this.f5300a.w(eVar, 8192L) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j10, eVar.f5304b);
            eVar.skip(jMin);
            j10 -= jMin;
        }
    }

    public final String toString() {
        return "buffer(" + this.f5300a + ')';
    }

    @Override // ed.j0
    public final long w(e sink, long j10) {
        kotlin.jvm.internal.h.f(sink, "sink");
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Long.valueOf(j10), "byteCount < 0: ").toString());
        }
        if (!(true ^ this.f5302c)) {
            throw new IllegalStateException("closed".toString());
        }
        e eVar = this.f5301b;
        if (eVar.f5304b == 0 && this.f5300a.w(eVar, 8192L) == -1) {
            return -1L;
        }
        return eVar.w(sink, Math.min(j10, eVar.f5304b));
    }

    @Override // ed.g
    public final h z(long j10) throws EOFException {
        l0(j10);
        return this.f5301b.z(j10);
    }
}
