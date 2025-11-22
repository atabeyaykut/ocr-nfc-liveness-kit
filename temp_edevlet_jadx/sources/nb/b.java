package nb;

import java.util.ArrayList;
import m9.f0;
import ma.e0;
import ma.w0;

/* loaded from: classes2.dex */
public interface b {

    public static final class a implements b {

        /* renamed from: a, reason: collision with root package name */
        public static final a f10694a = new a();

        @Override // nb.b
        public final String a(ma.g gVar, nb.c renderer) {
            kotlin.jvm.internal.h.f(renderer, "renderer");
            if (gVar instanceof w0) {
                lb.f name = ((w0) gVar).getName();
                kotlin.jvm.internal.h.e(name, "classifier.name");
                return renderer.t(name, false);
            }
            lb.d dVarG = ob.i.g(gVar);
            kotlin.jvm.internal.h.e(dVarG, "getFqName(classifier)");
            return renderer.s(dVarG);
        }
    }

    /* renamed from: nb.b$b, reason: collision with other inner class name */
    public static final class C0202b implements b {

        /* renamed from: a, reason: collision with root package name */
        public static final C0202b f10695a = new C0202b();

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v0, types: [ma.g] */
        /* JADX WARN: Type inference failed for: r2v1, types: [ma.j] */
        /* JADX WARN: Type inference failed for: r2v2, types: [ma.j] */
        @Override // nb.b
        public final String a(ma.g gVar, nb.c renderer) {
            kotlin.jvm.internal.h.f(renderer, "renderer");
            if (gVar instanceof w0) {
                lb.f name = ((w0) gVar).getName();
                kotlin.jvm.internal.h.e(name, "classifier.name");
                return renderer.t(name, false);
            }
            ArrayList arrayList = new ArrayList();
            do {
                arrayList.add(gVar.getName());
                gVar = gVar.b();
            } while (gVar instanceof ma.e);
            return b8.f.f0(new f0(arrayList));
        }
    }

    public static final class c implements b {

        /* renamed from: a, reason: collision with root package name */
        public static final c f10696a = new c();

        public static String b(ma.g gVar) {
            String strF0;
            lb.f name = gVar.getName();
            kotlin.jvm.internal.h.e(name, "descriptor.name");
            String strE0 = b8.f.e0(name);
            if (gVar instanceof w0) {
                return strE0;
            }
            ma.j jVarB = gVar.b();
            kotlin.jvm.internal.h.e(jVarB, "descriptor.containingDeclaration");
            if (jVarB instanceof ma.e) {
                strF0 = b((ma.g) jVarB);
            } else if (jVarB instanceof e0) {
                lb.d dVarI = ((e0) jVarB).d().i();
                kotlin.jvm.internal.h.e(dVarI, "descriptor.fqName.toUnsafe()");
                strF0 = b8.f.f0(dVarI.f());
            } else {
                strF0 = null;
            }
            if (strF0 == null || kotlin.jvm.internal.h.a(strF0, "")) {
                return strE0;
            }
            return strF0 + '.' + strE0;
        }

        @Override // nb.b
        public final String a(ma.g gVar, nb.c renderer) {
            kotlin.jvm.internal.h.f(renderer, "renderer");
            return b(gVar);
        }
    }

    String a(ma.g gVar, nb.c cVar);
}
