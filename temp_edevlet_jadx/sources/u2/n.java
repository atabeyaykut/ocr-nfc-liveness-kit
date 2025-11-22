package u2;

import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;
import u2.h;

/* loaded from: classes.dex */
public abstract class n {

    public static abstract class a {
        public final void a(String str, String str2) {
            Map<String, String> map = ((h.a) this).f;
            if (map == null) {
                throw new IllegalStateException("Property \"autoMetadata\" has not been set");
            }
            map.put(str, str2);
        }
    }

    public final String a(String str) {
        String str2 = b().get(str);
        return str2 == null ? "" : str2;
    }

    public abstract Map<String, String> b();

    @Nullable
    public abstract Integer c();

    public abstract m d();

    public abstract long e();

    public final int f(String str) {
        String str2 = b().get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    public abstract String g();

    public abstract long h();

    public final h.a i() {
        h.a aVar = new h.a();
        aVar.d(g());
        aVar.f17827b = c();
        aVar.c(d());
        aVar.f17829d = Long.valueOf(e());
        aVar.f17830e = Long.valueOf(h());
        aVar.f = new HashMap(b());
        return aVar;
    }
}
