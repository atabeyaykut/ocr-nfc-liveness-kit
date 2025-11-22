package u2;

import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class d implements t6.d<y2.d> {

    /* renamed from: a, reason: collision with root package name */
    public static final d f17810a = new d();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f17811b;

    /* renamed from: c, reason: collision with root package name */
    public static final t6.c f17812c;

    static {
        w6.a aVar = new w6.a(1);
        HashMap map = new HashMap();
        map.put(w6.d.class, aVar);
        f17811b = new t6.c("logSource", androidx.appcompat.graphics.drawable.a.i(map));
        w6.a aVar2 = new w6.a(2);
        HashMap map2 = new HashMap();
        map2.put(w6.d.class, aVar2);
        f17812c = new t6.c("logEventDropped", androidx.appcompat.graphics.drawable.a.i(map2));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        y2.d dVar = (y2.d) obj;
        t6.e eVar2 = eVar;
        eVar2.a(f17811b, dVar.f19306a);
        eVar2.a(f17812c, dVar.f19307b);
    }
}
