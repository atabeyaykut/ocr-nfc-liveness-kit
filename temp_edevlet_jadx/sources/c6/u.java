package c6;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class u<T> implements a7.b<Set<T>> {

    /* renamed from: b, reason: collision with root package name */
    public volatile Set<T> f2228b = null;

    /* renamed from: a, reason: collision with root package name */
    public volatile Set<a7.b<T>> f2227a = Collections.newSetFromMap(new ConcurrentHashMap());

    public u(Collection<a7.b<T>> collection) {
        this.f2227a.addAll(collection);
    }

    public final synchronized void a() {
        Iterator<a7.b<T>> it = this.f2227a.iterator();
        while (it.hasNext()) {
            this.f2228b.add(it.next().get());
        }
        this.f2227a = null;
    }

    @Override // a7.b
    public final Object get() {
        if (this.f2228b == null) {
            synchronized (this) {
                if (this.f2228b == null) {
                    this.f2228b = Collections.newSetFromMap(new ConcurrentHashMap());
                    a();
                }
            }
        }
        return Collections.unmodifiableSet(this.f2228b);
    }
}
