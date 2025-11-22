package oa;

import ac.l;
import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public interface c {

    public static final class a implements c {

        /* renamed from: a, reason: collision with root package name */
        public static final a f11265a = new a();

        @Override // oa.c
        public final boolean c(ac.d classDescriptor, l lVar) {
            h.f(classDescriptor, "classDescriptor");
            return true;
        }
    }

    public static final class b implements c {

        /* renamed from: a, reason: collision with root package name */
        public static final b f11266a = new b();

        @Override // oa.c
        public final boolean c(ac.d classDescriptor, l lVar) {
            h.f(classDescriptor, "classDescriptor");
            return !lVar.getAnnotations().P(d.f11267a);
        }
    }

    boolean c(ac.d dVar, l lVar);
}
