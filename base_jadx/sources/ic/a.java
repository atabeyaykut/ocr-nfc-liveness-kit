package ic;

import java.util.Iterator;

/* loaded from: classes2.dex */
public abstract class a<K, V> implements Iterable<V>, y9.a {

    /* renamed from: ic.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC0127a<K, V, T extends V> {

        /* renamed from: a, reason: collision with root package name */
        public final da.d<? extends K> f7356a;

        /* renamed from: b, reason: collision with root package name */
        public final int f7357b;

        public AbstractC0127a(da.d<? extends K> dVar, int r22) {
            this.f7356a = dVar;
            this.f7357b = r22;
        }
    }

    public final boolean isEmpty() {
        return ((e) this).f7362a.l() == 0;
    }

    @Override // java.lang.Iterable
    public final Iterator<V> iterator() {
        return l().iterator();
    }

    public abstract c<V> l();
}
