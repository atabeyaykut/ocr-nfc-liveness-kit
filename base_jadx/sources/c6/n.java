package c6;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes2.dex */
public final class n {

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final d<?> f2210a;

        /* renamed from: b, reason: collision with root package name */
        public final HashSet f2211b = new HashSet();

        /* renamed from: c, reason: collision with root package name */
        public final HashSet f2212c = new HashSet();

        public a(d<?> dVar) {
            this.f2210a = dVar;
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final Class<?> f2213a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f2214b;

        public b() {
            throw null;
        }

        public b(Class cls, boolean z10) {
            this.f2213a = cls;
            this.f2214b = z10;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return bVar.f2213a.equals(this.f2213a) && bVar.f2214b == this.f2214b;
        }

        public final int hashCode() {
            return ((this.f2213a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f2214b).hashCode();
        }
    }

    public static void a(ArrayList arrayList) {
        HashMap map = new HashMap(arrayList.size());
        Iterator it = arrayList.iterator();
        while (true) {
            int r32 = 0;
            if (!it.hasNext()) {
                Iterator it2 = map.values().iterator();
                while (it2.hasNext()) {
                    for (a aVar : (Set) it2.next()) {
                        for (o oVar : aVar.f2210a.f2189b) {
                            if (oVar.f2217c == 0) {
                                Set<a> set = (Set) map.get(new b(oVar.f2215a, oVar.f2216b == 2));
                                if (set != null) {
                                    for (a aVar2 : set) {
                                        aVar.f2211b.add(aVar2);
                                        aVar2.f2212c.add(aVar);
                                    }
                                }
                            }
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                Iterator it3 = map.values().iterator();
                while (it3.hasNext()) {
                    hashSet.addAll((Set) it3.next());
                }
                HashSet hashSet2 = new HashSet();
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    a aVar3 = (a) it4.next();
                    if (aVar3.f2212c.isEmpty()) {
                        hashSet2.add(aVar3);
                    }
                }
                while (!hashSet2.isEmpty()) {
                    a aVar4 = (a) hashSet2.iterator().next();
                    hashSet2.remove(aVar4);
                    r32++;
                    Iterator it5 = aVar4.f2211b.iterator();
                    while (it5.hasNext()) {
                        a aVar5 = (a) it5.next();
                        aVar5.f2212c.remove(aVar4);
                        if (aVar5.f2212c.isEmpty()) {
                            hashSet2.add(aVar5);
                        }
                    }
                }
                if (r32 == arrayList.size()) {
                    return;
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it6 = hashSet.iterator();
                while (it6.hasNext()) {
                    a aVar6 = (a) it6.next();
                    if (!aVar6.f2212c.isEmpty() && !aVar6.f2211b.isEmpty()) {
                        arrayList2.add(aVar6.f2210a);
                    }
                }
                throw new p(arrayList2);
            }
            d dVar = (d) it.next();
            a aVar7 = new a(dVar);
            Iterator it7 = dVar.f2188a.iterator();
            while (it7.hasNext()) {
                Class cls = (Class) it7.next();
                boolean z10 = !(dVar.f2191d == 0);
                b bVar = new b(cls, z10);
                if (!map.containsKey(bVar)) {
                    map.put(bVar, new HashSet());
                }
                Set set2 = (Set) map.get(bVar);
                if (!set2.isEmpty() && !z10) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                }
                set2.add(aVar7);
            }
        }
    }
}
