package u2;

import java.util.HashMap;
import w6.h;

/* loaded from: classes.dex */
public abstract class p {

    /* renamed from: a, reason: collision with root package name */
    public static final w6.h f17850a;

    static {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        w6.g gVar = h.a.f18812a;
        map.put(p.class, e.f17813a);
        map2.remove(p.class);
        map.put(y2.a.class, a.f17800a);
        map2.remove(y2.a.class);
        map.put(y2.f.class, g.f17818a);
        map2.remove(y2.f.class);
        map.put(y2.d.class, d.f17810a);
        map2.remove(y2.d.class);
        map.put(y2.c.class, c.f17807a);
        map2.remove(y2.c.class);
        map.put(y2.b.class, b.f17805a);
        map2.remove(y2.b.class);
        map.put(y2.e.class, f.f17815a);
        map2.remove(y2.e.class);
        f17850a = new w6.h(new HashMap(map), new HashMap(map2), gVar);
    }

    public abstract y2.a a();
}
