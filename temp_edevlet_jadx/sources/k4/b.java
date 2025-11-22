package k4;

import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class b implements t6.d<h7.b> {

    /* renamed from: a, reason: collision with root package name */
    public static final b f8739a = new b();

    /* renamed from: b, reason: collision with root package name */
    public static final t6.c f8740b;

    static {
        i iVar = new i(1);
        HashMap map = new HashMap();
        map.put(m.class, iVar);
        f8740b = new t6.c("messagingClientEvent", androidx.appcompat.graphics.drawable.a.i(map));
    }

    @Override // t6.a
    public final void a(Object obj, t6.e eVar) throws IOException {
        eVar.a(f8740b, ((h7.b) obj).f7021a);
    }
}
