package ed;

import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class b0 implements f {

    /* renamed from: a, reason: collision with root package name */
    public final h0 f5294a;

    /* renamed from: b, reason: collision with root package name */
    public final e f5295b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5296c;

    public b0(h0 sink) {
        kotlin.jvm.internal.h.f(sink, "sink");
        this.f5294a = sink;
        this.f5295b = new e();
    }

    @Override // ed.f
    public final f C(h byteString) throws IOException {
        kotlin.jvm.internal.h.f(byteString, "byteString");
        if (!(!this.f5296c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f5295b.F(byteString);
        a();
        return this;
    }

    @Override // ed.h0
    public final void M(e source, long j10) throws IOException {
        kotlin.jvm.internal.h.f(source, "source");
        if (!(!this.f5296c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f5295b.M(source, j10);
        a();
    }

    @Override // ed.f
    public final f S(String string) throws IOException {
        kotlin.jvm.internal.h.f(string, "string");
        if (!(!this.f5296c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f5295b.i0(string);
        a();
        return this;
    }

    @Override // ed.f
    public final f U(long j10) throws IOException {
        if (!(!this.f5296c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f5295b.W(j10);
        a();
        return this;
    }

    @Override // ed.f
    public final f X(int r22, int r32, String string) throws IOException {
        kotlin.jvm.internal.h.f(string, "string");
        if (!(!this.f5296c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f5295b.e0(r22, r32, string);
        a();
        return this;
    }

    public final f a() throws IOException {
        if (!(!this.f5296c)) {
            throw new IllegalStateException("closed".toString());
        }
        e eVar = this.f5295b;
        long jD = eVar.d();
        if (jD > 0) {
            this.f5294a.M(eVar, jD);
        }
        return this;
    }

    @Override // ed.h0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        h0 h0Var = this.f5294a;
        if (this.f5296c) {
            return;
        }
        try {
            e eVar = this.f5295b;
            long j10 = eVar.f5304b;
            if (j10 > 0) {
                h0Var.M(eVar, j10);
            }
            th = null;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            h0Var.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f5296c = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // ed.f, ed.h0, java.io.Flushable
    public final void flush() throws IOException {
        if (!(!this.f5296c)) {
            throw new IllegalStateException("closed".toString());
        }
        e eVar = this.f5295b;
        long j10 = eVar.f5304b;
        h0 h0Var = this.f5294a;
        if (j10 > 0) {
            h0Var.M(eVar, j10);
        }
        h0Var.flush();
    }

    @Override // ed.f
    public final e getBuffer() {
        return this.f5295b;
    }

    @Override // ed.h0
    public final k0 h() {
        return this.f5294a.h();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f5296c;
    }

    @Override // ed.f
    public final f m0(long j10) throws IOException {
        if (!(!this.f5296c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f5295b.m0(j10);
        a();
        return this;
    }

    public final String toString() {
        return "buffer(" + this.f5294a + ')';
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer source) throws IOException {
        kotlin.jvm.internal.h.f(source, "source");
        if (!(!this.f5296c)) {
            throw new IllegalStateException("closed".toString());
        }
        int r22 = this.f5295b.write(source);
        a();
        return r22;
    }

    @Override // ed.f
    public final f write(byte[] source) throws IOException {
        kotlin.jvm.internal.h.f(source, "source");
        if (!(!this.f5296c)) {
            throw new IllegalStateException("closed".toString());
        }
        e eVar = this.f5295b;
        eVar.getClass();
        eVar.m31write(source, 0, source.length);
        a();
        return this;
    }

    @Override // ed.f
    public final f write(byte[] source, int r32, int r42) throws IOException {
        kotlin.jvm.internal.h.f(source, "source");
        if (!(!this.f5296c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f5295b.m31write(source, r32, r42);
        a();
        return this;
    }

    @Override // ed.f
    public final f writeByte(int r22) throws IOException {
        if (!(!this.f5296c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f5295b.O(r22);
        a();
        return this;
    }

    @Override // ed.f
    public final f writeInt(int r22) throws IOException {
        if (!(!this.f5296c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f5295b.c0(r22);
        a();
        return this;
    }

    @Override // ed.f
    public final f writeShort(int r22) throws IOException {
        if (!(!this.f5296c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f5295b.d0(r22);
        a();
        return this;
    }
}
