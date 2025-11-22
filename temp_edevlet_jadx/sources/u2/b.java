package u2;

import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class b implements t6.d<y2.b> {

    /* renamed from: a, reason: collision with root package name */
    public static final b f17805a = new b();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f17806b;

    static {
        w6.a aVar = new w6.a(1);
        HashMap map = new HashMap();
        map.put(w6.d.class, aVar);
        f17806b = new t6.c("storageMetrics", androidx.appcompat.graphics.drawable.a.i(map));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        eVar.a(f17806b, ((y2.b) obj).f19294a);
    }
}
