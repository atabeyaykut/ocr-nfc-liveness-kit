package oa;

import java.util.Collection;
import kotlin.jvm.internal.h;
import lb.f;
import m9.v;

/* loaded from: classes2.dex */
public interface a {

    /* renamed from: oa.a$a, reason: collision with other inner class name */
    public static final class C0210a implements a {

        /* renamed from: a, reason: collision with root package name */
        public static final C0210a f11264a = new C0210a();

        @Override // oa.a
        public final Collection a(ac.d dVar) {
            return v.f10173a;
        }

        @Override // oa.a
        public final Collection b(ac.d classDescriptor) {
            h.f(classDescriptor, "classDescriptor");
            return v.f10173a;
        }

        @Override // oa.a
        public final Collection d(f name, ac.d classDescriptor) {
            h.f(name, "name");
            h.f(classDescriptor, "classDescriptor");
            return v.f10173a;
        }

        @Override // oa.a
        public final Collection e(ac.d classDescriptor) {
            h.f(classDescriptor, "classDescriptor");
            return v.f10173a;
        }
    }

    Collection a(ac.d dVar);

    Collection b(ac.d dVar);

    Collection d(f fVar, ac.d dVar);

    Collection e(ac.d dVar);
}
