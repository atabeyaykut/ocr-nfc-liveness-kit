package q1;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class i<T, Y> {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f13309a = new LinkedHashMap(100, 0.75f, true);

    /* renamed from: b, reason: collision with root package name */
    public final long f13310b;

    /* renamed from: c, reason: collision with root package name */
    public long f13311c;

    public static final class a<Y> {

        /* renamed from: a, reason: collision with root package name */
        public final Y f13312a;

        /* renamed from: b, reason: collision with root package name */
        public final int f13313b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(int r12, Object obj) {
            this.f13312a = obj;
            this.f13313b = r12;
        }
    }

    public i(long j10) {
        this.f13310b = j10;
    }

    @Nullable
    public final synchronized Y a(@NonNull T t10) {
        a aVar;
        aVar = (a) this.f13309a.get(t10);
        return aVar != null ? aVar.f13312a : null;
    }

    public int b(@Nullable Y y10) {
        return 1;
    }

    public void c(@NonNull T t10, @Nullable Y y10) {
    }

    @Nullable
    public final synchronized Y d(@NonNull T t10, @Nullable Y y10) {
        int r02 = b(y10);
        long j10 = r02;
        if (j10 >= this.f13310b) {
            c(t10, y10);
            return null;
        }
        if (y10 != null) {
            this.f13311c += j10;
        }
        a aVar = (a) this.f13309a.put(t10, y10 == null ? null : new a(r02, y10));
        if (aVar != null) {
            this.f13311c -= aVar.f13313b;
            if (!aVar.f13312a.equals(y10)) {
                c(t10, aVar.f13312a);
            }
        }
        e(this.f13310b);
        return aVar != null ? aVar.f13312a : null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final synchronized void e(long j10) {
        while (this.f13311c > j10) {
            Iterator it = this.f13309a.entrySet().iterator();
            Map.Entry entry = (Map.Entry) it.next();
            a aVar = (a) entry.getValue();
            this.f13311c -= aVar.f13313b;
            Object key = entry.getKey();
            it.remove();
            c(key, aVar.f13312a);
        }
    }
}
