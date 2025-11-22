package c5;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class p implements Iterator<String> {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator<String> f1839a;

    public p(q qVar) {
        this.f1839a = qVar.f1861a.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f1839a.hasNext();
    }

    @Override // java.util.Iterator
    public final String next() {
        return this.f1839a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
