package ed;

import ed.z;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.Inflater;

/* loaded from: classes2.dex */
public final class l0 extends k {

    /* renamed from: e, reason: collision with root package name */
    @Deprecated
    public static final z f5338e;

    /* renamed from: b, reason: collision with root package name */
    public final z f5339b;

    /* renamed from: c, reason: collision with root package name */
    public final k f5340c;

    /* renamed from: d, reason: collision with root package name */
    public final Map<z, fd.f> f5341d;

    static {
        String str = z.f5363b;
        f5338e = z.a.a("/", false);
    }

    public l0(z zVar, t tVar, LinkedHashMap linkedHashMap) {
        this.f5339b = zVar;
        this.f5340c = tVar;
        this.f5341d = linkedHashMap;
    }

    @Override // ed.k
    public final h0 a(z zVar) throws IOException {
        throw new IOException("zip file systems are read-only");
    }

    @Override // ed.k
    public final void b(z source, z target) throws IOException {
        kotlin.jvm.internal.h.f(source, "source");
        kotlin.jvm.internal.h.f(target, "target");
        throw new IOException("zip file systems are read-only");
    }

    @Override // ed.k
    public final void c(z zVar) throws IOException {
        throw new IOException("zip file systems are read-only");
    }

    @Override // ed.k
    public final void d(z path) throws IOException {
        kotlin.jvm.internal.h.f(path, "path");
        throw new IOException("zip file systems are read-only");
    }

    @Override // ed.k
    public final List<z> g(z dir) throws IOException {
        kotlin.jvm.internal.h.f(dir, "dir");
        z zVar = f5338e;
        zVar.getClass();
        fd.f fVar = this.f5341d.get(fd.l.b(zVar, dir, true));
        if (fVar != null) {
            return m9.t.v1(fVar.f5602h);
        }
        throw new IOException(kotlin.jvm.internal.h.k(dir, "not a directory: "));
    }

    @Override // ed.k
    public final j i(z path) throws Throwable {
        d0 d0VarB;
        kotlin.jvm.internal.h.f(path, "path");
        z zVar = f5338e;
        zVar.getClass();
        fd.f fVar = this.f5341d.get(fd.l.b(zVar, path, true));
        Throwable th2 = null;
        if (fVar == null) {
            return null;
        }
        boolean z10 = fVar.f5597b;
        j jVar = new j(!z10, z10, null, z10 ? null : Long.valueOf(fVar.f5599d), null, fVar.f, null);
        long j10 = fVar.f5601g;
        if (j10 == -1) {
            return jVar;
        }
        i iVarJ = this.f5340c.j(this.f5339b);
        try {
            d0VarB = v.b(iVarJ.d(j10));
        } catch (Throwable th3) {
            d0VarB = null;
            th2 = th3;
        }
        if (iVarJ != null) {
            try {
                iVarJ.close();
            } catch (Throwable th4) {
                if (th2 == null) {
                    th2 = th4;
                } else {
                    b8.f.k(th2, th4);
                }
            }
        }
        if (th2 != null) {
            throw th2;
        }
        kotlin.jvm.internal.h.c(d0VarB);
        j jVarE = fd.j.e(d0VarB, jVar);
        kotlin.jvm.internal.h.c(jVarE);
        return jVarE;
    }

    @Override // ed.k
    public final i j(z file) {
        kotlin.jvm.internal.h.f(file, "file");
        throw new UnsupportedOperationException("not implemented yet!");
    }

    @Override // ed.k
    public final h0 k(z file) throws IOException {
        kotlin.jvm.internal.h.f(file, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override // ed.k
    public final j0 l(z path) throws Throwable {
        d0 d0VarB;
        kotlin.jvm.internal.h.f(path, "path");
        z zVar = f5338e;
        zVar.getClass();
        fd.f fVar = this.f5341d.get(fd.l.b(zVar, path, true));
        if (fVar == null) {
            throw new FileNotFoundException(kotlin.jvm.internal.h.k(path, "no such file: "));
        }
        i iVarJ = this.f5340c.j(this.f5339b);
        try {
            d0VarB = v.b(iVarJ.d(fVar.f5601g));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            d0VarB = null;
        }
        if (iVarJ != null) {
            try {
                iVarJ.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                } else {
                    b8.f.k(th, th3);
                }
            }
        }
        if (th != null) {
            throw th;
        }
        kotlin.jvm.internal.h.c(d0VarB);
        fd.j.e(d0VarB, null);
        int r92 = fVar.f5600e;
        long j10 = fVar.f5599d;
        if (r92 == 0) {
            return new fd.b(d0VarB, j10, true);
        }
        return new fd.b(new q(v.b(new fd.b(d0VarB, fVar.f5598c, true)), new Inflater(true)), j10, false);
    }
}
