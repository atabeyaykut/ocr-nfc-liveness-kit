package mb;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import mb.h;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f10273b = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Map<a, h.e<?, ?>> f10274a;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final Object f10275a;

        /* renamed from: b, reason: collision with root package name */
        public final int f10276b;

        public a(int r12, p pVar) {
            this.f10275a = pVar;
            this.f10276b = r12;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f10275a == aVar.f10275a && this.f10276b == aVar.f10276b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f10275a) * 65535) + this.f10276b;
        }
    }

    static {
        new f(0);
    }

    public f() {
        this.f10274a = new HashMap();
    }

    public f(int r12) {
        this.f10274a = Collections.emptyMap();
    }

    public final void a(h.e<?, ?> eVar) {
        this.f10274a.put(new a(eVar.f10295d.f10288a, eVar.f10292a), eVar);
    }
}
