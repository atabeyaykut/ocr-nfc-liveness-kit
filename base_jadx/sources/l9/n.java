package l9;

import c5.w;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class n<T> implements e<T>, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public x9.a<? extends T> f9595a;

    /* renamed from: b, reason: collision with root package name */
    public Object f9596b;

    public n(x9.a<? extends T> initializer) {
        kotlin.jvm.internal.h.f(initializer, "initializer");
        this.f9595a = initializer;
        this.f9596b = w.f;
    }

    @Override // l9.e
    public final T getValue() {
        if (this.f9596b == w.f) {
            x9.a<? extends T> aVar = this.f9595a;
            kotlin.jvm.internal.h.c(aVar);
            this.f9596b = aVar.invoke();
            this.f9595a = null;
        }
        return (T) this.f9596b;
    }

    public final String toString() {
        return this.f9596b != w.f ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
