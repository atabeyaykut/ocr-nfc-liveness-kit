package na;

import java.util.Iterator;
import java.util.List;
import m9.u;

/* loaded from: classes2.dex */
public interface h extends Iterable<c>, y9.a {

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final C0201a f10653a = new C0201a();

        /* renamed from: na.h$a$a, reason: collision with other inner class name */
        public static final class C0201a implements h {
            @Override // na.h
            public final boolean P(lb.c cVar) {
                return b.b(this, cVar);
            }

            @Override // na.h
            public final boolean isEmpty() {
                return true;
            }

            @Override // java.lang.Iterable
            public final Iterator<c> iterator() {
                return u.f10172a;
            }

            @Override // na.h
            public final c n(lb.c fqName) {
                kotlin.jvm.internal.h.f(fqName, "fqName");
                return null;
            }

            public final String toString() {
                return "EMPTY";
            }
        }

        public static h a(List list) {
            return list.isEmpty() ? f10653a : new i(list);
        }
    }

    public static final class b {
        public static c a(h hVar, lb.c fqName) {
            c next;
            kotlin.jvm.internal.h.f(fqName, "fqName");
            Iterator<c> it = hVar.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (kotlin.jvm.internal.h.a(next.d(), fqName)) {
                    break;
                }
            }
            return next;
        }

        public static boolean b(h hVar, lb.c fqName) {
            kotlin.jvm.internal.h.f(fqName, "fqName");
            return hVar.n(fqName) != null;
        }
    }

    boolean P(lb.c cVar);

    boolean isEmpty();

    c n(lb.c cVar);
}
