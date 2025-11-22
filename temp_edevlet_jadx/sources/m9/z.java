package m9;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class z<T> implements Iterable<y<? extends T>>, y9.a {

    /* renamed from: a, reason: collision with root package name */
    public final x9.a<Iterator<T>> f10178a;

    /* JADX WARN: Multi-variable type inference failed */
    public z(x9.a<? extends Iterator<? extends T>> aVar) {
        this.f10178a = aVar;
    }

    @Override // java.lang.Iterable
    public final Iterator<y<T>> iterator() {
        return new a0(this.f10178a.invoke());
    }
}
