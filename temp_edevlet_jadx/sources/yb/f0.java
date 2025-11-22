package yb;

import java.util.LinkedHashMap;
import java.util.List;
import ma.r0;

/* loaded from: classes2.dex */
public final class f0 implements i {

    /* renamed from: a, reason: collision with root package name */
    public final ib.c f19404a;

    /* renamed from: b, reason: collision with root package name */
    public final ib.a f19405b;

    /* renamed from: c, reason: collision with root package name */
    public final x9.l<lb.b, r0> f19406c;

    /* renamed from: d, reason: collision with root package name */
    public final LinkedHashMap f19407d;

    public f0(gb.l lVar, ib.d dVar, ib.a aVar, s sVar) {
        this.f19404a = dVar;
        this.f19405b = aVar;
        this.f19406c = sVar;
        List<gb.b> list = lVar.f6383g;
        kotlin.jvm.internal.h.e(list, "proto.class_List");
        List<gb.b> list2 = list;
        int r32 = b8.f.V(m9.n.Q0(list2));
        LinkedHashMap linkedHashMap = new LinkedHashMap(r32 < 16 ? 16 : r32);
        for (Object obj : list2) {
            linkedHashMap.put(a6.a.n(this.f19404a, ((gb.b) obj).f6211e), obj);
        }
        this.f19407d = linkedHashMap;
    }

    @Override // yb.i
    public final h a(lb.b classId) {
        kotlin.jvm.internal.h.f(classId, "classId");
        gb.b bVar = (gb.b) this.f19407d.get(classId);
        if (bVar == null) {
            return null;
        }
        return new h(this.f19404a, bVar, this.f19405b, this.f19406c.invoke(classId));
    }
}
