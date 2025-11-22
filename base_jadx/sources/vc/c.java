package vc;

import ed.h0;
import ed.j0;
import java.io.IOException;
import java.net.ProtocolException;
import rc.b0;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public boolean f18475a;

    /* renamed from: b, reason: collision with root package name */
    public final i f18476b;

    /* renamed from: c, reason: collision with root package name */
    public final e f18477c;

    /* renamed from: d, reason: collision with root package name */
    public final rc.n f18478d;

    /* renamed from: e, reason: collision with root package name */
    public final d f18479e;
    public final wc.d f;

    public final class a extends ed.m {

        /* renamed from: b, reason: collision with root package name */
        public boolean f18480b;

        /* renamed from: c, reason: collision with root package name */
        public long f18481c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f18482d;

        /* renamed from: e, reason: collision with root package name */
        public final long f18483e;
        public final /* synthetic */ c f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(c cVar, h0 delegate, long j10) {
            super(delegate);
            kotlin.jvm.internal.h.f(delegate, "delegate");
            this.f = cVar;
            this.f18483e = j10;
        }

        @Override // ed.m, ed.h0
        public final void M(ed.e source, long j10) throws IOException {
            kotlin.jvm.internal.h.f(source, "source");
            if (!(!this.f18482d)) {
                throw new IllegalStateException("closed".toString());
            }
            long j11 = this.f18483e;
            if (j11 == -1 || this.f18481c + j10 <= j11) {
                try {
                    super.M(source, j10);
                    this.f18481c += j10;
                    return;
                } catch (IOException e10) {
                    throw a(e10);
                }
            }
            throw new ProtocolException("expected " + j11 + " bytes but received " + (this.f18481c + j10));
        }

        public final <E extends IOException> E a(E e10) {
            if (this.f18480b) {
                return e10;
            }
            this.f18480b = true;
            return (E) this.f.a(false, true, e10);
        }

        @Override // ed.m, ed.h0, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f18482d) {
                return;
            }
            this.f18482d = true;
            long j10 = this.f18483e;
            if (j10 != -1 && this.f18481c != j10) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                a(null);
            } catch (IOException e10) {
                throw a(e10);
            }
        }

        @Override // ed.m, ed.h0, java.io.Flushable
        public final void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e10) {
                throw a(e10);
            }
        }
    }

    public final class b extends ed.n {

        /* renamed from: b, reason: collision with root package name */
        public long f18484b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f18485c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f18486d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f18487e;
        public final long f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ c f18488g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(c cVar, j0 delegate, long j10) {
            super(delegate);
            kotlin.jvm.internal.h.f(delegate, "delegate");
            this.f18488g = cVar;
            this.f = j10;
            this.f18485c = true;
            if (j10 == 0) {
                a(null);
            }
        }

        public final <E extends IOException> E a(E e10) {
            if (this.f18486d) {
                return e10;
            }
            this.f18486d = true;
            c cVar = this.f18488g;
            if (e10 == null && this.f18485c) {
                this.f18485c = false;
                cVar.f18478d.getClass();
                e call = cVar.f18477c;
                kotlin.jvm.internal.h.f(call, "call");
            }
            return (E) cVar.a(true, false, e10);
        }

        @Override // ed.n, ed.j0, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f18487e) {
                return;
            }
            this.f18487e = true;
            try {
                super.close();
                a(null);
            } catch (IOException e10) {
                throw a(e10);
            }
        }

        @Override // ed.n, ed.j0
        public final long w(ed.e sink, long j10) throws IOException {
            kotlin.jvm.internal.h.f(sink, "sink");
            if (!(!this.f18487e)) {
                throw new IllegalStateException("closed".toString());
            }
            try {
                long jW = this.f5344a.w(sink, j10);
                if (this.f18485c) {
                    this.f18485c = false;
                    c cVar = this.f18488g;
                    rc.n nVar = cVar.f18478d;
                    e call = cVar.f18477c;
                    nVar.getClass();
                    kotlin.jvm.internal.h.f(call, "call");
                }
                if (jW == -1) {
                    a(null);
                    return -1L;
                }
                long j11 = this.f18484b + jW;
                long j12 = this.f;
                if (j12 == -1 || j11 <= j12) {
                    this.f18484b = j11;
                    if (j11 == j12) {
                        a(null);
                    }
                    return jW;
                }
                throw new ProtocolException("expected " + j12 + " bytes but received " + j11);
            } catch (IOException e10) {
                throw a(e10);
            }
        }
    }

    public c(e eVar, rc.n eventListener, d dVar, wc.d dVar2) {
        kotlin.jvm.internal.h.f(eventListener, "eventListener");
        this.f18477c = eVar;
        this.f18478d = eventListener;
        this.f18479e = dVar;
        this.f = dVar2;
        this.f18476b = dVar2.d();
    }

    public final IOException a(boolean z10, boolean z11, IOException iOException) {
        if (iOException != null) {
            c(iOException);
        }
        rc.n nVar = this.f18478d;
        e call = this.f18477c;
        if (z11) {
            nVar.getClass();
            if (iOException != null) {
                kotlin.jvm.internal.h.f(call, "call");
            } else {
                kotlin.jvm.internal.h.f(call, "call");
            }
        }
        if (z10) {
            if (iOException != null) {
                nVar.getClass();
                kotlin.jvm.internal.h.f(call, "call");
            } else {
                nVar.getClass();
                kotlin.jvm.internal.h.f(call, "call");
            }
        }
        return call.g(this, z11, z10, iOException);
    }

    public final b0.a b(boolean z10) throws IOException {
        try {
            b0.a aVarC = this.f.c(z10);
            if (aVarC != null) {
                aVarC.f14409m = this;
            }
            return aVarC;
        } catch (IOException e10) {
            this.f18478d.getClass();
            e call = this.f18477c;
            kotlin.jvm.internal.h.f(call, "call");
            c(e10);
            throw e10;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0026, code lost:
    
        if (r6 > 1) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(java.io.IOException r6) {
        /*
            r5 = this;
            vc.d r0 = r5.f18479e
            r0.c(r6)
            wc.d r0 = r5.f
            vc.i r0 = r0.d()
            vc.e r1 = r5.f18477c
            monitor-enter(r0)
            java.lang.String r2 = "call"
            kotlin.jvm.internal.h.f(r1, r2)     // Catch: java.lang.Throwable -> L59
            boolean r2 = r6 instanceof yc.w     // Catch: java.lang.Throwable -> L59
            r3 = 1
            if (r2 == 0) goto L38
            r2 = r6
            yc.w r2 = (yc.w) r2     // Catch: java.lang.Throwable -> L59
            yc.b r2 = r2.f19651a     // Catch: java.lang.Throwable -> L59
            yc.b r4 = yc.b.REFUSED_STREAM     // Catch: java.lang.Throwable -> L59
            if (r2 != r4) goto L2b
            int r6 = r0.f18535m     // Catch: java.lang.Throwable -> L59
            int r6 = r6 + r3
            r0.f18535m = r6     // Catch: java.lang.Throwable -> L59
            if (r6 <= r3) goto L57
        L28:
            r0.f18531i = r3     // Catch: java.lang.Throwable -> L59
            goto L52
        L2b:
            yc.w r6 = (yc.w) r6     // Catch: java.lang.Throwable -> L59
            yc.b r6 = r6.f19651a     // Catch: java.lang.Throwable -> L59
            yc.b r2 = yc.b.CANCEL     // Catch: java.lang.Throwable -> L59
            if (r6 != r2) goto L28
            boolean r6 = r1.f18509n     // Catch: java.lang.Throwable -> L59
            if (r6 == 0) goto L28
            goto L57
        L38:
            yc.f r2 = r0.f     // Catch: java.lang.Throwable -> L59
            if (r2 == 0) goto L3e
            r2 = 1
            goto L3f
        L3e:
            r2 = 0
        L3f:
            if (r2 == 0) goto L45
            boolean r2 = r6 instanceof yc.a     // Catch: java.lang.Throwable -> L59
            if (r2 == 0) goto L57
        L45:
            r0.f18531i = r3     // Catch: java.lang.Throwable -> L59
            int r2 = r0.f18534l     // Catch: java.lang.Throwable -> L59
            if (r2 != 0) goto L57
            rc.v r1 = r1.f18512r     // Catch: java.lang.Throwable -> L59
            rc.e0 r2 = r0.f18539q     // Catch: java.lang.Throwable -> L59
            vc.i.d(r1, r2, r6)     // Catch: java.lang.Throwable -> L59
        L52:
            int r6 = r0.f18533k     // Catch: java.lang.Throwable -> L59
            int r6 = r6 + r3
            r0.f18533k = r6     // Catch: java.lang.Throwable -> L59
        L57:
            monitor-exit(r0)
            return
        L59:
            r6 = move-exception
            monitor-exit(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: vc.c.c(java.io.IOException):void");
    }
}
