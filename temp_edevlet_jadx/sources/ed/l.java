package ed;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class l extends k {

    /* renamed from: b, reason: collision with root package name */
    public final k f5337b;

    public l(t delegate) {
        kotlin.jvm.internal.h.f(delegate, "delegate");
        this.f5337b = delegate;
    }

    @Override // ed.k
    public final h0 a(z zVar) throws IOException {
        return this.f5337b.a(zVar);
    }

    @Override // ed.k
    public final void b(z source, z target) throws IOException {
        kotlin.jvm.internal.h.f(source, "source");
        kotlin.jvm.internal.h.f(target, "target");
        this.f5337b.b(source, target);
    }

    @Override // ed.k
    public final void c(z zVar) throws IOException {
        this.f5337b.c(zVar);
    }

    @Override // ed.k
    public final void d(z path) throws IOException {
        kotlin.jvm.internal.h.f(path, "path");
        this.f5337b.d(path);
    }

    @Override // ed.k
    public final List<z> g(z dir) throws IOException {
        kotlin.jvm.internal.h.f(dir, "dir");
        List<z> listG = this.f5337b.g(dir);
        ArrayList arrayList = new ArrayList();
        for (z path : listG) {
            kotlin.jvm.internal.h.f(path, "path");
            arrayList.add(path);
        }
        if (arrayList.size() > 1) {
            Collections.sort(arrayList);
        }
        return arrayList;
    }

    @Override // ed.k
    public final j i(z path) throws IOException {
        kotlin.jvm.internal.h.f(path, "path");
        j jVarI = this.f5337b.i(path);
        if (jVarI == null) {
            return null;
        }
        z zVar = jVarI.f5327c;
        if (zVar == null) {
            return jVarI;
        }
        boolean z10 = jVarI.f5325a;
        boolean z11 = jVarI.f5326b;
        Long l5 = jVarI.f5328d;
        Long l10 = jVarI.f5329e;
        Long l11 = jVarI.f;
        Long l12 = jVarI.f5330g;
        Map<da.d<?>, Object> extras = jVarI.f5331h;
        kotlin.jvm.internal.h.f(extras, "extras");
        return new j(z10, z11, zVar, l5, l10, l11, l12, extras);
    }

    @Override // ed.k
    public final i j(z file) throws IOException {
        kotlin.jvm.internal.h.f(file, "file");
        return this.f5337b.j(file);
    }

    @Override // ed.k
    public final j0 l(z file) throws IOException {
        kotlin.jvm.internal.h.f(file, "file");
        return this.f5337b.l(file);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) kotlin.jvm.internal.w.a(getClass()).d());
        sb2.append('(');
        sb2.append(this.f5337b);
        sb2.append(')');
        return sb2.toString();
    }
}
