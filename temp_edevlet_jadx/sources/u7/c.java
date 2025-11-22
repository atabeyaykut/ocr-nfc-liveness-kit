package u7;

import androidx.annotation.RecentlyNonNull;
import java.util.HashMap;
import java.util.Set;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f17902a = new HashMap();

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final Class<? extends b> f17903a = u7.a.class;

        /* renamed from: b, reason: collision with root package name */
        public final a7.b<Object> f17904b;

        public a(@RecentlyNonNull a7.b bVar) {
            this.f17904b = bVar;
        }
    }

    public c(@RecentlyNonNull Set<a> set) {
        for (a aVar : set) {
            this.f17902a.put(aVar.f17903a, aVar.f17904b);
        }
    }
}
