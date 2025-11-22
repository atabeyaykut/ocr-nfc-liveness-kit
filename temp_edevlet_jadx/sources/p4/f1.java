package p4;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class f1<F, T> implements Iterator<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator<? extends F> f12339a;

    public f1(Iterator<? extends F> it) {
        it.getClass();
        this.f12339a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f12339a.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return (T) ((Map.Entry) this.f12339a.next()).getValue();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f12339a.remove();
    }
}
