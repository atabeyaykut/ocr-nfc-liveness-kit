package c6;

import androidx.annotation.GuardedBy;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class r implements x6.d, x6.c {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    public final HashMap f2221a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    public ArrayDeque f2222b = new ArrayDeque();

    /* renamed from: c, reason: collision with root package name */
    public final Executor f2223c;

    public r(Executor executor) {
        this.f2223c = executor;
    }

    @Override // x6.d
    public final synchronized void a(Executor executor, x6.b bVar) {
        executor.getClass();
        if (!this.f2221a.containsKey(x5.a.class)) {
            this.f2221a.put(x5.a.class, new ConcurrentHashMap());
        }
        ((ConcurrentHashMap) this.f2221a.get(x5.a.class)).put(bVar, executor);
    }

    @Override // x6.d
    public final void b(g7.u uVar) {
        a(this.f2223c, uVar);
    }

    public final synchronized Set<Map.Entry<x6.b<Object>, Executor>> c(x6.a<?> aVar) {
        Map map;
        HashMap map2 = this.f2221a;
        aVar.getClass();
        map = (Map) map2.get(null);
        return map == null ? Collections.emptySet() : map.entrySet();
    }

    public final void d(final x6.a<?> aVar) {
        aVar.getClass();
        synchronized (this) {
            ArrayDeque arrayDeque = this.f2222b;
            if (arrayDeque != null) {
                arrayDeque.add(aVar);
                return;
            }
            for (final Map.Entry<x6.b<Object>, Executor> entry : c(aVar)) {
                entry.getValue().execute(new Runnable() { // from class: c6.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((x6.b) entry.getKey()).a(aVar);
                    }
                });
            }
        }
    }
}
