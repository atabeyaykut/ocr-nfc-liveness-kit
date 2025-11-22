package m7;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class f extends q7.b {

    /* renamed from: p, reason: collision with root package name */
    public static final a f10060p = new a();

    /* renamed from: q, reason: collision with root package name */
    public static final j7.q f10061q = new j7.q("closed");

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f10062l;

    /* renamed from: m, reason: collision with root package name */
    public String f10063m;

    /* renamed from: n, reason: collision with root package name */
    public j7.l f10064n;

    public static class a extends Writer {
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int r22, int r32) {
            throw new AssertionError();
        }
    }

    public f() {
        super(f10060p);
        this.f10062l = new ArrayList();
        this.f10064n = j7.n.f8300a;
    }

    @Override // q7.b
    public final void b() throws IOException {
        j7.j jVar = new j7.j();
        v(jVar);
        this.f10062l.add(jVar);
    }

    @Override // q7.b
    public final void c() throws IOException {
        j7.o oVar = new j7.o();
        v(oVar);
        this.f10062l.add(oVar);
    }

    @Override // q7.b, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        ArrayList arrayList = this.f10062l;
        if (!arrayList.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        arrayList.add(f10061q);
    }

    @Override // q7.b
    public final void e() throws IOException {
        ArrayList arrayList = this.f10062l;
        if (arrayList.isEmpty() || this.f10063m != null) {
            throw new IllegalStateException();
        }
        if (!(t() instanceof j7.j)) {
            throw new IllegalStateException();
        }
        arrayList.remove(arrayList.size() - 1);
    }

    @Override // q7.b
    public final void f() throws IOException {
        ArrayList arrayList = this.f10062l;
        if (arrayList.isEmpty() || this.f10063m != null) {
            throw new IllegalStateException();
        }
        if (!(t() instanceof j7.o)) {
            throw new IllegalStateException();
        }
        arrayList.remove(arrayList.size() - 1);
    }

    @Override // q7.b, java.io.Flushable
    public final void flush() throws IOException {
    }

    @Override // q7.b
    public final void g(String str) throws IOException {
        if (this.f10062l.isEmpty() || this.f10063m != null) {
            throw new IllegalStateException();
        }
        if (!(t() instanceof j7.o)) {
            throw new IllegalStateException();
        }
        this.f10063m = str;
    }

    @Override // q7.b
    public final q7.b j() throws IOException {
        v(j7.n.f8300a);
        return this;
    }

    @Override // q7.b
    public final void n(long j10) throws IOException {
        v(new j7.q(Long.valueOf(j10)));
    }

    @Override // q7.b
    public final void o(Boolean bool) throws IOException {
        if (bool == null) {
            v(j7.n.f8300a);
        } else {
            v(new j7.q(bool));
        }
    }

    @Override // q7.b
    public final void p(Number number) throws IOException {
        if (number == null) {
            v(j7.n.f8300a);
            return;
        }
        if (!this.f13428e) {
            double dDoubleValue = number.doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        v(new j7.q(number));
    }

    @Override // q7.b
    public final void q(String str) throws IOException {
        if (str == null) {
            v(j7.n.f8300a);
        } else {
            v(new j7.q(str));
        }
    }

    @Override // q7.b
    public final void r(boolean z10) throws IOException {
        v(new j7.q(Boolean.valueOf(z10)));
    }

    public final j7.l t() {
        return (j7.l) this.f10062l.get(r0.size() - 1);
    }

    public final void v(j7.l lVar) {
        if (this.f10063m != null) {
            lVar.getClass();
            if (!(lVar instanceof j7.n) || this.f13430h) {
                j7.o oVar = (j7.o) t();
                oVar.f8301a.put(this.f10063m, lVar);
            }
            this.f10063m = null;
            return;
        }
        if (this.f10062l.isEmpty()) {
            this.f10064n = lVar;
            return;
        }
        j7.l lVarT = t();
        if (!(lVarT instanceof j7.j)) {
            throw new IllegalStateException();
        }
        j7.j jVar = (j7.j) lVarT;
        if (lVar == null) {
            jVar.getClass();
            lVar = j7.n.f8300a;
        }
        jVar.f8299a.add(lVar);
    }
}
