package u2;

import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class c implements t6.d<y2.c> {

    /* renamed from: a, reason: collision with root package name */
    public static final c f17807a = new c();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f17808b;

    /* renamed from: c, reason: collision with root package name */
    public static final t6.c f17809c;

    static {
        w6.a aVar = new w6.a(1);
        HashMap map = new HashMap();
        map.put(w6.d.class, aVar);
        f17808b = new t6.c("eventsDroppedCount", androidx.appcompat.graphics.drawable.a.i(map));
        w6.a aVar2 = new w6.a(3);
        HashMap map2 = new HashMap();
        map2.put(w6.d.class, aVar2);
        f17809c = new t6.c("reason", androidx.appcompat.graphics.drawable.a.i(map2));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        y2.c cVar = (y2.c) obj;
        t6.e eVar2 = eVar;
        eVar2.d(f17808b, cVar.f19295a);
        eVar2.a(f17809c, cVar.f19296b);
    }
}
