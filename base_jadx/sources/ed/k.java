package ed;

import ed.z;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class k {

    /* renamed from: a, reason: collision with root package name */
    public static final t f5332a;

    static {
        t tVar;
        try {
            Class.forName("java.nio.file.Files");
            tVar = new u();
        } catch (ClassNotFoundException unused) {
            tVar = new t();
        }
        f5332a = tVar;
        String str = z.f5363b;
        String property = System.getProperty("java.io.tmpdir");
        kotlin.jvm.internal.h.e(property, "getProperty(\"java.io.tmpdir\")");
        z.a.a(property, false);
        ClassLoader classLoader = fd.d.class.getClassLoader();
        kotlin.jvm.internal.h.e(classLoader, "ResourceFileSystem::class.java.classLoader");
        new fd.d(classLoader);
    }

    public abstract h0 a(z zVar) throws IOException;

    public abstract void b(z zVar, z zVar2) throws IOException;

    public abstract void c(z zVar) throws IOException;

    public abstract void d(z zVar) throws IOException;

    public final void e(z path) throws IOException {
        kotlin.jvm.internal.h.f(path, "path");
        d(path);
    }

    public final boolean f(z path) throws IOException {
        kotlin.jvm.internal.h.f(path, "path");
        return i(path) != null;
    }

    public abstract List<z> g(z zVar) throws IOException;

    public final j h(z path) throws IOException {
        kotlin.jvm.internal.h.f(path, "path");
        j jVarI = i(path);
        if (jVarI != null) {
            return jVarI;
        }
        throw new FileNotFoundException(kotlin.jvm.internal.h.k(path, "no such file: "));
    }

    public abstract j i(z zVar) throws IOException;

    public abstract i j(z zVar) throws IOException;

    public abstract h0 k(z zVar) throws IOException;

    public abstract j0 l(z zVar) throws IOException;
}
