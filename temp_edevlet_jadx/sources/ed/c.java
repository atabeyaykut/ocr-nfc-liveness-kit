package ed;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class c implements j0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f5297a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j0 f5298b;

    public c(i0 i0Var, r rVar) {
        this.f5297a = i0Var;
        this.f5298b = rVar;
    }

    @Override // ed.j0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        j0 j0Var = this.f5298b;
        a aVar = this.f5297a;
        aVar.h();
        try {
            j0Var.close();
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

    @Override // ed.j0
    public final k0 h() {
        return this.f5297a;
    }

    public final String toString() {
        return "AsyncTimeout.source(" + this.f5298b + ')';
    }

    @Override // ed.j0
    public final long w(e sink, long j10) throws IOException {
        kotlin.jvm.internal.h.f(sink, "sink");
        j0 j0Var = this.f5298b;
        a aVar = this.f5297a;
        aVar.h();
        try {
            long jW = j0Var.w(sink, j10);
            if (aVar.i()) {
                throw aVar.j(null);
            }
            return jW;
        } catch (IOException e10) {
            if (aVar.i()) {
                throw aVar.j(e10);
            }
            throw e10;
        } finally {
            aVar.i();
        }
    }
}
