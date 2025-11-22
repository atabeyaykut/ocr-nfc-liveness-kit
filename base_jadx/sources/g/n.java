package g;

import ed.t;
import g.l;
import java.io.File;

/* loaded from: classes.dex */
public final class n extends l {

    /* renamed from: a, reason: collision with root package name */
    public final l.a f5732a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5733b;

    /* renamed from: c, reason: collision with root package name */
    public ed.g f5734c;

    public n(ed.g gVar, File file, l.a aVar) {
        this.f5732a = aVar;
        this.f5734c = gVar;
        if (!file.isDirectory()) {
            throw new IllegalArgumentException("cacheDirectory must be a directory.".toString());
        }
    }

    @Override // g.l
    public final l.a a() {
        return this.f5732a;
    }

    @Override // g.l
    public final synchronized ed.g b() {
        ed.g gVar;
        if (!(!this.f5733b)) {
            throw new IllegalStateException("closed".toString());
        }
        gVar = this.f5734c;
        if (gVar == null) {
            t tVar = ed.k.f5332a;
            kotlin.jvm.internal.h.c(null);
            throw null;
        }
        return gVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f5733b = true;
        ed.g gVar = this.f5734c;
        if (gVar != null) {
            u.c.a(gVar);
        }
    }
}
