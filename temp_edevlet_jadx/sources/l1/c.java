package l1;

import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import j1.g;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
import x0.k;
import x0.u;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: c, reason: collision with root package name */
    public static final u<?, ?, ?> f9324c = new u<>(Object.class, Object.class, Object.class, Collections.singletonList(new k(Object.class, Object.class, Object.class, Collections.emptyList(), new g(), null)), null);

    /* renamed from: a, reason: collision with root package name */
    public final ArrayMap<q1.k, u<?, ?, ?>> f9325a = new ArrayMap<>();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReference<q1.k> f9326b = new AtomicReference<>();

    public final void a(Class<?> cls, Class<?> cls2, Class<?> cls3, @Nullable u<?, ?, ?> uVar) {
        synchronized (this.f9325a) {
            ArrayMap<q1.k, u<?, ?, ?>> arrayMap = this.f9325a;
            q1.k kVar = new q1.k(cls, cls2, cls3);
            if (uVar == null) {
                uVar = f9324c;
            }
            arrayMap.put(kVar, uVar);
        }
    }
}
