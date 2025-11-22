package p;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import m9.e0;
import m9.w;

/* loaded from: classes.dex */
public final class l implements Iterable<l9.g<? extends String, ? extends b>>, y9.a {

    /* renamed from: b, reason: collision with root package name */
    public static final l f12180b = new l();

    /* renamed from: a, reason: collision with root package name */
    public final Map<String, b> f12181a;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final LinkedHashMap f12182a;

        public a(l lVar) {
            this.f12182a = e0.V0(lVar.f12181a);
        }
    }

    public static final class b {
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                b bVar = (b) obj;
                bVar.getClass();
                if (kotlin.jvm.internal.h.a(null, null)) {
                    bVar.getClass();
                    if (kotlin.jvm.internal.h.a(null, null)) {
                        return true;
                    }
                }
            }
            return false;
        }

        public final int hashCode() {
            return 0;
        }

        public final String toString() {
            return "Entry(value=null, memoryCacheKey=null)";
        }
    }

    public l() {
        this(w.f10174a);
    }

    public l(Map<String, b> map) {
        this.f12181a = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof l) {
            if (kotlin.jvm.internal.h.a(this.f12181a, ((l) obj).f12181a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f12181a.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator<l9.g<? extends String, ? extends b>> iterator() {
        Map<String, b> map = this.f12181a;
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, b> entry : map.entrySet()) {
            arrayList.add(new l9.g(entry.getKey(), entry.getValue()));
        }
        return arrayList.iterator();
    }

    public final String toString() {
        return "Parameters(entries=" + this.f12181a + ')';
    }
}
