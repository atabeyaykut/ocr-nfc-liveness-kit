package va;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import m9.e0;

/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public static final LinkedHashMap f18349a;

    /* renamed from: b, reason: collision with root package name */
    public static final Map<lb.c, lb.c> f18350b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        f18349a = linkedHashMap;
        b(lb.i.f9700q, a("java.util.ArrayList", "java.util.LinkedList"));
        b(lb.i.f9701r, a("java.util.HashSet", "java.util.TreeSet", "java.util.LinkedHashSet"));
        b(lb.i.f9702s, a("java.util.HashMap", "java.util.TreeMap", "java.util.LinkedHashMap", "java.util.concurrent.ConcurrentHashMap", "java.util.concurrent.ConcurrentSkipListMap"));
        b(lb.b.l(new lb.c("java.util.function.Function")), a("java.util.function.UnaryOperator"));
        b(lb.b.l(new lb.c("java.util.function.BiFunction")), a("java.util.function.BinaryOperator"));
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(new l9.g(((lb.b) entry.getKey()).b(), ((lb.b) entry.getValue()).b()));
        }
        f18350b = e0.S0(arrayList);
    }

    public static ArrayList a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(lb.b.l(new lb.c(str)));
        }
        return arrayList;
    }

    public static void b(lb.b bVar, ArrayList arrayList) {
        for (Object obj : arrayList) {
            f18349a.put(obj, bVar);
        }
    }
}
