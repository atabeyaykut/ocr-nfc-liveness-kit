package w6;

import androidx.annotation.NonNull;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final Map<Class<?>, t6.d<?>> f18809a;

    /* renamed from: b, reason: collision with root package name */
    public final Map<Class<?>, t6.f<?>> f18810b;

    /* renamed from: c, reason: collision with root package name */
    public final t6.d<Object> f18811c;

    public static final class a implements u6.a<a> {

        /* renamed from: a, reason: collision with root package name */
        public static final g f18812a = new t6.d() { // from class: w6.g
            @Override // t6.a
            public final void a(Object obj, t6.e eVar) {
                throw new t6.b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
            }
        };
    }

    public h(HashMap map, HashMap map2, g gVar) {
        this.f18809a = map;
        this.f18810b = map2;
        this.f18811c = gVar;
    }

    public final void a(@NonNull ByteArrayOutputStream byteArrayOutputStream, @NonNull y2.a aVar) throws IOException {
        Map<Class<?>, t6.d<?>> map = this.f18809a;
        f fVar = new f(byteArrayOutputStream, map, this.f18810b, this.f18811c);
        t6.d<?> dVar = map.get(y2.a.class);
        if (dVar == null) {
            throw new t6.b(androidx.appcompat.graphics.drawable.a.g("No encoder for ", y2.a.class));
        }
        dVar.a(aVar, fVar);
    }
}
