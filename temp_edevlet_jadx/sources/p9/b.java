package p9;

import kotlin.jvm.internal.h;
import p9.f;
import p9.f.b;
import x9.l;

/* loaded from: classes2.dex */
public abstract class b<B extends f.b, E extends B> implements f.c<E> {

    /* renamed from: a, reason: collision with root package name */
    public final l<f.b, E> f12862a;

    /* renamed from: b, reason: collision with root package name */
    public final f.c<?> f12863b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [p9.f$c<?>] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, x9.l<? super p9.f$b, ? extends E extends B>, x9.l<p9.f$b, E extends B>] */
    public b(f.c<B> baseKey, l<? super f.b, ? extends E> safeCast) {
        h.f(baseKey, "baseKey");
        h.f(safeCast, "safeCast");
        this.f12862a = safeCast;
        this.f12863b = baseKey instanceof b ? (f.c<B>) ((b) baseKey).f12863b : baseKey;
    }
}
