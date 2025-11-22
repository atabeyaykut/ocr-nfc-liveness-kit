package m9;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public final class g0 extends x5.a {
    public static final LinkedHashSet F(Set set, Iterable elements) {
        kotlin.jvm.internal.h.f(set, "<this>");
        kotlin.jvm.internal.h.f(elements, "elements");
        Integer numValueOf = elements instanceof Collection ? Integer.valueOf(((Collection) elements).size()) : null;
        LinkedHashSet linkedHashSet = new LinkedHashSet(b8.f.V(numValueOf != null ? set.size() + numValueOf.intValue() : set.size() * 2));
        linkedHashSet.addAll(set);
        p.T0(elements, linkedHashSet);
        return linkedHashSet;
    }

    public static final LinkedHashSet G(Set set, Object obj) {
        kotlin.jvm.internal.h.f(set, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet(b8.f.V(set.size() + 1));
        linkedHashSet.addAll(set);
        linkedHashSet.add(obj);
        return linkedHashSet;
    }
}
