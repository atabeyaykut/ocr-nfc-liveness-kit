package ga;

import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class c<V> extends c6.a {

    /* renamed from: a, reason: collision with root package name */
    public final x9.l<Class<?>, V> f5966a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap<Class<?>, V> f5967b;

    /* JADX WARN: Multi-variable type inference failed */
    public c(x9.l<? super Class<?>, ? extends V> compute) {
        kotlin.jvm.internal.h.f(compute, "compute");
        this.f5966a = compute;
        this.f5967b = new ConcurrentHashMap<>();
    }
}
