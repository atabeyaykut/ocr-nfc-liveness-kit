package eb;

import jb.a;
import kb.d;

/* loaded from: classes2.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final String f5237a;

    public static final class a {
        public static v a(String name, String desc) {
            kotlin.jvm.internal.h.f(name, "name");
            kotlin.jvm.internal.h.f(desc, "desc");
            return new v(name + '#' + desc);
        }

        public static v b(kb.d dVar) {
            if (dVar instanceof d.b) {
                return d(dVar.c(), dVar.b());
            }
            if (dVar instanceof d.a) {
                return a(dVar.c(), dVar.b());
            }
            throw new j7.p();
        }

        public static v c(ib.c nameResolver, a.b bVar) {
            kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
            return d(nameResolver.getString(bVar.f8437c), nameResolver.getString(bVar.f8438d));
        }

        public static v d(String name, String desc) {
            kotlin.jvm.internal.h.f(name, "name");
            kotlin.jvm.internal.h.f(desc, "desc");
            return new v(name.concat(desc));
        }

        public static v e(v signature, int r32) {
            kotlin.jvm.internal.h.f(signature, "signature");
            return new v(signature.f5237a + '@' + r32);
        }
    }

    public v(String str) {
        this.f5237a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof v) && kotlin.jvm.internal.h.a(this.f5237a, ((v) obj).f5237a);
    }

    public final int hashCode() {
        return this.f5237a.hashCode();
    }

    public final String toString() {
        return android.support.v4.media.a.h(new StringBuilder("MemberSignature(signature="), this.f5237a, ')');
    }
}
