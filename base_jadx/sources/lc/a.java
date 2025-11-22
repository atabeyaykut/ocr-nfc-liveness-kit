package lc;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class a<T> implements h<T> {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference<h<T>> f9704a;

    public a(h<? extends T> hVar) {
        this.f9704a = new AtomicReference<>(hVar);
    }

    @Override // lc.h
    public final Iterator<T> iterator() {
        h<T> andSet = this.f9704a.getAndSet(null);
        if (andSet != null) {
            return andSet.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
