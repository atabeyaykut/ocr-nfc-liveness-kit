package k4;

import androidx.annotation.NonNull;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final Map<Class<?>, t6.d<?>> f8762a;

    /* renamed from: b, reason: collision with root package name */
    public final Map<Class<?>, t6.f<?>> f8763b;

    /* renamed from: c, reason: collision with root package name */
    public final t6.d<Object> f8764c;

    public q(HashMap map, HashMap map2, p pVar) {
        this.f8762a = map;
        this.f8763b = map2;
        this.f8764c = pVar;
    }

    public final void a(@NonNull ByteArrayOutputStream byteArrayOutputStream, @NonNull Object obj) throws IOException {
        Map<Class<?>, t6.d<?>> map = this.f8762a;
        o oVar = new o(byteArrayOutputStream, map, this.f8763b, this.f8764c);
        if (obj == null) {
            return;
        }
        t6.d<?> dVar = map.get(obj.getClass());
        if (dVar == null) {
            throw new t6.b("No encoder for ".concat(String.valueOf(obj.getClass())));
        }
        dVar.a(obj, oVar);
    }
}
