package l9;

import c5.w;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public final class i<T> implements e<T>, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater<i<?>, Object> f9585c = AtomicReferenceFieldUpdater.newUpdater(i.class, Object.class, "b");

    /* renamed from: a, reason: collision with root package name */
    public volatile x9.a<? extends T> f9586a;

    /* renamed from: b, reason: collision with root package name */
    public volatile Object f9587b;

    public i(x9.a<? extends T> initializer) {
        kotlin.jvm.internal.h.f(initializer, "initializer");
        this.f9586a = initializer;
        this.f9587b = w.f;
    }

    @Override // l9.e
    public final T getValue() {
        boolean z10;
        T t10 = (T) this.f9587b;
        w wVar = w.f;
        if (t10 != wVar) {
            return t10;
        }
        x9.a<? extends T> aVar = this.f9586a;
        if (aVar != null) {
            T tInvoke = aVar.invoke();
            AtomicReferenceFieldUpdater<i<?>, Object> atomicReferenceFieldUpdater = f9585c;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, wVar, tInvoke)) {
                    z10 = true;
                    break;
                }
                if (atomicReferenceFieldUpdater.get(this) != wVar) {
                    z10 = false;
                    break;
                }
            }
            if (z10) {
                this.f9586a = null;
                return tInvoke;
            }
        }
        return (T) this.f9587b;
    }

    public final String toString() {
        return this.f9587b != w.f ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
