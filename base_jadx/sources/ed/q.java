package ed;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* loaded from: classes2.dex */
public final class q implements j0 {

    /* renamed from: a, reason: collision with root package name */
    public final g f5351a;

    /* renamed from: b, reason: collision with root package name */
    public final Inflater f5352b;

    /* renamed from: c, reason: collision with root package name */
    public int f5353c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f5354d;

    public q(d0 d0Var, Inflater inflater) {
        this.f5351a = d0Var;
        this.f5352b = inflater;
    }

    @Override // ed.j0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f5354d) {
            return;
        }
        this.f5352b.end();
        this.f5354d = true;
        this.f5351a.close();
    }

    @Override // ed.j0
    public final k0 h() {
        return this.f5351a.h();
    }

    @Override // ed.j0
    public final long w(e sink, long j10) throws IOException {
        g gVar;
        long j11;
        kotlin.jvm.internal.h.f(sink, "sink");
        do {
            if (!(j10 >= 0)) {
                throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Long.valueOf(j10), "byteCount < 0: ").toString());
            }
            if (!(!this.f5354d)) {
                throw new IllegalStateException("closed".toString());
            }
            gVar = this.f5351a;
            Inflater inflater = this.f5352b;
            if (j10 == 0) {
                j11 = 0;
            } else {
                try {
                    e0 e0VarB = sink.B(1);
                    int r32 = (int) Math.min(j10, 8192 - e0VarB.f5307c);
                    if (inflater.needsInput() && !gVar.I()) {
                        e0 e0Var = gVar.getBuffer().f5303a;
                        kotlin.jvm.internal.h.c(e0Var);
                        int r72 = e0Var.f5307c;
                        int r82 = e0Var.f5306b;
                        int r73 = r72 - r82;
                        this.f5353c = r73;
                        inflater.setInput(e0Var.f5305a, r82, r73);
                    }
                    int r33 = inflater.inflate(e0VarB.f5305a, e0VarB.f5307c, r32);
                    int r6 = this.f5353c;
                    if (r6 != 0) {
                        int remaining = r6 - inflater.getRemaining();
                        this.f5353c -= remaining;
                        gVar.skip(remaining);
                    }
                    if (r33 > 0) {
                        e0VarB.f5307c += r33;
                        j11 = r33;
                        sink.f5304b += j11;
                    } else {
                        if (e0VarB.f5306b == e0VarB.f5307c) {
                            sink.f5303a = e0VarB.a();
                            f0.a(e0VarB);
                        }
                        j11 = 0;
                    }
                } catch (DataFormatException e10) {
                    throw new IOException(e10);
                }
            }
            if (j11 > 0) {
                return j11;
            }
            if (inflater.finished() || inflater.needsDictionary()) {
                return -1L;
            }
        } while (!gVar.I());
        throw new EOFException("source exhausted prematurely");
    }
}
