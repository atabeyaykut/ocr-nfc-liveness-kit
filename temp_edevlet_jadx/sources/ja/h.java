package ja;

import cc.m0;
import ja.k;
import java.util.EnumMap;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class h implements x9.a<k.a> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f8322a;

    public h(k kVar) {
        this.f8322a = kVar;
    }

    @Override // x9.a
    public final k.a invoke() {
        EnumMap enumMap = new EnumMap(l.class);
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        for (l lVar : l.values()) {
            String strO = lVar.f8343a.o();
            k kVar = this.f8322a;
            m0 m0VarB = k.b(kVar, strO);
            m0 m0VarB2 = k.b(kVar, lVar.f8344b.o());
            enumMap.put((EnumMap) lVar, (l) m0VarB2);
            map.put(m0VarB, m0VarB2);
            map2.put(m0VarB2, m0VarB);
        }
        return new k.a(enumMap, map, map2);
    }
}
