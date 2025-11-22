package k4;

import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static final q f8743a;

    static {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        p pVar = p.f8761a;
        map.put(d.class, c.f8741a);
        map2.remove(d.class);
        map.put(h7.b.class, b.f8739a);
        map2.remove(h7.b.class);
        map.put(h7.a.class, a.f8724a);
        map2.remove(h7.a.class);
        f8743a = new q(new HashMap(map), new HashMap(map2), pVar);
    }

    public abstract h7.b a();
}
