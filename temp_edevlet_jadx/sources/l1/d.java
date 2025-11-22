package l1;

import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import q1.k;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference<k> f9327a = new AtomicReference<>();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayMap<k, List<Class<?>>> f9328b = new ArrayMap<>();

    public final void a(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull Class<?> cls3, @NonNull List<Class<?>> list) {
        synchronized (this.f9328b) {
            this.f9328b.put(new k(cls, cls2, cls3), list);
        }
    }
}
