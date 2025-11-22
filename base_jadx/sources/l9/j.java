package l9;

import c5.w;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class j<T> implements e<T>, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public x9.a<? extends T> f9588a;

    /* renamed from: b, reason: collision with root package name */
    public volatile Object f9589b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f9590c;

    public j(x9.a initializer) {
        kotlin.jvm.internal.h.f(initializer, "initializer");
        this.f9588a = initializer;
        this.f9589b = w.f;
        this.f9590c = this;
    }

    @Override // l9.e
    public final T getValue() {
        T tInvoke;
        T t10 = (T) this.f9589b;
        w wVar = w.f;
        if (t10 != wVar) {
            return t10;
        }
        synchronized (this.f9590c) {
            tInvoke = (T) this.f9589b;
            if (tInvoke == wVar) {
                x9.a<? extends T> aVar = this.f9588a;
                kotlin.jvm.internal.h.c(aVar);
                tInvoke = aVar.invoke();
                this.f9589b = tInvoke;
                this.f9588a = null;
            }
        }
        return tInvoke;
    }

    public final String toString() {
        return this.f9589b != w.f ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
