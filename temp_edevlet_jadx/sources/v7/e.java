package v7;

import androidx.annotation.GuardedBy;
import androidx.annotation.RecentlyNonNull;
import java.util.HashMap;

/* loaded from: classes2.dex */
public abstract class e<K, V> {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("instances")
    public final HashMap f18263a = new HashMap();

    @RecentlyNonNull
    public abstract V a(@RecentlyNonNull K k10);

    @RecentlyNonNull
    public final V b(@RecentlyNonNull K k10) {
        synchronized (this.f18263a) {
            if (this.f18263a.containsKey(k10)) {
                return (V) this.f18263a.get(k10);
            }
            V vA = a(k10);
            this.f18263a.put(k10, vA);
            return vA;
        }
    }
}
