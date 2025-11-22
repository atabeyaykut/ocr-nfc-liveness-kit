package rc;

import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final Set<b> f14439a;

    /* renamed from: b, reason: collision with root package name */
    public final cd.c f14440b;

    /* renamed from: d, reason: collision with root package name */
    public static final a f14438d = new a();

    /* renamed from: c, reason: collision with root package name */
    public static final f f14437c = new f(m9.t.y1(new ArrayList()), null);

    public static final class a {
    }

    public static final class b {
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            bVar.getClass();
            if (!kotlin.jvm.internal.h.a(null, null)) {
                return false;
            }
            bVar.getClass();
            if (!kotlin.jvm.internal.h.a(null, null)) {
                return false;
            }
            bVar.getClass();
            return !(kotlin.jvm.internal.h.a(null, null) ^ true);
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            throw null;
        }
    }

    public f(Set<b> pins, cd.c cVar) {
        kotlin.jvm.internal.h.f(pins, "pins");
        this.f14439a = pins;
        this.f14440b = cVar;
    }

    public final void a(String hostname, x9.a<? extends List<? extends X509Certificate>> aVar) {
        kotlin.jvm.internal.h.f(hostname, "hostname");
        Iterator<T> it = this.f14439a.iterator();
        if (it.hasNext()) {
            ((b) it.next()).getClass();
            mc.j.D(null, "**.", false);
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (kotlin.jvm.internal.h.a(fVar.f14439a, this.f14439a) && kotlin.jvm.internal.h.a(fVar.f14440b, this.f14440b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int r02 = (this.f14439a.hashCode() + 1517) * 41;
        cd.c cVar = this.f14440b;
        return r02 + (cVar != null ? cVar.hashCode() : 0);
    }
}
