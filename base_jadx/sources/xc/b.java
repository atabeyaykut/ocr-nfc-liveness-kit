package xc;

import ed.g;
import ed.h0;
import ed.j0;
import ed.k0;
import ed.o;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.h;
import mc.j;
import mc.n;
import rc.b0;
import rc.q;
import rc.r;
import rc.v;
import rc.w;
import rc.x;
import vc.i;
import wc.i;

/* loaded from: classes2.dex */
public final class b implements wc.d {

    /* renamed from: a, reason: collision with root package name */
    public int f19204a;

    /* renamed from: b, reason: collision with root package name */
    public final xc.a f19205b;

    /* renamed from: c, reason: collision with root package name */
    public q f19206c;

    /* renamed from: d, reason: collision with root package name */
    public final v f19207d;

    /* renamed from: e, reason: collision with root package name */
    public final i f19208e;
    public final g f;

    /* renamed from: g, reason: collision with root package name */
    public final ed.f f19209g;

    public abstract class a implements j0 {

        /* renamed from: a, reason: collision with root package name */
        public final o f19210a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f19211b;

        public a() {
            this.f19210a = new o(b.this.f.h());
        }

        public final void a() {
            b bVar = b.this;
            int r12 = bVar.f19204a;
            if (r12 == 6) {
                return;
            }
            if (r12 == 5) {
                b.i(bVar, this.f19210a);
                bVar.f19204a = 6;
            } else {
                throw new IllegalStateException("state: " + bVar.f19204a);
            }
        }

        @Override // ed.j0
        public final k0 h() {
            return this.f19210a;
        }

        @Override // ed.j0
        public long w(ed.e sink, long j10) throws IOException {
            b bVar = b.this;
            h.f(sink, "sink");
            try {
                return bVar.f.w(sink, j10);
            } catch (IOException e10) {
                bVar.f19208e.l();
                a();
                throw e10;
            }
        }
    }

    /* renamed from: xc.b$b, reason: collision with other inner class name */
    public final class C0302b implements h0 {

        /* renamed from: a, reason: collision with root package name */
        public final o f19213a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f19214b;

        public C0302b() {
            this.f19213a = new o(b.this.f19209g.h());
        }

        @Override // ed.h0
        public final void M(ed.e source, long j10) throws IOException {
            h.f(source, "source");
            if (!(!this.f19214b)) {
                throw new IllegalStateException("closed".toString());
            }
            if (j10 == 0) {
                return;
            }
            b bVar = b.this;
            bVar.f19209g.U(j10);
            bVar.f19209g.S("\r\n");
            bVar.f19209g.M(source, j10);
            bVar.f19209g.S("\r\n");
        }

        @Override // ed.h0, java.io.Closeable, java.lang.AutoCloseable
        public final synchronized void close() {
            if (this.f19214b) {
                return;
            }
            this.f19214b = true;
            b.this.f19209g.S("0\r\n\r\n");
            b.i(b.this, this.f19213a);
            b.this.f19204a = 3;
        }

        @Override // ed.h0, java.io.Flushable
        public final synchronized void flush() {
            if (this.f19214b) {
                return;
            }
            b.this.f19209g.flush();
        }

        @Override // ed.h0
        public final k0 h() {
            return this.f19213a;
        }
    }

    public final class c extends a {

        /* renamed from: d, reason: collision with root package name */
        public long f19216d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f19217e;
        public final r f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ b f19218g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(b bVar, r url) {
            super();
            h.f(url, "url");
            this.f19218g = bVar;
            this.f = url;
            this.f19216d = -1L;
            this.f19217e = true;
        }

        @Override // ed.j0, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.f19211b) {
                return;
            }
            if (this.f19217e && !sc.c.g(this, TimeUnit.MILLISECONDS)) {
                this.f19218g.f19208e.l();
                a();
            }
            this.f19211b = true;
        }

        @Override // xc.b.a, ed.j0
        public final long w(ed.e sink, long j10) throws IOException {
            h.f(sink, "sink");
            boolean z10 = true;
            if (!(j10 >= 0)) {
                throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
            }
            if (!(!this.f19211b)) {
                throw new IllegalStateException("closed".toString());
            }
            if (!this.f19217e) {
                return -1L;
            }
            long j11 = this.f19216d;
            b bVar = this.f19218g;
            if (j11 == 0 || j11 == -1) {
                if (j11 != -1) {
                    bVar.f.a0();
                }
                try {
                    this.f19216d = bVar.f.p0();
                    String strA0 = bVar.f.a0();
                    if (strA0 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                    }
                    String string = n.i0(strA0).toString();
                    if (this.f19216d >= 0) {
                        if (string.length() <= 0) {
                            z10 = false;
                        }
                        if (!z10 || j.D(string, ";", false)) {
                            if (this.f19216d == 0) {
                                this.f19217e = false;
                                bVar.f19206c = bVar.f19205b.a();
                                v vVar = bVar.f19207d;
                                h.c(vVar);
                                q qVar = bVar.f19206c;
                                h.c(qVar);
                                wc.e.b(vVar.f14558k, this.f, qVar);
                                a();
                            }
                            if (!this.f19217e) {
                                return -1L;
                            }
                        }
                    }
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f19216d + string + '\"');
                } catch (NumberFormatException e10) {
                    throw new ProtocolException(e10.getMessage());
                }
            }
            long jW = super.w(sink, Math.min(j10, this.f19216d));
            if (jW != -1) {
                this.f19216d -= jW;
                return jW;
            }
            bVar.f19208e.l();
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            a();
            throw protocolException;
        }
    }

    public final class d extends a {

        /* renamed from: d, reason: collision with root package name */
        public long f19219d;

        public d(long j10) {
            super();
            this.f19219d = j10;
            if (j10 == 0) {
                a();
            }
        }

        @Override // ed.j0, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.f19211b) {
                return;
            }
            if (this.f19219d != 0 && !sc.c.g(this, TimeUnit.MILLISECONDS)) {
                b.this.f19208e.l();
                a();
            }
            this.f19211b = true;
        }

        @Override // xc.b.a, ed.j0
        public final long w(ed.e sink, long j10) throws IOException {
            h.f(sink, "sink");
            if (!(j10 >= 0)) {
                throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
            }
            if (!(true ^ this.f19211b)) {
                throw new IllegalStateException("closed".toString());
            }
            long j11 = this.f19219d;
            if (j11 == 0) {
                return -1L;
            }
            long jW = super.w(sink, Math.min(j11, j10));
            if (jW == -1) {
                b.this.f19208e.l();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                a();
                throw protocolException;
            }
            long j12 = this.f19219d - jW;
            this.f19219d = j12;
            if (j12 == 0) {
                a();
            }
            return jW;
        }
    }

    public final class e implements h0 {

        /* renamed from: a, reason: collision with root package name */
        public final o f19221a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f19222b;

        public e() {
            this.f19221a = new o(b.this.f19209g.h());
        }

        @Override // ed.h0
        public final void M(ed.e source, long j10) throws IOException {
            h.f(source, "source");
            if (!(!this.f19222b)) {
                throw new IllegalStateException("closed".toString());
            }
            long j11 = source.f5304b;
            byte[] bArr = sc.c.f15380a;
            if ((0 | j10) < 0 || 0 > j11 || j11 - 0 < j10) {
                throw new ArrayIndexOutOfBoundsException();
            }
            b.this.f19209g.M(source, j10);
        }

        @Override // ed.h0, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.f19222b) {
                return;
            }
            this.f19222b = true;
            o oVar = this.f19221a;
            b bVar = b.this;
            b.i(bVar, oVar);
            bVar.f19204a = 3;
        }

        @Override // ed.h0, java.io.Flushable
        public final void flush() throws IOException {
            if (this.f19222b) {
                return;
            }
            b.this.f19209g.flush();
        }

        @Override // ed.h0
        public final k0 h() {
            return this.f19221a;
        }
    }

    public final class f extends a {

        /* renamed from: d, reason: collision with root package name */
        public boolean f19224d;

        public f(b bVar) {
            super();
        }

        @Override // ed.j0, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.f19211b) {
                return;
            }
            if (!this.f19224d) {
                a();
            }
            this.f19211b = true;
        }

        @Override // xc.b.a, ed.j0
        public final long w(ed.e sink, long j10) throws IOException {
            h.f(sink, "sink");
            if (!(j10 >= 0)) {
                throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
            }
            if (!(!this.f19211b)) {
                throw new IllegalStateException("closed".toString());
            }
            if (this.f19224d) {
                return -1L;
            }
            long jW = super.w(sink, j10);
            if (jW != -1) {
                return jW;
            }
            this.f19224d = true;
            a();
            return -1L;
        }
    }

    public b(v vVar, i connection, g gVar, ed.f fVar) {
        h.f(connection, "connection");
        this.f19207d = vVar;
        this.f19208e = connection;
        this.f = gVar;
        this.f19209g = fVar;
        this.f19205b = new xc.a(gVar);
    }

    public static final void i(b bVar, o oVar) {
        bVar.getClass();
        k0 k0Var = oVar.f5345e;
        k0.a delegate = k0.f5333d;
        h.f(delegate, "delegate");
        oVar.f5345e = delegate;
        k0Var.a();
        k0Var.b();
    }

    @Override // wc.d
    public final void a() {
        this.f19209g.flush();
    }

    @Override // wc.d
    public final void b(x xVar) {
        Proxy.Type type = this.f19208e.f18539q.f14435b.type();
        h.e(type, "connection.route().proxy.type()");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(xVar.f14599c);
        sb2.append(' ');
        r rVar = xVar.f14598b;
        if (!rVar.f14516a && type == Proxy.Type.HTTP) {
            sb2.append(rVar);
        } else {
            String strB = rVar.b();
            String strD = rVar.d();
            if (strD != null) {
                strB = strB + '?' + strD;
            }
            sb2.append(strB);
        }
        sb2.append(" HTTP/1.1");
        String string = sb2.toString();
        h.e(string, "StringBuilder().apply(builderAction).toString()");
        k(xVar.f14600d, string);
    }

    @Override // wc.d
    public final b0.a c(boolean z10) {
        xc.a aVar = this.f19205b;
        int r12 = this.f19204a;
        boolean z11 = true;
        if (r12 != 1 && r12 != 3) {
            z11 = false;
        }
        if (!z11) {
            throw new IllegalStateException(("state: " + this.f19204a).toString());
        }
        try {
            String strN = aVar.f19203b.N(aVar.f19202a);
            aVar.f19202a -= strN.length();
            wc.i iVarA = i.a.a(strN);
            int r32 = iVarA.f18881b;
            b0.a aVar2 = new b0.a();
            w protocol = iVarA.f18880a;
            h.f(protocol, "protocol");
            aVar2.f14399b = protocol;
            aVar2.f14400c = r32;
            String message = iVarA.f18882c;
            h.f(message, "message");
            aVar2.f14401d = message;
            aVar2.f = aVar.a().u();
            if (z10 && r32 == 100) {
                return null;
            }
            if (r32 == 100) {
                this.f19204a = 3;
                return aVar2;
            }
            this.f19204a = 4;
            return aVar2;
        } catch (EOFException e10) {
            throw new IOException(androidx.browser.browseractions.b.e("unexpected end of stream on ", this.f19208e.f18539q.f14434a.f14373a.f()), e10);
        }
    }

    @Override // wc.d
    public final void cancel() {
        Socket socket = this.f19208e.f18525b;
        if (socket != null) {
            sc.c.d(socket);
        }
    }

    @Override // wc.d
    public final vc.i d() {
        return this.f19208e;
    }

    @Override // wc.d
    public final long e(b0 b0Var) {
        if (!wc.e.a(b0Var)) {
            return 0L;
        }
        if (j.x("chunked", b0.b(b0Var, "Transfer-Encoding"))) {
            return -1L;
        }
        return sc.c.j(b0Var);
    }

    @Override // wc.d
    public final h0 f(x xVar, long j10) {
        if (j.x("chunked", xVar.f14600d.l("Transfer-Encoding"))) {
            if (this.f19204a == 1) {
                this.f19204a = 2;
                return new C0302b();
            }
            throw new IllegalStateException(("state: " + this.f19204a).toString());
        }
        if (j10 == -1) {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        }
        if (this.f19204a == 1) {
            this.f19204a = 2;
            return new e();
        }
        throw new IllegalStateException(("state: " + this.f19204a).toString());
    }

    @Override // wc.d
    public final void g() throws IOException {
        this.f19209g.flush();
    }

    @Override // wc.d
    public final j0 h(b0 b0Var) {
        if (!wc.e.a(b0Var)) {
            return j(0L);
        }
        if (j.x("chunked", b0.b(b0Var, "Transfer-Encoding"))) {
            r rVar = b0Var.f14386b.f14598b;
            if (this.f19204a == 4) {
                this.f19204a = 5;
                return new c(this, rVar);
            }
            throw new IllegalStateException(("state: " + this.f19204a).toString());
        }
        long j10 = sc.c.j(b0Var);
        if (j10 != -1) {
            return j(j10);
        }
        if (this.f19204a == 4) {
            this.f19204a = 5;
            this.f19208e.l();
            return new f(this);
        }
        throw new IllegalStateException(("state: " + this.f19204a).toString());
    }

    public final d j(long j10) {
        if (this.f19204a == 4) {
            this.f19204a = 5;
            return new d(j10);
        }
        throw new IllegalStateException(("state: " + this.f19204a).toString());
    }

    public final void k(q headers, String requestLine) {
        h.f(headers, "headers");
        h.f(requestLine, "requestLine");
        if (!(this.f19204a == 0)) {
            throw new IllegalStateException(("state: " + this.f19204a).toString());
        }
        ed.f fVar = this.f19209g;
        fVar.S(requestLine).S("\r\n");
        int length = headers.f14512a.length / 2;
        for (int r12 = 0; r12 < length; r12++) {
            fVar.S(headers.o(r12)).S(": ").S(headers.w(r12)).S("\r\n");
        }
        fVar.S("\r\n");
        this.f19204a = 1;
    }
}
