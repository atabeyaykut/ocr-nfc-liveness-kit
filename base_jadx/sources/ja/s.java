package ja;

import cc.e0;
import cc.q1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import m9.t;

/* loaded from: classes2.dex */
public final class s {

    /* renamed from: a, reason: collision with root package name */
    public static final Set<lb.f> f8406a;

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap<lb.b, lb.b> f8407b;

    /* renamed from: c, reason: collision with root package name */
    public static final HashMap<lb.b, lb.b> f8408c;

    /* renamed from: d, reason: collision with root package name */
    public static final LinkedHashSet f8409d;

    static {
        r[] rVarArrValues = r.values();
        ArrayList arrayList = new ArrayList(rVarArrValues.length);
        for (r rVar : rVarArrValues) {
            arrayList.add(rVar.f8404b);
        }
        f8406a = t.y1(arrayList);
        q[] qVarArrValues = q.values();
        ArrayList arrayList2 = new ArrayList(qVarArrValues.length);
        for (q qVar : qVarArrValues) {
            arrayList2.add(qVar.f8401a);
        }
        t.y1(arrayList2);
        f8407b = new HashMap<>();
        f8408c = new HashMap<>();
        l9.g[] gVarArr = {new l9.g(q.UBYTEARRAY, lb.f.t("ubyteArrayOf")), new l9.g(q.USHORTARRAY, lb.f.t("ushortArrayOf")), new l9.g(q.UINTARRAY, lb.f.t("uintArrayOf")), new l9.g(q.ULONGARRAY, lb.f.t("ulongArrayOf"))};
        HashMap map = new HashMap(b8.f.V(4));
        for (int r42 = 0; r42 < 4; r42++) {
            l9.g gVar = gVarArr[r42];
            map.put(gVar.f9582a, gVar.f9583b);
        }
        r[] rVarArrValues2 = r.values();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (r rVar2 : rVarArrValues2) {
            linkedHashSet.add(rVar2.f8405c.j());
        }
        f8409d = linkedHashSet;
        for (r rVar3 : r.values()) {
            HashMap<lb.b, lb.b> map2 = f8407b;
            lb.b bVar = rVar3.f8405c;
            lb.b bVar2 = rVar3.f8403a;
            map2.put(bVar, bVar2);
            f8408c.put(bVar2, rVar3.f8405c);
        }
    }

    public static final boolean a(e0 e0Var) {
        ma.g gVarN;
        if (q1.q(e0Var) || (gVarN = e0Var.M0().n()) == null) {
            return false;
        }
        ma.j jVarB = gVarN.b();
        return (jVarB instanceof ma.e0) && kotlin.jvm.internal.h.a(((ma.e0) jVarB).d(), o.f8364k) && f8406a.contains(gVarN.getName());
    }
}
