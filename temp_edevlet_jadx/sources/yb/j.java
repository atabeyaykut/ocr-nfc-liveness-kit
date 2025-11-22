package yb;

import ja.o;
import java.util.Set;

/* loaded from: classes2.dex */
public final class j {

    /* renamed from: c, reason: collision with root package name */
    public static final Set<lb.b> f19424c = x5.a.r(lb.b.l(o.a.f8373c.h()));

    /* renamed from: a, reason: collision with root package name */
    public final l f19425a;

    /* renamed from: b, reason: collision with root package name */
    public final bc.h f19426b;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final lb.b f19427a;

        /* renamed from: b, reason: collision with root package name */
        public final h f19428b;

        public a(lb.b classId, h hVar) {
            kotlin.jvm.internal.h.f(classId, "classId");
            this.f19427a = classId;
            this.f19428b = hVar;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                if (kotlin.jvm.internal.h.a(this.f19427a, ((a) obj).f19427a)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return this.f19427a.hashCode();
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.l<a, ma.e> {
        public b() {
            super(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:37:0x00c3  */
        @Override // x9.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final ma.e invoke(yb.j.a r15) {
            /*
                Method dump skipped, instructions count: 252
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: yb.j.b.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public j(l components) {
        kotlin.jvm.internal.h.f(components, "components");
        this.f19425a = components;
        this.f19426b = components.f19442a.e(new b());
    }

    public final ma.e a(lb.b classId, h hVar) {
        kotlin.jvm.internal.h.f(classId, "classId");
        return (ma.e) this.f19426b.invoke(new a(classId, hVar));
    }
}
