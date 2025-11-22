package u2;

import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class g implements t6.d<y2.f> {

    /* renamed from: a, reason: collision with root package name */
    public static final g f17818a = new g();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f17819b;

    /* renamed from: c, reason: collision with root package name */
    public static final t6.c f17820c;

    static {
        w6.a aVar = new w6.a(1);
        HashMap map = new HashMap();
        map.put(w6.d.class, aVar);
        f17819b = new t6.c("startMs", androidx.appcompat.graphics.drawable.a.i(map));
        w6.a aVar2 = new w6.a(2);
        HashMap map2 = new HashMap();
        map2.put(w6.d.class, aVar2);
        f17820c = new t6.c("endMs", androidx.appcompat.graphics.drawable.a.i(map2));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        y2.f fVar = (y2.f) obj;
        t6.e eVar2 = eVar;
        eVar2.d(f17819b, fVar.f19310a);
        eVar2.d(f17820c, fVar.f19311b);
    }
}
