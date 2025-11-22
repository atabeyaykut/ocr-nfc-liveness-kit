package u2;

import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class f implements t6.d<y2.e> {

    /* renamed from: a, reason: collision with root package name */
    public static final f f17815a = new f();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f17816b;

    /* renamed from: c, reason: collision with root package name */
    public static final t6.c f17817c;

    static {
        w6.a aVar = new w6.a(1);
        HashMap map = new HashMap();
        map.put(w6.d.class, aVar);
        f17816b = new t6.c("currentCacheSizeBytes", androidx.appcompat.graphics.drawable.a.i(map));
        w6.a aVar2 = new w6.a(2);
        HashMap map2 = new HashMap();
        map2.put(w6.d.class, aVar2);
        f17817c = new t6.c("maxCacheSizeBytes", androidx.appcompat.graphics.drawable.a.i(map2));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        y2.e eVar2 = (y2.e) obj;
        t6.e eVar3 = eVar;
        eVar3.d(f17816b, eVar2.f19308a);
        eVar3.d(f17817c, eVar2.f19309b);
    }
}
