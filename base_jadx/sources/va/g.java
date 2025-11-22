package va;

import ja.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import m9.e0;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static final Map<lb.c, lb.f> f18343a;

    /* renamed from: b, reason: collision with root package name */
    public static final LinkedHashMap f18344b;

    /* renamed from: c, reason: collision with root package name */
    public static final Set<lb.c> f18345c;

    /* renamed from: d, reason: collision with root package name */
    public static final Set<lb.f> f18346d;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        lb.d dVar = o.a.f8380j;
        lb.c cVar = o.a.F;
        Map<lb.c, lb.f> mapR0 = e0.R0(new l9.g(b8.f.j(dVar, "name"), lb.f.t("name")), new l9.g(b8.f.j(dVar, "ordinal"), lb.f.t("ordinal")), new l9.g(o.a.B.c(lb.f.t("size")), lb.f.t("size")), new l9.g(cVar.c(lb.f.t("size")), lb.f.t("size")), new l9.g(b8.f.j(o.a.f8376e, "length"), lb.f.t("length")), new l9.g(cVar.c(lb.f.t("keys")), lb.f.t("keySet")), new l9.g(cVar.c(lb.f.t("values")), lb.f.t("values")), new l9.g(cVar.c(lb.f.t("entries")), lb.f.t("entrySet")));
        f18343a = mapR0;
        Set<Map.Entry<lb.c, lb.f>> setEntrySet = mapR0.entrySet();
        ArrayList arrayList = new ArrayList(m9.n.Q0(setEntrySet));
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            arrayList.add(new l9.g(((lb.c) entry.getKey()).f(), entry.getValue()));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            l9.g gVar = (l9.g) it2.next();
            lb.f fVar = (lb.f) gVar.f9583b;
            Object arrayList2 = linkedHashMap.get(fVar);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap.put(fVar, arrayList2);
            }
            ((List) arrayList2).add((lb.f) gVar.f9582a);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(b8.f.V(linkedHashMap.size()));
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            Object key = entry2.getKey();
            Iterable iterable = (Iterable) entry2.getValue();
            kotlin.jvm.internal.h.f(iterable, "<this>");
            linkedHashMap2.put(key, m9.t.v1(m9.t.x1(iterable)));
        }
        f18344b = linkedHashMap2;
        Set<lb.c> setKeySet = f18343a.keySet();
        f18345c = setKeySet;
        ArrayList arrayList3 = new ArrayList(m9.n.Q0(setKeySet));
        Iterator<T> it3 = setKeySet.iterator();
        while (it3.hasNext()) {
            arrayList3.add(((lb.c) it3.next()).f());
        }
        f18346d = m9.t.y1(arrayList3);
    }
}
