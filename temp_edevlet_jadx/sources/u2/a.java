package u2;

import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class a implements t6.d<y2.a> {

    /* renamed from: a, reason: collision with root package name */
    public static final a f17800a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f17801b;

    /* renamed from: c, reason: collision with root package name */
    public static final t6.c f17802c;

    /* renamed from: d, reason: collision with root package name */
    public static final t6.c f17803d;

    /* renamed from: e, reason: collision with root package name */
    public static final t6.c f17804e;

    static {
        w6.a aVar = new w6.a(1);
        HashMap map = new HashMap();
        map.put(w6.d.class, aVar);
        f17801b = new t6.c("window", androidx.appcompat.graphics.drawable.a.i(map));
        w6.a aVar2 = new w6.a(2);
        HashMap map2 = new HashMap();
        map2.put(w6.d.class, aVar2);
        f17802c = new t6.c("logSourceMetrics", androidx.appcompat.graphics.drawable.a.i(map2));
        w6.a aVar3 = new w6.a(3);
        HashMap map3 = new HashMap();
        map3.put(w6.d.class, aVar3);
        f17803d = new t6.c("globalMetrics", androidx.appcompat.graphics.drawable.a.i(map3));
        w6.a aVar4 = new w6.a(4);
        HashMap map4 = new HashMap();
        map4.put(w6.d.class, aVar4);
        f17804e = new t6.c("appNamespace", androidx.appcompat.graphics.drawable.a.i(map4));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        y2.a aVar = (y2.a) obj;
        t6.e eVar2 = eVar;
        eVar2.a(f17801b, aVar.f19286a);
        eVar2.a(f17802c, aVar.f19287b);
        eVar2.a(f17803d, aVar.f19288c);
        eVar2.a(f17804e, aVar.f19289d);
    }
}
