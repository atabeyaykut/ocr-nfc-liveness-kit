package dc;

import cc.e0;
import java.util.Collection;
import ma.b0;

/* loaded from: classes2.dex */
public abstract class f extends c6.a {

    public static final class a extends f {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4827a = new a();

        @Override // c6.a
        public final e0 r(fc.h type) {
            kotlin.jvm.internal.h.f(type, "type");
            return (e0) type;
        }

        @Override // dc.f
        public final void t(lb.b bVar) {
        }

        @Override // dc.f
        public final void u(b0 b0Var) {
        }

        @Override // dc.f
        public final void v(ma.g descriptor) {
            kotlin.jvm.internal.h.f(descriptor, "descriptor");
        }

        @Override // dc.f
        public final Collection<e0> w(ma.e classDescriptor) {
            kotlin.jvm.internal.h.f(classDescriptor, "classDescriptor");
            Collection<e0> collectionL = classDescriptor.i().l();
            kotlin.jvm.internal.h.e(collectionL, "classDescriptor.typeConstructor.supertypes");
            return collectionL;
        }

        @Override // dc.f
        public final e0 x(fc.h type) {
            kotlin.jvm.internal.h.f(type, "type");
            return (e0) type;
        }
    }

    public abstract void t(lb.b bVar);

    public abstract void u(b0 b0Var);

    public abstract void v(ma.g gVar);

    public abstract Collection<e0> w(ma.e eVar);

    public abstract e0 x(fc.h hVar);
}
