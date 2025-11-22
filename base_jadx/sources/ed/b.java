package ed;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class b implements h0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f5292a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h0 f5293b;

    public b(i0 i0Var, y yVar) {
        this.f5292a = i0Var;
        this.f5293b = yVar;
    }

    @Override // ed.h0
    public final void M(e source, long j10) throws IOException {
        kotlin.jvm.internal.h.f(source, "source");
        a6.a.g(source.f5304b, 0L, j10);
        while (true) {
            long j11 = 0;
            if (j10 <= 0) {
                return;
            }
            e0 e0Var = source.f5303a;
            while (true) {
                kotlin.jvm.internal.h.c(e0Var);
                if (j11 >= 65536) {
                    break;
                }
                j11 += e0Var.f5307c - e0Var.f5306b;
                if (j11 >= j10) {
                    j11 = j10;
                    break;
                }
                e0Var = e0Var.f;
            }
            h0 h0Var = this.f5293b;
            a aVar = this.f5292a;
            aVar.h();
            try {
                h0Var.M(source, j11);
                l9.m mVar = l9.m.f9594a;
                if (aVar.i()) {
                    throw aVar.j(null);
                }
                j10 -= j11;
            } catch (IOException e10) {
                if (!aVar.i()) {
                    throw e10;
                }
                throw aVar.j(e10);
            } finally {
                aVar.i();
            }
        }
    }

    @Override // ed.h0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        h0 h0Var = this.f5293b;
        a aVar = this.f5292a;
        aVar.h();
        try {
            h0Var.close();
            l9.m mVar = l9.m.f9594a;
            if (aVar.i()) {
                throw aVar.j(null);
            }
        } catch (IOException e10) {
            if (!aVar.i()) {
                throw e10;
            }
            throw aVar.j(e10);
        } finally {
            aVar.i();
        }
    }

    @Override // ed.h0, java.io.Flushable
    public final void flush() throws IOException {
        h0 h0Var = this.f5293b;
        a aVar = this.f5292a;
        aVar.h();
        try {
            h0Var.flush();
            l9.m mVar = l9.m.f9594a;
            if (aVar.i()) {
                throw aVar.j(null);
            }
        } catch (IOException e10) {
            if (!aVar.i()) {
                throw e10;
            }
            throw aVar.j(e10);
        } finally {
            aVar.i();
        }
    }

    @Override // ed.h0
    public final k0 h() {
        return this.f5292a;
    }

    public final String toString() {
        return "AsyncTimeout.sink(" + this.f5293b + ')';
    }
}
