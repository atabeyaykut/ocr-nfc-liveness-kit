package za;

import java.util.Collection;
import java.util.Set;

/* loaded from: classes2.dex */
public interface b {

    public static final class a implements b {

        /* renamed from: a, reason: collision with root package name */
        public static final a f19890a = new a();

        @Override // za.b
        public final Set<lb.f> a() {
            return m9.x.f10175a;
        }

        @Override // za.b
        public final Collection b(lb.f name) {
            kotlin.jvm.internal.h.f(name, "name");
            return m9.v.f10173a;
        }

        @Override // za.b
        public final cb.n c(lb.f name) {
            kotlin.jvm.internal.h.f(name, "name");
            return null;
        }

        @Override // za.b
        public final cb.v d(lb.f name) {
            kotlin.jvm.internal.h.f(name, "name");
            return null;
        }

        @Override // za.b
        public final Set<lb.f> e() {
            return m9.x.f10175a;
        }

        @Override // za.b
        public final Set<lb.f> f() {
            return m9.x.f10175a;
        }
    }

    Set<lb.f> a();

    Collection<cb.q> b(lb.f fVar);

    cb.n c(lb.f fVar);

    cb.v d(lb.f fVar);

    Set<lb.f> e();

    Set<lb.f> f();
}
