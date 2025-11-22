package h;

import ed.h;
import ed.k;
import ed.t;
import ed.z;
import h.a;
import h.b;

/* loaded from: classes.dex */
public final class f implements h.a {

    /* renamed from: a, reason: collision with root package name */
    public final k f6773a;

    /* renamed from: b, reason: collision with root package name */
    public final h.b f6774b;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final b.a f6775a;

        public a(b.a aVar) {
            this.f6775a = aVar;
        }

        public final void a() {
            this.f6775a.a(false);
        }

        public final b b() {
            b.c cVarD;
            b.a aVar = this.f6775a;
            h.b bVar = h.b.this;
            synchronized (bVar) {
                aVar.a(true);
                cVarD = bVar.d(aVar.f6754a.f6758a);
            }
            if (cVarD == null) {
                return null;
            }
            return new b(cVarD);
        }

        public final z c() {
            return this.f6775a.b(1);
        }

        public final z d() {
            return this.f6775a.b(0);
        }
    }

    public static final class b implements a.b {

        /* renamed from: a, reason: collision with root package name */
        public final b.c f6776a;

        public b(b.c cVar) {
            this.f6776a = cVar;
        }

        @Override // h.a.b
        public final z L() {
            return this.f6776a.a(0);
        }

        @Override // h.a.b
        public final a T() {
            b.a aVarC;
            b.c cVar = this.f6776a;
            h.b bVar = h.b.this;
            synchronized (bVar) {
                cVar.close();
                aVarC = bVar.c(cVar.f6766a.f6758a);
            }
            if (aVarC == null) {
                return null;
            }
            return new a(aVarC);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            this.f6776a.close();
        }

        @Override // h.a.b
        public final z l() {
            return this.f6776a.a(1);
        }
    }

    public f(long j10, z zVar, t tVar, kotlinx.coroutines.scheduling.b bVar) {
        this.f6773a = tVar;
        this.f6774b = new h.b(tVar, zVar, bVar, j10);
    }

    @Override // h.a
    public final a a(String str) {
        h hVar = h.f5315d;
        b.a aVarC = this.f6774b.c(h.a.b(str).q("SHA-256").t());
        if (aVarC == null) {
            return null;
        }
        return new a(aVarC);
    }

    @Override // h.a
    public final b get(String str) {
        h hVar = h.f5315d;
        b.c cVarD = this.f6774b.d(h.a.b(str).q("SHA-256").t());
        if (cVarD == null) {
            return null;
        }
        return new b(cVarD);
    }

    @Override // h.a
    public final k getFileSystem() {
        return this.f6773a;
    }
}
