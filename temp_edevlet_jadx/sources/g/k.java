package g;

import ed.d0;
import ed.v;
import ed.z;
import g.l;
import java.io.Closeable;

/* loaded from: classes.dex */
public final class k extends l {

    /* renamed from: a, reason: collision with root package name */
    public final z f5725a;

    /* renamed from: b, reason: collision with root package name */
    public final ed.k f5726b;

    /* renamed from: c, reason: collision with root package name */
    public final String f5727c;

    /* renamed from: d, reason: collision with root package name */
    public final Closeable f5728d;

    /* renamed from: e, reason: collision with root package name */
    public final l.a f5729e = null;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public d0 f5730g;

    public k(z zVar, ed.k kVar, String str, Closeable closeable) {
        this.f5725a = zVar;
        this.f5726b = kVar;
        this.f5727c = str;
        this.f5728d = closeable;
    }

    @Override // g.l
    public final l.a a() {
        return this.f5729e;
    }

    @Override // g.l
    public final synchronized ed.g b() {
        if (!(!this.f)) {
            throw new IllegalStateException("closed".toString());
        }
        d0 d0Var = this.f5730g;
        if (d0Var != null) {
            return d0Var;
        }
        d0 d0VarB = v.b(this.f5726b.l(this.f5725a));
        this.f5730g = d0VarB;
        return d0VarB;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f = true;
        d0 d0Var = this.f5730g;
        if (d0Var != null) {
            u.c.a(d0Var);
        }
        Closeable closeable = this.f5728d;
        if (closeable != null) {
            u.c.a(closeable);
        }
    }
}
