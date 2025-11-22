package m9;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public class e0 extends b8.f {
    public static final Object Q0(Map map, Comparable comparable) {
        kotlin.jvm.internal.h.f(map, "<this>");
        if (map instanceof d0) {
            return ((d0) map).h();
        }
        Object obj = map.get(comparable);
        if (obj != null || map.containsKey(comparable)) {
            return obj;
        }
        throw new NoSuchElementException("Key " + comparable + " is missing in the map.");
    }

    public static final Map R0(l9.g... gVarArr) {
        if (gVarArr.length <= 0) {
            return w.f10174a;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(b8.f.V(gVarArr.length));
        for (l9.g gVar : gVarArr) {
            linkedHashMap.put(gVar.f9582a, gVar.f9583b);
        }
        return linkedHashMap;
    }

    public static final Map S0(ArrayList arrayList) {
        w wVar = w.f10174a;
        int size = arrayList.size();
        if (size == 0) {
            return wVar;
        }
        if (size == 1) {
            return b8.f.W((l9.g) arrayList.get(0));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(b8.f.V(arrayList.size()));
        U0(arrayList, linkedHashMap);
        return linkedHashMap;
    }

    public static final Map T0(Map map) {
        kotlin.jvm.internal.h.f(map, "<this>");
        int size = map.size();
        return size != 0 ? size != 1 ? V0(map) : b8.f.o0(map) : w.f10174a;
    }

    public static final void U0(ArrayList arrayList, LinkedHashMap linkedHashMap) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            l9.g gVar = (l9.g) it.next();
            linkedHashMap.put(gVar.f9582a, gVar.f9583b);
        }
    }

    public static final LinkedHashMap V0(Map map) {
        kotlin.jvm.internal.h.f(map, "<this>");
        return new LinkedHashMap(map);
    }
}
