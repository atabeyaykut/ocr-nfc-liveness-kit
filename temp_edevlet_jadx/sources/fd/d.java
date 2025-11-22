package fd;

import c5.y;
import ed.h0;
import ed.j0;
import ed.z;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import m9.n;
import m9.p;
import m9.t;

/* loaded from: classes2.dex */
public final class d extends ed.k {

    /* renamed from: c, reason: collision with root package name */
    @Deprecated
    public static final z f5593c;

    /* renamed from: b, reason: collision with root package name */
    public final l9.j f5594b;

    public static final class a {
        public static final boolean a(z zVar) {
            z zVar2 = d.f5593c;
            zVar.getClass();
            ed.h hVar = l.f5613a;
            ed.h hVarE = zVar.f5364a;
            int r02 = ed.h.z(hVarE, hVar);
            if (r02 == -1) {
                r02 = ed.h.z(hVarE, l.f5614b);
            }
            if (r02 != -1) {
                hVarE = ed.h.E(hVarE, r02 + 1, 0, 2);
            } else if (zVar.t() != null && hVarE.r() == 2) {
                hVarE = ed.h.f5315d;
            }
            return !mc.j.w(hVarE.G(), ".class", true);
        }
    }

    static {
        new a();
        String str = z.f5363b;
        f5593c = z.a.a("/", false);
    }

    public d(ClassLoader classLoader) {
        this.f5594b = y.w(new e(classLoader));
    }

    public static String m(z child) throws EOFException {
        z zVarD;
        z zVar = f5593c;
        zVar.getClass();
        kotlin.jvm.internal.h.f(child, "child");
        z zVarB = l.b(zVar, child, true);
        int r22 = l.a(zVarB);
        ed.h hVar = zVarB.f5364a;
        z zVar2 = r22 == -1 ? null : new z(hVar.C(0, r22));
        int r23 = l.a(zVar);
        ed.h hVar2 = zVar.f5364a;
        if (!kotlin.jvm.internal.h.a(zVar2, r23 != -1 ? new z(hVar2.C(0, r23)) : null)) {
            throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + zVarB + " and " + zVar).toString());
        }
        ArrayList arrayListN = zVarB.n();
        ArrayList arrayListN2 = zVar.n();
        int r92 = Math.min(arrayListN.size(), arrayListN2.size());
        int r10 = 0;
        while (r10 < r92 && kotlin.jvm.internal.h.a(arrayListN.get(r10), arrayListN2.get(r10))) {
            r10++;
        }
        if (r10 == r92 && hVar.r() == hVar2.r()) {
            String str = z.f5363b;
            zVarD = z.a.a(".", false);
        } else {
            if (!(arrayListN2.subList(r10, arrayListN2.size()).indexOf(l.f5617e) == -1)) {
                throw new IllegalArgumentException(("Impossible relative path to resolve: " + zVarB + " and " + zVar).toString());
            }
            ed.e eVar = new ed.e();
            ed.h hVarC = l.c(zVar);
            if (hVarC == null && (hVarC = l.c(zVarB)) == null) {
                hVarC = l.f(z.f5363b);
            }
            int size = arrayListN2.size();
            if (r10 < size) {
                int r42 = r10;
                do {
                    r42++;
                    eVar.F(l.f5617e);
                    eVar.F(hVarC);
                } while (r42 < size);
            }
            int size2 = arrayListN.size();
            if (r10 < size2) {
                while (true) {
                    int r12 = r10 + 1;
                    eVar.F((ed.h) arrayListN.get(r10));
                    eVar.F(hVarC);
                    if (r12 >= size2) {
                        break;
                    }
                    r10 = r12;
                }
            }
            zVarD = l.d(eVar, false);
        }
        return zVarD.toString();
    }

    @Override // ed.k
    public final h0 a(z zVar) throws IOException {
        throw new IOException(this + " is read-only");
    }

    @Override // ed.k
    public final void b(z source, z target) throws IOException {
        kotlin.jvm.internal.h.f(source, "source");
        kotlin.jvm.internal.h.f(target, "target");
        throw new IOException(this + " is read-only");
    }

    @Override // ed.k
    public final void c(z zVar) throws IOException {
        throw new IOException(this + " is read-only");
    }

    @Override // ed.k
    public final void d(z path) throws IOException {
        kotlin.jvm.internal.h.f(path, "path");
        throw new IOException(this + " is read-only");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ed.k
    public final List<z> g(z dir) throws EOFException, FileNotFoundException {
        kotlin.jvm.internal.h.f(dir, "dir");
        String strM = m(dir);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        boolean z10 = false;
        for (l9.g gVar : (List) this.f5594b.getValue()) {
            ed.k kVar = (ed.k) gVar.f9582a;
            z zVar = (z) gVar.f9583b;
            try {
                List<z> listG = kVar.g(zVar.q(strM));
                ArrayList arrayList = new ArrayList();
                for (Object obj : listG) {
                    if (a.a((z) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(n.Q0(arrayList));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    z zVar2 = (z) it.next();
                    kotlin.jvm.internal.h.f(zVar2, "<this>");
                    arrayList2.add(f5593c.q(mc.j.B(mc.n.U(zVar.toString(), zVar2.toString()), '\\', '/')));
                }
                p.T0(arrayList2, linkedHashSet);
                z10 = true;
            } catch (IOException unused) {
            }
        }
        if (z10) {
            return t.v1(linkedHashSet);
        }
        throw new FileNotFoundException(kotlin.jvm.internal.h.k(dir, "file not found: "));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ed.k
    public final ed.j i(z path) throws IOException {
        kotlin.jvm.internal.h.f(path, "path");
        if (!a.a(path)) {
            return null;
        }
        String strM = m(path);
        for (l9.g gVar : (List) this.f5594b.getValue()) {
            ed.j jVarI = ((ed.k) gVar.f9582a).i(((z) gVar.f9583b).q(strM));
            if (jVarI != null) {
                return jVarI;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ed.k
    public final ed.i j(z file) throws EOFException, FileNotFoundException {
        kotlin.jvm.internal.h.f(file, "file");
        if (!a.a(file)) {
            throw new FileNotFoundException(kotlin.jvm.internal.h.k(file, "file not found: "));
        }
        String strM = m(file);
        for (l9.g gVar : (List) this.f5594b.getValue()) {
            try {
                return ((ed.k) gVar.f9582a).j(((z) gVar.f9583b).q(strM));
            } catch (FileNotFoundException unused) {
            }
        }
        throw new FileNotFoundException(kotlin.jvm.internal.h.k(file, "file not found: "));
    }

    @Override // ed.k
    public final h0 k(z file) throws IOException {
        kotlin.jvm.internal.h.f(file, "file");
        throw new IOException(this + " is read-only");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ed.k
    public final j0 l(z file) throws EOFException, FileNotFoundException {
        kotlin.jvm.internal.h.f(file, "file");
        if (!a.a(file)) {
            throw new FileNotFoundException(kotlin.jvm.internal.h.k(file, "file not found: "));
        }
        String strM = m(file);
        for (l9.g gVar : (List) this.f5594b.getValue()) {
            try {
                return ((ed.k) gVar.f9582a).l(((z) gVar.f9583b).q(strM));
            } catch (FileNotFoundException unused) {
            }
        }
        throw new FileNotFoundException(kotlin.jvm.internal.h.k(file, "file not found: "));
    }
}
