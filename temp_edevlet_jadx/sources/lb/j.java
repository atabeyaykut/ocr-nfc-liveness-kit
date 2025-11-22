package lb;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import m9.n;

/* loaded from: classes2.dex */
public final class j {
    static {
        new c("java.lang").c(f.t("annotation"));
    }

    public static final b a(String str) {
        c cVar = i.f9685a;
        return new b(i.f9685a, f.t(str));
    }

    public static final b b(String str) {
        c cVar = i.f9685a;
        return new b(i.f9687c, f.t(str));
    }

    public static final LinkedHashMap c(LinkedHashMap linkedHashMap) {
        Set<Map.Entry> setEntrySet = linkedHashMap.entrySet();
        int r02 = b8.f.V(n.Q0(setEntrySet));
        if (r02 < 16) {
            r02 = 16;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(r02);
        for (Map.Entry entry : setEntrySet) {
            linkedHashMap2.put(entry.getValue(), entry.getKey());
        }
        return linkedHashMap2;
    }

    public static final b d(f fVar) {
        c cVar = i.f9685a;
        b bVar = i.f9691h;
        return new b(bVar.h(), f.t(fVar.q() + bVar.j().q()));
    }

    public static final void e(String str) {
        c cVar = i.f9685a;
        new b(i.f9688d, f.t(str));
    }

    public static final b f(String str) {
        c cVar = i.f9685a;
        return new b(i.f9686b, f.t(str));
    }

    public static final b g(b bVar) {
        c cVar = i.f9685a;
        return new b(i.f9685a, f.t("U" + bVar.j().q()));
    }
}
